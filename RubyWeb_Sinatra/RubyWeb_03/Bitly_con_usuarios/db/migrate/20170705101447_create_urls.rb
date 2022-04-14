class CreateUrls < ActiveRecord::Migration[4.2]
     def change
    create_table :urls do |t|
      t.belongs_to :user, index: true
      t.string :original
      t.string :short
      t.integer :visits, default: 0
      t.timestamps
    end
  end
end
