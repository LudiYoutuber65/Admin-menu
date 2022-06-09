local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('ludijutuber:stvoriVozilo')
AddEventHandler('ludijutuber:stvoriVozilo', function(id, ime)
    local igrac = ESX.GetPlayerFromId(id)
    TriggerClientEvent('esx:spawnVehicle', igrac.source, ime)
end)

RegisterServerEvent("ludi:admin")
AddEventHandler("ludi:admin", function()
      local xPlayer = ESX.GetPlayerFromId(source)

      if xPlayer.getGroup() == 'admin' or xPlayer.getGroup() == 'superadmin' then
          if xPlayer.proveriDuznost() == true then
            TriggerClientEvent("professr:admin", source)
          else
            TriggerClientEvent('okokNotify:Alert', source, "ADMIN-SISTEM", "moras da budeš na duznosti da otvoris ovo", 5000, 'error')
          end
      else
        TriggerClientEvent('okokNotify:Alert', source, "ADMIN-SISTEM", "Nemas permisiju da radis ovo.", 5000, 'error')
      end
  end)
