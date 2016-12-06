class AddTenantIdtoMessages < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :messages, :tenants
    add_column :messages, :tenant_id, :integer
  end
end
