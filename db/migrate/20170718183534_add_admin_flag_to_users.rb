class AddAdminFlagToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :admin, :boolean, deafult: false
  end
end
