class AddNecklaceStyle4ToPieces < ActiveRecord::Migration
  def change
    add_column :pieces, :necklace_style_4, :boolean
  end
end
