class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title

      t.integer :category_id
      t.integer :genre_id
      
      t.string :state_id
      t.string :url
      t.integer :editor_id
      t.integer :author_id
      t.integer :page_no
      t.integer :word_count
      t.datetime :urgency #normal (1 month), medium(fortnight), critical(<1 week)
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
