class CreateJoinTableProjectsTechnos < ActiveRecord::Migration[5.2]
  def change
    create_join_table :projects, :technos do |t|
       t.index [:project_id, :techno_id]
       t.index [:techno_id, :project_id]
    end
  end
end
