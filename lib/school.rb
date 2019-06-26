class School
    attr_accessor :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        @student_name = student_name
        if @roster[grade]
          @roster[grade] << student_name
        else
          roster[grade] = []
          roster[grade] << student_name
        end
    end

    def grade(grade)
        @roster[grade]
    end
    
    def sort
        @roster.each do |grade_level, students_array|
            students_array.sort!
        end
    end
end
#school = School.new("Bayside High School")