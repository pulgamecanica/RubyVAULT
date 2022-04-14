class CreateRolls < ActiveRecord::Migration[4.2]
  def change
    create_table :rolls do |t|
      t.integer :value
 
      t.timestamps
    end
  end
end
