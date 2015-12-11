class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.boolean :necklace_style_3
      t.boolean :necklace_style_2
      t.boolean :work
      t.boolean :night
      t.boolean :everyday
      t.boolean :gold
      t.boolean :silver
      t.string :designer_id
      t.float :price
      t.text :description
      t.boolean :necklace_style_1
      #t.boolean :necklace_style_4
      t.string :title
      t.string :image

      t.timestamps

    end
  end
end
