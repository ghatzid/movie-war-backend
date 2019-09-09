class CreateLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries do |t|
      t.references :deck, index: true, foreign_key: true
      t.references :card, index: true, foreign_key: true
      t.timestamps
    end
  end
end
