class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.text :description
      t.string :degree
      t.attachment :image
      t.integer :profile_id

      t.timestamps
    end
  end
end
