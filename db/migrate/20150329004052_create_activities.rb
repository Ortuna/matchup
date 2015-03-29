class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities, id: false do |t|
      t.integer  :step, default: 0
      t.string   :hash_id
      t.timestamps null: false
    end
  end
end
