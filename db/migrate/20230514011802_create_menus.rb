class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.string :name
      t.text :comment
      t.references :ice_cream, null: false, foreign_key: true
      t.references :topping, null: false, foreign_key: true
      t.references :container, null: false, foreign_key: true

      t.timestamps
    end
  end
end
