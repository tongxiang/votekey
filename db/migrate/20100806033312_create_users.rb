class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email
      t.string :encrypted_password
      t.string :password_salt
      t.string :persistence_token
      t.string :first_name
      t.string :last_name
      t.integer :client_id
      
      t.integer   :login_count,         :null => false, :default => 0 # optional, see Authlogic::Session::MagicColumns
      t.integer   :failed_login_count,  :null => false, :default => 0 # optional, see Authlogic::Session::MagicColumns
      t.datetime  :last_request_at                                    # optional, see Authlogic::Session::MagicColumns
      t.datetime  :current_login_at                                   # optional, see Authlogic::Session::MagicColumns
      t.datetime  :last_login_at                                      # optional, see Authlogic::Session::MagicColumns
      t.string    :current_login_ip                                   # optional, see Authlogic::Session::MagicColumns
      t.string    :last_login_ip                                      # optional, see Authlogic::Session::MagicColumns


      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
