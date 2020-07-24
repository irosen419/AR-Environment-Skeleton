class Student < ActiveRecord::Base
    has_many :grade_levels
    has_many :teachers, through: :grade_levels
    has_many :ball_students
    has_many :balls, through: :ball_students

    def self.all_in_grade(input_grade)
        GradeLevel.all.map do |gl|
            Student.all.select {|student| student.id == gl.student_id}
        end.flatten
    end
#COME BACK TO THIS
    def enter_grade(grade_as_number)
        grade = GradeLevel.all.find_by("#{grade_as_number}th")
        grade.students << self
        
    end
#COME BACK TO THIS
    def self.random_grade_assignment
        self.all.each do |student|
            grade = rand(1..12)
            student.enter_grade(grade)
        end
    end

    def take_random_ball
        ball = Ball.all.sample
        self.balls << ball
    end

    def choose_ball(kind)
        ball = Ball.create(ball_type: kind)
        self.balls << ball
    end

    def pass_ball(kind, student_first_name)
        if self.balls.find_by(ball_type: kind)
            ball = self.balls.find_by(ball_type: kind)
            Student.all.find_by(first_name: student_first_name).balls << ball
        else
            ball = Ball.create(ball_type: kind)
            Student.all.find_by(first_name: student_first_name).balls << ball
        end
    end

    def teachers_pet
        Ball.inflate_all
        "#{self.first_name} just inflated all the balls and earned some brownie points with the PE Teacher."
    end

    def self.grade_game(grade_level, ball)
        ball = Ball.create(ball_type: ball)
        self.all_in_grade(grade_level).each do |student|
            student.balls << ball
        end
    end

end