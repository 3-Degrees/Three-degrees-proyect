class AddValuesToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :profile, :string
    add_column :projects, :places_number, :integer
    add_column :projects, :dedication, :string
  end
end
