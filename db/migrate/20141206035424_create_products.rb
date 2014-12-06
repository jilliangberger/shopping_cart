class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image_url

      # Precision is the digits of precision
      # Scale is the number of decimal places
      # Scale is the number of digits to the right of the .
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
