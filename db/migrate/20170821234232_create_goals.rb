class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.text :body
      t.integer :position
      t.boolean :important

      t.timestamps
    end
    add_index :goals, :position, unique: true
  end
end
