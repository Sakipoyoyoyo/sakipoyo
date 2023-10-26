class AddCategoryToYoukos < ActiveRecord::Migration[6.1]
  def change
    add_column :youkos, :category, :string
  end
end
