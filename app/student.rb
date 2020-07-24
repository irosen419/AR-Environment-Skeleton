class Student < ActiveRecord::Base
    has_many :grade_levels
    has_many :teachers, through: :grade_levels

    def self.all_in_grade(input_grade)
        self.all.select {|student| student.grade == input_grade}
    end
end