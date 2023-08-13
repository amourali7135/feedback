class CreateCompanyfeedbackresponses < ActiveRecord::Migration[7.0]
  def change
    create_table :companyfeedbackresponses do |t|
      t.text :description
      t.boolean :anonymous
      t.references :companyfeedback, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
