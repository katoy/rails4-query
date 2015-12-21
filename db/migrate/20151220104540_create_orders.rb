# Order
class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.references :client
      t.string :status
      t.integer :price

      t.timestamps null: false
    end
  end
end
