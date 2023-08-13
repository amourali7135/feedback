class CreateUserfeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :userfeedbacks do |t|
      t.string :title
      t.text :description
      t.text :recommendation
      t.boolean :anonymous
      t.references :userfeedbacktable, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :obstacle, null: false, foreign_key: true
      t.references :goal, null: false, foreign_key: true
      t.references :weakness, null: false, foreign_key: true

      t.timestamps
    end
  end
end
