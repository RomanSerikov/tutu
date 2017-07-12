class AddUserFullNameAndPasportNumberToTickets < ActiveRecord::Migration[5.1]
  def change
    add_column :tickets, :user_fullname, :string
    add_column :tickets, :pasport_number, :integer
  end
end
