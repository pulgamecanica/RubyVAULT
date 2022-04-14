class CreateWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|
      t.string :word
      t.text :canonical_version
      t.timestamps
    end
  end
end