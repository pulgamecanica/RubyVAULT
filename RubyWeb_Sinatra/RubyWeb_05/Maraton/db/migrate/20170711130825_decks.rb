class Decks < ActiveRecord::Migration[4.2]
  def change
    create_table :decks do |t|
    t.string :name
    t.timestamps
    end
  end
end
