Config                 = {}
Config.DrawDistance    = 10.0
Config.MaxErrors       = 5
Config.SpeedMultiplier = 3.6
Config.Locale          = 'en'

Config.Prices = {
	dmv         = 0,
	drive       = 0,
	drive_bike  = 0,
	drive_truck = 0
}

Config.VehicleModels = {
	drive       = 'dilettante2',
	drive_bike  = 'sanchez',
	drive_truck = 'mule3'
}

Config.SpeedLimits = {
	residence = 80,
	town      = 80,
	freeway   = 120
}

Config.Zones = {

	DMVSchool = {
		Pos   = {x = -270.7912, y = -692.9407, z = 33.25},
		Size  = {x = 2.5, y = 2.5, z = 2.5},
		Color = {r = 204, g = 204, b = 0},
		Type  = -1
	},

	VehicleSpawnPoint = {
		Pos   = {x = -322.3385, y = -699.7846, z = 32.96997, h = 0},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = -1
	}

}

Config.CheckPoints = {

	{
		Pos = {x = -322.4967, y = -684.4088, z = 31.50},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('next_point_speed', Config.SpeedLimits['residence']), 5000)
		end
	},

	{
		Pos = {x = -282.6593, y = -667.8461, z = 31.50},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = -146.2022, y = -715.8329, z = 33.25},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			CreateThread(function()
				DrawMissionText(_U('stop_for_ped'),5000)
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
				FreezeEntityPosition(vehicle, true)
				Wait(4000)

				FreezeEntityPosition(vehicle, false)
				DrawMissionText(_U('good_lets_cont'), 5000)
			end)
		end
	},

	{
		Pos = {x = -188.867, y = -868.0088, z = 28.00},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			setCurrentZoneType('town')

			CreateThread(function()
				DrawMissionText(_U('stop_look_left', Config.SpeedLimits['town']), 5000)
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
				FreezeEntityPosition(vehicle, true)
				Wait(6000)

				FreezeEntityPosition(vehicle, false)
				DrawMissionText(_U('good_turn_right'), 5000)
			end)
		end
	},

	{
		Pos = {x = -272.5582, y = -857.222, z = 30.00},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('watch_traffic_lightson'), 5000)
		end
	},

	{
		Pos = {x = -478.1011, y = -834.7253, z = 29.50},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = -618.8307, y = -810.8307, z = 24.30},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('stop_for_passing'), 5000)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
			FreezeEntityPosition(vehicle, true)
			Wait(6000)
			FreezeEntityPosition(vehicle, false)
		end
	},

	{
		Pos = {x = -629.8417, y = -679.978, z = 30.00},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = -624.211, y = -568.9583, z = 33.50},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = -433.1736, y = -663.5241, z = 36.00},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			setCurrentZoneType('freeway')

			DrawMissionText(_U('hway_time', Config.SpeedLimits['freeway']), 5000)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
		end
	},

	{
		Pos = {x = -424.8396, y = -1066.404, z = 21.10},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = -425.2352, y = -1424.123, z = 21.10},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = -662.6506, y = -1696.945, z = 36.50},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = -742.633, y = -1703.171, z = 28.00},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			setCurrentZoneType('town')
			DrawMissionText(_U('in_town_speed', Config.SpeedLimits['town']), 5000)
		end
	},

	{
		Pos = {x = -497.3275, y = -859.2659, z = 29.30},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('gratz_stay_alert'), 5000)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
		end
	},

	{
		Pos = {x = -303.1253, y = -700.8395, z = 29.50},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			ESX.Game.DeleteVehicle(vehicle)
		end
	}

}
