class Teacher < ActiveRecord::Base
    has_many :grade_levels
    has_many :students, through: :grade_levels

    def tenure?
        self.years_of_experience > 5
    end

    def self.grade_assignment
        GradeLevel.all.each do |grade|
            if grade.grade == "10th" || grade.grade == "11th" || grade.grade == "12th"
                self.all.each do |teacher|
                    if teacher.years_of_experience > 10
                        GradeLevel.teachers << teacher
                    end
                end
            else
                self.all.each do |teacher|
                    if teacher.years_of_experience <= 10
                        GradeLevel.teachers << teacher
                    end
                end
            end
        end
    end
end