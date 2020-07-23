class CreateStudentsAndTeachers < ActiveRecord::Migration[5.2]
    def change
        create_table :students do |t|
            t.string :first_name
            t.string :last_name
            t.string :grade
        end
    end

    def change
        create_table :teachers do |t|
            t.string :last_name
            t.string :grade_level
            t.integer :years_of_experience
        end
    end
end