class Games < ActiveRecord::Migration[4.2]
  def change
    create_table :games do |t|
    t.belongs_to :user, index: true
    t.belongs_to :deck, index: true
    t.timestamps
    end
  end
end
