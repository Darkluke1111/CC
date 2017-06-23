function add(a,b)
  local c = {} --resulting matrix
  for i = 1 , #a do
    local resultline = {}
    for k, va in pairs(a[i]) do
      local res = va + (b[i][k] or 0)
      resultline[k] = (res ~= 0) and res or nil
    end
    for k, vb in pairs(b[i]) do
      local res
      if not a[i][k] then
        resultline[k] = vb
      end
    end
    c[i] = resultline
  end
  return c
end

function mult(a,b)
  local c  = {} --resulting matrix
  for i = 1, #a do
    local resultline = {}
    for k, va in pairs(a[i]) do
      for j, vb in pairs(b[k]) do
        local res = (resultline[j] or 0) + va * vb
        resultline[j] = (res ~= 0) and res or nil
      end
    end
    c[i] = resultline
  end
  return c
end

function printMat(a)
  for i = 1 , #a do
    for k,v in ipairs(a[i]) do
      io.write(v," ")
    end
    io.write("\n")
  end
end

a = {{1,2},{[2] = 4}}
b = {{5,6},{7,8}}
c = add(a,b)
printMat(c)
