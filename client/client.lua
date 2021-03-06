ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent("tpmenu:open")
AddEventHandler("tpmenu:open", function()
  ESX.TriggerServerCallback("esx_marker:fetchUserRank", function(playerRank)
    if playerRank == "moderator" or playerRank == "admin" or playerRank == "superadmin" then
      	OtvoriLokacije()
	else
		Esx.ShowNotification("Nemas permisije!")
    end
  end)
end)

function OtvoriLokacije()
	local playerPed = PlayerPedId()
	local elements = {
		{label = 'Ostrvo |๐ด',  value = 'ostrvo'},
		{label = 'Banka | ๐ฒ',   value = 'banka'},
		{label = 'Auto Salon | ๐',  value = 'autosalon'},
		{label = 'Opstina | ๐',  value = 'opstina'},
		{label = 'Auto Skola | ๐ซ',  value = 'askola'},
		{label = 'Ikea | ๐',  value = 'ikea'},
		{label = 'Sud | โ๏ธ',  value = 'sud'},
		{label = 'Zatvor | ๐จ',  value = 'zatvor'},
		{label = 'Markeri | ๐งน',  value = 'markeri'},
		{label = 'Groblje | โฐ๏ธ',  value = 'groblje'},
		{label = 'A Garaza | ๐ฌ',  value = 'agaraza'},
		{label = 'B Garaza | ๐ฌ',  value = 'bgaraza'},
		{label = 'C Garaza | ๐ฌ',  value = 'cgaraza'},
		{label = 'D Garaza | ๐ฌ',  value = 'dgaraza'},
		{label = 'E Garaza | ๐ฌ',  value = 'egaraza'},
		{label = 'F Garaza | ๐ฌ',  value = 'fgaraza'},
		{label = 'G Garaza | ๐ฌ',  value = 'ggaraza'},
		{label = 'H Garaza | ๐ฌ',  value = 'hgaraza'},
	}
	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'tpmenu_actions', {
		title    = 'Lokacije | ๐',
		align    = 'bottom-right',
		elements = elements
	}, function(data, menu)
		local type = data.current.value

		if type == 'ostrvo' then
		ESX.Game.Teleport(playerPed, {
			x = 4448.17,
			y = -4483.71,
			z = 4.23
		})
		elseif type == 'banka' then
			ESX.Game.Teleport(playerPed, {
				x = 226.61,
				y = 207.43,
				z = 105.51
			})
		elseif type == 'autosalon' then
			ESX.Game.Teleport(playerPed, {
				x = -55.41,
				y = 68.33,
				z = 71.95
			})
		elseif type == 'opstina' then
			ESX.Game.Teleport(playerPed, {
				x = -151.86,
				y = 6298.54,
				z = 31.49
			})
		elseif type == 'askola' then
			ESX.Game.Teleport(playerPed, {
				x = 228.03,
				y = 372.89,
				z = 106.11
			})
		elseif type == 'agaraza' then
			ESX.Game.Teleport(playerPed, {
				x = 1433.49,
				y = -2605.8,
				z = 48.13
			})
		elseif type == 'bgaraza' then
			ESX.Game.Teleport(playerPed, {
				x = 273.67,
				y = -344.15,
				z = 44.92
			})
		elseif type == 'cgaraza' then
			ESX.Game.Teleport(playerPed, {
				x = -1803.9,
				y = -341.46,
				z = 43.99
			})
		elseif type == 'dgaraza' then
			ESX.Game.Teleport(playerPed, {
				x = -332.2,
				y = -736.5,
				z = 33.97
			})
		elseif type == 'egaraza' then
			ESX.Game.Teleport(playerPed, {
				x = 344.64,
				y = -1688.33,
				z = 32.53
			})
		elseif type == 'fgaraza' then
			ESX.Game.Teleport(playerPed, {
				x = 1893.89,
				y = 3714.77,
				z = 32.78
			})
		elseif type == 'ggaraza' then
			ESX.Game.Teleport(playerPed, {
				x = -38.42,
				y = 6419.79,
				z = 31.49
			})
		elseif type == 'hgaraza' then
			ESX.Game.Teleport(playerPed, {
				x = -658.72,
				y = -2369.52,
				z = 13.95
			})
		elseif type == 'ikea' then
			ESX.Game.Teleport(playerPed, {
				x = 2763.84,
				y = 3466.4,
				z = 55.66
			})
		elseif type == 'pawns' then
			ESX.Game.Teleport(playerPed, {
				x = -815.53,
				y = -750.9,
				z = 22.93
			})
		elseif type == 'sud' then
			ESX.Game.Teleport(playerPed, {
				x = 242.61,
				y = -392.53,
				z = 46.31
			})
		elseif type == 'zatvor' then
			ESX.Game.Teleport(playerPed, {
				x = 736.42,
				y = 131.01,
				z = 80.71
			})
		elseif type == 'crkva' then
			ESX.Game.Teleport(playerPed, {
				x = 237.55,
				y = -406.74,
				z = 47.92
			})
		elseif type == 'markeri' then
			ESX.Game.Teleport(playerPed, {
				x = -1266.95,
				y = -3013.17,
				z = -48.49
			})
		elseif type == 'groblje' then
			ESX.Game.Teleport(playerPed, {
				x = -1591.77,
				y = -299.34,
				z = 51.82
			})
		end
	end, function(data, menu)
		menu.close()
	end)
end
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
local playerData   = {}
local nevidljivost = false

function OtvoriAdminMeni()
  ESX.UI.Menu.CloseAll()

  ESX.UI.Menu.Open(
  'default', GetCurrentResourceName(), 'admin_meni',
  {
    css      = 'meni',
    title    = 'Admin Meni | ๐',
    align    = 'top-left',
    elements = {
      {label = 'Stvori Vozilo | ๐', value = 'vozilo'},
      {label = 'Lokacije | ๐', value = 'lokacije'},
      {label = 'Nevidljivost | ๐', value = 'nevidljivost'},
      {label = 'Admin auto | ๐ต', value = 'adminauto'},
      {label = 'Posmatraj | ๐ญ', value = 'posmatraj'},
      {label = 'Obrisi Vozilo | ๐', value = 'dv'},
      {label = 'Popravi | ๐ง', value = 'fix'},
      {label = 'Ocisti | ๐งฝ', value = 'clean'},
      {label = 'Freeze | ๐ฅถ', value = 'zaledi'},
      {label = 'Unfreeze | ๐ฅถ', value = 'odledi'},
    }
},
function(data, menu)

      if data.current.value == 'vozilo' then
        local vozilo = UnosTastatura('Ime Vozila', '', 100)
        local id = UnosTastatura('ID', '', 100)

        if vozilo ~= nil and id ~= nil then
            TriggerServerEvent('ludijutuber:stvoriVozilo', id, vozilo)
        else
            ESX.ShowNotification('Prekinuo si radnju')
        end
      end 
      if data.current.value == 'nevidljivost' then
		if nevidljivost == false then
          SetEntityVisible(PlayerPedId(), false, 0)
		  ESX.ShowNotification('Nevidjlivost je ukljuฤena')
		  nevidljivost = true
		  print("Nevidljiv")

        else
          SetEntityVisible(PlayerPedId(), true, 0)
		  ESX.ShowNotification('Nevidjlivost je iskljuฤena')
          nevidljivost = false
		  print("Vidljiv")
		end
      end

    if data.current.value == 'zaledi' then
      local id = UnosTastatura('ID', '', 100)
	  local player1 = PlayerId()
	  local ime = GetPlayerName(player1)
	  local imedrugogigraca = GetPlayerName(closestPlayer)
      if id ~= nil then
		FreezeEntityPosition(PlayerPedId(), true)
		end
    end
    if data.current.value == 'odledi' then
      local id = UnosTastatura('ID', '', 100)
	  local player1 = PlayerId()
	  local ime = GetPlayerName(player1)
	  local imedrugogigraca = GetPlayerName(closestPlayer)
						
      if id ~= nil then
		FreezeEntityPosition(PlayerPedId(), false)
		end
    end

      if data.current.value == 'lokacije' then
        OtvoriLokacije()
        ESX.UI.Menu.CloseAll()
      end 

      if data.current.value == 'adminauto' then
        TriggerEvent('esx:spawnVehicle', 'admin')
        ESX.UI.Menu.CloseAll()
      end

      if data.current.value == 'posmatraj' then
        TriggerEvent('esx_spectate:spectate')
      end

      if data.current.value == 'clean' then
      	TriggerEvent('ludijutuber_repair:ocisti')
      end

      if data.current.value == 'dv' then
        TriggerEvent('esx:deleteVehicle')
      end

      if data.current.value == 'fix' then
        TriggerEvent('ludijutuber:popravi')
      end

  end,
    function(data, menu)
      menu.close()
    end
  )
end

RegisterNetEvent('ludijutuber:popravi')
AddEventHandler('ludijutuber:popravi', function()
  local playerPed = PlayerPedId()
  if IsPedInAnyVehicle(playerPed, false) then
    local vehicle = GetVehiclePedIsIn(playerPed, false)
    SetVehicleEngineHealth(vehicle, 1000)
    SetVehicleEngineOn( vehicle, true, true )
    SetVehicleFixed(vehicle)
	ESX.ShowNotification('Vozilo je popravljeno!')
  else
	ESX.ShowNotification('Ne nalazite se u vozilu!')
  end
end)

RegisterNetEvent('ludijutuber:ocisti')
AddEventHandler('ludijutuber:ocisti', function()
  local playerPed = PlayerPedId()
  if IsPedInAnyVehicle(playerPed, false) then
    local vehicle = GetVehiclePedIsIn(playerPed, false)
    SetVehicleDirtLevel(vehicle, 0)
	ESX.ShowNotification('Vozilo je oฤiลกฤeno!')
  else
	ESX.ShowNotification('Ne nalazite se u vozilu!')
  end
end)

RegisterKeyMapping('adminmeni', 'Admin Meni', 'keyboard', 'F9')

UnosTastatura = function(TextEntry, ExampleText, MaxStringLength)
    AddTextEntry("FMMC_KEY_TIP1", TextEntry .. ":")
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
        DisableAllControlActions(0)
        if IsDisabledControlPressed(0, 322) then return "" end
        Wait(0)
    end
    if (GetOnscreenKeyboardResult()) then
      print(GetOnscreenKeyboardResult())
      return GetOnscreenKeyboardResult()
    end
end

RegisterNetEvent("professr:admin")
AddEventHandler("professr:admin", function()
OtvoriAdminMeni()
end)

RegisterCommand('adminmeni',function()
	TriggerServerEvent('ludi:admin')
	print("otvorio")
end)

