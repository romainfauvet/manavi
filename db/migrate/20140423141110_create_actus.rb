class CreateActus < ActiveRecord::Migration
  def change
    create_table :actus do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
