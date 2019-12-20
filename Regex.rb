print "Enter The Mobile Number: "
number=gets

if number.match(/\A[1-9][0-9]{9}\Z/)
  print "A Mobile Number"
else 
  print "Not A Mobile Number"
end

print "\n\n"

print "Enter The Pan Number :"
pan=gets

if pan.match(/\A[A-Z]{5}[0-9]{4}[A-Z]{1}\Z/)
   print "A Pan Card Number"
else 
   print "Not A Pan Card Number"
end

print "\n\n"

print "Enter The Name: "
user_name=gets

if user_name.match(/\A[a-zA-Z' ']+\Z/)
  print "A Valid User Name"
else 
  print "Not A Valid User Name"
end

print "\n\n"

print "Enter The Gender: "
gender=gets

if gender.match(/\A[MFmf]\Z/)
  print "Valid Gender"
else 
  print "Invalid Gender"
end

print "\n\n"

print "Enter The Amount: "
amount=gets

if amount.match(/\A[0-9]*[.]?[0-9]+\Z/)
  print "A Valid Amount"
else 
  print "Not A Valid Amount"
end

print "\n\n"

print "Enter The Email: "
email=gets

if email.match(/\A[a-zA-Z0-9]+[._]*[a-zA-Z0-9]*[@][a-zA-Z0-9]+[.][a-zA-Z0-9]+\Z/)
  print "A Valid Email"
else 
  print "Not A Valid Email"
end