class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|

      t.string :name
      t.string :slug, :null => false, :unique => true, :index => true
      t.text :description

      t.timestamps null: false
    end
  end
end
