--PRÉ-CONFIGURAÇÕES, NÃO MODIFICAR --
sim = true
nao = false
--------------------------------------------------
-------------------------CONFIGURAÇÕES --------------

-- 
quatro_portas = {
445, 604, 507, 585, 466, 492, 546, 551, 516, 467, 426, 547, 405, 580, 409, 550,
566, 540, 421, 529, 438, 420, 490, 470, 596, 598, 599, 597, 561, 560, 567
}

trem_bala = {538, 570}

--

veiculos = {
	--A organização pode ser através de uma tabela com vários IDs ou então apenas um ID
	--
	[quatro_portas] = { --Passageiro do meio em veiculos quatro portas
		--
		[1] = {
			--
			radio = sim,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "seat_rear",
			},
			--
			acesso = {
				--
				[1] = {
				porta = 4,
				posicao = {-1.5299999713898,-0.93000000715256,-0},
				rotacao = {0,0,0, -1},
					--
					entrar = {
						bloqueio = 2,
						--
						[1] = {
							anim =  {"ped", "CAR_open_LHS", -1, false, true, false, true},
							delay = 0,
							posicao = {-2.5,-0.5,0.6, -1},
							ratio = {1, 500, 500},
							rotacao = {0,0,0, -1},
						},
						--
						[2] = {
							anim =  {"ped", "CAR_getin_LHS", -1, false, true, false, true},
							delay = 1000,
							posicao = {-0.5,0,0.4, 500},
							rotacao = {0,-0,0, -1},
						},
						--
						[3] = {
							anim = {"ped", "CAR_closedoor_LHS", -1, false, true, false, true},
							delay = 1750,
							rotacao = {0,0,0, -1},
							ratio = {0, 500, -1},
						},
						--
						[4] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 2250,
							posicao = {-0.5,0,0, 250},
							rotacao = {0,0,0, -1},
							ratio = {0, 500, -1},
						},
						--
						
					},
					--
					sair = {
						bloqueio = 2,
						[1] = {
							anim =  {"ped", "CAR_getout_LHS", -1, false, true, false, false},
							delay = 0,
							ratio = {1, 500, -1},
							posicao = {-0.5,0,0.4, -1},
							rotacao = {0,0,0, -1},
						},
						
						[2] = {
							anim = {"ped", "CAR_close_LHS", -1, false, true, false, false},
							delay = 500,
							ratio = {0, 500, -1},
						},
						
						[3] = {
							delay = 100,
							posicao = {-2.5,-0.5,0.6, 500},
							rotacao = {0,0,0, -1},
						},
						
						[4] = {
							delay = 1250,
							anim = {},
						},
						
					},
					--
					saltar = {
						bloqueio = 2,
						velocidade = 40,
						[1] = {
							anim =  {"ped", "CAR_rollout_LHS", -1, false, true, false, false},
							delay = 0,
							ratio = {1, 500, -1},
							posicao = {-0.5,0,0.4, -1},
							rotacao = {0,0,0, -1},
						},
						
						[2] = {
							delay = 100,
							posicao = {-2.5,-0.5,0.6, 900},
							rotacao = {0,0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
					tombado = {
						bloqueio = 2,
						[1] = {
							anim =  {"ped", "car_crawloutrhs", -1, false, true, false, false},
							delay = 0,
							ratio = {1, 500, -1},
							posicao = {-0.5,0,-0.4, -1},
							rotacao = {0,180,0},
						},
						
						[2] = {
							delay = 100,
							posicao = {-2.5,-0.5,-0.6, 900},
							rotacao = {0,180,0},
						},
						
						[3] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
				[2] = {
				porta = 5,
				posicao = {0.6,-0.93000000715256,-0},
				rotacao = {0,0,0, -1},
					--
					entrar = {
						bloqueio = 3,
						--
						[1] = {
							anim =  {"ped", "CAR_open_RHS", -1, false, true, false, true},
							delay = 0,
							posicao = {1.6,-0.5,0.6, -1},
							ratio = {1, 500, 500},
							rotacao = {0,0,0, -1},
						},
						--
						[2] = {
							anim =  {"ped", "CAR_getin_RHS", -1, false, true, false, true},
							delay = 1000,
							posicao = {-0.5,0,0.4, 500},
							rotacao = {0,0,0, -1},
						},
						--
						[3] = {
							anim = {"ped", "CAR_closedoor_RHS", -1, false, true, false, true},
							delay = 1750,
							rotacao = {0,0,0, -1},
							ratio = {0, 500, -1},
						},
						--
						[4] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 2250,
							posicao = {-0.5,0,0, 250},
							rotacao = {0,0,0, -1},
							ratio = {0, 500, -1},
						},
						--
						
					},
					--
					sair = {
						bloqueio = 3,
						[1] = {
							anim =  {"ped", "CAR_getout_RHS", -1, false, true, false, false},
							delay = 0,
							ratio = {1, 500, -1},
							posicao = {-0.5,0,0.4, -1},
							rotacao = {0,0,0, -1},
						},
						
						[2] = {
							anim = {"ped", "CAR_close_RHS", -1, false, true, false, false},
							delay = 500,
							ratio = {0, 500, -1},
						},
						
						[3] = {
							delay = 100,
							posicao = {1.5,-0.5,0.6, 500},
							rotacao = {0,0,0, -1},
						},
						
						[4] = {
							delay = 1250,
							anim = {},
						},
						
					},
					--
					--
					saltar = {
						bloqueio = 3,
						velocidade = 40,
						[1] = {
							anim =  {"ped", "CAR_rollout_RHS", -1, false, true, false, false},
							delay = 0,
							ratio = {1, 500, -1},
							posicao = {-0.5,0,0.4, -1},
							rotacao = {0,0,0, -1},
						},
						
						[2] = {
							delay = 100,
							posicao = {2.5,-0.5,0.6, 900},
							rotacao = {0,0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
					tombado = {
						bloqueio = 3,
						[1] = {
							anim =  {"ped", "car_crawloutrhs", -1, false, true, false, false},
							delay = 0,
							ratio = {1, 500, -1},
							posicao = {0.475,0,-0.4, -1},
							rotacao = {0,180,180, -1},
						},
						
						[2] = {
							delay = 100,
							posicao = {2.5,-0.5,-0.6, 900},
							rotacao = {0,180,180, -1},
						},
						
						[3] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
	},
	--
	[422] = { --Bobcat
		--
		[1] = {
			--
			radio = true,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "seat_front",
			},
			--
			acesso = {
				--
				[1] = {
				posicao = {-1.6299999713898,-0.93000000715256,-0},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"vortex", "car_jumpin_lhs", 650, false, true, false, true},
							delay = 0,
							posicao = {-2,-0.93000000715256,-0, -1},
							rotacao = {0,0,0, -1},
						},
							
						[2] = {
							delay = 50,
							posicao = {-0.75,-0.94999998807907,1, 600},
							rotacao = {0,0,0, -1},
						},
						
						[3] = {
							anim = {"ped", "DRIVE_BOAT", 1, true, true, false, true, 1, true},
							delay = 650,
							posicao = {-0.75,-0.94999998807907,1, -1},
							rotacao = {0,0,0, -1},
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"quad", "QUAD_getoff_LHS", 650, false, true, false, false},
							delay = 0,
							posicao = {-1,-0.94999998807907,1.5, -1},
							rotacao = {0,0,0, -1},
						},
						
						[2] = {
							delay = 150,
							posicao = {-2,-0.93000000715256,0, 250},
							rotacao = {0,0,0, -1},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"quad", "QUAD_getoff_LHS", 650, false, true, false, false},
							delay = 0,
							posicao = {-1,-0.94999998807907,1.5, -1},
							rotacao = {0,0,0, -1},
						},
						
						[2] = {
							delay = 150,
							posicao = {-2,-0.93000000715256,0, 250},
							rotacao = {0,0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
				[2] = {
				posicao = {-0.75,-0.94999998807907,0.25},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim = {"ped", "DRIVE_BOAT", 1, true, true, false, true, 1, true},
							delay = 0,
							posicao = {-0.75,-0.94999998807907,1, -1},
							rotacao = {0,0,0, -1},
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"quad", "QUAD_getoff_LHS", 650, false, true, false, false},
							delay = 0,
							posicao = {-1,-0.94999998807907,1.5, -1},
							rotacao = {0,0,0, -1},
						},
						
						[2] = {
							delay = 150,
							posicao = {-2,-0.93000000715256,0, 250},
							rotacao = {0,0,0, -1},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"quad", "QUAD_getoff_LHS", 650, false, true, false, false},
							delay = 0,
							posicao = {-1,-0.94999998807907,1.5, -1},
							rotacao = {0,0,0, -1},
						},
						
						[2] = {
							delay = 150,
							posicao = {-2,-0.93000000715256,0, 250},
							rotacao = {0,0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
			
			},
			--
		},
		--
		[2] = {
			--
			radio = true,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "seat_front",
			},
			--
			acesso = {
				--
				[1] = {
				posicao = {0.8299999713898,-0.93000000715256,-0},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"vortex", "car_jumpin_rhs", 650, false, true, false, true},
							delay = 0,
							posicao = {1.25,-0.93000000715256,-0, -1},
							rotacao = {0,0,0, -1},
						},
							
						[2] = {
							delay = 50,
							posicao = {0,-0.94999998807907,1, 600},
							rotacao = {0,0,0, -1},
						},
						
						[3] = {
							anim = {"ped", "DRIVE_BOAT", 1, true, true, false, true, 1, true},
							delay = 650,
							posicao = {0,-0.94999998807907,1, -1},
							rotacao = {0,0,0, -1},
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"quad", "QUAD_getoff_RHS", 650, false, true, false, false},
							delay = 0,
							posicao = {0.25,-0.94999998807907,1.5, -1},
							rotacao = {0,0,0, -1},
						},
						
						[2] = {
							delay = 150,
							posicao = {1,-0.93000000715256,0, 250},
							rotacao = {0,0,0, -1},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"quad", "QUAD_getoff_RHS", 650, false, true, false, false},
							delay = 0,
							posicao = {0.25,-0.94999998807907,1.5, -1},
							rotacao = {0,0,0, -1},
						},
						
						[2] = {
							delay = 150,
							posicao = {1,-0.93000000715256,0, 250},
							rotacao = {0,0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
				[2] = {
				posicao = {0,-0.94999998807907,0.25},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim = {"ped", "DRIVE_BOAT", 1, true, true, false, true, 1, true},
							delay = 0,
							posicao = {0,-0.94999998807907,1, -1},
							rotacao = {0,0,0, -1},
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"quad", "QUAD_getoff_RHS", 650, false, true, false, false},
							delay = 0,
							posicao = {0.25,-0.94999998807907,1.5, -1},
							rotacao = {0,0,0, -1},
						},
						
						[2] = {
							delay = 150,
							posicao = {1,-0.93000000715256,0, 250},
							rotacao = {0,0,0, -1},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"quad", "QUAD_getoff_RHS", 650, false, true, false, false},
							delay = 0,
							posicao = {0.25,-0.94999998807907,1.5, -1},
							rotacao = {0,0,0, -1},
						},
						
						[2] = {
							delay = 150,
							posicao = {1,-0.93000000715256,0, 250},
							rotacao = {0,0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[3] = {
			--
			radio = true,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "seat_front",
			},
			--
			acesso = {
				--
				[1] = {
				posicao = {-1.6299999713898,-1.55,-0},
				rotacao = {0,0,0, -1},
					--
					entrar = {
						
						[1] = {
							anim =  {"ped", "climb_stand", 650, false, true, false, true},
							delay = 0,
							posicao = {-2,-1.55,-0, -1},
							rotacao = {0,0,-90, -1},
						},
							
						[2] = {
							delay = 50,
							posicao = {-1.1,-1.55,0.5, 600},
							rotacao = {0,0,-90, -1},
						},
						
						[3] = {
							anim = {"MISC", "Seat_talk_01", -1, false, true, false, true},
							delay = 650,
							posicao = {-1.1,-1.55,0.8, -1},
							rotacao = {0,0,-90, -1},
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"quad", "QUAD_getoff_LHS", 650, false, true, false, false},
							delay = 0,
							posicao = {-1.1,-1.55,1, -1},
							rotacao = {0,0,-90, -1},
						},
						
						[2] = {
							delay = 150,
							posicao = {-2,-1.55,-0, 250},
							rotacao = {0,0,-90, -1},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"quad", "QUAD_getoff_LHS", 650, false, true, false, false},
							delay = 0,
							posicao = {-1.1,-1.55,1, -1},
							rotacao = {0,0,-90, -1},
						},
						
						[2] = {
							delay = 150,
							posicao = {-2,-1.55,-0, 250},
							rotacao = {0,0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
				[2] = {
				posicao = {-1.1,-1.55,0.25},
				rotacao = {0,0,0, -1},
					--
					entrar = {
						
						[1] = {
							anim = {"MISC", "Seat_talk_01", -1, false, true, false, true},
							delay = 0,
							posicao = {-1.1,-1.55,0.8, -1},
							rotacao = {0,0,-90, -1},
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"quad", "QUAD_getoff_LHS", 650, false, true, false, false},
							delay = 0,
							posicao = {-1.1,-1.55,1, -1},
							rotacao = {0,0,-90, -1},
						},
						
						[2] = {
							delay = 150,
							posicao = {-2,-1.55,-0, 250},
							rotacao = {0,0,-90, -1},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"quad", "QUAD_getoff_LHS", 650, false, true, false, false},
							delay = 0,
							posicao = {-1.1,-1.55,1, -1},
							rotacao = {0,0,-90, -1},
						},
						
						[2] = {
							delay = 150,
							posicao = {-2,-1.55,-0, 250},
							rotacao = {0,0,-90, -1},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
			
			},
			--
		},
		--
		[4] = {
			--
			radio = true,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "seat_front",
			},
			--
			acesso = {
				--
				[1] = {
				posicao = {0.8299999713898,-1.55,-0},
				rotacao = {0,0,0, -1},
					--
					entrar = {
						
						[1] = {
							anim =  {"ped", "climb_stand", 650, false, true, false, true},
							delay = 0,
							posicao = {1.25,-1.55,-0, -1},
							rotacao = {0,0,90, -1},
						},
							
						[2] = {
							delay = 50,
							posicao = {0.25,-1.55,0.5, 600},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							anim = {"MISC", "Seat_talk_01", -1, false, true, false, true},
							delay = 650,
							posicao = {0.25,-1.55,0.8, -1},
							rotacao = {0,0,90, -1},
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"quad", "QUAD_getoff_RHS", 650, false, true, false, false},
							delay = 0,
							posicao = {0.25,-1.55,1, -1},
							rotacao = {0,0,90, -1},
						},
						
						[2] = {
							delay = 150,
							posicao = {0.8299999713898,-1.55,-0, 250},
							rotacao = {0,0,90, -1},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"quad", "QUAD_getoff_RHS", 650, false, true, false, false},
							delay = 0,
							posicao = {0.25,-1.55,1, -1},
							rotacao = {0,0,90, -1},
						},
						
						[2] = {
							delay = 150,
							posicao = {0.8299999713898,-1.55,-0, 250},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
				[2] = {
				posicao = {0.25,-1.55,0.25},
				rotacao = {0,0,0, -1},
					--
					entrar = {
						
						[1] = {
							anim = {"MISC", "Seat_talk_01", -1, false, true, false, true},
							delay = 0,
							posicao = {0.25,-1.55,0.8, -1},
							rotacao = {0,0,90, -1},
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"quad", "QUAD_getoff_RHS", 650, false, true, false, false},
							delay = 0,
							posicao = {0.25,-1.55,1, -1},
							rotacao = {0,0,90, -1},
						},
						
						[2] = {
							delay = 150,
							posicao = {0.8299999713898,-1.55,-0, 250},
							rotacao = {0,0,90, -1},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"quad", "QUAD_getoff_RHS", 650, false, true, false, false},
							delay = 0,
							posicao = {0.25,-1.55,1, -1},
							rotacao = {0,0,90, -1},
						},
						
						[2] = {
							delay = 150,
							posicao = {0.8299999713898,-1.55,-0, 250},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
			
			},
			--
		},
		--
	},
	--
	[482] = { --Burrito
		--
		[1] = {
			--
			radio = true,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "seat_rear",
			},
			--
			acesso = {
				--
				[1] = {
				porta = 4,
				posicao = {-0.75,-1.55,0},
				rotacao = {0,0,0, -1},
					--
					entrar = {
						--
						[1] = {
							anim =  {"van", "VAN_open_back_LHS", -1, false, true, false, true},
							delay = 0,
							posicao = {-0.75,-1.55,0, -1},
							ratio = {1, 500, 500},
						},
						--
						[2] = {
							anim =  {"van", "VAN_getin_Back_LHS", -1, false, true, false, true},
							delay = 1000,
							posicao = {-1.075,1.35,0, 500},
							ratio = {0, 500, 750},
						},
						--
						[3] = {
							anim = {"van", "VAN_close_back_LHS", -1, false, true, false, true},
							delay = 1750,
						},
						--
					},
					--
					sair = {
					
						[1] = {
							anim =  {"van", "VAN_getout_back_LHS", -1, false, true, false, false},
							delay = 0,
							posicao = {-1.075,1.35,0, -1},
							rotacao = {0,-0,0, -1},
						},
						
						[2] = {
							delay = 50,
							ratio = {1, 500, -1},
							posicao = {-0.75,-1.55,0, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_close_LHS", -1, false, true, false, false},
							delay = 550,
							ratio = {0, 500, -1},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"van", "VAN_getout_back_LHS", -1, false, true, false, false},
							delay = 0,
							posicao = {-1.075,1.35,0, -1},
							rotacao = {0,-0,0, -1},
						},
						
						[2] = {
							delay = 50,
							ratio = {1, 500, -1},
							posicao = {-0.75,-1.55,0, 500},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
					tombado = {
					
						[1] = {
							anim =  {"ped", "car_crawloutrhs", -1, false, true, false, false},
							delay = 0,
							ratio = {1, 500, -1},
							posicao = {-1.075,-0.25,-0.1, -1},
							rotacao = {0,180,90},
						},
						
						[2] = {
							delay = 100,
							posicao = {-0.75,-1.55,0, 900},
						},
						
						[3] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[2] = {
			--
			radio = true,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "seat_rear",
			},
			--
			acesso = {
				--
				[1] = {
				porta = 5,
				posicao = {-0.3,-1.55,0},
				rotacao = {0,0,0, -1},
					--
					entrar = {
						--
						[1] = {
							anim =  {"van", "VAN_open_back_RHS", -1, false, true, false, true},
							delay = 0,
							posicao = {-0.3,-1.55,0, -1},
							ratio = {1, 500, 500},
						},
						--
						[2] = {
							anim =  {"van", "VAN_getin_Back_RHS", -1, false, true, false, true},
							delay = 1000,
							posicao = {-0, 1.25,0, 500},
							ratio = {0, 500, 750},
						},
						--
						[3] = {
							anim = {"van", "VAN_close_back_RHS", -1, false, true, false, true},
							delay = 1750,
						},
						--
						[4] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 2000,
							rotacao = {0,-0,90, -1},
						},
						--
					},
					--
					sair = {
					
						[1] = {
							anim =  {"van", "VAN_getout_back_RHS", -1, false, true, false, false},
							delay = 0,
							posicao = {-0, 1.25,0, -1},
							rotacao = {0,-0,0, -1},
						},
						
						[2] = {
							delay = 50,
							ratio = {1, 500, -1},
							posicao = {-0.3,-1.55,0, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_close_RHS", -1, false, true, false, false},
							delay = 550,
							ratio = {0, 500, -1},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"van", "VAN_getout_back_RHS", -1, false, true, false, false},
							delay = 0,
							posicao = {-0, 1.25,0, -1},
							rotacao = {0,-0,0, -1},
						},
						
						[2] = {
							delay = 50,
							ratio = {1, 500, -1},
							posicao = {-0.3,-1.55,0, 500},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
					tombado = {
					
						[1] = {
							anim =  {"ped", "car_crawloutrhs", -1, false, true, false, false},
							delay = 0,
							ratio = {1, 500, -1},
							posicao = {-0, 1.25,0, -1},
							rotacao = {0,180,-90},
						},
						
						[2] = {
							delay = 100,
							posicao = {-0.3,-1.55,0, 900},
						},
						
						[3] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[3] = {
			--
			radio = true,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "seat_rear",
			},
			--
			acesso = {
				--
				[1] = {
				porta = 4,
				posicao = {-0.75,-1.55,0},
				rotacao = {0,0,0, -1},
					--
					entrar = {
						--
						[1] = {
							anim =  {"van", "VAN_open_back_LHS", -1, false, true, false, true},
							delay = 0,
							posicao = {-0.75,-1.55,0, -1},
							ratio = {1, 500, 500},
						},
						--
						[2] = {
							anim =  {"van", "VAN_getin_Back_LHS", -1, false, true, false, true},
							delay = 1000,
							posicao = {-1.075,-0.1,0, 500},
							ratio = {0, 500, 750},
						},
						--
						[3] = {
							anim = {"van", "VAN_close_back_LHS", -1, false, true, false, true},
							delay = 1750,
						},
						--
					},
					--
					sair = {
					
						[1] = {
							anim =  {"van", "VAN_getout_back_LHS", -1, false, true, false, false},
							delay = 0,
							posicao = {-1.075,-0.1,0, -1},
							rotacao = {0,-0,0, -1},
						},
						
						[2] = {
							delay = 50,
							ratio = {1, 500, -1},
							posicao = {-0.75,-1.55,0, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_close_LHS", -1, false, true, false, false},
							delay = 550,
							ratio = {0, 500, -1},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"van", "VAN_getout_back_LHS", -1, false, true, false, false},
							delay = 0,
							posicao = {-1.075,-0.1,0, -1},
							rotacao = {0,-0,0, -1},
						},
						
						[2] = {
							delay = 50,
							ratio = {1, 500, -1},
							posicao = {-0.75,-1.55,0, 500},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
					tombado = {
					
						[1] = {
							anim =  {"ped", "car_crawloutrhs", -1, false, true, false, false},
							delay = 0,
							ratio = {1, 500, -1},
							posicao = {-1.075,-0.25,-0.1, -1},
							rotacao = {0,180,90},
						},
						
						[2] = {
							delay = 100,
							posicao = {-0.75,-1.55,0, 900},
						},
						
						[3] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[4] = {
			--
			radio = true,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "seat_rear",
			},
			--
			acesso = {
				--
				[1] = {
				porta = 5,
				posicao = {-0.3,-1.55,0},
				rotacao = {0,0,0, -1},
					--
					entrar = {
						--
						[1] = {
							anim =  {"van", "VAN_open_back_RHS", -1, false, true, false, true},
							delay = 0,
							posicao = {-0.3,-1.55,0, -1},
							ratio = {1, 500, 500},
						},
						--
						[2] = {
							anim =  {"van", "VAN_getin_Back_RHS", -1, false, true, false, true},
							delay = 1000,
							posicao = {-0, 0.65,0, 500},
							ratio = {0, 500, 750},
						},
						--
						[3] = {
							anim = {"van", "VAN_close_back_RHS", -1, false, true, false, true},
							delay = 1750,
						},
						--
					},
					--
					sair = {
					
						[1] = {
							anim =  {"van", "VAN_getout_back_RHS", -1, false, true, false, false},
							delay = 0,
							posicao = {-0, 0.65,0, -1},
							rotacao = {0,-0,0, -1},
						},
						
						[2] = {
							delay = 50,
							ratio = {1, 500, -1},
							posicao = {-0.3,-1.55,0, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_close_RHS", -1, false, true, false, false},
							delay = 550,
							ratio = {0, 500, -1},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"van", "VAN_getout_back_RHS", -1, false, true, false, false},
							delay = 0,
							posicao = {-0, 0.65,0, -1},
							rotacao = {0,-0,0, -1},
						},
						
						[2] = {
							delay = 50,
							ratio = {1, 500, -1},
							posicao = {-0.3,-1.55,0, 500},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
					tombado = {
					
						[1] = {
							anim =  {"ped", "car_crawloutrhs", -1, false, true, false, false},
							delay = 0,
							ratio = {1, 500, -1},
							posicao = {-0, 0.65,0, -1},
							rotacao = {0,180,-90},
						},
						
						[2] = {
							delay = 100,
							posicao = {-0.3,-1.55,0, 900},
						},
						
						[3] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
	},
	--
	[408] = { --Trashmaster
		--
		[1] = {
			--
			radio = false,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "light_rear_main",
			},
			--
			acesso = {
				--
				[1] = {
				posicao = {-2.15,-0.425,-3.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							posicao = {-2.15,-0.425,-2.3, -1},
							rotacao = {0,0,-90, -1},
						},
							
						[2] = {
							delay = 50,
							posicao = {-2,-0.425,-2.3, 300},
						},
						
						[3] = {
							anim = {"ped", "DRIVE_BOAT", 1, true, true, false, true, 1, true},
							delay = 350,
							posicao = {-2,-0.425,-2.3, -1},
						},
						
					},
					--
					sair = {
						
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
						},
						
						[2] = {
							delay = 50,
							posicao = {-2.15,-0.425,-2.3, 300},
						},
						
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
						},
						
						[2] = {
							delay = 50,
							posicao = {-2.15,-0.425,-2.3, 300},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[2] = {
			--
			radio = false,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "light_rear_main",
			},
			--
			acesso = {
				--
				[1] = {
				posicao = {1.15,-0.425,-3.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							posicao = {1.15,-0.425,-2.3, -1},
							rotacao = {0,0,90, -1},
						},
							
						[2] = {
							delay = 50,
							posicao = {1,-0.425,-2.3, 300},
						},
						
						[3] = {
							anim = {"ped", "DRIVE_BOAT", 1, true, true, false, true, 1, true},
							delay = 350,
							posicao = {1,-0.425,-2.3, -1},
						},
						
					},
					
					--
					sair = {
						
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
						},
						
						[2] = {
							delay = 50,
							posicao = {1.15,-0.425,-2.3, 300},
						},
						
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
						},
						
						[2] = {
							delay = 50,
							posicao = {1.15,-0.425,-2.3, 300},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
	},
	--
	[427] = { --Enforcer
		--
		[1] = {
			--
			radio = true,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "seat_rear",
			},
			--
			acesso = {
				--
				[1] = {
				porta = 4,
				posicao = {-1.25,-1.55,-0.75},
				rotacao = {0,0,0, -1},
					--
					entrar = {
						--
						[1] = {
							anim =  {"van", "VAN_open_back_LHS", -1, false, true, false, true},
							delay = 0,
							posicao = {-1.25,-1.55,-0.1, -1},
							ratio = {1, 500, 500},
						},
						--
						[2] = {
							anim =  {"van", "VAN_getin_Back_LHS", -1, false, true, false, true},
							delay = 1000,
							posicao = {-1.75,1.35,-0.1, 500},
							ratio = {0, 500, 750},
						},
						--
						[3] = {
							anim = {"van", "VAN_close_back_LHS", -1, false, true, false, true},
							delay = 1750,
						},
						--
					},
					--
					sair = {
					
						[1] = {
							anim =  {"van", "VAN_getout_back_LHS", -1, false, true, false, false},
							delay = 0,
							posicao = {-1.75,1.35,-0.1, -1},
							rotacao = {0,-0,0, -1},
						},
						
						[2] = {
							delay = 50,
							ratio = {1, 500, -1},
							posicao = {-1.25,-1.55,-0.1, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_close_LHS", -1, false, true, false, false},
							delay = 550,
							ratio = {0, 500, -1},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"van", "VAN_getout_back_LHS", -1, false, true, false, false},
							delay = 0,
							posicao = {-1.75,1.35,-0.1, -1},
							rotacao = {0,-0,0, -1},
						},
						
						[2] = {
							delay = 50,
							ratio = {1, 500, -1},
							posicao = {-1.25,-1.55,-0.1, 500},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
					tombado = {
					
						[1] = {
							anim =  {"ped", "car_crawloutrhs", -1, false, true, false, false},
							delay = 0,
							ratio = {1, 500, -1},
							posicao = {-1.75,1.35,-0.1, -1},
							rotacao = {0,180,90},
						},
						
						[2] = {
							delay = 100,
							posicao = {-1.25,-1.55,-0.1, 900},
						},
						
						[3] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[2] = {
			--
			radio = true,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "seat_rear",
			},
			--
			acesso = {
				--
				[1] = {
				porta = 5,
				posicao = {-0.25,-1.55,-0.75},
				rotacao = {0,0,0, -1},
					--
					entrar = {
						--
						[1] = {
							anim =  {"van", "VAN_open_back_RHS", -1, false, true, false, true},
							delay = 0,
							posicao = {-0.25,-1.55,0, -1},
							ratio = {1, 500, 500},
						},
						--
						[2] = {
							anim =  {"van", "VAN_getin_Back_RHS", -1, false, true, false, true},
							delay = 1000,
							posicao = {-0, 1.25,0, 500},
							ratio = {0, 500, 750},
						},
						--
						[3] = {
							anim = {"van", "VAN_close_back_RHS", -1, false, true, false, true},
							delay = 1750,
						},
						--
						[4] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 2000,
							rotacao = {0,-0,90, -1},
						},
						--
					},
					--
					sair = {
					
						[1] = {
							anim =  {"van", "VAN_getout_back_RHS", -1, false, true, false, false},
							delay = 0,
							posicao = {-0, 1.25,0, -1},
							rotacao = {0,-0,0, -1},
						},
						
						[2] = {
							delay = 50,
							ratio = {1, 500, -1},
							posicao = {-0.25,-1.55,0, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_close_RHS", -1, false, true, false, false},
							delay = 550,
							ratio = {0, 500, -1},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"van", "VAN_getout_back_RHS", -1, false, true, false, false},
							delay = 0,
							posicao = {-0, 1.25,0, -1},
							rotacao = {0,-0,0, -1},
						},
						
						[2] = {
							delay = 50,
							ratio = {1, 500, -1},
							posicao = {-0.25,-1.55,0, 500},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
					tombado = {
					
						[1] = {
							anim =  {"ped", "car_crawloutrhs", -1, false, true, false, false},
							delay = 0,
							ratio = {1, 500, -1},
							posicao = {-0, 1.25,0, -1},
							rotacao = {0,180,-90},
						},
						
						[2] = {
							delay = 100,
							posicao = {-0.25,-1.55,0, 900},
						},
						
						[3] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[3] = {
			--
			radio = true,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "seat_rear",
			},
			--
			acesso = {
				--
				[1] = {
				porta = 4,
				posicao = {-1.25,-1.55,-0.75},
				rotacao = {0,0,0, -1},
					--
					entrar = {
						--
						[1] = {
							anim =  {"van", "VAN_open_back_LHS", -1, false, true, false, true},
							delay = 0,
							posicao = {-1.25,-1.55,-0.1, -1},
							ratio = {1, 500, 500},
						},
						--
						[2] = {
							anim =  {"van", "VAN_getin_Back_LHS", -1, false, true, false, true},
							delay = 1000,
							posicao = {-1.75,-0.1,-0.1, 500},
							ratio = {0, 500, 750},
						},
						--
						[3] = {
							anim = {"van", "VAN_close_back_LHS", -1, false, true, false, true},
							delay = 1750,
						},
						--
					},
					--
					sair = {
					
						[1] = {
							anim =  {"van", "VAN_getout_back_LHS", -1, false, true, false, false},
							delay = 0,
							posicao = {-1.75,1.35,-0.1, -1},
							rotacao = {0,-0,0, -1},
						},
						
						[2] = {
							delay = 50,
							ratio = {1, 500, -1},
							posicao = {-1.25,-0.1,-0.1, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_close_LHS", -1, false, true, false, false},
							delay = 550,
							ratio = {0, 500, -1},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"van", "VAN_getout_back_LHS", -1, false, true, false, false},
							delay = 0,
							posicao = {-1.75,1.35,-0.1, -1},
							rotacao = {0,-0,0, -1},
						},
						
						[2] = {
							delay = 50,
							ratio = {1, 500, -1},
							posicao = {-1.25,-0.1,-0.1, 500},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
					tombado = {
					
						[1] = {
							anim =  {"ped", "car_crawloutrhs", -1, false, true, false, false},
							delay = 0,
							ratio = {1, 500, -1},
							posicao = {-1.75,1.35,-0.1, -1},
							rotacao = {0,180,90},
						},
						
						[2] = {
							delay = 100,
							posicao = {-1.25,-0.1,-0.1, 500},
						},
						
						[3] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[4] = {
			--
			radio = true,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "seat_rear",
			},
			--
			acesso = {
				--
				[1] = {
				porta = 5,
				posicao = {-0.25,-1.55,-0.75},
				rotacao = {0,0,0, -1},
					--
					entrar = {
						--
						[1] = {
							anim =  {"van", "VAN_open_back_RHS", -1, false, true, false, true},
							delay = 0,
							posicao = {-0.25,-1.55,-0.1, -1},
							ratio = {1, 500, 500},
						},
						--
						[2] = {
							anim =  {"van", "VAN_getin_Back_RHS", -1, false, true, false, true},
							delay = 1000,
							posicao = {-0, 0.625,-0.1, 500},
							ratio = {0, 500, 750},
						},
						--
						[3] = {
							anim = {"van", "VAN_close_back_RHS", -1, false, true, false, true},
							delay = 1750,
						},
						--
					},
					--
					sair = {
					
						[1] = {
							anim =  {"van", "VAN_getout_back_RHS", -1, false, true, false, false},
							delay = 0,
							posicao = {-0, 0.625,-0.1, -1},
							rotacao = {0,-0,0, -1},
						},
						
						[2] = {
							delay = 50,
							ratio = {1, 500, -1},
							posicao = {-0.25,-1.55,0, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_close_RHS", -1, false, true, false, false},
							delay = 550,
							ratio = {0, 500, -1},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"van", "VAN_getout_back_RHS", -1, false, true, false, false},
							delay = 0,
							posicao = {-0, 0.625,-0.1, -1},
							rotacao = {0,-0,0, -1},
						},
						
						[2] = {
							delay = 50,
							ratio = {1, 500, -1},
							posicao = {-0.25,-1.55,0, 500},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
					tombado = {
					
						[1] = {
							anim =  {"ped", "car_crawloutrhs", -1, false, true, false, false},
							delay = 0,
							ratio = {1, 500, -1},
							posicao = {-0, 0.625,-0.1, -1},
							rotacao = {0,180,-90},
						},
						
						[2] = {
							delay = 100,
							posicao = {-0.25,-1.55,0, 900},
						},
						
						[3] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[5] = {
			--
			radio = false,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "light_rear_second",
			},
			--
			acesso = {
				--
				[1] = {
				posicao = {-2.230,-0.425,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							posicao = {-2.230,-0.425,0, -1},
							rotacao = {0,0,0, -1},
						},
							
						[2] = {
							delay = 50,
							posicao = {-2.230,-0.15,0.25, 300},
						},
						
						[3] = {
							anim = {"ped", "abseil", -1, true, true, false, false, 1, true,true, 0.0, 0.4},
							delay = 350,
							posicao = {-2.230,-0.15,0.25, -1},
							rotacao = {-7.5,8,7.5, -1},
						},
						
					},
					--
					sair = {
						
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							posicao = {-2.230,-0.15,0.25, -1},
							rotacao = {0,0,0,-1},
						},
						
						[2] = {
							delay = 50,
							posicao = {-2.230,-0.425,0, 300},
						},
						
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							posicao = {-2.230,-0.15,0.25, -1},
							rotacao = {0,0,0,-1},
						},
						
						[2] = {
							delay = 50,
							posicao = {-2,-0.425,0, 300},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[6] = {
			--
			radio = false,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "light_rear_second",
			},
			--
			acesso = {
				--
				[1] = {
				posicao = {0.225,-0.425,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							posicao = {0.225,-0.425,0, -1},
							rotacao = {0,0,0, -1},
						},
							
						[2] = {
							delay = 50,
							posicao = {0.225,-0.15,0.25, 300},
						},
						
						[3] = {
							anim = {"ped", "abseil", -1, true, true, false, false, 1, true,false, 0.0, 0.4},
							delay = 350,
							posicao = {0.225,-0.15,0.25, -1},
							rotacao = {-7.5,-8,90, -1},
						},
						
					},
					--
					sair = {
						
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							posicao = {0.225,-0.15,0.25, -1},
							rotacao = {0,0,0, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0.225,-0.425,0, 300},
						},
						
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							posicao = {0.225,-0.15,0.25, -1},
							rotacao = {0,0,0, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0.225,-0.425,0, 300},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[7] = {
			--
			radio = false,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "light_rear_second",
			},
			--
			acesso = {
				--
				[1] = {
				posicao = {0.625,2.5,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							posicao = {0.625,2.5,0, -1},
							rotacao = {0,0,90, -1},
						},
							
						[2] = {
							delay = 50,
							posicao = {0.5,2.5,0.15, 300},
						},
						
						[3] = {
							anim = {"ped", "abseil", -1, true, true, false, false, 1, true,false, 0.0, 0.4},
							delay = 350,
							posicao = {0.5,2.5,0.15, -1},
							rotacao = {0,-10,105, -1},
						},
						
					},
					--
					sair = {
						
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							rotacao = {0,0,90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0.625,2.5,0, 300},
						},
						
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							rotacao = {0,0,90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0.625,2.5,0, 300},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[8] = {
			--
			radio = false,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "light_rear_second",
			},
			--
			acesso = {
				--
				[1] = {
				posicao = {0.625,3.325,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							posicao = {0.625,3.325,0, -1},
							rotacao = {0,0,90, -1},
						},
							
						[2] = {
							delay = 50,
							posicao = {0.5,3.325,0.15, 300},
						},
						
						[3] = {
							anim = {"ped", "abseil", -1, true, true, false, false, 1, true,false, 0.0, 0.4},
							delay = 350,
							posicao = {0.5,3.325,0.15, -1},
							rotacao = {0,-10,105, -1},
						},
						
					},
					--
					sair = {
						
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							rotacao = {0,0,90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0.625,3.325,0, 300},
						},
						
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							rotacao = {0,0,90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0.625,3.325,0, 300},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[9] = {
			--
			radio = false,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "light_rear_second",
			},
			--
			acesso = {
				--
				[1] = {
				posicao = {0.625,4.15,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							posicao = {0.625,4.15,0, -1},
							rotacao = {0,0,90, -1},
						},
							
						[2] = {
							delay = 50,
							posicao = {0.5,4.15,0.15, 300},
						},
						
						[3] = {
							anim = {"ped", "abseil", -1, true, true, false, false, 1, true,false, 0.0, 0.4},
							delay = 350,
							posicao = {0.5,4.15,0.15, -1},
							rotacao = {0,-10,105, -1},
						},
						
					},
					--
					sair = {
						
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							rotacao = {0,0,90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0.625,4.15,0, 300},
						},
						
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							rotacao = {0,0,90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0.625,4.15,0, 300},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[10] = {
			--
			radio = false,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "light_rear_second",
			},
			--
			acesso = {
				--
				[1] = {
				posicao = {-2.625,2.5,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							posicao = {-2.625,2.5,0, -1},
							rotacao = {0,0,-90, -1},
						},
							
						[2] = {
							delay = 50,
							posicao = {-2.5,2.5,0.15, 300},
						},
						
						[3] = {
							anim = {"ped", "abseil", -1, true, true, false, false, 1, true, true, 0.0, 0.4},
							delay = 350,
							posicao = {-2.5,2.5,0.15, -1},
							rotacao = {0,10,0, -1},
						},
						
					},
					--
					sair = {
						
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							rotacao = {0,0,-90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {-2.625,2.5,0, 300},
						},
						
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							rotacao = {0,0,-90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {-2.625,2.5,0, 300},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[11] = {
			--
			radio = false,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "light_rear_second",
			},
			--
			acesso = {
				--
				[1] = {
				posicao = {-2.625,3.325,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							posicao = {-2.625,3.325,0, -1},
							rotacao = {0,0,-90, -1},
						},
							
						[2] = {
							delay = 50,
							posicao = {-2.5,3.325,0.15, 300},
						},
						
						[3] = {
							anim = {"ped", "abseil", -1, true, true, false, false, 1, true, true, 0.0, 0.4},
							delay = 350,
							posicao = {-2.5,3.325,0.15, -1},
							rotacao = {0,10,0, -1},
						},
						
					},
					--
					sair = {
						
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							rotacao = {0,0,-90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {-2.625,3.325,0, 300},
						},
						
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							rotacao = {0,0,-90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {-2.625,3.325,0, 300},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[12] = {
			--
			radio = false,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "light_rear_second",
			},
			--
			acesso = {
				--
				[1] = {
				posicao = {-2.625,4.15,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							posicao = {-2.625,4.15,0, -1},
							rotacao = {0,0,-90, -1},
						},
							
						[2] = {
							delay = 50,
							posicao = {-2.5,4.15,0.15, 300},
						},
						
						[3] = {
							anim = {"ped", "abseil", -1, true, true, false, false, 1, true, true, 0.0, 0.4},
							delay = 350,
							posicao = {-2.5,4.15,0.15, -1},
							rotacao = {0,10,0, -1},
						},
						
					},
					--
					sair = {
						
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							rotacao = {0,0,-90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {-2.625,4.15,0, 300},
						},
						
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"ped", "WALK_player", 350, false, true, false, false},
							delay = 0,
							rotacao = {0,0,-90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {-2.625,4.15,0, 300},
						},
						
						[3] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 600,
						},
						
						[4] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
	},
	--
	[433] = { --Barracks
		--
		[1] = {
			--
			radio = false,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "engine",
			},
			--
			acesso = {
				--
				[1] = {
				porta = 1,
				posicao = {-1,-8.25,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"ped", "climb_jump", -1, false, false, false, true, 1, true},
							delay = 0,
							posicao = {0,-8.175,-0.45, -1},
						},
						
						[2] = {
							anim =  {"ped", "climb_pull", -1, false, false, false, true, 1, true},
							delay = 500,
						},
						
						[3] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							posicao = {0,-8.25,0.5, -1},
							delay = 1400,
						},
						
						[4] = {
							posicao = {0,-8.25,1, -1},
							delay = 1650,
						},
						
						[5] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							posicao = {0,-2.75,1, 2000},
							delay = 2250,
						},
						
						[6] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							posicao = {-1,-2.7,0.75, 750},
							rotacao = {0,0,-90,750},
							delay = 4250,
						},
						
						[7] = {
							anim = {"ped", "CAR_sitp", -1, false, true, false, true},
							posicao = {-1,-2.75,0.35, 250},
							rotacao = {0,15,-90, -1},
							delay = 5000,
						},
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,-2.7,1, -1},
							rotacao = {0,0,-90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0,-2.7,1, 500},
							rotacao = {0,-0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 675,
							posicao = {0,-7.5,1, 2000},
							rotacao = {0,-0,-180, 200},
						},
						
						[4] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							delay = 2575,
						},
						
						[5] = {
							anim =  {},
							delay = 3550,
							posicao = {0,-8.5,-0.45, 200},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,-2.7,1, -1},
							rotacao = {0,0,-90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0,-2.7,1, 500},
							rotacao = {0,-0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 675,
							posicao = {0,-7.5,1, 2000},
							rotacao = {0,-0,-180, 200},
						},
						
						
						[4] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							delay = 2575,
						},
						
						[5] = {
							anim =  {},
							delay = 3550,
							posicao = {0,-8.5,-0.45, 200},
						},
						
						[6] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 3750,
						},
						
						[7] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 5250,
						},
						
					},
					--
					tombado = {
					
						[1] = {
							anim =  {"ped", "car_crawloutrhs", -1, false, true, false, false},
							delay = 0,
							posicao = {-1,-2.7,0.35, -1},
							rotacao = {0,180,0},
						},
						
						[2] = {
							delay = 100,
							osicao = {0,-8.25,-0.45, 900},
							rotacao = {0,180,0},
						},
						
						[3] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
					
					},
					--
				},
				--
			},
			--
		},
		--
		[2] = {
			--
			radio = false,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "engine",
			},
			--
			acesso = {
				--
				[1] = {
				porta = 1,
				posicao = {1,-8.25,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"ped", "climb_jump", -1, false, false, false, true, 1, true},
							delay = 0,
							posicao = {0,-8.175,-0.45, -1},
						},
						
						[2] = {
							anim =  {"ped", "climb_pull", -1, false, false, false, true, 1, true},
							delay = 500,
						},
						
						[3] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							posicao = {0,-8.25,0.5, -1},
							delay = 1400,
						},
						
						[4] = {
							posicao = {0,-8.25,1, -1},
							delay = 1650,
						},
						
						[5] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							posicao = {0,-2.75,1, 2000},
							delay = 2250,
						},
						
						[6] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							posicao = {1,-2.7,0.75, 750},
							rotacao = {0,0,90,750},
							delay = 4250,
						},
						
						[7] = {
							anim = {"ped", "CAR_sitp", -1, false, true, false, true},
							posicao = {1,-2.75,0.35, 250},
							rotacao = {0,-15,90, -1},
							delay = 5000,
						},
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,-2.7,1, -1},
							rotacao = {0,0,90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0,-2.7,1, 500},
							rotacao = {0,-0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 675,
							posicao = {0,-7.5,1, 2000},
							rotacao = {0,-0,180, 200},
						},
						
						
						[4] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							delay = 2575,
						},
						
						[5] = {
							anim =  {},
							delay = 3550,
							posicao = {0,-8.5,-0.45, 200},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,-2.7,1, -1},
							rotacao = {0,0,90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0,-2.7,1, 500},
							rotacao = {0,-0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 675,
							posicao = {0,-7.5,1, 2000},
							rotacao = {0,-0,180, 200},
						},
						
						
						[4] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							delay = 2575,
						},
						
						[5] = {
							anim =  {},
							delay = 3550,
							posicao = {0,-8.5,-0.45, 200},
						},
						
						[6] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 3750,
						},
						
						[7] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 5250,
						},
						
					},
					--
					tombado = {
					
						[1] = {
							anim =  {"ped", "car_crawloutrhs", -1, false, true, false, false},
							delay = 0,
							posicao = {1,-2.7,0.35, -1},
							rotacao = {0,180,0},
						},
						
						[2] = {
							delay = 100,
							osicao = {0,-8.25,-0.45, 900},
							rotacao = {0,180,0},
						},
						
						[3] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
					
					},
					--
				},
				--
			},
			--
		},
		--
		[3] = {
			--
			radio = false,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "engine",
			},
			--
			acesso = {
				--
				[1] = {
				porta = 1,
				posicao = {-1,-8.25,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"ped", "climb_jump", -1, false, false, false, true, 1, true},
							delay = 0,
							posicao = {0,-8.175,-0.45, -1},
						},
						
						[2] = {
							anim =  {"ped", "climb_pull", -1, false, false, false, true, 1, true},
							delay = 500,
						},
						
						[3] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							posicao = {0,-8.25,0.5, -1},
							delay = 1400,
						},
						
						[4] = {
							posicao = {0,-8.25,1, -1},
							delay = 1650,
						},
						
						[5] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							posicao = {0,-3.65,1, 1667},
							delay = 2250,
						},
						
						[6] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							posicao = {-1,-3.6,0.75, 750},
							rotacao = {0,0,-90,750},
							delay = 3919,
						},
						
						[7] = {
							anim = {"ped", "CAR_sitp", -1, false, true, false, true},
							posicao = {-1,-3.65,0.35, 250},
							rotacao = {0,15,-90, -1},
							delay = 4667,
						},
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,-3.6,1, -1},
							rotacao = {0,0,-90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0,-3.6,1, 500},
							rotacao = {0,-0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 675,
							posicao = {0,-7.5,1, 1667},
							rotacao = {0,-0,-180, 200},
						},
						
						
						[4] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							delay = 2242,
						},
						
						[5] = {
							anim =  {},
							delay = 3217,
							posicao = {0,-8.5,-0.45, 200},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,-3.6,1, -1},
							rotacao = {0,0,-90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0,-3.6,1, 500},
							rotacao = {0,-0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 675,
							posicao = {0,-7.5,1, 1667},
							rotacao = {0,-0,-180, 200},
						},
						
						
						[4] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							delay = 2242,
						},
						
						[5] = {
							anim =  {},
							delay = 3217,
							posicao = {0,-8.5,-0.45, 200},
						},
						
						[6] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 3417,
						},
						
						[7] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 4917,
						},
						
					},
					--
					tombado = {
					
						[1] = {
							anim =  {"ped", "car_crawloutrhs", -1, false, true, false, false},
							delay = 0,
							posicao = {-1,-3.6,0.35, -1},
							rotacao = {0,180,0},
						},
						
						[2] = {
							delay = 100,
							osicao = {0,-8.25,-0.45, 750},
							rotacao = {0,180,0},
						},
						
						[3] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
					
					},
					--
				},
				--
			},
			--
		},
		--
		[4] = {
			--
			radio = false,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "engine",
			},
			--
			acesso = {
				--
				[1] = {
				porta = 1,
				posicao = {1,-8.25,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"ped", "climb_jump", -1, false, false, false, true, 1, true},
							delay = 0,
							posicao = {0,-8.175,-0.45, -1},
						},
						
						[2] = {
							anim =  {"ped", "climb_pull", -1, false, false, false, true, 1, true},
							delay = 500,
						},
						
						[3] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							posicao = {0,-8.25,0.5, -1},
							delay = 1400,
						},
						
						[4] = {
							posicao = {0,-8.25,1, -1},
							delay = 1650,
						},
						
						[5] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							posicao = {0,-3.65,1, 1667},
							delay = 2250,
						},
						
						[6] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							posicao = {1,-3.6,0.75, 750},
							rotacao = {0,0,90,750},
							delay = 3919,
						},
						
						[7] = {
							anim = {"ped", "CAR_sitp", -1, false, true, false, true},
							posicao = {1,-3.65,0.35, 250},
							rotacao = {0,-15,90, -1},
							delay = 4667,
						},
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,-3.6,1, -1},
							rotacao = {0,0,90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0,-3.6,1, 500},
							rotacao = {0,-0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 675,
							posicao = {0,-7.5,1, 1667},
							rotacao = {0,-0,180, 200},
						},
						
						
						[4] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							delay = 2242,
						},
						
						[5] = {
							anim =  {},
							delay = 3217,
							posicao = {0,-8.5,-0.45, 200},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,-3.6,1, -1},
							rotacao = {0,0,90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0,-3.6,1, 500},
							rotacao = {0,-0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 675,
							posicao = {0,-7.5,1, 1667},
							rotacao = {0,-0,180, 200},
						},
						
						
						[4] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							delay = 2242,
						},
						
						[5] = {
							anim =  {},
							delay = 3217,
							posicao = {0,-8.5,-0.45, 200},
						},
						
						[6] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 3417,
						},
						
						[7] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 4917,
						},
						
					},
					--
					tombado = {
					
						[1] = {
							anim =  {"ped", "car_crawloutrhs", -1, false, true, false, false},
							delay = 0,
							posicao = {1,-3.6,0.35, -1},
							rotacao = {0,180,0},
						},
						
						[2] = {
							delay = 100,
							osicao = {0,-8.25,-0.45, 750},
							rotacao = {0,180,0},
						},
						
						[3] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
					
					},
					--
				},
				--
			},
			--
		},
		--
		[5] = {
			--
			radio = false,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "engine",
			},
			--
			acesso = {
				--
				[1] = {
				porta = 1,
				posicao = {-1,-8.25,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"ped", "climb_jump", -1, false, false, false, true, 1, true},
							delay = 0,
							posicao = {0,-8.175,-0.45, -1},
						},
						
						[2] = {
							anim =  {"ped", "climb_pull", -1, false, false, false, true, 1, true},
							delay = 500,
						},
						
						[3] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							posicao = {0,-8.25,0.5, -1},
							delay = 1400,
						},
						
						[4] = {
							posicao = {0,-8.25,1, -1},
							delay = 1650,
						},
						
						[5] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							posicao = {0,-4.5,1, 1334},
							delay = 2250,
						},
						
						[6] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							posicao = {-1,-4.45,0.75, 750},
							rotacao = {0,0,-90,750},
							delay = 3586,
						},
						
						[7] = {
							anim = {"ped", "CAR_sitp", -1, false, true, false, true},
							posicao = {-1,-4.5,0.35, 250},
							rotacao = {0,15,-90, -1},
							delay = 4334,
						},
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,-4.45,1, -1},
							rotacao = {0,0,-90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0,-4.5,1, 500},
							rotacao = {0,-0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 675,
							posicao = {0,-7.5,1, 1334},
							rotacao = {0,-0,-180, 200},
						},
						
						
						[4] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							delay = 1909,
						},
						
						[5] = {
							anim =  {},
							delay = 2884,
							posicao = {0,-8.5,-0.45, 200},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,-4.45,1, -1},
							rotacao = {0,0,-90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0,-4.5,1, 500},
							rotacao = {0,-0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 675,
							posicao = {0,-7.5,1, 1334},
							rotacao = {0,-0,-180, 200},
						},
						
						[4] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							delay = 1909,
						},
						
						[5] = {
							anim =  {},
							delay = 2884,
							posicao = {0,-8.5,-0.45, 200},
						},
						
						[6] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 3084,
						},
						
						[7] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 4584,
						},
						
					},
					--
					tombado = {
					
						[1] = {
							anim =  {"ped", "car_crawloutrhs", -1, false, true, false, false},
							delay = 0,
							posicao = {-1,-4.5,0.35, -1},
							rotacao = {0,180,0},
						},
						
						[2] = {
							delay = 100,
							osicao = {0,-8.25,-0.45, 600},
							rotacao = {0,180,0},
						},
						
						[3] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
					
					},
					--
				},
				--
			},
			--
		},
		--
		[6] = {
			--
			radio = false,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "engine",
			},
			--
			acesso = {
				--
				[1] = {
				porta = 1,
				posicao = {1,-8.25,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"ped", "climb_jump", -1, false, false, false, true, 1, true},
							delay = 0,
							posicao = {0,-8.175,-0.45, -1},
						},
						
						[2] = {
							anim =  {"ped", "climb_pull", -1, false, false, false, true, 1, true},
							delay = 500,
						},
						
						[3] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							posicao = {0,-8.25,0.5, -1},
							delay = 1400,
						},
						
						[4] = {
							posicao = {0,-8.25,1, -1},
							delay = 1650,
						},
						
						[5] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							posicao = {0,-4.5,1, 1334},
							delay = 2250,
						},
						
						[6] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							posicao = {1,-4.45,0.75, 750},
							rotacao = {0,0,90,750},
							delay = 3586,
						},
						
						[7] = {
							anim = {"ped", "CAR_sitp", -1, false, true, false, true},
							posicao = {1,-4.5,0.35, 250},
							rotacao = {0,-15,90, -1},
							delay = 4334,
						},
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,-4.45,1, -1},
							rotacao = {0,0,90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0,-4.5,1, 500},
							rotacao = {0,-0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 675,
							posicao = {0,-7.5,1, 1334},
							rotacao = {0,-0,180, 200},
						},
						
						
						[4] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							delay = 1909,
						},
						
						[5] = {
							anim =  {},
							delay = 2884,
							posicao = {0,-8.5,-0.45, 200},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,-4.45,1, -1},
							rotacao = {0,0,90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0,-4.5,1, 500},
							rotacao = {0,-0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 675,
							posicao = {0,-7.5,1, 1334},
							rotacao = {0,-0,180, 200},
						},
						
						
						[4] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							delay = 1909,
						},
						
						[5] = {
							anim =  {},
							delay = 2884,
							posicao = {0,-8.5,-0.45, 200},
						},
						
						[6] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 3084,
						},
						
						[7] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 4584,
						},
						
					},
					--
					tombado = {
					
						[1] = {
							anim =  {"ped", "car_crawloutrhs", -1, false, true, false, false},
							delay = 0,
							posicao = {1,-4.5,0.35, -1},
							rotacao = {0,180,0},
						},
						
						[2] = {
							delay = 100,
							osicao = {0,-8.25,-0.45, 600},
							rotacao = {0,180,0},
						},
						
						[3] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
					
					},
					--
				},
				--
			},
			--
		},
		--
		[7] = {
			--
			radio = false,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "engine",
			},
			--
			acesso = {
				--
				[1] = {
				porta = 1,
				posicao = {-1,-8.25,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"ped", "climb_jump", -1, false, false, false, true, 1, true},
							delay = 0,
							posicao = {0,-8.175,-0.45, -1},
						},
						
						[2] = {
							anim =  {"ped", "climb_pull", -1, false, false, false, true, 1, true},
							delay = 500,
						},
						
						[3] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							posicao = {0,-8.25,0.5, -1},
							delay = 1400,
						},
						
						[4] = {
							posicao = {0,-8.25,1, -1},
							delay = 1650,
						},
						
						[5] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							posicao = {0,-5.35,1, 1001},
							delay = 2250,
						},
						
						[6] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							posicao = {-1,-5.3,0.75, 750},
							rotacao = {0,0,-90,750},
							delay = 3253,
						},
						
						[7] = {
							anim = {"ped", "CAR_sitp", -1, false, true, false, true},
							posicao = {-1,-5.35,0.35, 250},
							rotacao = {0,15,-90, -1},
							delay = 4001,
						},
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,-5.35,1, -1},
							rotacao = {0,0,-90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0,-5.3,1, 500},
							rotacao = {0,-0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 675,
							posicao = {0,-7.5,1, 1001},
							rotacao = {0,-0,-180, 200},
						},
						
						
						[4] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							delay = 1576,
						},
						
						[5] = {
							anim =  {},
							delay = 2551,
							posicao = {0,-8.5,-0.45, 200},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,-5.35,1, -1},
							rotacao = {0,0,-90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0,-5.3,1, 500},
							rotacao = {0,-0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 675,
							posicao = {0,-7.5,1, 1001},
							rotacao = {0,-0,-180, 200},
						},
						
						
						[4] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							delay = 1576,
						},
						
						[5] = {
							anim =  {},
							delay = 2551,
							posicao = {0,-8.5,-0.45, 200},
						},
						
						[6] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 2751,
						},
						
						[7] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 4251,
						},
						
					},
					--
					tombado = {
					
						[1] = {
							anim =  {"ped", "car_crawloutrhs", -1, false, true, false, false},
							delay = 0,
							posicao = {-1,-5.3,0.35, -1},
							rotacao = {0,180,0},
						},
						
						[2] = {
							delay = 100,
							osicao = {0,-8.25,-0.45, 450},
							rotacao = {0,180,0},
						},
						
						[3] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
					
					},
					--
				},
				--
			},
			--
		},
		--
		[8] = {
			--
			radio = false,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "engine",
			},
			--
			acesso = {
				--
				[1] = {
				porta = 1,
				posicao = {1,-8.25,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"ped", "climb_jump", -1, false, false, false, true, 1, true},
							delay = 0,
							posicao = {0,-8.175,-0.45, -1},
						},
						
						[2] = {
							anim =  {"ped", "climb_pull", -1, false, false, false, true, 1, true},
							delay = 500,
						},
						
						[3] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							posicao = {0,-8.25,0.5, -1},
							delay = 1400,
						},
						
						[4] = {
							posicao = {0,-8.25,1, -1},
							delay = 1650,
						},
						
						[5] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							posicao = {0,-5.35,1, 1001},
							delay = 2250,
						},
						
						[6] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							posicao = {1,-5.3,0.75, 750},
							rotacao = {0,0,90,750},
							delay = 3253,
						},
						
						[7] = {
							anim = {"ped", "CAR_sitp", -1, false, true, false, true},
							posicao = {1,-5.35,0.35, 250},
							rotacao = {0,-15,90, -1},
							delay = 4001,
						},
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,-5.35,1, -1},
							rotacao = {0,0,90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0,-5.3,1, 500},
							rotacao = {0,-0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 675,
							posicao = {0,-7.5,1, 1001},
							rotacao = {0,-0,180, 200},
						},
						
						
						[4] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							delay = 1576,
						},
						
						[5] = {
							anim =  {},
							delay = 2551,
							posicao = {0,-8.5,-0.45, 200},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,-5.35,1, -1},
							rotacao = {0,0,90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0,-5.3,1, 500},
							rotacao = {0,-0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 675,
							posicao = {0,-7.5,1, 1001},
							rotacao = {0,-0,180, 200},
						},
						
						
						[4] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							delay = 1576,
						},
						
						[5] = {
							anim =  {},
							delay = 2551,
							posicao = {0,-8.5,-0.45, 200},
						},
						
						[6] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 2751,
						},
						
						[7] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 4251,
						},
						
					},
					--
					tombado = {
					
						[1] = {
							anim =  {"ped", "car_crawloutrhs", -1, false, true, false, false},
							delay = 0,
							posicao = {1,-5.3,0.35, -1},
							rotacao = {0,180,0},
						},
						
						[2] = {
							delay = 100,
							osicao = {0,-8.25,-0.45, 450},
							rotacao = {0,180,0},
						},
						
						[3] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
					
					},
					--
				},
				--
			},
			--
		},
		--
		[9] = {
			--
			radio = false,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "engine",
			},
			--
			acesso = {
				--
				[1] = {
				porta = 1,
				posicao = {-1,-8.25,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"ped", "climb_jump", -1, false, false, false, true, 1, true},
							delay = 0,
							posicao = {0,-8.175,-0.45, -1},
						},
						
						[2] = {
							anim =  {"ped", "climb_pull", -1, false, false, false, true, 1, true},
							delay = 500,
						},
						
						[3] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							posicao = {0,-8.25,0.5, -1},
							delay = 1400,
						},
						
						[4] = {
							posicao = {0,-8.25,1, -1},
							delay = 1650,
						},
						
						[5] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							posicao = {0,-6.25,1, 668},
							delay = 2250,
						},
						
						[6] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							posicao = {-1,-6.2,0.75, 750},
							rotacao = {0,0,-90,750},
							delay = 2920,
						},
						
						[7] = {
							anim = {"ped", "CAR_sitp", -1, false, true, false, true},
							posicao = {-1,-6.25,0.35, 250},
							rotacao = {0,15,-90, -1},
							delay = 3668,
						},
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,-6.25,1, -1},
							rotacao = {0,0,-90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0,-6.2,1, 500},
							rotacao = {0,-0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 675,
							posicao = {0,-7.5,1, 668},
							rotacao = {0,-0,-180, 200},
						},
						
						
						[4] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							delay = 1243,
						},
						
						[5] = {
							anim =  {},
							delay = 2218,
							posicao = {0,-8.5,-0.45, 200},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,-6.25,1, -1},
							rotacao = {0,0,-90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0,-6.2,1, 500},
							rotacao = {0,-0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 675,
							posicao = {0,-7.5,1, 668},
							rotacao = {0,-0,-180, 200},
						},
						
						
						[4] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							delay = 1243,
						},
						
						[5] = {
							anim =  {},
							delay = 2218,
							posicao = {0,-8.5,-0.45, 200},
						},
						
						[6] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 2418,
						},
						
						[7] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 3918,
						},
						
					},
					--
					tombado = {
					
						[1] = {
							anim =  {"ped", "car_crawloutrhs", -1, false, true, false, false},
							delay = 0,
							posicao = {-1,-6.25,0.35, -1},
							rotacao = {0,180,0},
						},
						
						[2] = {
							delay = 100,
							osicao = {0,-8.25,-0.45, 450},
							rotacao = {0,180,0},
						},
						
						[3] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
					
					},
					--
				},
				--
			},
			--
		},
		--
		[10] = {
			--
			radio = false,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "engine",
			},
			--
			acesso = {
				--
				[1] = {
				porta = 1,
				posicao = {1,-8.25,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"ped", "climb_jump", -1, false, false, false, true, 1, true},
							delay = 0,
							posicao = {0,-8.175,-0.45, -1},
						},
						
						[2] = {
							anim =  {"ped", "climb_pull", -1, false, false, false, true, 1, true},
							delay = 500,
						},
						
						[3] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							posicao = {0,-8.25,0.5, -1},
							delay = 1400,
						},
						
						[4] = {
							posicao = {0,-8.25,1, -1},
							delay = 1650,
						},
						
						[5] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							posicao = {0,-6.25,1, 668},
							delay = 2250,
						},
						
						[6] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							posicao = {1,-6.2,0.75, 750},
							rotacao = {0,0,90,750},
							delay = 2920,
						},
						
						[7] = {
							anim = {"ped", "CAR_sitp", -1, false, true, false, true},
							posicao = {1,-6.25,0.35, 250},
							rotacao = {0,-15,90, -1},
							delay = 3668,
						},
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,-6.25,1, -1},
							rotacao = {0,0,90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0,-6.2,1, 500},
							rotacao = {0,-0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 675,
							posicao = {0,-7.5,1, 668},
							rotacao = {0,-0,180, 200},
						},
						
						
						[4] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							delay = 1243,
						},
						
						[5] = {
							anim =  {},
							delay = 2218,
							posicao = {0,-8.5,-0.45, 200},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,-6.25,1, -1},
							rotacao = {0,0,90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0,-6.2,1, 500},
							rotacao = {0,-0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 675,
							posicao = {0,-7.5,1, 668},
							rotacao = {0,-0,180, 200},
						},
						
						
						[4] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							delay = 1243,
						},
						
						[5] = {
							anim =  {},
							delay = 2218,
							posicao = {0,-8.5,-0.45, 200},
						},
						
						[6] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 2418,
						},
						
						[7] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 3918,
						},
						
					},
					--
					tombado = {
					
						[1] = {
							anim =  {"ped", "car_crawloutrhs", -1, false, true, false, false},
							delay = 0,
							posicao = {1,-6.25,0.35, -1},
							rotacao = {0,180,0},
						},
						
						[2] = {
							delay = 100,
							osicao = {0,-8.25,-0.45, 450},
							rotacao = {0,180,0},
						},
						
						[3] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
					
					},
					--
				},
				--
			},
			--
		},
		--
		[11] = {
			--
			radio = false,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "engine",
			},
			--
			acesso = {
				--
				[1] = {
				porta = 1,
				posicao = {-1,-8.25,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"ped", "climb_jump", -1, false, false, false, true, 1, true},
							delay = 0,
							posicao = {0,-8.175,-0.45, -1},
						},
						
						[2] = {
							anim =  {"ped", "climb_pull", -1, false, false, false, true, 1, true},
							delay = 500,
						},
						
						[3] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							posicao = {0,-8.25,0.5, -1},
							delay = 1400,
						},
						
						[4] = {
							posicao = {0,-8.25,1, -1},
							delay = 1650,
						},
						
						[5] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							posicao = {0,-7.15,1, 335},
							delay = 2250,
						},
						
						[6] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, true, 2},
							posicao = {-1,-7.1,0.75, 750},
							rotacao = {0,0,-90,750},
							delay = 2587,
						},
						
						[7] = {
							anim = {"ped", "CAR_sitp", -1, false, true, false, true},
							posicao = {-1,-7.15,0.35, 250},
							rotacao = {0,15,-90, -1},
							delay = 3335,
						},
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,-7.15,1, -1},
							rotacao = {0,0,-90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0,-7.1,1, 350},
							rotacao = {0,-0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 342,
							posicao = {0,-7.5,1, 335},
							rotacao = {0,-0,-180, 200},
						},
						
						
						[4] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							delay = 910,
						},
						
						[5] = {
							anim =  {},
							delay = 1885,
							posicao = {0,-8.5,-0.45, 200},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,-7.15,1, -1},
							rotacao = {0,0,-90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0,-7.1,1, 350},
							rotacao = {0,-0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 342,
							posicao = {0,-7.5,1, 335},
							rotacao = {0,-0,-180, 200},
						},
						
						
						[4] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							delay = 910,
						},
						
						[5] = {
							anim =  {},
							delay = 1885,
							posicao = {0,-8.5,-0.45, 200},
						},
						
						[6] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 2085,
						},
						
						[7] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 3585,
						},
						
					},
					--
					tombado = {
					
						[1] = {
							anim =  {"ped", "car_crawloutrhs", -1, false, true, false, false},
							delay = 0,
							posicao = {-1,-7.3,0.35, -1},
							rotacao = {0,180,0},
						},
						
						[2] = {
							delay = 100,
							osicao = {0,-8.25,-0.45, 450},
							rotacao = {0,180,0},
						},
						
						[3] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
					
					},
					--
				},
				--
			},
			--
		},
		--
		[12] = {
			--
			radio = false,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "engine",
			},
			--
			acesso = {
				--
				[1] = {
				porta = 1,
				posicao = {1,-8.25,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"ped", "climb_jump", -1, false, false, false, true, 1, true},
							delay = 0,
							posicao = {0,-8.175,-0.45, -1},
						},
						
						[2] = {
							anim =  {"ped", "climb_pull", -1, false, false, false, true, 1, true},
							delay = 500,
						},
						
						[3] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							posicao = {0,-8.25,0.5, -1},
							delay = 1400,
						},
						
						[4] = {
							posicao = {0,-8.25,1, -1},
							delay = 1650,
						},
						
						[5] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							posicao = {0,-7.15,1, 335},
							delay = 2250,
						},
						
						[6] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, true, 2},
							posicao = {1,-7.1,0.75, 750},
							rotacao = {0,0,90,750},
							delay = 2587,
						},
						
						[7] = {
							anim = {"ped", "CAR_sitp", -1, false, true, false, true},
							posicao = {1,-7.15,0.35, 250},
							rotacao = {0,-15,90, -1},
							delay = 3335,
						},
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,-7.15,1, -1},
							rotacao = {0,0,90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0,-7.1,1, 350},
							rotacao = {0,-0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 342,
							posicao = {0,-7.5,1, 335},
							rotacao = {0,-0,180, 200},
						},
						
						
						[4] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							delay = 910,
						},
						
						[5] = {
							anim =  {},
							delay = 1885,
							posicao = {0,-8.5,-0.45, 200},
						},
						
					},
					--
					saltar = {
						velocidade = 40,
						
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,-7.15,1, -1},
							rotacao = {0,0,90, -1},
						},
						
						[2] = {
							delay = 50,
							posicao = {0,-7.1,1, 350},
							rotacao = {0,-0,0, -1},
						},
						
						[3] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 342,
							posicao = {0,-7.5,1, 335},
							rotacao = {0,-0,180, 200},
						},
						
						
						[4] = {
							anim =  {"ped", "climb_jump_b", -1, false, false, false, true, 1, true},
							delay = 910,
						},
						
						[5] = {
							anim =  {},
							delay = 1885,
							posicao = {0,-8.5,-0.45, 200},
						},
						
						[6] = {
							anim =  {"ped", "KO_skid_back", -1, false, true, false, false},
							delay = 2085,
						},
						
						[7] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 3585,
						},
						
					},
					--
					tombado = {
					
						[1] = {
							anim =  {"ped", "car_crawloutrhs", -1, false, true, false, false},
							delay = 0,
							posicao = {1,-7.3,0.35, -1},
							rotacao = {0,180,0},
						},
						
						[2] = {
							delay = 100,
							osicao = {0,-8.25,-0.45, 450},
							rotacao = {0,180,0},
						},
						
						[3] = {
							anim =  {"ped", "getup_front", -1, false, true, false, false},
							delay = 1500,
						},
					
					},
					--
				},
				--
			},
			--
		},
		--
	},
	--
	[431] = { --Bus
		--
		[1] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.25,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.25,4.2,1, 500},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_r", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {-1,4.2,1, 700},
							delay = 1250,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,4.2,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 2500},
							rotacao = {0,0,180,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 3000,
						},
						
						[4] = {
							anim = {},
							delay = 3500,
						},
						
					},
					--
				},
				--
				[2] = {
				posicao = {-0.5,4.2,0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {0,4.2,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {-1,4.2, 1, 700},
							rotacao = {15,0,0,700},
							delay = 100,
						},
						
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,4.2,1, 700},
							rotacao = {0,0,0,-1},
							delay = 50,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[2] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.1,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.1,4.1,1, 500},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {1,4.1,1, 700},
							delay = 1250,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {-0.2,4.1,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 700,
							posicao = {-0.2,0.25,1, 2000},
							rotacao = {0,0,180,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 2700,
						},
						
						[4] = {
							anim = {},
							delay = 3200,
						},
						
					},
					--
				
				},
				--
				[2] = {
				posicao = {0,4.1,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {-0.1,4.1,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {1,4.1,1, 700},
							delay = 100,
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,4.1,1, 700},
							delay = 50,
						},
						
					},
					--
				
				},
				--
			},
			--
		},
		--
		[3] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.1,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.1,4.1,1, 500},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {0.6,4.1,1, 700},
							delay = 1250,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {-0.2,4.1,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 700,
							posicao = {-0.2,0.25,1, 2000},
							rotacao = {0,0,180,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 2700,
						},
						
						[4] = {
							anim = {},
							delay = 3200,
						},
						
					},
					--
				
				},
				--
				[2] = {
				posicao = {0,4.1,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {-0.1,4.1,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {0.6,4.1,1, 700},
							delay = 100,
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,4.1,1, 700},
							delay = 50,
						},
						
					},
					--
				
				},
				--
			},
			--
		},
		--
		[4] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.25,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.25,3.6,1, 1000},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							posicao = {-1,3.6,0.85, 700},
							delay = 1750,
						},
						
						
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,3.6,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 2000},
							rotacao = {0,0,180,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 2500,
						},
						
						[4] = {
							anim = {},
							delay = 3000,
						},
						
					},
					--
				},
				--
				[2] = {
				posicao = {-0.5,3.6,0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {0,3.6,0.85, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {-1,3.6,0.85, 700},
							rotacao = {0,0,180,700},
							delay = 100,
						},
						
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,3.6,0.85, 700},
							delay = 50,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[5] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.1,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.1,3.4,1, 500},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_r", -1, false, true, false, true, 1, true, false, 2},
							posicao = {1,3.45,0.85, 700},
							delay = 1550,
						},
						
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {-0.2,3.45,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 700,
							posicao = {-0.2,0.25,1, 2000},
							rotacao = {0,0,180,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 2700,
						},
						
						[4] = {
							anim = {},
							delay = 3200,
						},
						
					},
					--
				
				},
				--
				[2] = {
				posicao = {0,3.45,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {0,3.45,0.85, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {1,3.45,0.85, 700},
							rotacao = {0,0,180,700},
							delay = 100,
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,3.45,0.85, 700},
							delay = 50,
						},
						
					},
					--
				
				},
				--
			},
			--
		},
		--
		[6] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.1,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.1,3.4,1, 500},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_r", -1, false, true, false, true, 1, true, false, 2},
							posicao = {0.6,3.45,0.85, 700},
							delay = 1550,
						},
						
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {-0.2,3.45,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 700,
							posicao = {-0.2,0.25,1, 2000},
							rotacao = {0,0,180,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 2700,
						},
						
						[4] = {
							anim = {},
							delay = 3200,
						},
						
					},
					--
				
				},
				--
				[2] = {
				posicao = {0,3.45,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {0,3.45,0.85, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {0.6,3.45,0.85, 700},
							rotacao = {0,0,180,700},
							delay = 100,
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,3.45,0.85, 700},
							delay = 50,
						},
						
					},
					--
				
				},
				--
			},
			--
		},
		--
		[7] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.25,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.25,2.5,1, 1500},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_r", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {-1,2.5,0.85, 700},
							delay = 2250,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,2.5,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 1500},
							rotacao = {0,0,180,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 2000,
						},
						
						[4] = {
							anim = {},
							delay = 2500,
						},
						
					},
					--
				},
				--
				[2] = {
				posicao = {-0.5,2.5,0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {0,2.5,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {-1,2.5, 0.85, 700},
							rotacao = {15,0,0,700},
							delay = 100,
						},
						
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,2.5,1, 700},
							rotacao = {0,0,0,-1},
							delay = 50,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[8] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.1,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.1,2.15,1, 1500},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {1,2.15,0.85, 700},
							delay = 2250,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {-0.2,2.15,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 700,
							posicao = {-0.2,0.25,1, 1000},
							rotacao = {0,0,180,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 1700,
						},
						
						[4] = {
							anim = {},
							delay = 2200,
						},
						
					},
					--
				
				},
				--
				[2] = {
				posicao = {0,2.15,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {-0.1,2.15,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {1,2.15,0.85, 700},
							delay = 100,
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,2.15,1, 700},
							delay = 50,
						},
						
					},
					--
				
				},
				--
			},
			--
		},
		--
		[9] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.1,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.1,2.15,1, 1500},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {0.6,2.15,0.85, 700},
							delay = 2250,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {-0.2,2.15,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 700,
							posicao = {-0.2,0.25,1, 1000},
							rotacao = {0,0,180,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 1700,
						},
						
						[4] = {
							anim = {},
							delay = 2200,
						},
						
					},
					--
				
				},
				--
				[2] = {
				posicao = {0,2.15,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {-0.1,2.15,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {0.6,2.15,0.85, 700},
							delay = 100,
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,2.15,1, 700},
							delay = 50,
						},
						
					},
					--
				
				},
				--
			},
			--
		},
		--
		[10] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.25,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.25,1.6,1, 2000},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_r", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {-1,1.6,0.85, 700},
							delay = 2750,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,1.6,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 1000},
							rotacao = {0,0,180,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 1500,
						},
						
						[4] = {
							anim = {},
							delay = 2000,
						},
						
					},
					--
				},
				--
				[2] = {
				posicao = {-0.5,1.6,0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {0,1.6,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {-1,1.6, 0.85, 700},
							rotacao = {15,0,0,700},
							delay = 100,
						},
						
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,1.6,1, 700},
							rotacao = {0,0,0,-1},
							delay = 50,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[11] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.1,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.1,1.25,1, 2000},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {1,1.25,0.85, 700},
							delay = 2750,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {-0.2,1.25,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 700,
							posicao = {-0.2,0.25,1, 500},
							rotacao = {0,0,180,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 1200,
						},
						
						[4] = {
							anim = {},
							delay = 1700,
						},
						
					},
					--
				
				},
				--
				[2] = {
				posicao = {0,1.25,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {-0.1,1.25,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {1,1.25,0.85, 700},
							delay = 100,
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,1.25,1, 700},
							delay = 50,
						},
						
					},
					--
				
				},
				--
			},
			--
		},
		--
		[12] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.1,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.1,1.25,1, 2000},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {0.6,1.25,0.85, 700},
							delay = 2750,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {-0.2,1.25,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 700,
							posicao = {-0.2,0.25,1, 500},
							rotacao = {0,0,180,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 1200,
						},
						
						[4] = {
							anim = {},
							delay = 1700,
						},
						
					},
					--
				
				},
				--
				[2] = {
				posicao = {0,1.25,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {-0.1,1.25,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {0.6,1.25,0.85, 700},
							delay = 100,
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,1.25,1, 700},
							delay = 50,
						},
						
					},
					--
				
				},
				--
			},
			--
		},
		--
		[13] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.25,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.25,0.725,1, 2500},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_r", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {-1,0.725,0.85, 700},
							delay = 3250,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,0.725,1, 500},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 500},
							rotacao = {0,0,-180,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 1000,
						},
						
						[4] = {
							anim = {},
							delay = 1500,
						},
						
					},
					--
				},
				--
				[2] = {
				posicao = {-0.5,0.725,0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {0,0.725,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {-1,0.725, 0.85, 700},
							rotacao = {15,0,0,700},
							delay = 100,
						},
						
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,0.725,1, 700},
							rotacao = {0,0,0,-1},
							delay = 50,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[14] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.1,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.1,-1,1, 3000},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {1,-1,0.85, 700},
							delay = 3750,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-1,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 500},
							rotacao = {0,0,0,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 1000,
						},
						
						[4] = {
							anim = {},
							delay = 1500,
						},
						
					},
					--
				
				},
				--
				[2] = {
				posicao = {0,-1,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {-0.1,-1,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {1,-1,0.85, 700},
							delay = 100,
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-1,1, 700},
							delay = 50,
						},
						
					},
					--
				
				},
				--
			},
			--
		},
		--
		[15] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.1,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.1,-1,1, 3000},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {0.6,-1,0.85, 700},
							delay = 3750,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-1,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 500},
							rotacao = {0,0,0,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 1000,
						},
						
						[4] = {
							anim = {},
							delay = 1500,
						},
						
					},
					--
				
				},
				--
				[2] = {
				posicao = {0,-1,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {-0.1,-1,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {0.6,-1,0.85, 700},
							delay = 100,
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-1,1, 700},
							delay = 50,
						},
						
					},
					--
				
				},
				--
			},
			--
		},
		--
		[16] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.25,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.25,-0.1,1, 3000},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_r", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {-1,-0.125,0.85, 700},
							delay = 3750,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-0.125,0.85, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, -1},
							rotacao = {0,0,0,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 750,
						},
						
						[4] = {
							anim = {},
							delay = 1250,
						},
						
					},
					--
				},
				--
				[2] = {
				posicao = {-0.5,-0.125,0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {0,-0.125,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {-1,-0.125, 0.85, 700},
							rotacao = {15,0,0,700},
							delay = 100,
						},
						
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-0.125,1, 700},
							rotacao = {0,0,0,-1},
							delay = 50,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[17] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.1,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.1,-1.85,1, 3500},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {1,-1.85,0.85, 700},
							delay = 4250,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-1.85,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 1000},
							rotacao = {0,0,0,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 1500,
						},
						
						[4] = {
							anim = {},
							delay = 2000,
						},
						
					},
					--
				
				},
				--
				[2] = {
				posicao = {0,-1.85,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {-0.1,-1.85,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {1,-1.85,0.85, 700},
							delay = 100,
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-1.85,1, 700},
							delay = 50,
						},
						
					},
					--
				
				},
				--
			},
			--
		},
		--
		[18] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.1,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.1,-1.85,1, 3500},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {0.6,-1.85,0.85, 700},
							delay = 4250,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-1.85,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 1000},
							rotacao = {0,0,0,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 1500,
						},
						
						[4] = {
							anim = {},
							delay = 2000,
						},
						
					},
					--
				
				},
				--
				[2] = {
				posicao = {0,-1.85,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {-0.1,-1.85,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {0.6,-1.85,0.85, 700},
							delay = 100,
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-1.85,1, 700},
							delay = 50,
						},
						
					},
					--
				
				},
				--
			},
			--
		},
		--
		[19] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.25,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.25,-0.7,1, 3500},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_r", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {-1,-0.7,0.85, 700},
							delay = 4250,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-0.7,0.85, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 1000},
							rotacao = {0,0,0,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 1500,
						},
						
						[4] = {
							anim = {},
							delay = 2000,
						},
						
					},
					--
				},
				--
				[2] = {
				posicao = {-0.5,-0.7,0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {0,-0.7,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {-1,-0.7, 0.85, 700},
							rotacao = {15,0,0,700},
							delay = 100,
						},
						
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-0.7,1, 700},
							rotacao = {0,0,0,-1},
							delay = 50,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[20] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.1,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.1,-2.65,1, 4000},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {1,-2.65,1, 700},
							delay = 4750,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-2.65,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 1000},
							rotacao = {0,0,0,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 1500,
						},
						
						[4] = {
							anim = {},
							delay = 2000,
						},
						
					},
					--
				
				},
				--
				[2] = {
				posicao = {0,-2.65,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {-0.1,-2.65,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {1,-2.65,1, 700},
							delay = 100,
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-2.65,1, 700},
							delay = 50,
						},
						
					},
					--
				
				},
				--
			},
			--
		},
		--
		[21] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.1,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.1,-2.65,1, 4000},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {0.6,-2.65,1, 700},
							delay = 4750,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-2.65,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 1000},
							rotacao = {0,0,0,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 1500,
						},
						
						[4] = {
							anim = {},
							delay = 2000,
						},
						
					},
					--
				
				},
				--
				[2] = {
				posicao = {0,-2.65,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {-0.1,-2.65,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {1,-2.65,1, 700},
							delay = 100,
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-2.65,1, 700},
							delay = 50,
						},
						
					},
					--
				
				},
				--
			},
			--
		},
		--
		[22] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.25,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.25,-1.5,1, 4000},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_r", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {-1,-1.5,0.85, 700},
							delay = 4750,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-1.5,0.85, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 1500},
							rotacao = {0,0,0,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 2000,
						},
						
						[4] = {
							anim = {},
							delay = 2500,
						},
						
					},
					--
				},
				--
				[2] = {
				posicao = {-0.5,-1.95,0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {0,-1.5,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {-1,-1.5, 0.85, 700},
							rotacao = {15,0,0,700},
							delay = 100,
						},
						
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-1.5,1, 700},
							rotacao = {0,0,0,-1},
							delay = 50,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[23] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.1,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.1,-3.4,1, 4500},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {1,-3.4,1, 700},
							delay = 5250,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-3.4,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 1500},
							rotacao = {0,0,0,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 2000,
						},
						
						[4] = {
							anim = {},
							delay = 2500,
						},
						
					},
					--
				
				},
				--
				[2] = {
				posicao = {0,-3.4,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {-0.1,-3.4,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {1,-3.4,1, 700},
							delay = 100,
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-3.4,1, 700},
							delay = 50,
						},
						
					},
					--
				
				},
				--
			},
			--
		},
		--
		[24] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.1,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.1,-3.4,1, 4500},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {0.6,-3.4,1, 700},
							delay = 5250,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-3.4,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 1500},
							rotacao = {0,0,0,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 2000,
						},
						
						[4] = {
							anim = {},
							delay = 2500,
						},
						
					},
					--
				
				},
				--
				[2] = {
				posicao = {0,-3.4,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {-0.1,-3.4,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {0.6,-3.4,1, 700},
							delay = 100,
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-3.4,1, 700},
							delay = 50,
						},
						
					},
					--
				
				},
				--
			},
			--
		},
		--
		[25] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.25,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.25,-2.75,1.25, 4500},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_r", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {-1,-2.75,1, 700},
							delay = 5250,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-2.75,1.25, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 1000},
							rotacao = {0,0,0,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 1500,
						},
						
						[4] = {
							anim = {},
							delay = 2000,
						},
						
					},
					--
				},
				--
				[2] = {
				posicao = {-0.5,-2.75,0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {0,-2.75,1.25, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {-1,-2.75, 1, 700},
							rotacao = {15,0,0,700},
							delay = 100,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-2.75,1.25, 700},
							rotacao = {0,0,0,-1},
							delay = 50,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[26] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.1,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.1,-4.25,1, 5000},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {1,-4.25,1, 700},
							delay = 5750,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-4.25,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 2000},
							rotacao = {0,0,0,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 2500,
						},
						
						[4] = {
							anim = {},
							delay = 3000,
						},
						
					},
					--
				
				},
				--
				[2] = {
				posicao = {0,-4.25,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {-0.1,-4.25,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {1,-4.25,1, 700},
							delay = 100,
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-4.25,1, 700},
							delay = 50,
						},
						
					},
					--
				
				},
				--
			},
			--
		},
		--
		[27] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.1,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.1,-4.25,1, 5000},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {0.6,-4.25,1, 700},
							delay = 5750,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-4.25,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 2000},
							rotacao = {0,0,0,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 2500,
						},
						
						[4] = {
							anim = {},
							delay = 3000,
						},
						
					},
					--
				
				},
				--
				[2] = {
				posicao = {0,-4.25,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {-0.1,-4.25,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {0.6,-4.25,1, 700},
							delay = 100,
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-4.25,1, 700},
							delay = 50,
						},
						
					},
					--
				
				},
				--
			},
			--
		},
		--
		[28] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.25,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.25,-3.55,1.25, 4500},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_r", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {-1,-3.55,1, 700},
							delay = 5250,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-3.55,1.25, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 1500},
							rotacao = {0,0,0,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 2000,
						},
						
						[4] = {
							anim = {},
							delay = 2500,
						},
						
					},
					--
				},
				--
				[2] = {
				posicao = {-0.5,-3.55,0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {0,-3.55,1.25, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {-1,-3.55, 1, 700},
							rotacao = {15,0,0,700},
							delay = 100,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-3.55,1.25, 700},
							rotacao = {0,0,0,-1},
							delay = 50,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[29] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.1,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.1,-5.1,1, 5500},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {1,-5.1,1, 700},
							delay = 6250,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-5.1,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 2500},
							rotacao = {0,0,0,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 3000,
						},
						
						[4] = {
							anim = {},
							delay = 3500,
						},
						
					},
					--
				
				},
				--
				[2] = {
				posicao = {0,-4.9,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {-0.1,-5.1,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {1,-5.1,1, 700},
							delay = 100,
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-5.1,1, 700},
							delay = 50,
						},
						
					},
					--
				
				},
				--
			},
			--
		},
		--
		[30] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.1,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.1,-5.1,1, 5500},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {0.6,-5.1,1, 700},
							delay = 6250,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0.6,-5.1,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 2500},
							rotacao = {0,0,0,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 3000,
						},
						
						[4] = {
							anim = {},
							delay = 3500,
						},
						
					},
					--
				
				},
				--
				[2] = {
				posicao = {0,-4.9,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {-0.1,-5.1,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {1,-5.1,1, 700},
							delay = 100,
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-5.1,1, 700},
							delay = 50,
						},
						
					},
					--
				
				},
				--
			},
			--
		},
		--
		[31] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.25,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.25,-4.35,1.25, 5000},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_r", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {-1,-4.35,1, 700},
							delay = 5750,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-4.35,1.25, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 2000},
							rotacao = {0,0,0,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 2500,
						},
						
						[4] = {
							anim = {},
							delay = 3000,
						},
						
					},
					--
				},
				--
				[2] = {
				posicao = {-0.5,-4.35,0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {0,-4.35,1.25, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {-1,-4.35, 1, 700},
							rotacao = {15,0,0,700},
							delay = 100,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-4.35,1.25, 700},
							rotacao = {0,0,0,-1},
							delay = 50,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[32] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.1,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.1,-5.95,1, 6000},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {1,-5.95,1, 700},
							delay = 6750,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-5.95,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 3000},
							rotacao = {0,0,0,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 3500,
						},
						
						[4] = {
							anim = {},
							delay = 4000,
						},
						
					},
					--
				
				},
				--
				[2] = {
				posicao = {0,-5.3,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {-0.1,-5.95,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {1,-5.95,1, 700},
							delay = 100,
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-5.3,1, 700},
							delay = 50,
						},
						
					},
					--
				
				},
				--
			},
			--
		},
		--
		[33] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.1,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.1,-5.95,1, 6000},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_l", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {0.6,-5.95,1, 700},
							delay = 6750,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0.6,-5.95,1, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 3000},
							rotacao = {0,0,0,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 3500,
						},
						
						[4] = {
							anim = {},
							delay = 4000,
						},
						
					},
					--
				
				},
				--
				[2] = {
				posicao = {0,-5.3,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {-0.1,-5.95,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {1,-5.95,1, 700},
							delay = 100,
						},
					
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-5.3,1, 700},
							delay = 50,
						},
						
					},
					--
				
				},
				--
			},
			--
		},
		--
		[34] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,-1},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.25,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.25,-5.15,1.25, 5500},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_r", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {-1,-5.15,1, 700},
							delay = 6250,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-5.15,1.25, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 2500},
							rotacao = {0,0,0,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 3000,
						},
						
						[4] = {
							anim = {},
							delay = 3500,
						},
						
					},
					--
				},
				--
				[2] = {
				posicao = {-0.5,-4.8,0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {0,-5.15,1.25, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {-1,-5.15, 1, 700},
							rotacao = {15,0,0,700},
							delay = 100,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-5.15,1.25, 700},
							rotacao = {0,0,0,-1},
							delay = 50,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[35] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {2,5.5,0},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							delay = 0,
							posicao = {1.75,5.5,0.15, -1},
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 50,
							posicao = {0.5,5.5,1, 500},
							rotacao = {0,0,90, -1},
						},
						
						[3] = {
							delay = 550,
							posicao = {-0.25,4.5,1, 500},
							rotacao = {0,0,120, -1},
						},
						
						[4] = {
							delay = 1050,
							posicao = {-0.25,-5.95,1.25, 6000},
							rotacao = {0,0,180, -1},
						},
						
						[5] = {
							anim =  {"food", "ff_sit_in_r", -1, false, true, false, true, 1, true, false, 2},
							rotacao = {0,0,0, -1},
							posicao = {-1,-5.95,1, 700},
							delay = 6750,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-5.95,1.25, 700},
							delay = 50,
						},
						
						[2] = {
							anim =  {"ped", "WALK_player", -1, true, true, false, false},
							delay = 500,
							posicao = {0,0.25,1, 3000},
							rotacao = {0,0,0,-1},
						},
						
						[3] = {
							posicao = {1.75,0.25,0.15, 500},
							rotacao = {0,0,-90,-1},
							delay = 3500,
						},
						
						[4] = {
							anim = {},
							delay = 4000,
						},
						
					},
					--
				},
				--
				[2] = {
				posicao = {-0.5,-5.1,0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							posicao = {0,-5.95,1, -1},
							delay = 0,
						},
						
						[2] = {
							posicao = {-1,-5.95, 1, 700},
							rotacao = {15,0,0,700},
							delay = 100,
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							posicao = {0,-5.15,1, 700},
							rotacao = {0,0,0,-1},
							delay = 50,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[36] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {-0.3750,4.7,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim = {"ped", "abseil", -1, true, false, false, false, 1, true, false, 0.0, 0.4},
							delay = 0,
							posicao = {-0.3750,4.7,1, -1},
							rotacao = {-15,-15,90,-1},
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {},
							posicao = {-0.2,4.7,1, -1},
							rotacao = {0,0,0,-1},
							delay = 0,
						},
						
						[2] = {
							posicao = {-0.2,4.7,1, 50},
							rotacao = {0,0,0,-1},
							delay = 50,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[37] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {0.3750,4.75,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim = {"ped", "abseil", -1, true, false, false, false, 1, true, false, 0.0, 0.4},
							delay = 0,
							posicao = {0.2,4.75,1, -1},
							rotacao = {7.5,15,-15,-1},
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {},
							posicao = {0.2,4.75,1, -1},
							rotacao = {0,0,0,-1},
							delay = 0,
						},
						
						[2] = {
							posicao = {0.2,4.6,1, 50},
							rotacao = {0,0,0,-1},
							delay = 50,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[38] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {-0.3750,0.6,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim = {"ped", "abseil", -1, true, false, false, false, 1, true, false, 0.0, 0.4},
							delay = 0,
							posicao = {-0.425,0.6,1, -1},
							rotacao = {-15,-15,90,-1},
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {},
							posicao = {-0.2,0.6,1, -1},
							rotacao = {0,0.6,0,-1},
							delay = 0,
						},
						
						[2] = {
							posicao = {-0.2,0.6,1, 50},
							rotacao = {0,0.6,0,-1},
							delay = 50,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[39] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {0.3750,0.625,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim = {"ped", "abseil", -1, true, false, false, false, 1, true, false, 0.0, 0.4},
							delay = 0,
							posicao = {0.2,0.625,1, -1},
							rotacao = {7.5,15,-15,-1},
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {},
							posicao = {0.2,0.625,1, -1},
							rotacao = {0,0,0,-1},
							delay = 0,
						},
						
						[2] = {
							posicao = {0.2,0.625,1, 50},
							rotacao = {0,0,0,-1},
							delay = 50,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
		[40] = {
			--
			radio = true,
			--
			acesso = {
				--
				[1] = {
				posicao = {0.3750,-0.65,0.5},
				rotacao = {0,0,0, -1},
					--
					entrar = {
					
						[1] = {
							anim = {"ped", "abseil", -1, true, false, false, false, 1, true, false, 0.0, 0.4},
							delay = 0,
							posicao = {0.2,-0.65,1, -1},
							rotacao = {7.5,15,-15,-1},
						},
						
					},
					--
					sair = {
					
						[1] = {
							anim =  {},
							posicao = {0.2,-0.65,1, -1},
							rotacao = {0,0,0,-1},
							delay = 0,
						},
						
						[2] = {
							posicao = {0.2,-0.65,1, 50},
							rotacao = {0,0,0,-1},
							delay = 50,
						},
						
					},
					--
				},
				--
			},
			--
		},
		--
	},
	--
	[trem_bala] = { --Streak (Trem bala)
		--
		[1] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-0.6,7.75,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {-0.6,7.75,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.9,7.75,0, 700},
							rotacao = {0,15,-90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1,7.75,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,7.75,-0.75, -1},
							rotacao = {0,0,-90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.6,7.75,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[2] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-0.6,7,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {-0.6,7.,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.9,7,0, 700},
							rotacao = {0,15,-90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1,7,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,7,-0.75, -1},
							rotacao = {0,0,-90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.6,7,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[3] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-0.6,5,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {-0.6,5,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.9,5,0, 700},
							rotacao = {0,15,-90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1,5,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,5,-0.75, -1},
							rotacao = {0,0,-90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.6,5,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[4] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {0.6,5,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {0.6,5,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.9,5,0, 700},
							rotacao = {0,-15,90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1,5,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,5,-0.75, -1},
							rotacao = {0,0,90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.6,5,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[5] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-0.6,4.25,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {-0.6,4.3,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.9,4.3,0, 700},
							rotacao = {0,15,-90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1,4.3,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,4.3,-0.75, -1},
							rotacao = {0,0,-90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.6,4.3,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[6] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {0.6,4.25,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {0.6,4.3,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.9,4.3,0, 700},
							rotacao = {0,-15,90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1,4.3,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,4.3,-0.75, -1},
							rotacao = {0,0,90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.6,4.3,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[7] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-0.6,3.75,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {-0.6,3.75,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.9,3.75,0, 700},
							rotacao = {0,15,-90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1,3.75,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,3.75,-0.75, -1},
							rotacao = {0,0,-90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.6,3.75,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[8] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {0.6,3.75,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {0.6,3.75,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.9,3.75,0, 700},
							rotacao = {0,-15,90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1,3.75,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,3.75,-0.75, -1},
							rotacao = {0,0,90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.6,3.75,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[9] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-0.6,3,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {-0.6,3,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.9,3,0, 700},
							rotacao = {0,15,-90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1,3,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,3,-0.75, -1},
							rotacao = {0,0,-90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.6,3,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[10] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {0.6,3,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {0.6,3,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.9,3,0, 700},
							rotacao = {0,-15,90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1,3,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,3,-0.75, -1},
							rotacao = {0,0,90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.6,3,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[11] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-0.6,1,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {-0.6,1,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.9,1,0, 700},
							rotacao = {0,15,-90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1,1,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,1,-0.75, -1},
							rotacao = {0,0,-90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.6,1,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[12] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {0.6,1,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {0.6,1,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.9,1,0, 700},
							rotacao = {0,-15,90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1,1,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,1,-0.75, -1},
							rotacao = {0,0,90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.6,1,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[13] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-0.6,0.25,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {-0.6,0.25,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.9,0.25,0, 700},
							rotacao = {0,15,-90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1,0.25,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,0.25,-0.75, -1},
							rotacao = {0,0,-90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.6,0.25,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[14] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {0.6,0.25,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {0.6,0.25,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.9,0.25,0, 700},
							rotacao = {0,-15,90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1,0.25,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,0.25,-0.75, -1},
							rotacao = {0,0,90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.6,0.25,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[15] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-0.6,-0.25,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {-0.6,-0.25,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.9,-0.25,0, 700},
							rotacao = {0,15,-90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1,-0.25,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,-0.25,-0.75, -1},
							rotacao = {0,0,-90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.6,-0.25,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[16] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {0.6,-0.25,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {0.6,-0.25,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.9,-0.25,0, 700},
							rotacao = {0,-15,90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1,-0.25,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,-0.25,-0.75, -1},
							rotacao = {0,0,90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.6,-0.25,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[17] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-0.6,-1,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {-0.6,-1,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.9,-1,0, 700},
							rotacao = {0,15,-90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1,-1,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,-1,-0.75, -1},
							rotacao = {0,0,-90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.6,-1,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[18] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {0.6,-1,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {0.6,-1,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.9,-1,0, 700},
							rotacao = {0,-15,90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1,-1,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,-1,-0.75, -1},
							rotacao = {0,0,90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.6,-1,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[19] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-0.6,-3,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {-0.6,-3,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.9,-3,0, 700},
							rotacao = {0,15,-90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1,-3,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,-3,-0.75, -1},
							rotacao = {0,0,-90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.6,-3,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[20] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {0.6,-3,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {0.6,-3,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.9,-3,0, 700},
							rotacao = {0,-15,90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1,-3,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,-3,-0.75, -1},
							rotacao = {0,0,90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.6,-3,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[21] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-0.6,-3.75,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {-0.6,-3.75,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.9,-3.75,0, 700},
							rotacao = {0,15,-90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1,-3.75,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,-3.75,-0.75, -1},
							rotacao = {0,0,-90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.6,-3.75,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[22] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {0.6,-3.75,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {0.6,-3.75,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.9,-3.75,0, 700},
							rotacao = {0,-15,90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1,-3.75,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,-3.75,-0.75, -1},
							rotacao = {0,0,90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.6,-3.75,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[23] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-0.6,-4.25,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {-0.6,-4.25,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.9,-4.25,0, 700},
							rotacao = {0,15,-90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1,-4.25,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,-4.25,-0.75, -1},
							rotacao = {0,0,-90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.6,-4.25,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[24] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {0.6,-4.25,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {0.6,-4.25,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.9,-4.25,0, 700},
							rotacao = {0,-15,90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1,-4.25,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,-4.25,-0.75, -1},
							rotacao = {0,0,90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.6,-4.25,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[25] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-0.6,-5,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {-0.6,-5,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.9,-5,0, 700},
							rotacao = {0,15,-90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1,-5,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1,-5,-0.75, -1},
							rotacao = {0,0,-90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.6,-5,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[26] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {0.6,-5,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {0.6,-5,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.9,-5,0, 700},
							rotacao = {1,-5,90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1,-5,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,-5,-0.75, -1},
							rotacao = {0,0,90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.6,-5,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[27] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {0.6,-7,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {0.6,-7,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.9,-7,0, 700},
							rotacao = {0,-15,90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1,-7,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,-7,-0.75, -1},
							rotacao = {0,0,90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.6,-7,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[28] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {0.6,-7.75,-0.5},
				tolerancia = 1.1,
					--
					entrar = {
					
						
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {0.6,-7.75,0, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.9,-7.75,0, 700},
							rotacao = {0,-15,90,700},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1,-7.75,-0.75, 250},
						},
						--
						
					},
					--
					sair = {
					
						
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1,-7.75,-0.75, -1},
							rotacao = {0,0,90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.6,-7.75,-0.5, -1},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		
	},
	--
	[577] = { --AT-400 (Maior aeronave do jogo)
		--
		[1] = {--Piloto
			--
			radio = sim,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "seat_front",
			},
			--
			acesso = {
				--
				[1] = {
				posicao = {-0.8, 0, 0.5},
				--tolerancia = 1.1,
					--
					entrar = {
						--
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {-0.6,0.2,0.6, -1},
						},
						--
						[2] = {
							delay = 250,
							posicao = {-1.2,-0.1,0.6, 500},
						},
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"food", "ff_sit_out_r_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1.2, 0, 0.6, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.6, 0, 0.6, 750},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[2] = {--Co-piloto
			--
			radio = sim,
			--
			referencia = {
			tipo = "dummy", --dummy ou component
			parte = "seat_front",
			},
			--
			acesso = {
				--
				[1] = {
				posicao = {-0.4, 0, 0.5},
				--tolerancia = 1.1,
					--
					entrar = {
						--
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {-0.6,0.2,0.6, -1},
						},
						--
						[2] = {
							delay = 250,
							posicao = {0,-0.1,0.6, 500},
						},
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"food", "ff_sit_out_l_180", -1, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {0, 0, 0.6, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.6, 0, 0.6, 750},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[3] = {--Equipe 1
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-0.5,23.2,3.5},
					--
					entrar = {
						--
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {-0.5,23.2,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.2,23.2,3.95, 500},
							rotacao = {0,0,-75, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1.2,23.2,3.95, -1},
							rotacao = {0,0,-90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.5,23.2,4.2, 750},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[4] = {--Equipe 2
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {0.5,23.2,3.5},
					--
					entrar = {
						--
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {0.5,23.2,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.2,23.2,3.95, 500},
							rotacao = {0,0,105, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1.2,23.2,3.95, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.5,23.2,4.2, 750},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[5] = {--Equipe 3
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-0.5,22.2,3.5},
					--
					entrar = {
						--
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {-0.5,22.2,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.2,22.2,3.95, 500},
							rotacao = {0,15,-90, 500},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1.4,22.2,3.6, 250},
						},
						--
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1.2,22.2,3.95, -1},
							rotacao = {0,0,-90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-0.5,22.2,4.2, 750},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[6] = {--Equipe 4
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {0.5,22.2,3.5},
					--
					entrar = {
						--
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {0.5,22.2,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.2,22.2,3.95, 500},
							rotacao = {0,-15,90, 500},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1.4,22.2,3.6, 250},
						},
						--
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1.2,22.2,3.95, -1},
							rotacao = {0,0,90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {0.5,22.2,4.2, 750},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[7] = {--1° fileira
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-2.05,17.4,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-2.05,17.4,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,16.95,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-2.05,16.95,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,17.4,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[8] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-1.1,17.4,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-1.1,17.4,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,16.95,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1.1,16.95,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1.1,16.95,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,17.4,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[9] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {1.15,17.4,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {1.15,17.4,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,16.95,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1.15,16.95,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1.15,16.95,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,17.4,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[10] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {2.15,17.4,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {2.15,17.4,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,16.95,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {2.15,16.95,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,17.4,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[11] = {--2° fileira
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-2.05,16,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-2.05,16,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,15.4,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-2.05,15.4,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,16,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[12] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-1.1,16,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-1.1,16,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,15.4,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1.1,15.4,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1.1,15.4,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,16,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[13] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {1.15,16,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {1.15,16,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,15.4,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1.15,15.4,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1.15,15.4,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,16,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[14] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {2.15,16,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {2.15,16,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,15.4,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {2.15,15.4,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,16,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[15] = {--3° fileira
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-2.05,14.5,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-2.05,14.5,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,13.9,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-2.05,13.9,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,14.5,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[16] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-1.1,14.5,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-1.1,14.5,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,13.9,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1.1,13.9,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1.1,13.9,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,14.5,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[17] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {1.15,14.5,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {1.15,14.5,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,13.9,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1.15,13.9,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1.15,13.9,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,14.5,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[18] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {2.15,14.5,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {2.15,14.5,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,13.9,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {2.15,13.9,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,14.5,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[19] = {--4° fileira
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-2.05,12.9,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-2.05,12.9,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,12.4,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-2.05,12.4,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,12.9,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[20] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-1.1,12.9,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-1.1,12.9,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,12.4,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1.1,12.4,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1.1,12.4,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,12.9,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[21] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {1.15,12.9,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {1.15,12.9,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,12.4,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1.15,12.4,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1.15,12.4,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,12.9,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[22] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {2.15,12.9,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {2.15,12.9,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,12.4,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {2.15,12.4,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,12.9,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[23] = {--5° fileira
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-2.05,11.4,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-2.05,11.4,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,10.9,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-2.05,10.9,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,11.4,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[24] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-1.1,11.4,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-1.1,11.4,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,10.9,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1.1,10.9,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1.1,10.9,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,11.4,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[25] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {1.15,11.4,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {1.15,11.4,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,10.9,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1.15,10.9,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1.15,10.9,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,11.4,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[26] = { 
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {2.15,11.4,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {2.15,11.4,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,10.9,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {2.15,10.9,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,11.4,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[27] = {--6° fileira
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-2.05,10,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-2.05,10,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,9.3,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-2.05,9.3,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,10,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[28] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-1.1,10,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-1.1,10,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,9.3,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1.1,9.3,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1.1,9.3,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,10,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[29] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {1.15,10,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {1.15,10,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,9.3,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1.15,9.3,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1.15,9.3,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,10,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[30] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {2.15,10,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {2.15,10,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,9.3,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {2.15,9.3,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,10,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[31] = {--7° fileira
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-2.05,8.5,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-2.05,8.5,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,7.8,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-2.05,7.8,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,8.5,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[32] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-1.1,8.5,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-1.1,8.5,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,7.8,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1.1,7.8,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1.1,7.8,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,8.5,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[33] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {1.15,8.5,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {1.15,8.5,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,7.8,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1.15,7.8,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1.15,7.8,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,8.5,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[34] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {2.15,8.5,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {2.15,8.5,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,7.8,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {2.15,7.8,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,8.5,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[35] = {--8° fileira
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-2.05,7,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-2.05,7,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,6.3,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-2.05,6.3,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,7,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[36] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-1.1,7,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-1.1,7,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,6.3,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1.1,6.3,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1.1,6.3,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,7,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[37] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {1.15,7,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {1.15,7,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,6.3,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1.15,6.3,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1.15,6.3,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,7,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[38] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {2.15,7,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {2.15,7,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,6.3,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {2.15,6.3,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,7,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[39] = {--9° fileira
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-2.05,5.5,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-2.05,5.5,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,4.8,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-2.05,4.8,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,5.5,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[40] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-1.1,5.5,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-1.1,5.5,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,4.8,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1.1,4.8,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1.1,4.8,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,5.5,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[41] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {1.15,5.5,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {1.15,5.5,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,4.8,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1.15,4.8,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1.15,4.8,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,5.5,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[42] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {2.15,5.5,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {2.15,5.5,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,4.8,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {2.15,4.8,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,5.5,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[43] = {--10° fileira
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-2.05,4,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-2.05,4,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,3.2,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-2.05,3.2,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,4,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[44] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-1.1,4,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-1.1,4,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,3.2,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1.1,3.2,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1.1,3.2,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,4,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[45] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {1.15,4,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {1.15,4,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,3.2,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1.15,3.2,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1.15,3.2,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,4,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[46] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {2.15,4,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {2.15,4,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,3.2,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {2.15,3.2,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,4,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--Comissario 1
		[47] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-1.2,1.725,3.5},
					--
					entrar = {
						--
						[1] = {
							anim =  {"food", "ff_sit_in_l", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {-1.2,1.725,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,1.725,4.2, 500},
							rotacao = {0,0,-75, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-2.05,1.725,4.2, -1},
							rotacao = {0,0,-90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.2,1.725,4.2, 750},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--Comissario 2
		[48] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {1.2,1.725,3.5},
					--
					entrar = {
						--
						[1] = {
							anim =  {"food", "ff_sit_in_r", 1000, false, true, false, true, 1, true, false, 2},
							delay = 0,
							posicao = {1.2,1.725,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.05,1.725,4.2, 500},
							rotacao = {0,0,90, 500},
						},
						--
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {2.05,1.725,3.85, 250},
						},
						--
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {2.05,1.725,4.2, -1},
							rotacao = {0,0,90, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.2,1.725,4.2, 750},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[49] = {--11° fileira
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-2.05,0.75,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-2.05,0.75,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,0.15,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-2.05,0.15,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,0.75,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[50] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-1.1,0.75,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-1.1,0.75,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,0.15,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1.1,0.15,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1.1,0.15,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,0.75,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[51] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {1.15,0.75,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {1.15,0.75,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,0.15,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1.15,0.15,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1.15,0.15,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,0.75,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[52] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {2.15,0.75,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {2.15,0.75,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,0.15,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {2.15,0.15,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,0.75,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[53] = {--12° fileira
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-2.05,-0.75,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-2.05,-0.75,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,-1.35,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-2.05,-1.35,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,-0.75,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[54] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-1.1,-0.75,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-1.1,-0.75,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,-1.35,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1.1,-1.35,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1.1,-1.35,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,-0.75,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[55] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {1.15,-0.75,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {1.15,-0.75,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,-1.35,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1.15,-1.35,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1.15,-1.35,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,-0.75,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[56] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {2.15,-0.75,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {2.15,-0.75,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,-1.35,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {2.15,-1.35,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,-0.75,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[57] = {--13° fileira
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-2.05,-2.25,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-2.05,-2.25,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,-2.95,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-2.05,-2.95,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,-2.25,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[58] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-1.1,-2.25,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-1.1,-2.25,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,-2.95,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1.1,-2.95,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1.1,-2.95,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,-2.25,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[59] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {1.15,-2.25,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {1.15,-2.25,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,-2.95,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1.15,-2.95,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1.15,-2.95,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,-2.25,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[60] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {2.15,-2.25,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {2.15,-2.25,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,-2.95,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {2.15,-2.95,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,-2.25,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[61] = {--14° fileira
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-2.05,-3.75,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-2.05,-3.75,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,-4.4,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-2.05,-4.4,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,-3.75,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[62] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-1.1,-3.75,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-1.1,-3.75,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,-4.4,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1.1,-4.4,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1.1,-4.4,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,-3.75,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[63] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {1.15,-3.75,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {1.15,-3.75,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,-4.4,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1.15,-4.4,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1.15,-4.4,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,-3.75,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[64] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {2.15,-3.75,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {2.15,-3.75,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,-4.4,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {2.15,-4.4,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,-3.75,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[65] = {--15° fileira
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-2.05,-5.25,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-2.05,-5.25,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,-5.95,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-2.05,-5.95,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,-5.25,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[66] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-1.1,-5.25,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-1.1,-5.25,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,-5.95,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1.1,-5.95,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1.1,-5.95,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,-5.25,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[67] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {1.15,-5.25,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {1.15,-5.25,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,-5.95,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1.15,-5.95,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1.15,-5.95,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,-5.25,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[68] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {2.15,-5.25,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {2.15,-5.25,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,-5.95,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {2.15,-5.95,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,-5.25,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[69] = {--16° fileira
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-2.05,-6.75,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-2.05,-6.75,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,-7.5,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-2.05,-7.5,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,-6.75,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[70] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-1.1,-6.75,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-1.1,-6.75,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,-7.5,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1.1,-7.5,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1.1,-7.5,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,-6.75,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[71] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {1.15,-6.75,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {1.15,-6.75,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,-7.5,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1.15,-7.5,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1.15,-7.5,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,-6.75,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[72] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {2.15,-6.75,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {2.15,-6.75,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,-7.5,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {2.15,-7.5,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,-6.75,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[73] = {--17° fileira
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-2.05,-8.25,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-2.05,-8.25,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,-9.05,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-2.05,-9.05,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,-8.25,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[74] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-1.1,-8.25,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-1.1,-8.25,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,-9.05,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1.1,-9.05,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1.1,-9.05,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,-8.25,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[75] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {1.15,-8.25,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {1.15,-8.25,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,-9.05,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1.15,-9.05,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1.15,-9.05,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,-8.25,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[76] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {2.15,-8.25,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {2.15,-8.25,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,-9.05,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {2.15,-9.05,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,-8.25,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[77] = {--17° fileira
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-2.05,-9.75,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-2.05,-9.75,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,-10.55,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-2.05,-10.55,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-2.05,-9.75,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[78] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {-1.1,-9.75,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {-1.1,-9.75,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,-10.55,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {-1.1,-10.55,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {-1.1,-10.55,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {-1.1,-9.75,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[79] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {1.15,-9.75,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {1.15,-9.75,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,-10.55,4.25, 500},
							rotacao = {0,0,15, 500},
						},
						
						[3] = {
							anim = {"ped", "CAR_sitp", -1, true, true, false, true},
							delay = 550,
							posicao = {1.15,-10.55,3.85, 250},
							rotacao = {-15,0,0,-1},
						},
						--
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {1.15,-10.55,4.25, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {1.15,-9.75,4.25, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
		[80] = {
			--
			radio = sim,
			--
			acesso = {
				--
				[1] = {
				posicao = {2.15,-9.75,4},
					--
					entrar = {
						--
						[1] = {
							anim =  {"tattoos","tat_sit_in_p", -1, false, true, false, true, 1, true, false, 2, 0.4},
							delay = 0,
							posicao = {2.15,-9.75,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,-10.55,4.2, 500},
							rotacao = {0,0,15, 500},
						},
						--
						[3] = {
							anim =  {"tattoos","tat_sit_loop_p", -1, true, true, false, true, 1, true},
							delay = 725,
						},
						
						
					},
					--
					sair = {
						--
						[1] = {
							anim =  {"tattoos", "tat_sit_out_p", 500, false, true, false, false, 1, true, false, 2},
							delay = 0,
							posicao = {2.15,-10.55,4.2, -1},
						},
						--
						[2] = {
							delay = 50,
							posicao = {2.15,-9.75,4.2, 750},
							rotacao = {0,0,0, 350},
						},
						--
						
					},
					--
				},
				--
			},
			--
		},
		--
	},
	--
	
	
}