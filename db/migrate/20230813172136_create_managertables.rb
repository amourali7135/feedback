class CreateManagertables < ActiveRecord::Migration[7.0]
  def change
    create_table :managertables do |t|
      t.references :user, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      # nvm, this is not needed for now.

      t.timestamps
    end
  end
end
