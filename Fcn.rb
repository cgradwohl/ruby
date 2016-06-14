##################################
# Methods
##################################

def add(a,b)
    a + b
end

puts add(3,4)

def factorial(n)
    n == 0? 1 : n * factorial(n-1)
end

puts "3! = " + factorial(3).to_s
puts factorial(3)

def max_splat(param1, param2, *int)
    # *parameter creates an array to hold
    # multiple elements of that parameter
    # .max is inherant to the array class
    puts param1.to_s + param2.to_s
    puts int.max
end

# *int point to array {4,5,6,7,8,9,0}
puts max_splat("the ", "max is: ", 4,5,6,7,8,9,0).to_s


3.times {puts "hello world"}


##################################
# Blocks
##################################

# 2 different ways to do the same thing
4.times do |index|
    if index>0
        puts index
    end
end

4.times {|index| puts index if index>0}

# implicit block definition
# uses blockGiven? to check if block was passed
# and yield to call block or throw and exception if not found
def method1
    return "ERROR Method1: no block given" unless block_given?
    yield
    yield
    yield
end

puts method1{puts "dude"}
puts method1

# explicit block definition
# declare a block as a last parameter in a
# method with the & symbol in front
def method2 (&block)
    return "ERROR Method2: no block given" if block.nil?
    block.call
    block.call
    block.call
end

method2 {puts "bro"}
puts method2
