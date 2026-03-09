
description = {
	['Extended Clip'] = {'Extended capacity for'},
	['Flashlight'] = {'Aids low light target acquisition.'},
	['Supressor'] = {'Reduces noise and muzzle flash.'},
}

weapons = {

	['Pistol'] = {
	
		alt = 'Taurus PT92AF',
		
		price = 350,
	
		description = {
		'Standard handgun. A .45 caliber',
		'combat pistol with a magazine',
		'capacity of 12 rounds that can',
		'be extended to 16.'
		},
		
		upgrades = {
			
			[1] = {
				['name'] = 'Default Clip',
				['price'] = 100,
				['remove'] = {'Extended Clip'},
				['stats'] = { ['clip'] = 12, ['accuracy'] = 0.2, ['rate'] = 200, },
				['tex'] = {
					[1] = {
					['name'] = 'pmagYCGE',
					['file'] = nil
					},
					
					[2] = {
					['name'] = 'pmagYCG',
					['file'] = 'files/upgrades/ptl/pistol/pmagYCG.png'
					},
				},
			},
			
			[2] = {
				['name'] = 'Extended Clip',
				['price'] = 100,
				['stats'] = { ['clip'] = 16, ['accuracy'] = 0.75, ['rate'] = 100, ['damage'] = 60 },
				['remove'] = {'Default Clip'},
				['tex'] = {
				
					[1] = {
					['name'] = 'pmagYCG',
					['file'] = nil,
					},
					
					[2] = {
					['name'] = 'pmagYCGE',
					['file'] = 'files/upgrades/ptl/pistol/pmagYCG.png'
					},
				},
			},
			
				
			[3] = {
				['name'] = 'Flashlight',
				['price'] = 100,
				['stats'] = { ['flashlight'] = true },
				['tex'] = {
					[1] = {
					['name'] = 'prop_bulb_white',
					['file'] = 'files/upgrades/ptl/pistol/prop_bulb_white.png'
					},
					
					[2] = {
					['name'] = 'w_at_pi_flsh',
					['file'] = 'files/upgrades/ptl/pistol/w_at_pi_flsh.png'
					},
				},
			},
				
			[4] = {
				['name'] = 'Supressor',
				['price'] = 100,
				['stats'] = { ['suppressor'] = true },
				['tex'] = {
					[1] = {
					['name'] = 'w_at_pi_supp',
					['file'] = 'files/upgrades/ptl/pistol/w_at_pi_supp.png'
					},
				},
			},
		
			[5] = {
				['name'] = 'Tint 1',
				['price'] = 100,
				['stats'] = { ['tint'] = 1 },
				['remove'] = {'Tint 2', 'Tint3'},
				['tex'] = {
					[1] = { ['name'] = 'p1YCG', ['file'] = 'files/upgrades/ptl/pistol/p1YCG.png',},
					[2] = { ['name'] = 'p2YCG', ['file'] = 'files/upgrades/ptl/pistol/p1YCG.png',},
					[3] = { ['name'] = 'p3YCG', ['file'] = 'files/upgrades/ptl/pistol/p1YCG.png',},
				},
			},
			
			[6] = {
				['name'] = 'Tint 2',
				['price'] = 100,
				['stats'] = { ['tint'] = 2},
				['remove'] = {'Tint 1', 'Tint3'},
				['tex'] = {
					[1] = { ['name'] = 'p1YCG', ['file'] = 'files/upgrades/ptl/pistol/p2YCG.png',},
					[2] = { ['name'] = 'p2YCG', ['file'] = 'files/upgrades/ptl/pistol/p2YCG.png',},
					[3] = { ['name'] = 'p3YCG', ['file'] = 'files/upgrades/ptl/pistol/p2YCG.png',},
				},
			},
				
			[7] = {
				['name'] = 'Tint 3',
				['price'] = 100,
				['stats'] = { ['tint'] = 3 },
				['remove'] = {'Tint 2', 'Tint1'},
				['tex'] = {
					[1] = { ['name'] = 'p1YCG', ['file'] = 'files/upgrades/ptl/pistol/p3YCG.png',},
					[2] = { ['name'] = 'p2YCG', ['file'] = 'files/upgrades/ptl/pistol/p3YCG.png',},
					[3] = { ['name'] = 'p3YCG', ['file'] = 'files/upgrades/ptl/pistol/p3YCG.png',},
				},
			},
		},
	},

}

prateleiras = {
	--
	[1] = {
		--Melee
		{
			name = 'Knife',
			
			position = {
				default = {1380.8, -1278.8, 13.30},
				active = {1380.8, -1278.8, 13.75},
			},
			
			rotation = {
				default = {-90,180,60},
				active = {-90,30,45},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1380.8, -1278.8, 13.75},
				},
				
				active = {
				position = {1380, -1278.8, 13.75},
				target = {1380.8, -1278.8, 13.75},
				},
			}
		},
		--
		{
			name = 'Antique Cavalry Dagger',
		
			position = {
				default = {1380.7, -1278.87, 13.30},
				active = {1380.7, -1278.87, 13.75},
			},
			
			rotation = {
				default = {-90,180,60},
				active = {-90,30,45},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1380.7, -1278.87, 13.75},
				},
				active = {
				position = {1379.9, -1278.87, 13.75},
				target = {1380.7, -1278.87, 13.75},
				},
			}
		
		},
		--
		{
			name = 'Switchblade',
		
			position = {
				default = {1380.65, -1279, 13.30},
				active = {1380.65, -1279, 13.75},
			},
			
			rotation = {
				default = {-90,180,60},
				active = {-90,30,45},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1380.65, -1279, 13.75},
				},
				active = {
				position = {1379.85, -1279, 13.75},
				target = {1380.65, -1279, 13.75},
				},
			}
		
		},
		--
		{
			name = 'Broken Bottle',
		
			position = {
				default = {1380.55, -1278.87, 13.30},
				active = {1380.55, -1278.87, 13.75},
			},
			
			rotation = {
				default = {-90,180,0},
				active = {-30,0,0},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1380.55, -1278.87, 13.75},
				},
				active = {
				position = {1379.75, -1278.87, 13.75},
				target = {1380.55, -1278.87, 13.75},
				},
			}
		
		},
		--
		{
			name = 'Knuckle Dusters',
		
			position = {
				default =  {1381, -1279.25, 13.30},
				active = {1381, -1279.25, 13.75},
			},
			
			rotation = {
				default = {-90,180,60},
				active = {90,90,30},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1381, -1279.25, 13.75},
				},
				active = {
				position = {1380.2, -1279.25, 13.75},
				target = {1381, -1279.25, 13.75},
				},
			}
		
		},
		--
		{
			name = 'Pool Cue',
		
			position = {
				default = {1381.1, -1279.8, 13.30},
				active = {1381.1, -1279.8, 13.75},
			},
			
			rotation = {
				default = {-86,180,0},
				active = {-30,0,0},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1381.1, -1279.8, 13.75},
				},
				active = {
				position = {1380.3, -1279.8, 13.75},
				target = {1381.1, -1279.8, 13.75},
				},
			}
		
		},
		--
		{
			name = 'Nightstick',
		
			position = {
				default = {1380.7, -1279.25, 13.30},
				active = {1380.7, -1279.25, 13.75},
			},
			
			rotation = {
				default = {-90,180,50},
				active = {-90,30,45},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1380.7, -1279.25, 13.75},
				},
				active = {
				position = {1379.9, -1279.25, 13.75},
				target = {1380.7, -1279.25, 13.75},
				},
			}
		
		},
		--
		{
			name = 'Flashlight',
		
			position = {
				default = {1380.75, -1279.5, 13.30},
				active = {1380.75, -1279.5, 13.75},
			},
			
			rotation = {
				default = {-90,180,50},
				active = {-90,30,45},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1380.75, -1279.5, 13.75},
				},
				active = {
				position = {1379.95, -1279.5, 13.75},
				target = {1380.75, -1279.5, 13.75},
				},
			}
		
		},
		--
		{
			name = 'Hatchet',
		
			position = {
				default = {1380.75, -1279.75, 13.30},
				active = {1380.75, -1279.75, 13.75},
			},
			
			rotation = {
				default = {-90,180,60},
				active = {-90,30,45},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1380.75, -1279.75, 13.75},
				},
				active = {
				position = {1379.95, -1279.75, 13.75},
				target = {1380.75, -1279.75, 13.75},
				},
			}
		
		},
		--
		{
			name = 'Hammer',
		
			position = {
				default = {1380.7, -1280, 13.30},
				active = {1380.7, -1280, 13.75},
			},
			
			rotation = {
				default = {-90,180,60},
				active = {-90,30,45},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1380.7, -1280, 13.75},
				},
				active = {
				position = {1379.9, -1280, 13.75},
				target = {1380.7, -1280, 13.75},
				},
			}
		
		},
		--
		{
			name = 'Pipe Wrench',
		
			position = {
				default = {1380.6, -1280.2, 13.30},
				active = {1380.6, -1280.2, 13.75},
			},
			
			rotation = {
				default = {-90,180,60},
				active = {-90,30,45},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1380.6, -1280.2, 13.75},
				},
				active = {
				position = {1379.8, -1280.2, 13.9},
				target = {1380.6, -1280.2, 13.9},
				},
			}
		
		},
		--
		{
			name = 'Machete',
		
			position = {
				default = {1380.60, -1280.4, 13.30},
				active = {1380.60, -1280.4, 13.75},
			},
			
			rotation = {
				default = {-90,180,60},
				active = {-90,30,45},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1380.60, -1280.4, 13.75},
				},
				active = {
				position = {1379.8, -1280.4, 13.85},
				target = {1380.60, -1280.4, 13.85},
				},
			}
		
		},
		--
		{
			name = 'Battle Axe',
		
			position = {
				default = {1380.75, -1280.75, 13.30},
				active = {1380.75, -1280.75, 13.75},
			},
			
			rotation = {
				default = {-90,180,60},
				active = {-90,30,45},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1380.75, -1280.75, 13.75},
				},
				active = {
				position = {1379.95, -1280.75, 13.75},
				target = {1380.75, -1280.75, 13.75},
				},
			}
		
		},
		--
		--Pistols
		{
			name = 'Heavy Revolver',
		
			position = {
				default = {1380.85, -1281.4, 13.30},
				active = {1380.85, -1281.4, 13.60},
			},
			
			rotation = {
				default = {-90,0,-90},
				active = {90,0,0},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1380.85, -1281.4, 13.60},
				},
				active = {
				position = {1380.25, -1281.5, 13.60},
				target = {1380.85, -1281.5, 13.60},
				},
			}
		
		},
		--
		{
			name = 'Stun Gun',
			
			price = 1000,
			rounds = 10,
			
			position = {
				default = {1380.5, -1281.4, 13.30},
				active = {1380.5, -1281.4, 13.60},
			},
			
			rotation = {
				default = {-90,0,-90},
				active = {90,0,0},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1380.5, -1281.4, 13.60},
				},
				active = {
				position = {1379.9, -1281.4, 13.60},
				target = {1380.5, -1281.4, 13.60},
				},
			}
		
		},
		--
		{
			name = 'Machine Pistol',
		
			position = {
				default = {1380.85, -1281.875, 13.30},
				active = {1380.85, -1281.875, 13.60},
			},
			
			rotation = {
				default = {-90,0,-90},
				active = {90,0,0},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1380.85, -1281.875, 13.60},
				},
				active = {
				position = {1380.25, -1281.875, 13.60},
				target = {1380.85, -1281.875, 13.60},
				},
			}
		},
		--
		{
			name = 'Heavy Pistol',
		
			position = {
				default = {1380.5, -1281.875, 13.30},
				active = {1380.5, -1281.875, 13.60},
			},
			
			rotation = {
				default = {-90,0,-90},
				active = {90,0,0},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1380.5, -1281.875, 13.60},
				},
				active = {
				position = {1379.9, -1281.875, 13.60},
				target = {1380.5, -1281.875, 13.60},
				},
			}
		},
		--
		{
			name = 'Combat Pistol',
		
			position = {
				default = {1380.85, -1282.375, 13.30},
				active = {1380.85, -1282.375, 13.60},
			},
			
			rotation = {
				default = {-90,0,-90},
				active = {90,0,0},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1380.85, -1282.375, 13.60},
				},
				active = {
				position = {1380.25, -1282.375, 13.60},
				target = {1380.85, -1282.375, 13.60},
				},
			}
		},
		--
		{
			name = 'AP Pistol',
		
			position = {
				default = {1380.5, -1282.375, 13.30},
				active = {1380.85, -1282.375, 13.60},
			},
			
			rotation = {
				default = {-90,0,-90},
				active = {90,0,0},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1380.5, -1282.375, 13.60},
				},
				active = {
				position = {1380.25, -1282.375, 13.60},
				target = {1380.85, -1282.375, 13.60},
				},
			}
		},
		--
		{
			name = 'SNS Pistol',
		
			position = {
				default = {1380.85, -1282.875, 13.30},
				active = {1380.85, -1282.875, 13.60},
			},
			
			rotation = {
				default = {-90,0,-90},
				active = {90,0,0},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1380.85, -1282.875, 13.60},
				},
				active = {
				position = {1380.25, -1282.875, 13.60},
				target = {1380.85, -1282.875, 13.60},
				},
			}
		},
		
		--
		{
			name = 'Pistol',
		
			position = {
				default = {1380.5, -1282.875, 13.30},
				active = {1380.5, -1282.875, 13.60},
			},
			
			rotation = {
				default = {-90,0,-90},
				active = {90,0,0},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1380.5, -1282.875, 13.60},
				},
				active = {
				position = {1379.9, -1282.875, 13.60},
				target = {1380.5, -1282.875, 13.60},
				},
			},
			
			
		{
			name = 'Vintage Pistol',
		
			position = {
				default = {1380.85, -1283.3, 13.30},
				active = {1380.85, -1283.3, 13.60},
			},
			
			rotation = {
				default = {-90,0,-90},
				active = {90,0,0},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1380.85, -1283.3, 13.60},
				},
				active = {
				position = {1380.25, -1283.3, 13.60},
				target = {1380.85, -1283.3, 13.60},
				},
			}
		},
		--
		{
			name = 'Pistol .50',
		
			position = {
				default = {1380.5, -1283.3, 13.30},
				active = {1380.5, -1283.3, 13.60},
			},
			
			rotation = {
				default = {-90,0,-90},
				active = {90,0,0},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1380.85, -1283.3, 13.60},
				},
				active = {
				position = {1379.9, -1283.3, 13.60},
				target = {1380.5, -1283.3, 13.60},
				},
			}
		},
		--
		--Projeteis
		--
		{
			name = 'Teargas',
		
			position = {
				default = {1379.75, -1284, 13.33},
				active = {1379.75, -1284, 13.60},
			},
			
			rotation = {
				default = {0,0,-90},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1379.75, -1284, 13.60},
				},
				active = {
				position = {1379.75, -1283.4, 13.60},
				target = {1379.75, -1284, 13.60},
				},
			}
		},
		--
		{
			name = 'Flare Gun',
		
			position = {
				default = {1379.57, -1284, 13.30},
				active = {1379.57, -1284, 13.60},
			},
			
			rotation = {
				default = {-90,180,0},
				active = {-90,0,0},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1379.57, -1284, 13.60},
				},
				active = {
				position = {1379.57, -1283.4, 13.60},
				target = {1379.57, -1284, 13.60},
				},
			}
		},
		--
		{
			name = 'Grenade',
		
			position = {
				default = {1379, -1284, 13.33},
				active = {1379, -1284, 13.60},
			},
			
			rotation = {
				default = {0,0,-90},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1379, -1284, 13.60},
				},
				active = {
				position = {1379, -1283.4, 13.60},
				target = {1379, -1284, 13.60},
				},
			}
		},
		--
		{
			name = 'Pipe Bomb',
		
			position = {
				default = {1378.4, -1284.35, 13.25},
				active = {1378.55, -1284.35, 13.60},
			},
			
			rotation = {
				default = {90,-45,0},
				active = {-90,45,180},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1378.55, -1284.35, 13.60},
				},
				active = {
				position = {1378.55, -1283.75, 13.60},
				target = {1378.55, -1284.35, 13.60},
				},
			}
		},
		--
		{
			name = 'Proximity Mine',
		
			position = {
				default = {1378.3, -1284.48, 13.24},
				active = {1378.15, -1284.48, 13.60},
			},
			
			rotation = {
				default = {90,-45,180},
				active = {-90,45,180},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1378.15, -1284.48, 13.60},
				},
				active = {
				position = {1378.25, -1283.88, 13.60},
				target = {1378.25, -1284.48, 13.60},
				},
			}
		},
		--
		{
			name = 'Sticky Bomb',
		
			position = {
				default = {1378.1, -1284.5, 13.25},
				active = {1377.95, -1284.5, 13.60},
			},
			
			rotation = {
				default = {90,-45,180},
				active = {-90,45,180},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},--position = {1377, -1281.6162109375, 14.2546860},
				target = {1377.95, -1284.5, 13.60},
				},
				active = {
				position = {1378.1, -1284, 13.60},
				target = {1378.1, -1284.5, 13.60},
				},
			}
		},
		--
		{
			name = 'Compact Grenade Launcher',
		
			position = {
				default = {1378.5, -1284, 13.30},
				active = {1378.5, -1284, 13.60},
			},
			
			rotation = {
				default = {-90,180,0},
				active = {-90,0,0},
			},
		
			camera = {
			
				default = {
				position = {1378.515625, -1281.6162109375, 14.2546860},
				target = {1378.5, -1284, 13.60},
				},
				active = {
				position = {1378.5, -1283.4, 13.60},
				target = {1378.5, -1284, 13.60},
				},
			}
		},
		--
	},
	},
	--
	[2] = {
		--
		{
			name = 'SMG',
		
			position = {
				default = {1384.1, -1281.75, 14.5},
				active = {1383.75, -1281.75, 14.5},
			},
			
			rotation = {
				default = {0,7.5,-85},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1383.75, -1281.75, 14.5},
				},
				active = {
				position = {1382.75, -1281.75, 14.5},
				target = {1383.75, -1281.75, 14.5},
				},
			}
		
		},
		--
		{
			name = 'Assault Shotgun',
		
			position = {
				default = {1384.1, -1282.7, 14.5},
				active = {1383.75, -1282.7, 14.5},
			},
			
			rotation = {
				default = {0,0,-85},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1383.75, -1282.7, 14.5},
				},
				active = {
				position = {1382.75, -1282.7, 14.5},
				target =  {1383.75, -1282.7, 14.5},
				},
			}
		
		},
		--
		{
			name = 'Advanced Rifle',
		
			position = {
				default = {1384.1, -1283.75, 14.5},
				active = {1383.75, -1283.75, 14.5},
			},
			
			rotation = {
				default = {0,0,-85},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1383.75, -1283.75, 14.5},
				},
				active = {
				position = {1382.75, -1283.75, 14.5},
				target = {1383.75, -1283.75, 14.5},
				},
			},
			
			
			['upgrades'] = {
		
				[1] = {
					['name'] = 'Tint 1',
					['stat'] = nil,
					['value'] = nil,
					['price'] = 100,
					['tex'] = {
						[1] = {
						['name'] = 'ARYCG1',
						['file'] = 'files/upgrades/lmg/Advanced Rifle/ARYCG2.png',
						},
					},
				},
					
				[2] = {
					['name'] = 'Tint 2',
					['stat'] = nil,
					['value'] = nil,
					['price'] = 100,
					['tex'] = {
						[1] = {
						['name'] = 'ARYCG1',
						['file'] = 'files/upgrades/lmg/Advanced Rifle/ARYCG3.png',
						},
					},
				},
					
				
				[3] = {
					['name'] = 'Flashlight',
					['stat'] = 'flashlight',
					['value'] = true,
					['price'] = 100,
					['tex'] = {
						[1] = {
						['name'] = 'w_at_ar_flsh',
						['file'] = 'files/upgrades/lmg/Advanced Rifle/w_at_ar_flsh.png'
						},
						[2] = {
						['name'] = 'prop_bulb_white',
						['file'] = 'files/upgrades/lmg/Advanced Rifle/prop_bulb_white.png'
						},
					},
				},
				
				[4] = {
					['name'] = 'Supressor',
					['stat'] = 'suppressor',
					['value'] = true,
					['price'] = 100,
					['tex'] = {
						[1] = {
						['name'] = 'w_at_pi_supp',
						['file'] = 'files/upgrades/ptl/pistol/w_at_pi_supp.png'
						},
					},
				},
			
			},
			
		},
		--
		{
			name = 'Heavy Sniper',
		
			position = {
				default = {1384.1, -1284.5, 14.5},
				active = {1383.75, -1284.5, 14.5},
			},
			
			rotation = {
				default = {0,0,-85},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1383.75, -1284.5, 14.5},
				},
				active = {
				position = {1382, -1284.5, 14.5},
				target = {1383.75, -1284.5, 14.5},
				},
			}
		
		},
		--
		{
			name = 'Combat MG',
		
			position = {
				default = {1384.1, -1285.9, 14.5},
				active = {1383.75, -1285.9, 14.5},
			},
			
			rotation = {
				default = {0,0,-85},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1383.75, -1285.9, 14.5},
				},
				active = {
				position = {1382.75, -1285.9, 14.5},
				target = {1383.75, -1285.9, 14.5},
				},
			}
		
		},
		--
		{
			name = 'Minigun',
		
			position = {
				default = {1384, -1286.5, 14.5},
				active = {1383.75, -1286.5, 14.5},
			},
			
			rotation = {
				default = {0,15,-90},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1383.75, -1287, 14.5},
				},
				active = {
				position = {1382, -1287, 14.5},
				target = {1383.75, -1287, 14.5},
				},
			}
		
		},
		--
		{
			name = 'Special Carbine',
		
			position = {
				default = {1383.5, -1288.05, 14.25},
				active = {1383.5, -1287.8, 14.25},
			},
			
			rotation = {
				default = {0,0,180},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1383.5, -1287.8, 14.25},
				},
				active = {
				position = {1383.5, -1286.8, 14.25},
				target = {1383.5, -1287.8, 14.25},
				},
			}
		
		},
		--
		{
			name = 'Marksman Rifle',
		
			position = {
				default = {1382.5, -1288.05, 14.25},
				active = {1382.5, -1287.8, 14.25},
			},
			
			rotation = {
				default = {0,0,180},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1382.5, -1287.8, 14.25},
				},
				active = {
				position = {1382.5, -1286.8, 14.25},
				target = {1382.5, -1287.8, 14.25},
				},
			}
		
		},
		--
		{
			name = 'Compact Rifle',
		
			position = {
				default = {1381.5, -1288.05, 14.25},
				active = {1381.5, -1287.8, 14.25},
			},
			
			rotation = {
				default = {0,0,180},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1381.5, -1287.8, 14.25},
				},
				active = {
				position = {1381.5, -1286.8, 14.25},
				target = {1381.5, -1287.8, 14.25},
				},
			}
		
		},
		--
		{
			name = 'Unholy Hellbringer',
		
			position = {
				default = {1380.5, -1288.05, 14.25},
				active = {1380.5, -1287.8, 14.25},
			},
			
			rotation = {
				default = {0,0,180},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1380.5, -1287.8, 14.25},
				},
				active = {
				position = {1380.5, -1286, 14.25},
				target = {1380.5, -1287.8, 14.25},
				},
			}
		
		},
		--
	
	},
	--
	[3] = {
		--
		{
			name = 'Micro SMG',
		
			position = {
				default = {1384.1, -1281.75, 14.875},
				active = {1383.75, -1281.75, 14.875},
			},
			
			rotation = {
				default = {0,7.5,-85},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1383.75, -1281.75, 14.875},
				},
				active = {
				position = {1382.75, -1281.75, 14.875},
				target = {1383.75, -1281.75, 14.875},
				},
			}
		
		},
		--
		{
			name = 'Pump Shotgun',
		
			position = {
				default = {1384.1, -1282.6, 14.875},
				active = {1383.75, -1282.6, 14.875},
			},
			
			rotation = {
				default = {0,6,-85},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1383.75, -1282.6, 14.875},
				},
				active = {
				position = {1382.75, -1282.6, 14.875},
				target = {1383.75, -1282.6, 14.875},
				},
			}
		
		},
		--
		{
			name = 'Carbine Rifle',
		
			position = {
				default = {1384.1, -1283.65, 14.875},
				active = {1383.75, -1283.65, 14.875},
			},
			
			rotation = {
				default = {0,0,-85},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1383.75, -1283.65, 14.875},
				},
				active = {
				position = {1382.75, -1283.65, 14.875},
				target = {1383.75, -1283.65, 14.875},
				},
			}
		
		},
		--
		{
			name = 'Sniper Rifle',
		
			position = {
				default = {1384.1, -1284.5, 14.875},
				active = {1383.75, -1284.5, 14.875},
			},
			
			rotation = {
				default = {0,0,-85},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1383.75, -1284.5, 14.875},
				},
				active = {
				position = {1382, -1284.5, 14.875},
				target = {1383.75, -1284.5, 14.875},
				},
			}
		
		},
		--
		{
			name = 'MG',
		
			position = {
				default = {1384.1, -1285.9, 15},
				active = {1383.75, -1285.9, 15},
			},
			
			rotation = {
				default = {0,0,-85},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1383.75, -1285.9, 14.75},
				},
				active = {
				position = {1382.75, -1285.9, 15},
				target = {1383.75, -1285.9, 15},
				},
			}
		
		},
		--
		{
			name = 'Grenade Launcher',
		
			position = {
				default = {1384, -1286.9, 14.85},
				active = {1383.75, -1286.9, 14.85},
			},
			
			rotation = {
				default = {0,0,-90},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1383.75, -1286.9, 14.85},
				},
				active = {
				position = {1382.75, -1286.9, 14.85},
				target = {1383.75, -1286.9, 14.85},
				},
			}
		
		},
		--
		{
			name = 'Gusenberg Sweeper',
		
			position = {
				default = {1383.5, -1288.05, 14.7},
				active = {1383.5, -1287.8, 14.75},
			},
			
			rotation = {
				default = {0,0,180},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1383.5, -1287.8, 14.75},
				},
				active = {
				position = {1383.5, -1286.8, 14.75},
				target = {1383.5, -1287.8, 14.75},
				},
			}
		
		},
		--
		{
			name = 'Homing Launcher',
		
			position = {
				default = {1382.1, -1288.05, 14.675},
				active = {1382.1, -1287.8, 14.675},
			},
			
			rotation = {
				default = {0,0,180},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1382.1, -1287.8, 14.675},
				},
				active = {
				position = {1382.1, -1286.8, 14.675},
				target = {1382.1, -1287.8, 14.675},
				},
			}
		
		},
		--
		{
			name = 'Double Barrel Shotgun',
		
			position = {
				default = {1381.5, -1288.05, 14.7},
				active = {1381.5, -1287.8, 14.7},
			},
			
			rotation = {
				default = {0,0,180},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1381.5, -1287.8, 14.7},
				},
				active = {
				position = {1381.5, -1286.8, 14.7},
				target = {1381.5, -1287.8, 14.7},
				},
			}
		
		},
		--
		{
			name = 'Up-n-Atomizer',
		
			position = {
				default = {1380.4, -1288.05, 14.725},
				active = {1380.4, -1287.8, 14.8},
			},
			
			rotation = {
				default = {0,0,180},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1380.4, -1287.8, 14.8},
				},
				active = {
				position = {1380.4, -1286.8, 14.8},
				target = {1380.4, -1287.8, 14.8},
				},
			}
		
		},
		--
	},
	--
	[4] = {
		--
		{
			name = 'Military Rifle',
		
			position = {
				default = {1384.1, -1281.75, 15.25},
				active = {1383.75, -1281.75, 15.25},
			},
			
			rotation = {
				default = {0,0,-85},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1383.75, -1281.75, 15.25},
				},
				active = {
				position = {1382.75, -1281.75, 15.25},
				target = {1383.75, -1281.75, 15.25},
				},
			}
		
		},
		--
		--
		{
			name = 'Assault SMG',
		
			position = {
				default = {1384.1, -1282.8, 15.25},
				active = {1383.75, -1282.8, 15.25},
			},
			
			rotation = {
				default = {0,6,-85},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1383.75, -1282.8, 14.875},
				},
				active = {
				position = {1382.75, -1282.8, 15.25},
				target = {1383.75, -1282.8, 15.25},
				},
			}
		
		},
		--
		{
			name = 'Assault Rifle',
		
			position = {
				default = {1384.1, -1283.65, 15.25},
				active = {1383.75, -1283.65, 15.25},
			},
			
			rotation = {
				default = {0,0,-85},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1383.75, -1283.65, 14.875},
				},
				active = {
				position = {1382.75, -1283.65, 15.25},
				target = {1383.75, -1283.65, 15.25},
				},
			}
		
		},
		--
		{
			name = 'Rocket Launcher',
		
			position = {
				default = {1384, -1287.15, 15.25},
				active = {1383.75, -1287.15, 15.25},
			},
			
			rotation = {
				default = {0,0,-90},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1383.75, -1287.15, 15.25},
				},
				active = {
				position = {1382, -1287.15, 15.25},
				target = {1383.75, -1287.15, 15.25},
				},
			}
		
		},
		--
		{
			name = 'Bullpup Shotgun',
		
			position = {
				default = {1383.5, -1288.05, 15},
				active = {1383.5, -1287.8, 15},
			},
			
			rotation = {
				default = {0,0,180},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1383.5, -1287.8, 15},
				},
				active = {
				position = {1383.5, -1286.8, 15},
				target = {1383.5, -1287.8, 15},
				},
			}
		
		},
		--
		{
			name = 'Heavy Shotgun',
		
			position = {
				default = {1382.5, -1288.05, 15.1},
				active = {1382.5, -1287.8, 15.1},
			},
			
			rotation = {
				default = {0,0,180},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1382.5, -1287.8, 15.1},
				},
				active = {
				position = {1382.5, -1286.8, 15.1},
				target = {1382.5, -1287.8, 15.1},
				},
			}
		
		},
		--
		{
			name = 'Marksman Pistol',
		
			position = {
				default = {1381.5, -1288.05, 15.1},
				active = {1381.5, -1287.8, 15.1},
			},
			
			rotation = {
				default = {0,0,180},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1381.5, -1287.8, 15.1},
				},
				active = {
				position = {1381.5, -1286.8, 15.1},
				target = {1381.5, -1287.8, 15.1},
				},
			}
		
		},
		--
		{
			name = 'Mini SMG',
		
			position = {
				default = {1380.5, -1288.05, 15.1},
				active = {1380.5, -1287.8, 15.1},
			},
			
			rotation = {
				default = {0,0,180},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1380.5, -1287.8, 15.1},
				},
				active = {
				position = {1380.5, -1286.8, 15.1},
				target = {1380.5, -1287.8, 15.1},
				},
			}
		
		},
		--
	},
	--
	[5] = {
		--
		{
			name = 'Sawed-Off Shotgun',
		
			position = {
				default = {1383.6, -1288.05, 15.4},
				active = {1383.6, -1287.8, 15.4},
			},
			
			rotation = {
				default = {0,0,180},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1383.6, -1287.8, 15.4},
				},
				active = {
				position = {1383.6, -1286.8, 15.4},
				target = {1383.6, -1287.8, 15.4},
				},
			}
		
		},
		--
		{
			name = 'Bullpup Rifle',
		
			position = {
				default = {1382.4, -1288.05, 15.45},
				active = {1382.4, -1287.8, 15.45},
			},
			
			rotation = {
				default = {0,0,180},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1382.4, -1287.8, 15.45},
				},
				active = {
				position = {1382.4, -1286.8, 15.45},
				target = {1382.4, -1287.8, 15.45},
				},
			}
		
		},
		--
		{
			name = 'Combat PDW',
		
			position = {
				default = {1381.45, -1288.05, 15.45},
				active = {1381.45, -1287.8, 15.45},
			},
			
			rotation = {
				default = {0,7.5,180},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1381.45, -1287.8, 15.45},
				},
				active = {
				position = {1381.45, -1286.8, 15.45},
				target = {1381.45, -1287.8, 15.45},
				},
			}
		
		},
		--
		{
			name = 'Sweeper Shotgun',
		
			position = {
				default = {1380.5, -1288.05, 15.45},
				active = {1380.5, -1287.8, 15.45},
			},
			
			rotation = {
				default = {0,7.5,180},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1380.5, -1287.8, 15.45},
				},
				active = {
				position = {1380.5, -1286.8, 15.45},
				target = {1380.5, -1287.8, 15.45},
				},
			}
		
		},
		--
		{
			name = 'Widowmaker',
		
			position = {
				default = {1379.9, -1288.05, 15.7},
				active = {1379.9, -1287.8, 15.7},
			},
			
			rotation = {
				default = {0,30,180},
				active = {0,0,0},
			},
		
			camera = {
			
				default = {
				position = {1380.431640625, -1284.21875, 14.2546875},
				target = {1379.9, -1287.8, 15.7},
				},
				active = {
				position = {1379.9, -1286, 15.7},
				target = {1379.9, -1287.8, 15.7},
				},
			}
		
		},
		--
	},
}	


comandos = {
menu = "menu", --abrir menu de capacetes
}


	attach = function (...)
	return exports.attach:attach (...)
	end
	
	detach = function (...)
	return exports.attach:detach (...)
	end
	
	getDetails = function (...)
	return exports.attach:getDetails (...)
	end
	
	getData = function (...)
	return exports['PUNK+Armas']:getData (...)
	end
	
	
		dadosShader = [[
		texture tex;
		technique replace {
			pass P0 {
				Texture[0] = tex;
			}
		}
	]]
