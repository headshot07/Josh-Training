class Super_Class
  def super_class_public_method
    print "I Am In Super Class Public!"
    puts ''
  end

  protected
  def super_class_protected_method
    print "I Am In Super Class Protected!"
    puts ''
  end

  private
  def super_class_private_method
    print "I Am In Super Class Private!"
    puts ''
  end
end

class Base_Class < Super_Class
  def super_class_method
    #super_class_public_method
    #super_class_protected_method
    #super_class_private_method
    Super_Class.new.super_class_public_method
    Super_Class.new.super_class_protected_method
    #Super_Class.new.super_class_private_method
  end
end

class Sub_Child < Base_Class
  def sub_class_child_method
    super_class_protected_method
    super_class_private_method
    super_class_public_method
  end
end

obj=Base_Class.new
obj.super_class_method

objt=Sub_Child.new
objt.sub_class_child_method

# 2.5.5 :001 > class SuperClass
# 2.5.5 :002?>   end
#  => nil 
# 2.5.5 :003 > class BaseClass < SuperClass
# 2.5.5 :004?>   end
#  => nil
# 2.5.5 :005 > BaseClass.ancestors
#  => [BaseClass, SuperClass, Object, Kernel, BasicObject]
# 2.5.5 :008 > self.class
#  => Object 
# 2.5.5 :011 > Object.ancestors
#  => [Object, Kernel, BasicObject] 
# 2.5.5 :012 > Object.superclass
#  => BasicObject