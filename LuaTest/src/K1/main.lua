
--defines a factorial function
function fact (n)
  if n == 0  then
    return 1
  else
    return n * fact (n - 1 )
  end
end

print ("enter a number:")
a = io.read("*n")   --reads a number
print (a < 0 and "Zahl muss positiv sein!" or fact(a)) --Modified to also handle negative numbers


function twice (x)
  return 2.0 * x
end
