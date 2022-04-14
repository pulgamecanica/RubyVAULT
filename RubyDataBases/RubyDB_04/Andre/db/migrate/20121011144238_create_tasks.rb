class CreateTasks < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password
      t.string :email
      t.string :name
      t.timestamps
    end
    create_table :decks do |t|
    t.string :name
    end
    create_table :games do |t|
    t.belongs_to :user, index: true
    t.belongs_to :deck, index: true
    end  
   create_table :questions do |t|
    t.belongs_to :deck, index: true
    t.string :question
   end
   create_table :answers do |t|
    t.belongs_to :question, index: true
    t.string :name
    t.boolean :correct
   end
   create_table :stats do |t|
    t.belongs_to :game, index: true
    t.belongs_to :question, index: true
    t.belongs_to :answer, index: true
    t.integer :correct
   end
 end
end

