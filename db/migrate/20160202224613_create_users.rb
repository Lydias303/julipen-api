class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email_address
      t.references :shots, index: true, foreign_key: true
      t.references :projects, index: true, foreign_key: true
      t.references :comments, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
