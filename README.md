# AR-Environment-Skeleton

You can use this repo to build new Activerecord projects

* You will need to create your own app/models directories

QUESTIONS:

In order to create this many through many relationship we had to do a few things.

    - We had to add the appropriate macros to all three classes (Student, GradeLevel, Teacher)
    - We also had to create a new join table called grade_levels in order to hold the associations between the classes. This is our single source of truth.
        - This join table contains the id's of both the corresponding student and teacher instances for that particular GradeLevel instance.
    - To do most of this, we had to use 2 particular rake commands: db:create_migrate and db:migrate
        - These allowed us to create migration files on which to write new tables and then migrate those new tables into the database.
    - After the tables had been added, we used rake db:seed to see the database with new information regarding our classes.

    - There are plenty of new relationships that could be added here. Teacher and Test could be joined through Student. You could also created a one to many association between School and Student/Teacher.
        - A school has many teacher and a school also has many students. No join model is needed here.
    
    - On this current model, we could create instance method for the Student that allows a student to do some real-world-applicable things.

        1) We could create an instance method Student#skip_grade that increases/changes the student's grade_level by 1. This would also require assigning a new teacher, unless the current teacher has classes in both grades - which is also possible with this model.

        2) We could also have Student#change_classes in which we assign the student a different teacher, so long as that teacher is in the same grade as the previous one.

---
# Josh's Deliverables
## Additional Relationship
### Ball >———< BallStudent >———< Student

## Deliverables:
* Attributes:
    * Ball:
        * ball_type
            * examples, as strings:
                * football, basketball, golf ball, medicine ball, yoga ball, etc
            * random ball chosen automatically upon instantiation
        * inflated
            * boolean
            * defaults to true
    * BallStudent:
        * ball_id
        * student_id
    * Student:
        * first_name, last_name, grade_level
* instance methods
    * student#take_random_ball
        * creates a new ball instance and pushes it into that student’s balls array
        * sets that ball’s inflated attribute to false
    * student#choose_ball
        * takes an argument of ball type
        * creates a new ball instance and passes ball_type for the ball's ball_type attribute
    * student#pass_ball
        * takes a ball instance from the student’s balls array
        * pushes the same ball instance into another student’s balls array
    * student#teachers_pet
        * calls on the class method Ball.inflate_balls
    * ball#deflate
        * sets a ball instance’s inflated attribute to false
* class methods
    * Ball.inflate_all
        * sets all balls inflated attribute to true
    * Student.grade_game
        * takes as arguments:
            * grade_level, ball_type
        * creates a new ball instance with ball_type
        * passes a single ball instance to all students of a specified grade_level
