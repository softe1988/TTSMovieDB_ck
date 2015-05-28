class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.string :rating
      t.integer :genre_id

      t.timestamps
    end
  end
end
