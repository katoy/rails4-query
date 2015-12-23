# Order
class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.references :client
      t.string :status
      t.integer :price
      t.time :ordered_at

      t.timestamps null: false
    end
    add_index :orders, [:created_at]
    add_index :orders, [:client_id]
  end
end
