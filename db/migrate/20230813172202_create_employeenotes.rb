class CreateEmployeenotes < ActiveRecord::Migration[7.0]
  def change
    create_table :employeenotes do |t|
      t.text :comment
      t.text :feedback
      t.boolean :negative
      t.boolean :positive
      t.references :employeelist, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
