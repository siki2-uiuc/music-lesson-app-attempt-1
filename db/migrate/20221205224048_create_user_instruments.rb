class CreateUserInstruments < ActiveRecord::Migration[6.1]
  def change
    create_table :user_instruments do |t|
      t.references :own_level, null: false, foreign_key: true
      t.references :min_teaching_level, null: false, foreign_key: true
      t.references :max_teaching_level, null: false, foreign_key: true
      t.references :instrument, null: false, foreign_key: true
      t.references :musician, null: false, foreign_key: { to_table: :users }
      t.integer :years_played

      t.timestamps
    end
  end
end
