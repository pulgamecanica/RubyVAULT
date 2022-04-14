class Relations < ActiveRecord::Migration[4.2]
  def change
    create_table :relations do |t|
      t.belongs_to :post, index: true
      t.belongs_to :tag, index: true
      t.timestamps
    end
  end
end
