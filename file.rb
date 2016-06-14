##################################
# Read a file
##################################
File.foreach( 'testfile' ) do |x|
    puts x
    p x
    array1 = p x.split
    puts array1[2]
end


=begin

File.foreach( 'testfile' ) do |x|

    array1 = p x.split
    return array1

end
=end

=begin
begin
    File.foreach('nofile') do |blah|
        puts blah.chomp
    end

    
catches exception and quits the program
rescue Exception => e
    puts e.message
    puts "no such file exists brooooo"
end
=end


if File.exist? 'nofile'

    File.foreach( 'nofile' ) do |line|
        puts line.chomp
    end

end

##################################
# Write to a file
##################################
File.open("newFile", "w") do |file|
    file.puts "line one: hello"
    file.puts "line two: world"
end
