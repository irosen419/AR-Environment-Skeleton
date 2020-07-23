# AR-Environment-Skeleton

You can use this repo to build new Activerecord projects

* You will need to create your own app/models directories


QUESTION ANSWERS

1) In working with active record, AR created the following methods for us:
    Student.all
2) I had to create the following methods:
    Student#full_name
    Student@grade_level --- This method could also be achieved by simply calling on student.grade, given by AR
    Student.all_in_grade
    Teacher#tenure?
3) I made the following changes:
    In my Student class, I added "belongs_to :teacher" because a student belongs to the teacher in this case.
    In my Teacher class, I added "has_many :students" because a teacher has many students in this case.
                These are both because this is now a one to many domain model.
    I created a new migration file in which I used a change method to add a teacher_id column to my student class.
        This was because the student is going to hold all the information for this association.            
        This change, along with making the applicable changes in the seeds.rb file and the afformentioned classes (Student and Teacher), allows the program to recognize this relationship.
