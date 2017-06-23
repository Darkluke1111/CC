function listNew ()
  return {first = 0, last =  -1}
end

function pushFirst (list, value)
  local first = list.first - 1
  list.first =  first
  list[first] = value
end

function pushLast (list, value)
  local last = list.last + 1
  list.last = last
  list[last] = value
end

function popFirst (list)
  local first = list.first
  if first > list.last then error("Cannot pop from empty list!") end
  local val = list[first]
  list[first] = nil
  list.first = first + 1
  if isEmpty(list) then list.first = 0 ; list.last = -1 end
  return val
end

function popLast(list)
  local last = list.last
  if last < list.first then error("Cannot pop from empty list!") end
  local val = list[last]
  list[last] = nil
  list.last = last - 1
  if isEmpty(list) then list.first = 0 ; list.last = -1 end
  return val
end

function isEmpty(list)
  return list.last < list.first
end

function printList(list)
  for i = list.first , list.last do
    io.write(list[i], ", ")
  end
  io.write("\n")
end

local l = listNew()
pushFirst(l,"Lukas")
pushLast(l,".")
pushFirst(l,"ich bin")
printList(l)
print(popFirst(l))
print(popFirst(l))
print(popFirst(l))
print(l.first .. " " .. l.last)