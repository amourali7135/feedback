class CreateUserweaknesses < ActiveRecord::Migration[7.0]
  def change
    create_table :userweaknesses do |t|
      t.string :title
      t.text :description
      t.text :advice
      t.boolean :active
      t.string :priority
      t.string :goal
      t.references :userweaknesslist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
