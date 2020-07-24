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
    In my Student class, I added macros for has many grade levels and has many teachers through grade levels in order to establish the connections between students and their many teachers through their grade level. I did the same, but opposite for the Teacher class to establish the connection with the teachers' students through their grade level.
            These changes reflect the many through many domain model.

    In order to make some other necessary changes, I had to create two more migrations.
        First, I removed the column, teacher_id from the students table.
        Second, I created a whole new table called grade_levels to coincide with the new GradeLevel class.
            In this new class, I added two belongs_to macros :student and :teacher.
