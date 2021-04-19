class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.references :move, foreign_key: true
      t.string :comment
      t.timestamps
    end
  end
end
