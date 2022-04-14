class Stats < ActiveRecord::Migration[4.2]
  def change
    create_table :stats do |t|
    t.belongs_to :game, index: true
    t.belongs_to :question, index: true
    t.belongs_to :answer, index: true
    t.integer :correct
    t.timestamps
    end
  end
end
