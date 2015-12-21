# ClientsRoles
#   for has_and_belongs_to_many :clients
#       has_and_belongs_to_many :roles
class CreateClientsRolesTable < ActiveRecord::Migration
  def self.up
    create_table :clients_roles, id: false do |t|
      t.references :client
      t.references :role
    end

    add_index :clients_roles, [:client_id, :role_id]
    add_index :clients_roles, :client_id
    add_index :clients_roles, :role_id
  end
end
