class AddWebToOrganizations < ActiveRecord::Migration[5.1]
  def change
    add_column :organizations, :web, :string
  end
end
