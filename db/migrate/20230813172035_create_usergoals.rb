class CreateUsergoals < ActiveRecord::Migration[7.0]
  def change
    create_table :usergoals do |t|
      t.string :title
      t.text :description
      t.string :priority
      t.boolean :active
      t.references :usergoallist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
