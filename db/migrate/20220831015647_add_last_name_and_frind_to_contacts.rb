class AddLastNameAndFrindToContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :last_name, :string
    add_column :contacts, :friend, :boolean
  end
end
