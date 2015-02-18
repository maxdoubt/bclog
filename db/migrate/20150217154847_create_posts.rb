class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :profile_id
      t.integer :user_id
      t.boolean :published
      t.attachment :image

      t.timestamps
    end
  end
end
