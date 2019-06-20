class AddIndexToClothesName < ActiveRecord::Migration[5.2]
  def change
    add_index :clothes, :name , unique: true
  end
end
