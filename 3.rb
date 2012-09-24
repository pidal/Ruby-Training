# p 'Enter your age'
# age = gets.to_i

# output = if age < 10
#  'Its a young person'
# elsif age < 19
#  'Its a teenager'
# else 
#  'Its not a young person'
# end

# # variable = age < 45 ? 'yes' : 'no'

# # doSomething if 3 == 3
# # doSomething unless 3 == 3

# puts output


# puts hace salto de linea
# print no hace salto de linea!

print "Tell me a car model:"
car_model = gets.strip #strip removes spaces and br

output = case car_model
when 'Focus','Fiesta' then 'Ford'
when 'Ibiza' then 'Seat'
when 'Civic' then 'Honda'
else 'Unknown model'
end

	print "The car company for #{car_model} is ", output