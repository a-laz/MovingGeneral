class CreateCrewMovers < ActiveRecord::Migration[6.1]
  def change
    create_table :crew_movers do |t|
      t.references :crew, foreign_key: true
      t.references :mover, foreign_key: true
      t.timestamps
    end
  end
end
