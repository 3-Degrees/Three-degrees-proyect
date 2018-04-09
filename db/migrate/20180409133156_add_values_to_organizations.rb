class AddValuesToOrganizations < ActiveRecord::Migration[5.1]
  def change
    add_column :organizations, :name, :string
    add_column :organizations, :mission, :text
    add_column :organizations, :location, :string
    add_column :organizations, :avatar, :string
  end
end
