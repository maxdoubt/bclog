class CreateSkillkinds < ActiveRecord::Migration
  def change
    create_table :skillkinds do |t|
      t.string :name
      t.integer :profile_id
      t.attachment :image

      t.timestamps
    end
  end
end
