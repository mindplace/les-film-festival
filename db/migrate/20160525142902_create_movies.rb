class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :movies, :title, unique: true
  end
end
