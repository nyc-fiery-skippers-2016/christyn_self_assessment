class CreateKnitters < ActiveRecord::Migration
  def change
    create_table :knitters do |t|
      t.string :username, null:false
      t.string :password_digest, null:false
      t.integer :years_knitting, default:0
      t.timestamps(null:false)
    end
  end
end
