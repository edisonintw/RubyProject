class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username, limit: 50, null: false
      t.integer :age
      t.string :account, limit: 50, null: false
      t.string :password, limit: 50, null: false
      t.timestamps
    end
  end
end
