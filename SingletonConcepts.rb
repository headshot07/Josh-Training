#_Head.Shot.07_
class Maths
  def sum
    print "I Am Sum!"
    puts''
  end
end

M1=Maths.new #Here, Maths Is Working As An Object As It Is Calling 'new' Method Defined In Maths Class Inherited Form "Class" Class.
M2=Maths.new

def M1.multiplication  #Singleton Method
  print "I Am In Multiplication!"
  puts ''
end

M1.sum
M1.multiplication
M2.sum

singleton_class=(class << M1 ;self;end)  #Singleton Class Defined For Object M1.
print singleton_class.class,' ',singleton_class.method_defined?(:multiplication)
puts ''
print M1.class
puts ''
print M2.class
puts ''

print singleton_class.superclass
puts ''