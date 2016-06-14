=begin
# Comment
print "Enter a value: "

# variables are lowercase or lowercase
first_num = gets.to_i

print "Enter another value: "

# gets will grab data from stdin
second_num = gets.to_i

puts first_num.to_s + " " + second_num.to_s
puts first_num+second_num
=end


puts 6 + 5
puts 6 % 5

num_one = 1.000
num99 = 0.99

puts num_one.to_s + " - " + num99.to_s + " = " + (num_one - num99).to_s

puts 1.class
puts 1.234.class
puts "dudebro".class

dudebro = File.new("mySum.out", "w")
dudebro.print("BRO").to_s
dudebro.print("WASSHANNNIN").to_s
dudebro.close

num_from_dudebro = File.read("mySum.out")

puts "Data from dudebro: " + num_from_dudebro

load "test2.rb"
