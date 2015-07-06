class RenameUserTable < ActiveRecord::Migration
  def change
    drop_table(:user_tables)

    create_table(:users) do |t|
      t.column :email, :string
      t.column :password_hash, :string
      t.column :password_salt, :string

      t.timestamps
    end
  end
end
