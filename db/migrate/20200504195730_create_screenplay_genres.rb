class CreateScreenplayGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :screenplay_genres do |t|
      t.integer :screenplay_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
