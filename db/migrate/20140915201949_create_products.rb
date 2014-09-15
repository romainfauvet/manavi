class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|

      t.string  :sku
      t.string  :reference

      t.string :title
      t.text    :description

      t.decimal :price, :precision => 15, :scale => 2

      t.references :category
      t.references :producer

    end
  end
end
