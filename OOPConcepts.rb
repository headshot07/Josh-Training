class Employee
	@@class_var=2  #Class Variables are associated with the class, i.e all the objects of that class shares the same copy of that variable.
	               #They are defined by using '@@' in-front-of the variable defined.
	attr_reader :name #attr_reader are used to read the value of variable because writing getter for each attribute is a hectic job.
	attr_writer :name #attr_writer are used to write or update the value of variable because writing setter for each attribute is a hectic job.
	attr_accessor :salary,:name #attr_accessor is the combination of attr_reader and attr_writer.
	#public :set_name,:name
	def initialize(name,salary)	#Constructor
		puts 'Object Created'
		@name=name
		@salary=salary
	end

	def name	#Getter=It is used to get the value of particular variable.
		@name
	end

	def set_name(name)	#Setter=It is used to set or update the value of particular variable.
		@name=name
	end

	def self.class_method #Class Method=They can be accessed without the creation of any object of that class. Class name is used to access them.
		                    #Instead of 'self',we can also use Name of that class.
		puts 'I Am Class Method'
	end

	public #public Access Specifier=Method is accessible outside the class.
	def company_policy
		puts "Policies Of Company"
	end

	private #private Access Specifier=Method is accessible only inside the class.
	def emp_salary
		@salary=400000
	end

	protected #protected Access Specifier=Method is accessible only in the child class.
	def department
		puts "I Am In Sales Department"
	end
end

Employee.class_method
emp=Employee.new('Sanjay',100000) #Object Creation.
puts emp.name
puts emp.salary
emp.salary=200000
puts emp.salary
#emp.set_name('Ram')
emp.name='Ajay'
puts emp.name
puts Employee.class_variables
puts emp.instance_variables

