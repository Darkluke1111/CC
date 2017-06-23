
dofile("peripheral.lua")


local peri = {}


for _,name in pairs(peripheral.getNames()) do
  local type = peripheral.getType(name)
  if peri[type] then
    local list = peri[type]
    list[#list + 1] = peripheral.wrap(name)
  else
    local t = peripheral.wrap(name)
    peri[type] = {t}
  end
end

for k, v in pairs(peri.turbine) do
  print(k)
  print(v)
end


