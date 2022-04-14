class Questions < ActiveRecord::Migration[4.2]
  def change
    create_table :questions do |t|
    t.belongs_to :deck, index: true
    t.string :question
    t.timestamps
    end
  end
end
