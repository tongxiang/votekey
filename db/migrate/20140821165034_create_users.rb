class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password, :null => false
      t.string :password_salt, :null => false
      t.string :persistence_token, :null => false
      t.integer :login_count, :default => 0, :null => false
      t.datetime :last_request_at
      t.datetime :last_login_at
      t.datetime :current_login_at
      t.string :last_login_ip
      t.string :current_login_ip
      t.integer :campaign_id
      t.timestamps
    end
    
    add_index :users, :email
    add_index :users, :persistence_token
    add_index :users, :last_request_at
  end
end
