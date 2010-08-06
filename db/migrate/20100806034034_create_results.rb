class CreateResults < ActiveRecord::Migration
  def self.up
    create_table :results do |t|
      t.integer :client_id
      t.integer :name

      t.timestamps
    end
  end

  def self.down
    drop_table :results
  end
end
