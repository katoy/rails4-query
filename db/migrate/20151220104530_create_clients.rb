# Client
class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end
