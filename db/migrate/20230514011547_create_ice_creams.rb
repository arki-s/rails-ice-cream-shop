class CreateIceCreams < ActiveRecord::Migration[7.0]
  def change
    create_table :ice_creams do |t|
      t.string :name

      t.timestamps
    end
  end
end
