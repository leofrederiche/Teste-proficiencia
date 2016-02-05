class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.datetime :entry_at
      t.integer :student_id
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
