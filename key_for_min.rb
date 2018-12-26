# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash == {}
    return nil
  end
  value_min = 0
  key_min = nil
  name_hash.collect do |name, value|
    if value_min == 0
      value_min = value
      key_min = name
    elsif value < value_min
      value_min = value
      key_min = name
    end
  end
  return key_min
end
