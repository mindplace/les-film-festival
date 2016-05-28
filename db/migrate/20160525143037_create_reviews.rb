class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :description, null: false
      t.float :stars, null: false
      t.references :user, index: true, foreign_key: true
      t.references :movie, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
