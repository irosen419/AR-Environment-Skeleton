class Student < ActiveRecord::Base
    belongs_to :teacher
    def full_name
        self.first_name + " " + self.last_name
    end

    def grade_level
        self.grade
    end

    def self.all_in_grade(input_grade)
        self.all.select {|student| student.grade == input_grade}
    end
end