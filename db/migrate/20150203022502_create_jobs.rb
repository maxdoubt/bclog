class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :organization_name
      t.date :start_date
      t.date :end_date
      t.text :description
      t.attachment :image
      t.integer :profile_id

      t.timestamps
    end
  end
end
