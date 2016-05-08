class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :pattern_name, null:false
      t.string :yarn, null:false
      t.integer :total_yardage
      t.string :notes
      t.timestamps(null:false)
      t.references :knitter, foreign_key: true
    end
  end
end
