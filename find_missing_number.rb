# creating a random list of numbers to test with
x = "1 2 5 7 4"
i = 0

array = []
x = x.split(' ')
x.each{ |s| array << s.to_i }
array = array.sort

# creating a list of arguments to return 1 based on if array is not all numerical, 1 is not in the begging of the array or the array is empty
if array.all? {|i| i.is_a?(Integer) } == false || ( array[0] != 1 && array.any? )
  puts 1
  i = array.length
# loops through the array to check if there is a missing number
elsif
  while i < array.length - 1
    if array[i] == array[i + 1] - 1
      i += 1
    else
      seq = array[i] + 1
      puts seq
      i = array.length
    end
  end
# returns 0 if array is not missing a number or is empty.
else puts 0
end
