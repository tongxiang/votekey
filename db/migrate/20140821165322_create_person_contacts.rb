class CreatePersonContacts < ActiveRecord::Migration
  def change
    create_table :person_contacts do |t|
      t.integer :person_id
      t.integer :user_id
      t.integer :script_response_id
      t.timestamps
    end
  end
end
