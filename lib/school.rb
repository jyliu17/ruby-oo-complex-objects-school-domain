require 'pry'

# code here!

class School

    attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        self.roster[grade] ||= []
        self.roster[grade] << name
    end

    def grade(students)
        self.roster[students]
    end

    def sort
        self.roster.each {|grade,students| students.sort!}
    end


end
