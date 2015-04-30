class CreateFruits < ActiveRecord::Migration
  def change
    create_table :fruits do |t|
      t.string :name
      t.references :smoothie, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
