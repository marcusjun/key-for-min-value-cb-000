# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)

  value_array= name_hash.collect {|key,value| value}
  key_array= name_hash.collect {|key,value| key}

  min_value=value_array[0]
  min_key=key_array[0]

  if name_hash=={}
    nil
  else
    name_hash.each do |key,value|
      if min_value>name_hash[key]
        min_key=key
      end
    end
    min_key
  end
end
