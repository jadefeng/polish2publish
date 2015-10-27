class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :name
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
