class CreateMovers < ActiveRecord::Migration[6.1]
  def change
    create_table :movers do |t|
      t.string :name
      t.string :hometown
      t.string :bio
      t.timestamps
    end
  end
end
