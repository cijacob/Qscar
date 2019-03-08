class CreateTechnos < ActiveRecord::Migration[5.2]
  def change
    create_table :technos do |t|
      t.string :name

      t.timestamps
    end
  end
end
