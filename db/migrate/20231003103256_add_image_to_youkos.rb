class AddImageToYoukos < ActiveRecord::Migration[6.1]
  def change
    add_column :youkos, :image, :string
  end
end
