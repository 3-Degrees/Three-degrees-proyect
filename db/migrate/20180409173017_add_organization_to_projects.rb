class AddOrganizationToProjects < ActiveRecord::Migration[5.1]
  def change
    add_reference :projects, :organization, foreign_key: true
  end
end
