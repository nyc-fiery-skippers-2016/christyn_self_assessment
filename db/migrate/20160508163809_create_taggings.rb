class CreateTaggings < ActiveRecord::Migration
    def change
    create_table :taggings do |t|
      t.references :project, foreign_key: true
      t.references :tag, foreign_key:true
      t.timestamps(null:false)
    end
  end
end
