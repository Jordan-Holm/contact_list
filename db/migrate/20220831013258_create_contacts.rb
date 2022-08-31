class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.integer :age
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
