class CreateImages < ActiveRecord::Migration[7.2]
  def change
    create_table :images do |t|
      t.string :url
      t.integer :product_id

      t.timestamps
    end
  end
end
