class CreateMoves < ActiveRecord::Migration[6.1]
  def change
    create_table :moves do |t|
      t.references :user, foreign_key: true
      t.references :crew, foreign_key: true
      t.string :pickup_address
      t.string :dropoff_address
      t.timestamps
    end
  end
end
