class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :city
      t.string :country
      t.string :address
      t.text :offer
      t.string :image_url
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
