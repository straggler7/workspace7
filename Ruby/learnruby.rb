# this is a comment in ruby
# learn ruby in X minutes

=begin 
this is a multiline comment
in ruby
and this is learn ruby in x minutes
=end

# everything is an object

puts 3.class #=> Fixnum
puts 3.to_s #=> 3

# some basic arithmatic
puts 1 + 1 #=> 2
puts 3 - 2 #=> 1
puts 3.0 + 4.0 # 7.0
puts 5.0 - 2.0 # 3.0
puts 5.0 * 2 # 10.0
puts 35/3
puts 35 % 2

# arithmatic is syntactic sugar 
puts 2.*(8)

# special values are objects
puts nil.class
puts nil
puts true.class
puts false

# equality
puts 1 == 1 # true
puts 0 == 0 # true

# inequality
puts 1 != 2 # true
puts !false # true

# comparisions
1 > 10 # true
1 <= 1 # true

# strings are objects
puts "I am a string".class # String
puts "I am a string too".class # String

placeholder = "use string interpolation"
puts "I can #{placeholder} when using double quoted string"
puts 'I cannot #{placeholder} when using single quoted string'

# symbols
puts :pending.class # Symbol
status = :pending
puts status == :pending # true
puts status == :approved # false

# this is an array
array = [1, 2, 3, 4, 5]
puts array.class
puts array
puts array[100]
puts array[2..4]
puts array[-1]
puts array[0, 5]
puts array << 6
puts array << 7
puts array << 8

# hashes in Ruby
hash = {'color' => 'blue', 'number' => 5}
puts hash.keys # ['color', 'number']
puts hash['color']
puts hash['number']

new_hash = {defcon: 3, action: true}
puts new_hash.keys # [:defcon :action]

# control statements
if true
	puts "if statement"
elsif false
	puts "else if, options"
else
	puts "else, also optional"
end

for i in 1..5
	puts "iteration #{i}"
end

(1..5).each do |counter|
	puts "each block iteration #{counter}"
end

array2 = ['foo', 'bar', 'baz']
array2.each do |el|
	puts "array element #{el}"
end

hash2 = {'foo' => 1, 'bar' => 2, 'baz' => 3}
hash2.each do |key, val|
	puts "#{key} => #{val}"
end

counter = 1
while counter < 5 do
	puts "while loop iteration #{counter}"
	counter += 1
end

grade = 'B'
# switch
case grade
	when 'A'
		puts 'what a way to go kiddo'
	when 'B'
		puts 'Better luck next time'
	when 'C'
		puts 'You can do better'
	when 'D'
		puts 'Scraping through'
	else
		puts 'Alternative grading system, eh?'
end

# Functions
def double(x)
	x * 2
end
puts double(2)
puts double double 7

def surround
	puts "/"
	yield
	puts "}"
end

surround { puts "fubar" }

def guests(&block)
	block.call "some arg"
end

def guests(*array)
	array.each { |guest| puts "#{guest}" }
end

class Human
	@@species = "H. sapiens"

	# Basic initializer
	def initialize(name, age=0)
		@name = name
		@age = age
	end

	# Basic setter
	def name=(name)
		@name = name
	end

	# Basic getter
	def name
		@name
	end

	def self.say(msg)
		puts "#{msg}"
	end

	def species
		@@species
	end
end

# instantiate a class
madhu = Human.new("Madhu Pavan")
haritha = Human.new("Haritha Gokina")

puts madhu.name
puts madhu.species
madhu.name = "madhu pavan kumar benidi"
puts madhu.name
Human.say('hi')
puts madhu.class

$var = "I am a global"
puts defined? $var

@var = "I am an instance variable"
puts defined?(@var)

@@var = "I am a class variable"
puts defined? @@var

Var = "I am a constant"
puts defined? Var


class Shape
	@@sides = 0
	def self.sides=(sides)
		@@sides = sides
	end

	def self.sides
		@@sides
	end
end

class Square < Shape
end

myShape = Square.new()
puts Shape.sides
puts Square.sides = 4
# puts myShape.sides
puts Shape.sides

class Car
	@color = "blue"

	def self.color=(value)
		@color = value
	end

	def self.color
		@color
	end
end

my_car = Car.new()
puts Car.color

module ModuleExample
	def foo
		'foo'
	end
end

class Person
	include ModuleExample
end

class Book
	extend ModuleExample
end

# puts Person.foo
puts Person.new.foo
puts Book.foo
# puts Book.new.foo

module ConcernExample
	def self.