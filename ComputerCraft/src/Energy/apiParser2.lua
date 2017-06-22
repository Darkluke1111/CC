

function parse (file)
  local name = string.gsub(file,"%.htm","")
  local i = io.open(file,"r")
  local o = io.open(name ..".lua","w")
  
  
  o.write(o,name," = {}\n\n")
  local counter = -1

  for line in i.lines(i) do
    local span = "<span.->(.-)</span>"
    local a = "<a.->(.-)</a>"
    local td = "<td.->(.-)</td>"
    local xml1 = "<(%w+).->"
    local xml2 = "<(/%w+)>"
    --line = string.gsub(line,span,"%1")
    --line = string.gsub(line,a,"%1")
    --line = string.gsub(line,td,"%1")
    line = string.gsub(line,xml1,"")
    line = string.gsub(line,xml2,"")
    line = string.gsub(line,"%[.-%]","")

    line = string.gsub(line,"string ","")
    
    if string.match(line,"Method Name") then
      counter = 0
    end
    print(counter)
    if counter >= 0 then
      

      if (counter % 9 == 0) then
          
          o.write(o,"function ",line,"()","\n")
          o.write(o,"--auto-generated function\n")
          o.write(o,"end\n")

      end
    counter = counter + 1
    print(line)
    end
    
  end
  
    o.flush(o)
    o.close(o)
    i.close(i)
  
end

local file = io.stdin.read(io.stdin,"*l")
parse (file)