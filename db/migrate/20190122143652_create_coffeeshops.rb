class CreateCoffeeshops < ActiveRecord::Migration[5.2]
  def change
    create_table :coffeeshops do |t|
      t.string :name
      t.string :address
      t.string :roaster
      t.float :lat
      t.float :lon

      t.timestamps
    end
  end
end
