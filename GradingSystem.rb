print "Enter The Grade: "
grade=gets.to_i

def grade_check(grade)
if grade<=5 && grade>=1
  print "Elementary"
elsif grade<=8 && grade>=5
  print "Middle School"
elsif grade<=12 && grade>=9
  print "High School"
else 
  print "College"
end
end

grade_check grade