class CreateScripts < ActiveRecord::Migration
  def change
    create_table :scripts do |t|
      t.string :title
      t.text :body
      t.integer :campaign_id
      t.boolean :active
      t.timestamps
    end
  end
end
