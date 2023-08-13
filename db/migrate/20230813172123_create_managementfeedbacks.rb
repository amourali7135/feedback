class CreateManagementfeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :managementfeedbacks do |t|
      t.string :title
      t.text :description
      t.text :recommendation
      t.boolean :anonymous
      t.references :managementfeedbacktable, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
