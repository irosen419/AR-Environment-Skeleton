<<<<<<< HEAD
Student.delete_all
Teacher.delete_all
GradeLevel.delete_all

student1 = Student.create({first_name: "Ian", last_name: "Rosen", grade: "first"})
student2 = Student.create({first_name: "James", last_name: "Wu", grade: "second"})
=======
Zoo.delete_all
Animal.delete_all
ConservationFund.delete_all

>>>>>>> 97000082b6c26d07549751f467bfc87fb659d12b

cpz = Zoo.create(location: "NYC",name: "Central Park Zoo")
bronx = Zoo.create(location: "NYC", name: "Bronx Zoo")
siz = Zoo.create(location: "NYC", name: "State Island Zoo")
lpz = Zoo.create(location: "Chicago", name: "Lincoln Park Zoo")
cmz = Zoo.create(location: "Colorado Springs", name: "Cheyenne Mountain Zoo")
sdz = Zoo.create(location: "San Diego", name: "San Diego Zoo")
cz = Zoo.create(location: "Columbus", name: "Columbus Zoo")

<<<<<<< HEAD
teacher1 = Teacher.create({last_name: "Williams", grade_level: "tenth", years_of_experience: 7})
teacher2 = Teacher.create({last_name: "Grubb", grade_level: "ninth", years_of_experience: 4})

grade_level1 = GradeLevel.create({grade: 7, student_id: 1, teacher_id: 17})
grade_level2 = GradeLevel.create({grade: 7, student_id: 2, teacher_id: 17})
grade_level3 = GradeLevel.create({grade: 7, student_id: 1, teacher_id: 18})
grade_level3 = GradeLevel.create({grade: 7, student_id: 2, teacher_id: 18})
=======
wwf = ConservationFund.create(name: "WWF")
wcs = ConservationFund.create(name: "WCS")
ng = ConservationFund.create(name: "NatGeo")
iucn = ConservationFund.create(name: "IUCN")

elephant = Animal.create(species: "african elephant", conservation_status: "EN", conservation_fund_id: nil, zoo_id: cpz.id)
elephant2 = Animal.create(species: "african elephant", conservation_status: "EN", conservation_fund_id: nil, zoo_id: cpz.id)
pangolin = Animal.create(species: "chinese pangolin", conservation_status: "CR", conservation_fund_id: iucn.id, zoo_id: sdz.id)
bison = Animal.create(species: "american bison", conservation_status: "VU", conservation_fund_id: ng.id, zoo_id: lpz.id)
rhino = Animal.create(species: "rhinocerous", conservation_status: "EN", conservation_fund_id: wwf.id, zoo_id: cmz.id)
>>>>>>> 97000082b6c26d07549751f467bfc87fb659d12b
