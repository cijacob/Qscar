class AddTechnosToProjects < ActiveRecord::Migration[5.2]
  def change
    add_reference :projects, :techno, foreign_key: true
  end
end
