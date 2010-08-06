class CreateVoters < ActiveRecord::Migration
  def self.up
    create_table :voters do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :age
      t.string :sex
      t.integer :client_id
      t.boolean :locked
      t.timestamps
    end
  end

  def self.down
    drop_table :voters
  end
end
