class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :rail_way
      t.string :station_name
      t.integer :minute_walk
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
