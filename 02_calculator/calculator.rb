#write your code here
def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(ar)
  x = 0
  ar.length.times do |i|
    x += ar[i]
  end
  return x
end

def multiply(x, y)
  x * y
end

def multiply(x, y, *z)
  i = x * y
  z.length.times do |n|
    a = z[n]
    i *= a
  end
  return i
end

def power(x, y)
  x ** y
end

def factorial(x)
  fact = 1
  x.downto(1) do |i|
    if x == i then
      fact = x
      next
    end
    fact *= i
  end
  if x == 1 then return 1 end
  fact
end
