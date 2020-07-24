class DropPreviousTables < ActiveRecord::Migration[6.0]
  def change
    drop_table :students
    drop_table :teachers
  end
end
