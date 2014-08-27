class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip_code
      t.integer :campaign_id
      t.integer :locked_by_id
      t.boolean :contacted
      t.timestamps
    end
  end
end
