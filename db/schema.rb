# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2020_07_23_210441) do

  create_table "grade_levels", force: :cascade do |t|
    t.integer "grade"
    t.integer "student_id"
    t.integer "teacher_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "grade"
=======
ActiveRecord::Schema.define(version: 2020_07_24_004439) do

  create_table "animals", force: :cascade do |t|
    t.string "species"
    t.string "conservation_status"
    t.integer "conservation_fund_id"
    t.integer "zoo_id"
>>>>>>> 97000082b6c26d07549751f467bfc87fb659d12b
  end

  create_table "conservation_funds", force: :cascade do |t|
    t.string "name"
  end

  create_table "zoos", force: :cascade do |t|
    t.string "location"
    t.string "name"
  end

end
