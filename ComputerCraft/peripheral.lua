peripheral = {}

peripheral.names = {
                    turbine_1 = {
                                    type = "turbine"
                                  },
                    turbine_2 = {
                                    type = "turbine"
                                  },
                    monitor_10 = {
                                    type =  "monitor"
                                   }
                  }

function peripheral.isPresent(side)
--auto-generated function
end
function peripheral.getType(side)
  local peri = peripheral.names[side]
  return peri.type
end
function peripheral.getMethods(side)
--auto-generated function
end
function peripheral.call(side, method, ...)
--auto-generated function
end
function peripheral.wrap(side)
  return peripheral.names[side]
end
function peripheral.find(type )
--auto-generated function
end

function peripheral.getNames()
  t = {}
  for k in pairs(peripheral.names) do
    t[#t + 1] = k
  end
  return t
end
