require 'pry'

def my_all?(collection)
  
  i=0 #step 1a counter needed since we're using 'while'(lower-level iterator)
  block_return_values = [] #step 4 to store in the new values we declare an empty array BEFORE entereing 'while' loop
  
  while i < collection.length
    block_return_values << yield(collection[i]) #step 2 'yield' will send whatever is passed in as the argument to the block; 
    #step 5 shovel in '<<' the return value of the block into new array
  i += 1#step 1b explicit incrementation needed bc of 'while'
  end

  if block_return_values.include?(false) #step 6 use '.include?' to determine return values of my_all? method
    false
  else 
    true
  end

end

#call to method: step 3
my_all?([1,2,3]) {|i| i<2}