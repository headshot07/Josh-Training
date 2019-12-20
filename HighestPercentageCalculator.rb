#Problem : Calculate The Weekly Percentage Of Students!!!
class Result
    @@id=0
    @@each_percentage=[]
    def initialize(name,marks)
        @@id+=1
        @stu_id=@@id
        @name=name
        @marks=marks
        @total=0
    end
    def percentage()
        for i in 0..@marks.size-1 do
            @total+=@marks[i]
        end
    end
    def total_percentage
        print "Student ID: ",@stu_id
        puts ''
        print "Name: ",@name
        print "Percentage: ",(@total*100)/700
        puts ''
        @@each_percentage.push((@total*100)/700)
    end
    def self.sort_it
        @@each_percentage.sort
        puts ''
        print "Highest Percentage: ",@@each_percentage[-1]
        puts ''
    end
end

print "Enter Number Of Students :"
no_of_students=gets.to_i
puts ''
for i in 0..no_of_students-1 do
    print "Enter Name Of Students :"
    name=gets
    puts ''
    marks=[]
    print "Enter The Marks Of Students :"
    for j in 0..6 do
        marks[j]=gets.to_i
    end
    puts ''
    stu=Result.new(name,marks)
    stu.percentage
    stu.total_percentage
end
Result.sort_it