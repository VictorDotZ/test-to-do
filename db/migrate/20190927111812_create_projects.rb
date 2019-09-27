class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.Todo :todos

      t.timestamps
    end
  end
end
