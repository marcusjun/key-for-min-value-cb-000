# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)

  #I needed a way to retrieve starting keys and values to
  #compare with subsequent keys and values.

  #Probably shouldn't create arrays of all values and keys
  #but didn't know if there's another way to get starting values
  key_array= name_hash.collect {|key,value| key}
  value_array= name_hash.collect {|key,value| value}

  #retrieve first key and value from above arrays
  #use these first key/value pairs to compare with subsequent
  min_key=key_array[0]
  min_value=value_array[0]


  if name_hash=={}
    nil
  else
    name_hash.each do |key,value|
      #if subsequent value is less than current value
      #then assign subsequent value's key to current key
      #because it's less than current value
      if name_hash[key]<min_value
        min_key=key
      end
    end
    min_key
  end
end
