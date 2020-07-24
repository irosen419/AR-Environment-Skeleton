Student.delete_all
Teacher.delete_all
GradeLevel.delete_all

student1 = Student.create({first_name: "Ian", last_name: "Rosen", grade: "tenth"})
student2 = Student.create({first_name: "James", last_name: "Wu", grade: "ninth"})


teacher1 = Teacher.create({last_name: "Williams", grade_level: "tenth", years_of_experience: 7})
teacher2 = Teacher.create({last_name: "Grubb", grade_level: "ninth", years_of_experience: 4})

gradelevel = GradeLevel.create({grade: "tenth", student_id: student1.id, teacher_id: teacher1.id})
gradelevel = GradeLevel.create({grade: "ninth", student_id: student1.id, teacher_id: teacher2.id})
gradelevel = GradeLevel.create({grade: "tenth", student_id: student2.id, teacher_id: teacher1.id})


