class CreateEmployeelists < ActiveRecord::Migration[7.0]
  def change
    create_table :employeelists do |t|
      # t.references :managertable, null: false, foreign_key: true
      # add user ID and user array references...
      # Will likely have to do this in the models yo, push forward and fix it with models
      # https://stackoverflow.com/questions/62810234/rails-how-to-multiple-associations-between-two-models
      t.references :user, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :manager_id, foreign_key: true
      t.integer :employee_id, foreign_key: true
      t.timestamps
      #nvm
    end
  end
end
