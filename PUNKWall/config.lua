--Inicialização (não alterar)
sim = true
nao = false

--Acesso
ACL = "Admin" --ACL de acesso as informações dos personagens
comando = "wall" --comando para mostrar/esconder as informações dos personagens
--Configurações
configuracoes = {
jogadores = sim, --mostrar jogadores
bonecos = sim, --mostrar bonecos
nome = sim, --mostrar nomes
ID = sim, --configuracoes.ID
elementDataID = "ID", --nome do elementData referente ao ID
vida = sim, --mostrar vida e colete
arma = sim, --mostrar arma e munição
distancia = sim, -- mostrar distancia do personagem
proprio = sim, --mostrar as próprias informações
esqueleto = sim, -- mostrar esqueleto dos personagens
contorno = sim, --mostrar contorno do personagem
alcance = 100, --distancia máxima a qual os personagens serão mostrados
}

--Não mecher
--shader
local ped_wall = [[
   //
// ped_wall.fx
//

//------------------------------------------------------------------------------------------
// Variables
//------------------------------------------------------------------------------------------
float4 sColorizePed = float4(1,1,1,1);
float sSpecularPower = 2;
float sWorldViewPosMult = 1;

//------------------------------------------------------------------------------------------
// Include some common stuff
//------------------------------------------------------------------------------------------
texture gTexture0 < string textureState="0,Texture"; >;
float4x4 gWorld : WORLD;
float4x4 gView : VIEW;
float4x4 gWorldView : WORLDVIEW;
float4x4 gProjection: PROJECTION;
float3 gCameraDirection : CAMERADIRECTION;
float3 gCameraPosition : CAMERAPOSITION;
int CUSTOMFLAGS <string createNormals = "yes"; string skipUnusedParameters = "yes"; >;

//------------------------------------------------------------------------------------------
// Sampler Inputs
//------------------------------------------------------------------------------------------
sampler ColorSampler = sampler_state
{
    Texture = (gTexture0);
};

//------------------------------------------------------------------------------------------
// Structure of data sent to the vertex shader
//------------------------------------------------------------------------------------------
struct VSInput
{
    float4 Position : POSITION0;
    float3 Normal : NORMAL0;
    float2 TexCoord : TEXCOORD0;
};

//------------------------------------------------------------------------------------------
// Structure of data sent to the pixel shader ( from the vertex shader )
//------------------------------------------------------------------------------------------
struct PSInput
{
    float4 Position : POSITION0;
    float2 TexCoord : TEXCOORD0;
    float SpecLighting : TEXCOORD1;
};

//------------------------------------------------------------------------------------------
// VertexShaderFunction
//------------------------------------------------------------------------------------------
PSInput VertexShaderFunction(VSInput VS)
{
    PSInput PS = (PSInput)0;

    float4 worldPos = mul(float4(VS.Position.xyz, 1.0),gWorld);
    float4 viewPos = mul(worldPos, gView);
    PS.Position = mul(viewPos, gProjection);
	
    PS.TexCoord = VS.TexCoord;

    float3 Normal = normalize(mul(VS.Normal, (float3x3)gWorld));
    float dotProduct = dot(-gCameraDirection, Normal);	
    PS.SpecLighting = saturate(pow(dotProduct, sSpecularPower));	
    return PS;
}

//------------------------------------------------------------------------------------------
// PixelShaderFunction
//------------------------------------------------------------------------------------------
float4 PixelShaderFunction(PSInput PS) : COLOR0
{
    float4 color = sColorizePed;
    color.a *= saturate(1 - PS.SpecLighting * 2);
    color.a *= tex2D(ColorSampler,PS.TexCoord).a;
    return color;
}

//------------------------------------------------------------------------------------------
// Techniques
//------------------------------------------------------------------------------------------
technique ped_wall
{
    pass P0
    {
        ZEnable = false;
        AlphaBlendEnable = true;
        AlphaRef = 1;
        SrcBlend = SrcAlpha;
        DestBlend = One;
        VertexShader = compile vs_2_0 VertexShaderFunction();
        PixelShader  = compile ps_2_0 PixelShaderFunction();
    }
}

// Fallback
technique fallback
{
    pass P0
    {
        // Just draw normally
    }
}

]]

local ped_wall_mrt = [[
//
// ped_wall_mrt.fx
//

//------------------------------------------------------------------------------------------
// Variables
//------------------------------------------------------------------------------------------
float4 sColorizePed = float4(1,1,1,1);

//------------------------------------------------------------------------------------------
// Include some common stuff
//------------------------------------------------------------------------------------------
texture gTexture0 < string textureState="0,Texture"; >;
float4x4 gWorld : WORLD;
float4x4 gView : VIEW;
float4x4 gWorldView : WORLDVIEW;
float4x4 gProjection: PROJECTION;
float3 gCameraDirection : CAMERADIRECTION;
float3 gCameraPosition : CAMERAPOSITION;
int CUSTOMFLAGS < string skipUnusedParameters = "yes"; >;
texture secondRT < string renderTarget = "yes"; >;

//------------------------------------------------------------------------------------------
// Sampler Inputs
//------------------------------------------------------------------------------------------
sampler ColorSampler = sampler_state
{
    Texture = (gTexture0);
};

//------------------------------------------------------------------------------------------
// Structure of data sent to the pixel shader ( from the vertex shader )
//------------------------------------------------------------------------------------------
struct PSInput
{
    float4 Position : POSITION0;
    float2 TexCoord : TEXCOORD0;
    float4 Diffuse : COLOR0;
};

//------------------------------------------------------------------------------------------
// Structure of color data sent to the renderer ( from the pixel shader
//------------------------------------------------------------------------------------------
struct Pixel
{
    float4 Color : COLOR0;      // Render target #0
    float4 Extra : COLOR1;      // Render target #1
};

//------------------------------------------------------------------------------------------
// PixelShaderFunction
//------------------------------------------------------------------------------------------
Pixel PixelShaderFunction(PSInput PS)
{
    Pixel output;
    float texelAlpha = tex2D(ColorSampler, PS.TexCoord.xy).a;	
    output.Color = float4(0, 0, 0, min(texelAlpha * PS.Diffuse.a, 0.006105));
    output.Extra = float4(sColorizePed.rgb, texelAlpha * sColorizePed.a);
	
    return output;
}

//------------------------------------------------------------------------------------------
// Techniques
//------------------------------------------------------------------------------------------
technique ped_wall_mrt
{
    pass P0
    {
        ZEnable = false;
        AlphaBlendEnable = true;
        AlphaRef = 1;
        PixelShader  = compile ps_2_0 PixelShaderFunction();
    }
}

// Fallback
technique fallback
{
    pass P0
    {
        // Just draw normally
    }
}

]]

local post_edge = [[
//
// post_edge.fx
//

//------------------------------------------------------------------------------------------
// Variables
//------------------------------------------------------------------------------------------
float2 sRes = float2(800,600);
float blurStr = 1;
float edgeStr = 2;

// between 1 and 64
float bitDepth = 16;

// between 0 and 1
float outlStreng = 1;

//------------------------------------------------------------------------------------------
// Textures
//------------------------------------------------------------------------------------------
texture sTex0;

//------------------------------------------------------------------------------------------
// Sampler Inputs
//------------------------------------------------------------------------------------------
sampler Sampler0 = sampler_state
{
    Texture = <sTex0>;
    MinFilter = Linear;
    MagFilter = Linear;
    MipFilter = Linear;
    AddressU = Mirror;
    AddressV = Mirror;
};


//------------------------------------------------------------------------------------------
// PixelShaderFunction
//------------------------------------------------------------------------------------------
float4 PixelShaderFunction(float2 TexCoord : TEXCOORD0) : COLOR0
{
    float4 Blur = tex2D(Sampler0, TexCoord);
    float4 s1 = tex2D(Sampler0, TexCoord + blurStr * float2(-1.0f / sRes.x, -1.0f / sRes.y));
    float4 s2 = tex2D(Sampler0, TexCoord + blurStr * float2(0, -1.0f / sRes.y));
    float4 s3 = tex2D(Sampler0, TexCoord + blurStr * float2(1.0f / sRes.x, -1.0f / sRes.y));
    float4 s4 = tex2D(Sampler0, TexCoord + blurStr * float2(-1.0f / sRes.x, 0));
    float4 s5 = tex2D(Sampler0, TexCoord + blurStr * float2(-1.0f / sRes.x, 0));
    float4 s6 = tex2D(Sampler0, TexCoord + blurStr * float2(-1.0f / sRes.x, 1.0f / sRes.y));
    float4 s7 = tex2D(Sampler0, TexCoord + blurStr * float2(0, 1.0f / sRes.y));
    float4 s8 = tex2D(Sampler0, TexCoord + blurStr * float2(1.0f / sRes.x, 1.0f / sRes.y));
	  
    Blur = (Blur + s1 + s2 + s3 + s4 + s5 + s6 + s7 + s8) / 9;
  
    float4 Color = Blur;

    Color.rgb *= bitDepth;
    Color.rgb = floor(Color.rgb);
    Color.rgb /= bitDepth;

    float4 lum = float4(0.30, 0.6, 0.1, 1);
 
    float s11 = dot(tex2D(Sampler0, TexCoord + edgeStr * float2(-1.0f / sRes.x, -1.0f / sRes.y)), lum);
    float s12 = dot(tex2D(Sampler0, TexCoord + edgeStr * float2(0, -1.0f / sRes.y)), lum);
    float s13 = dot(tex2D(Sampler0, TexCoord + edgeStr * float2(1.0f / sRes.x, -1.0f / sRes.y)), lum);
 
    float s21 = dot(tex2D(Sampler0, TexCoord + edgeStr * float2(-1.0f / sRes.x, 0)), lum);
    float s23 = dot(tex2D(Sampler0, TexCoord + edgeStr * float2(-1.0f / sRes.x, 0)), lum);
 
    float s31 = dot(tex2D(Sampler0, TexCoord + edgeStr * float2(-1.0f / sRes.x, 1.0f / sRes.y)), lum);
    float s32 = dot(tex2D(Sampler0, TexCoord + edgeStr * float2(0, 1.0f / sRes.y)), lum);
    float s33 = dot(tex2D(Sampler0, TexCoord + edgeStr * float2(1.0f / sRes.x, 1.0f / sRes.y)), lum);

    float t1 = s13 + s33 + (2 * s23) - s11 - (2 * s21) - s31;
    float t2 = s31 + (2 * s32) + s33 - s11 - (2 * s12) - s13;
 
    float4 OutLine;
 
    if (((t1 * t1) + (t2 * t2)) > outlStreng/10) {
        OutLine = 1;
    } else {
        OutLine = 0;
    }

    float4 finalColor = Blur * OutLine;
	
    return finalColor;
}
 
technique edge
{
    pass Pass1
    {
        SrcBlend = SrcAlpha;
        DestBlend = One;
        PixelShader = compile ps_2_0 PixelShaderFunction();
    }
}

]]
