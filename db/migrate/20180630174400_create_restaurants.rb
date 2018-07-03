class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :tel
      t.string :foodFeature
      t.string :city
      t.string :picURL
      t.decimal :localy
      t.decimal :lcoalx

      t.timestamps
    end
  end
end
