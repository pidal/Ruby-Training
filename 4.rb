######### 1 way

# number = 0
# loop do
# 	break if number > 15
# 	puts "The number inside the loop is #{number}"
# 	number += 1
# end

######### 2 way

# number = 0
# until number > 15 do
# 	puts "The number inside the loop is #{number}"
# 	number += 1
# end

######### 3 way

# number = 0
# while number <= 15 do
# 	puts "The number inside the loop is #{number}"
# 	number += 1
# end

######### 4 way

# 16.times do |number| # do |number| is optional, solo si queremos el valor del time dentro
# 	puts "The number inside the loop is #{number}"
# end

######### 5 way

# list = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]

# list.each do |number|
# 	puts "The number inside the loop is #{number}"
# end

######### 6 way

# (0..15).each do |number| # range (0..15) Si no queremos incluir el 15, 0...15 (3puntos)
# 	puts "The number inside the loop is #{number}"
# end

######### 7 way

# for number in 0..15 do
# 	puts "The number inside the loop is #{number}"
# end


##################################### BLOCKS

# a = {key: value} # CUIDADO Esto es un hash, no un block!

######### 1 way

# do
# 	something
# end

######### 2 way

# { }

######### EXAMPLE

def form &block
	puts '<form>'
	yield if block_given? # Aqui aparece el contenido del block form de abajo.
	puts '</form>'
end

def paragraph text
	puts "<p>" + text + "</p>"
end

def quote text
	puts "<quote>" + text + "</quote>"
end

form do
	paragraph "This is a paragraph"
	quote "This is a quote form Shakespeare"
end



