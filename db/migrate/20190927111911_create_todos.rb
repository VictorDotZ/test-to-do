class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :text
      t.references :project, null: false, foreign_key: true
      t.boolean :isCompleted

      t.timestamps
    end
  end
end
