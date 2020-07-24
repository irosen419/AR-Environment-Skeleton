class Teacher < ActiveRecord::Base
<<<<<<< HEAD
    has_many :grade_levels
    has_many :students, through: :grade_levls

=======
    
>>>>>>> cc42e79a06fccc4d3359cde67c1d72338571c92f
    def tenure?
        self.years_of_experience > 5
    end
end