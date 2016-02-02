class CreateShots < ActiveRecord::Migration
  def change
    create_table :shots do |t|
      t.string :source
      t.string :title
      t.string :description
      t.references :project, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :comments, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
