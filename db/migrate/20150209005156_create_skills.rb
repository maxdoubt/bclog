class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.integer :skillkind_id
      t.text :description
      t.integer :profile_id

      t.timestamps
    end
  end
end
