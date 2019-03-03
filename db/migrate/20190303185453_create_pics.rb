class CreatePics < ActiveRecord::Migration[5.2]
  def change
    create_table :pics do |t|
      t.string :title
      t.text :caption

      t.timestamps
    end
  end
end
