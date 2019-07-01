# This migration comes from core (originally 20140826104458)
class AddProjectKindToProjects < ActiveRecord::Migration[4.2]
  def change
    add_column :core_projects, :kind_id, :integer
    add_index :core_projects, :kind_id
  end
end
