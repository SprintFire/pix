class AddRelationships < ActiveRecord::Migration
  def change
    add_reference :posts, :user, index: true, null: false
  end
end
