class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.boolean :status, default: 0
      t.string :name
      t.timestamps
    end
  end
end
