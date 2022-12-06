class CreateMusicianGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :musician_genres do |t|
      t.references :user, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
