class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :department
      t.text :purpose
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
