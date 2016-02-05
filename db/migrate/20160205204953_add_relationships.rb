class AddRelationships < ActiveRecord::Migration
  def change
    add_reference :shops, :user, index: true
    add_reference :products, :shop, index: true
  end
end
