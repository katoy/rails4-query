# Address
class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.references :client
      t.string :postcode

      t.timestamps null: false
    end
  end
end
