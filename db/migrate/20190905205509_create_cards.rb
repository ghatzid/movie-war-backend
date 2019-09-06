class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :tconst
      t.string :title
      t.integer :year
      t.integer :runtime
      t.string :genre
      t.string :director
      t.float :rating
      t.integer :num_votes
      t.string :img_url

      t.timestamps
    end
  end
end
