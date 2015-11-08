class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name, null: false
      t.string :description
      t.timestamps null: false
    end
    add_attachment :cities, :image
  end
end
