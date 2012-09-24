class Car
	
	attr_reader :state
	 attr_writer :state
	# attr_accessor :state # it acts as reader and writer

	def initialize engine, tires
		@engine = engine
		@tires = tires
		p 'Car with engine ' + engine
	end

	def start 
		@state = 'running'
		p 'Car Started!'
	end
	def stop
		@state = 'stopped'
		p 'Car stopped!'
	end
	def status  #Esto lo creo para no tener que usar el attr_reader, que es como
				# hacer una funcion publica en php. En un objeto mejor las variables
				# privadas
		p 'Car status: ' + @state
	end

end


car = Car.new "1.6 Petrol", [1,2,3,4]

# puts car.inspect

car.start
p 'the car is ' + car.state
car.stop
p 'the car is ' + car.state
#attr_writer let us do : car.state = 'Stopped'

p '#################'

opel = Car.new('2.0', '4')

opel.start
p opel.state
opel.state = 'Calado'
p opel.state
opel.stop
p opel.state
opel.status

p '#################'

