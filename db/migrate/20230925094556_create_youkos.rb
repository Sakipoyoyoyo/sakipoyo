class CreateYoukos < ActiveRecord::Migration[6.1]
  def change
    create_table :youkos do |t|
      t.string :cause
      t.string :food
      t.string :effect
      t.string :cook

      t.timestamps
    end
  end
end
