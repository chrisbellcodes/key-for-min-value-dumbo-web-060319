# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  values = name_hash.collect do |key, value|
    value
  end
  #the following sorts my array
  return nil if values.size < 1
  swap = true
  while swap
    swap = false
    (values.length - 1).times do |x|
      if values[x] > values[x + 1]
        values[x], values[x + 1] = values[x + 1], values[x]
        swap = true
      end
    end
  end

  name_hash.each do |key, value|
    if value == values[0]
      return key
    end
  end
end
