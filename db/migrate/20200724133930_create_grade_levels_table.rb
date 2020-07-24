class CreateGradeLevelsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :grade_levels do |t|
      t.string :grade
      t.integer :student_id
      t.integer :teacher_id
    end
  end
end
