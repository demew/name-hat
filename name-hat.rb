#!/opt/local/bin/ruby

names = [] 

if ARGV[0] == nil:
  puts "You didn't provide a file name!"
else
  names_file = File.new(ARGV[0], "r")  
  names_file.each { |line| names << line.strip }
  names_file.close
end

puts "Drawing a name from " + ARGV[0] + "..."

sleep(1)
puts "::"
puts "::DRUMROLL::"
puts "::"
sleep(1)

names.shuffle!
winner = names[0]

puts "The winner of this fabulous prize is " + winner + "!"

sleep(1)

puts "Removing " + winner + " from the hat so they can't win again!"

names.delete(winner)
new_file = File.new(ARGV[0], "w")
names.each { |name| new_file << name + "\n" }
new_file.close
