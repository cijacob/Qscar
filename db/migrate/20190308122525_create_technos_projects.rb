class CreateTechnosProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :technos_projects do |t|
      t.references :techno, foreign_key: true
      t.references :project, foreign_key: true
    end
  end
end
