class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :name
      t.string :subdomain
      t.string :key
      t.string :candidate
      t.string :office
      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
