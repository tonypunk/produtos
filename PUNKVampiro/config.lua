acesso = {

	ACL = {"Admin", "Console"},
	elementData = {
		["Vampiro"] = true,
		["Vamp"] = true,
	},
	team = {"Vampires", "Vampire"},
}

commands = {
	feed = "morder",
	senses = "visao",
	transform = "mutacao",
	help = "vampiro",
}

controls = {
	feed = "e",
	senses = "o",
	transform = "m",
	help = "f9",
}

stats = {

	[false] = {
	[22] = 0, --Stamina
	[23] = 0, --Muscle
	[24] = 569, --Max Health
	[164] = 0, --Armor
	[165] = 0, --Energy
	[225] = 0, --Breathing
	},
	
	[true] = {
	[22] = 1000, --Stamina
	[23] = 1000, --Muscle
	[24] = 1000, --Max Health
	[164] = 100, --Armor
	[165] = 1000, --Energy
	[225] = 1000, --Breathing
	},
	
}

hunger = {
	timer = 30,
	duration = 10,
	damage = 5,
	percent = 25,
}

senses = {
	screen = {150, 0, 0, 150},
	aura = {255,0,0,50},
}

flight = {
	[false] = {
	speed = 1,
	aceleration = 0.1,
	centralize = 2,
	turning = 5,
	steering = 3,
	},
	
	[true] = {
	speed = 0.5,
	aceleration = 0.01,
	centralize = 2,
	turning = 3,
	steering = 2,
	},
}

immunity = {
	[false] = {0,1,2,3,5,7,10},
	[true] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 38, 41, 42, 10, 14, 15},
}

sun = {
	starting = 6,
	ending = 18,
	timer = 1,
	damage = 25,
}

skins = {

	male = {  0,   1,   2,   3,   4,   5,   7,   8,  14,  15,
	 16,  17,  18,  19,  20,  21,  22,  23,  24,  25,
	 26,  27,  28,  29,  30,  32,  33,  34,  35,  36,
	 37,  42,  43,  44,  45,  46,  47,  48,  49,  50,
	 51,  52,  57,  58,  59,  60,  61,  62,  65,  66,
	 67,  68,  70,  71,  72,  73,  78,  79,  80,  81,
	 82,  83,  84,  94,  95,  96,  97,  98,  99, 100,
	101, 102, 103, 104, 105, 106, 107, 108, 109, 110,
	111, 112, 113, 114, 115, 116, 117, 118, 119, 120,
	121, 122, 123, 124, 125, 126, 127, 128, 132, 133,
	134, 135, 136, 137, 142, 143, 144, 146, 147, 153,
	154, 155, 156, 158, 159, 160, 161, 162, 163, 164,
	165, 166, 167, 168, 170, 171, 173, 174, 175, 176,
	177, 179, 180, 181, 182, 183, 184, 185, 186, 187,
	188, 189, 200, 202, 203, 204, 206, 209, 210, 212,
	213, 217, 220, 221, 222, 223, 227, 228, 229, 230,
	234, 235, 236, 239, 240, 241, 242, 247, 248, 249,
	250, 252, 253, 254, 255, 258, 259, 260, 261, 262,
	264, 265, 266, 267, 268, 269, 270, 271, 272, 273,
	274, 275, 276, 277, 278, 279, 280, 281, 282, 283,
	284, 285, 286, 287, 288, 289, 290, 291, 292, 293,
	294, 295, 296, 297, 299, 300, 301, 302, 303, 305,
	306, 307, 308, 309, 310, 311, 312},
	
	female = {  6,   9,  10,  11,  12,  13,  31,  38,  39,  40,
	 41,  53,  54,  55,  56,  63,  64,  69,  75,  76,
	 77,  85,  86,  87,  88,  89,  90,  91,  92,  93,
	129, 130, 131, 138, 139, 140, 141, 145, 148, 150,
	151, 152, 157, 169, 172, 178, 190, 191, 192, 193,
	194, 195, 196, 197, 198, 199, 201, 205, 207, 211,
	214, 215, 216, 218, 219, 224, 225, 226, 231, 232,
	233, 237, 238, 243, 244, 245, 246, 251, 256, 257,
	263, 298, 304},
}

damage = {

	[10] = { setPedOnFire, true },
	[12] = { killPed },
	[42] = {setPedOnFire, false},

}

contagion = {

	[false] = false,
	[true] = true,

}

sounds = {

	skills = {
	
		senses = {
			[true] = "files/sfx/skills/sensesOn.mp3",
			[false] = "files/sfx/skills/sensesOff.mp3",
			[0] = "files/sfx/skills/sensesLoop.mp3",
		},
		
		bat = {
			[true] = "files/sfx/skills/batOn.mp3",
			[false] = "files/sfx/skills/batOff.mp3",
			[0] = "files/sfx/skills/batLoop.mp3",
			[1] = "files/sfx/skills/batWing.mp3",
		},
		
		monster = {
			[true] = "files/sfx/skills/monsterOn.mp3",
			[false] = "files/sfx/skills/monsterOff.mp3",
			[0] = "files/sfx/skills/monsterLoop.mp3",
			[1] = "files/sfx/skills/monsterWing.mp3",
		},
	
	
	},

	victims = {
	
		male = {
			
			[true] = "files/sfx/victims/m_biteOn.mp3",
			[false] = "files/sfx/victims/m_biteOff.mp3",
			[0] = "files/sfx/victims/m_biteLoop.mp3",
			[1] = "files/sfx/victims/m_biteDrain.mp3",
		},
		
		female = {
			[true] = "files/sfx/victims/f_biteOn.mp3",
			[false] = "files/sfx/victims/f_biteOff.mp3",
			[0] = "files/sfx/victims/f_biteLoop.mp3",
			[1] = "files/sfx/victims/f_biteDrain.mp3",
		},
	
	},
	
	vampire = {
	
		male = {
			
			[true] = "files/sfx/vampire/m_feedOn.mp3",
			[false] = "files/sfx/vampire/m_feedOff.mp3",
			[0] = "files/sfx/vampire/m_feedLoop.mp3",
		},
		
		female = {
			[true] = "files/sfx/vampire/f_feedOn.mp3",
			[false] = "files/sfx/vampire/f_feedOff.mp3",
			[0] = "files/sfx/vampire/f_feedLoop.mp3",
		},
		
		monster = {
			
			[true] = "files/sfx/vampire/monster_feedOn.mp3",
			[false] = "files/sfx/vampire/monster_feedOff.mp3",
			[0] = "files/sfx/vampire/monster_feedLoop.mp3",
			[1] = "files/sfx/skills/monster_death.mp3",
		},
	
	},

	effects = {
		["heartbeat"] = "files/sfx/effects/heartbeat.mp3",
		["hunger"] = "files/sfx/effects/hunger.mp3",
		["burning"] = "files/sfx/effects/burning.mp3",
	}

}

crossHair = true

 ped_wall = [[
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

 ped_wall_mrt = [[
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

 post_edge = [[
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

	dadosShader = [[
		texture tex;
		technique replace {
			pass P0 {
				Texture[0] = tex;
			}
		}
	]]