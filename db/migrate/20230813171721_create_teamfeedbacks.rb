class CreateTeamfeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :teamfeedbacks do |t|
      t.string :title
      t.text :description
      t.text :recommendation
      t.boolean :anonymous
      t.references :teamfeedbacktable, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
