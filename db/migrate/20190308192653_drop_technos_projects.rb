class DropTechnosProjects < ActiveRecord::Migration[5.2]
  def change
    drop_table :technos_projects
  end
end
