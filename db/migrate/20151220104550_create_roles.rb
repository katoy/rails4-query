# Role
class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :name
      t.timestamps null: false
    end
    add_index :roles, [:name]
  end
end
