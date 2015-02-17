class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :about_me
      t.string :phone
      t.string :email
      t.string :street
      t.string :city
      t.string :state
      t.attachment :photo
      t.attachment :section_one
      t.attachment :section_two
      t.attachment :section_three

      t.timestamps
    end
  end
end
