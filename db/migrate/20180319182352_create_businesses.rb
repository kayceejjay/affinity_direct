class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.integer :id
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :category
      t.integer :fee
      t.string :website
      t.string :owner_name
      t.string :owner_phone
      t.string :owner_email
      t.string :service_product
      t.boolean :receive_email
      
      t.timestamps
    end
  end
end
