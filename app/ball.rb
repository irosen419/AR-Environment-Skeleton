class Ball < ActiveRecord::Base
    has_many :ball_students
    has_many :students, through: :ball_students
    after_initialize :init

    def init
        self.random_ball_assignment
        self.inflated = true
    end

    def random_ball_assignment
        r = Random.new
        index = r.rand(0...5)
        ball_types = ["football", "baseball", "basketball", "golf ball", "yoga ball"]
        self.ball_type = ball_types[index]
    end

    def deflate
        self.inflated = false
    end

    def self.inflate_all
        self.all.each do |ball|
            ball.inflated = true
        end
    end

    def self.create_10_balls
        10.times {Ball.create}
    end
end