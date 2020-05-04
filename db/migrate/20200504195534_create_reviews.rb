class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :screenplay_id
      t.string :title
      t.string :description
      t.float :rating

      t.timestamps
    end
  end
end
