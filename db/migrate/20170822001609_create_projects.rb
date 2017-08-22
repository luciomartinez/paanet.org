class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :url
      t.text :description
      t.integer :position

      t.timestamps
    end
    add_index :projects, :position, unique: true
  end
end
