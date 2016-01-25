class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string 	:name
      t.string 	:title
      t.text 	:cover
      t.integer :visits
      t.integer :profile_id

      t.timestamps
    end
  end
end
