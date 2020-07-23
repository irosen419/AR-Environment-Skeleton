Student.delete_all
Teacher.delete_all

student1 = Student.create({first_name: "Ian", last_name: "Rosen", grade: "first"})
student2 = Student.create({first_name: "James", last_name: "Wu", grade: "second"})


teacher1 = Teacher.create({last_name: "Williams", grade_level: "tenth", years_of_experience: 7})
teacher2 = Teacher.create({last_name: "Grubb", grade_level: "ninth", years_of_experience: 4})
