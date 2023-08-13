class AddFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :admin, :boolean
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :user_name, :string
    add_column :users, :job_title, :string
    add_column :users, :management, :boolean
    add_column :users, :employee, :boolean
    add_column :users, :hr, :boolean
  end
end
