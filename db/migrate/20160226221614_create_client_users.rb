class CreateClientUsers < ActiveRecord::Migration
  def change
    create_table :client_users do |t|
      t.integer :user_id
      t.integer :client_id
      t.string :role

      t.timestamps null: false
    end
  end
end
