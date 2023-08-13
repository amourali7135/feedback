class CreateUserobstacles < ActiveRecord::Migration[7.0]
  def change
    create_table :userobstacles do |t|
      t.string :title
      t.text :description
      t.string :priority
      t.boolean :active
      t.text :goal
      t.references :userobstaclelist, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
