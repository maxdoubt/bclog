class CreateResumesSkills < ActiveRecord::Migration
  def change
    create_table :resumes_skills, id: false do |t|
      t.references :resume
      t.references :skill
    end

    add_index :resumes_skills, [:resume_id, :skill_id]
    add_index :resumes_skills, :skill_id
  end
end
