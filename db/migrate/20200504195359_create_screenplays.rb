class CreateScreenplays < ActiveRecord::Migration[6.0]
  def change
    create_table :screenplays do |t|
      t.string :category
      t.string :picture_url
      t.string :title
      t.string :description
      t.integer :num_seasons
      t.integer :num_episodes
      t.integer :runtime

      t.timestamps
    end
  end
end
