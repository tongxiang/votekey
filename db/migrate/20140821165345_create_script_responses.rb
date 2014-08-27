class CreateScriptResponses < ActiveRecord::Migration
  def change
    create_table :script_responses do |t|
      t.text :body
      t.integer :script_id
      t.timestamps
    end
  end
end
