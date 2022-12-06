class CreateProficiencyLevels < ActiveRecord::Migration[6.1]
  def change
    create_table :proficiency_levels do |t|
      t.string :level, default: "beginner"
      t.string :description, default: "less than 1 year of experience"

      t.timestamps
    end
  end
end
