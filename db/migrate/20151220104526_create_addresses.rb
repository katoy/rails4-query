# Address
class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.references :client
      t.string :postcode

      t.timestamps null: false
    end
    add_index :addresses, [:client_id]
    add_index :addresses, [:postcode]
  end
end
