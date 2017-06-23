
Turbine = {}

Turbine.new = function (name)
  local t = {}
  t.name = name
  return t
end

print(Turbine.new("name").name)