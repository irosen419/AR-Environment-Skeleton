Student.delete_all
Teacher.delete_all
GradeLevel.delete_all

GradeLevel.create_grades

Teacher.create({last_name: "Williams", years_of_experience: 7})
Teacher.create({last_name: "Grubb", years_of_experience: 4})
Teacher.create(last_name: "Dilks", years_of_experience: 20)
Teacher.create(last_name: "Legg", years_of_experience: 30)
Teacher.create(last_name: "Widelitz", years_of_experience: 15)
Teacher.create(last_name: "Alvarez", years_of_experience: 25)
Teacher.create(last_name: "Cohen", years_of_experience: 10)
Teacher.create(last_name: "Wang", years_of_experience: 10)



Student.create(first_name: "Dorothy", last_name: "Meyers")
Student.create(first_name: "Toto", last_name: "Yellow")
Student.create(first_name: "Crackle", last_name: "Kringle")

Student.create(first_name: "Alex", last_name: "Silverstein")
Student.create(first_name: "Alex", last_name: "Mac")
Student.create(first_name: "Amory", last_name: "Dodgers")

Student.create(first_name: "Lisa", last_name: "Chilenpath")
Student.create(first_name: "Lisa", last_name: "Chilenpath")

Student.create(first_name: "Terresa", last_name: "Borentini")
Student.create(first_name: "Tim", last_name: "Mick")

Student.create(first_name: "Samantha", last_name: "Yu")
Student.create(first_name: "Courageous", last_name: "Quixotl")
Student.create(first_name: "Stupendous", last_name: "Quixotl")
Student.create(first_name: "Lothlorien", last_name: "Samwise")

# Teacher.grade_assignment
# Student.random_grade_assignment

# #add seeds for new methods

# #ball
# Ball.create_10_balls

# #each student takes a ball
# Student.all.each do |student|
#     student.take_random_ball
# end

# #pass_ball
# sam = Student.find_by(first_name: "Samantha")
# amory = Student.find_by(first_name: "Amory")
# sam.pass_ball("football", sam.first_name)

# #Student.grade_game
# Student.grade_game(GradeLevel.find_by(grade: "10th"), Ball.all[0])

# sam.teachers_pet

