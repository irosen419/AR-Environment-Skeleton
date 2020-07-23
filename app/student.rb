class Student < ActiveRecord::Base
    def self.all_in_grade(input_grade)
        self.all.select {|student| student.grade == input_grade}
    end
end