#Array to Hash


def array_to_hash(array)
  hash = {}
  array.each do |x|
    if hash.include?(x.first)
      hash[x.first] += x.last
    else
      hash[x.first] = x.last
    end
  end

  return hash
end

array = [['dogs', 4], ['cats', 3], ['dogs', 7]]
array_to_hash(array)

#Leap Years

def find_leap_years(start, ending)
  leap_years = (start..ending).to_a
  leap_years.delete_if do |y|
    (y % 4 != 0) || (y % 100 == 0 && y % 400 != 0)
  end
  return leap_years
end

find_leap_years(2000, 2012)

#Find The Longest Word

def find_longest(array)
  array.max { |a, b| a.length <=> b.length }
end

find_longest(array)
