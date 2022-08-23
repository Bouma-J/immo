class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :property
      t.integer :rente
      t.string :address
      t.integer :buildingAge
      t.string :remark

      t.timestamps
    end
  end
end
