class CreateBeans < ActiveRecord::Migration[5.2]
  def change
    create_table :beans do |t|
      t.string :name
      t.string :img_url
      t.string :roaster
      t.string :roast_lvl
      t.string :region
      t.string :description
      t.integer :rating
      t.string :reviews

      t.timestamps
    end
  end
end
