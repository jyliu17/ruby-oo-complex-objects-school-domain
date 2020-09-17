require 'pry'

# code here!

class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end
    
    def add_student(name,grade)
        roster[grade] ||= []
        roster[grade] << name
    end

    def grade(students)
        roster[students]
    end

    def sort
        school_sort = {}
        roster.each do |grade, student|
        school_sort[grade] = student.sort
        end 
        school_sort
    end

end
