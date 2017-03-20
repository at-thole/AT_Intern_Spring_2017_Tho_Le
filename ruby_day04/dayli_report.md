#DAILY REPORT
####20-03-2017

####Block, Proc, Lambda
**Block:** Blocks are enclosed in a `do  end` statement or between brackets `{ }`, and they can have multiple arguments.
>[1, 2, 3].each { |num| puts num }

or
>[1, 2, 3].each do |num|
>  puts num
>end

**Proc:** Its used as other ruby data types (array, hash, string, fixnum etc..), it’s reusable and could be used across multiple calls.

>proc = Proc.new{|i| p i*2 }
>proc.call

**Lambda:** is essentially a proc itself but, the argument management is rigid. If it doesn’t get an argument or if the argument count is more or less it would raise an error.

>lam = lambda { puts "Hello" }
>l = lambda { |x| puts x +1 }

####Difference block, proc, lambda
**Block**
- Not `objects`
- Can not be stored in a variable

**Proc**
- Is `objects`
- Can call the method as well as assign it to the variable and return the value
- Return `ArgumentError` f not send parameters
- Return within the proc would exit the method from where it is called.

**Lambda**
- Lambda is an `object of Proc`
- Return `nil` f not send parameters
- Return within a lambda would exit it from the lambda and the method would continue executing.

####Regex
Short for regular expression, a regex is a string of text that allows you to create patterns that help match, locate, and manage text.
>(/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{8,}$/)
>(?=.*\d)  =>  should contain at least one digit
>(?=.*[a-z])  =>  should contain at least one lower case
>(?=.*[A-Z])   =>  should contain at least one upper case
>[a-zA-Z0-9]{8,}  =>  should contain at least 8 from the mentioned characters

####Gsub
Returns a copy of string with the all occurrences of pattern substituted for the second argument. The pattern is typically a Regex.
>"hello".gsub(/[aeiou]/, '*')
>'hello'.gsub(/[eo]/, 'e' => 3, 'o' => '*')

####Include?
Returns true if the given object is present in self, false otherwise.
>a = [ "a", "b", "c" ]
a.include?("b") => true
