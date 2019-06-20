class AddPictureToClothes < ActiveRecord::Migration[5.2]
  def change
    add_column :clothes, :picture, :string
  end
end
