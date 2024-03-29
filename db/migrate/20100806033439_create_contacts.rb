class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.integer :user_id
      t.integer :voter_id
      t.integer :result_id
      t.integer :client_id
      t.date    :date
      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
