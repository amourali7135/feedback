class CreateTeamgoals < ActiveRecord::Migration[7.0]
  def change
    create_table :teamgoals do |t|
      t.string :title
      t.text :description
      t.string :priority
      t.references :teamgoallist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
