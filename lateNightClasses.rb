
=begin
public class book{

    // fields

    // constructor

    // methods
}
=end


class Book


    # Class variables with '@@' are available across different objects
    @@no_of_books = 0


    # ------------------------------------------------------------------------------------------
    # to return a value from a constructor field your can use the "manual" reader writer method
    # ------------------------------------------------------------------------------------------


    # constructor or initialize method
    # instance variables '@' Instance variables are available across methods
    def initialize( title, author343, publishing )
        @book_title = title
        @book_author = author343
        @book_publ = publishing
    end


    # a "reader" method that just reads the value of @book_author
    # STILL CANNOT WRITE TO THIS VARIABLE
    def author
        @book_author
    end


    # another "reader" method that just reads the value of @book_publ
    # STILL CANNOT WRITE TO THIS VARIABLE
    def publishing
        @book_publ
    end


    # a "writer" method that writes the value of author as a string
    # allows you to write to the address author in memory
    def author=(str)
        @book_author = str
    end


    def publishing=(str)
        @book_publ = str
    end


end




class Book2



    @@no_of_books2 = 0


    # ---------------------------------------------------------------------------
    # or you can use build in attr_accessor: which is the "built in" Ruby method
    # ---------------------------------------------------------------------------

#---------------------------------------------------------------------
# GENERAL CASE of attr_accessor Ruby Method  |
# --------------------------------------------
#
# => attr_accessor :param1, param2, ... , paramN
#
# => def initialize( param_value1, param_value2, ... , param_valueN )
# =>    @param1 = param_value1
# =>    @param2 = param_value2
# =>        .       .
# =>    @paramN = param_valueN

#---------------------------------------------------------------------

    attr_accessor :title2, :author2, :publishing2

    def initialize( tit, auth, pub )
        @title2 = tit
        @author2 = auth
        @publishing2 = pub
    end


end

# That is, instance variables cannot be accessed in the x.y form as is common in say,
# Java or even Python. In Ruby y is always taken as a message to send (or "method to
# call"). Thus the attr_* methods create wrappers which proxy the instance @variable
# access through dynamically created methods.

# Ruby you only call methods!!!!



the_great_gatsby = Book.new("The Great Gatsby", "F. Scott Fitzgerald", "yourmom")
the_great_gatsby2 = Book2.new("brobro", "duudedude", "guyguy")



# calls the author reader method from Book
puts the_great_gatsby.author
# calls the author=(str) method from Book
the_great_gatsby.author = "poop"
# calls the author reader method from Book
puts the_great_gatsby.author


# calls the attr_accessor :author2 method
puts the_great_gatsby2.author2
# calls the attr_accessor :author2 method
the_great_gatsby2.author2 = "dudebro"
# calls the attr_accessor :author2 method
puts the_great_gatsby2.author2
