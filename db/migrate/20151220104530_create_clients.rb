# Client
class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :locked, default: false
      t.integer :orders_count, defarult: 0

      t.timestamps null: false
    end
    add_index :clients, [:first_name]
    add_index :clients, [:last_name]
  end
end
