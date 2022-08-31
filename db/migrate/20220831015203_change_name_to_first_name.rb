class ChangeNameToFirstName < ActiveRecord::Migration[7.0]
  def change

    rename_column :contacts, :name, :first_name
  end
end
