class CreateCrews < ActiveRecord::Migration[6.1]
  def change
    create_table :crews do |t|
      t.string :team_name
      t.string :location
      t.timestamps
    end
  end
end
