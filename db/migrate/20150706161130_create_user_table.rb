class CreateUserTable < ActiveRecord::Migration
  def change
    create_table :user_tables do |t|
      t.column :email, :string
      t.column :password_hash, :string
      t.column :password_salt, :string

      t.timestamps
    end
  end
end
