class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string     :name
      t.integer    :points
      t.integer    :group_id
      t.string     :activity_id
      t.timestamps null: false
    end
  end
end
