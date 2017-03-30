x = ARGV[0]
y = []

x = x.to_s.split('')
x.each{ |s| y << s.to_i }
x = y.sort.reverse.join("").to_i


print x
