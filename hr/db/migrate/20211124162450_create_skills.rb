class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.string :skill_title
      t.string :skill_level
      t.references :resume, foreign_key: true

      t.timestamps
    end
  end
end
