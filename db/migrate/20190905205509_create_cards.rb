class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :year
      t.string :genre
      t.float :rating
      t.string :img_url

      t.timestamps
    end
  end
end
