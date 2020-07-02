class AddAvgToFavoritemaps < ActiveRecord::Migration[6.0]
  def change
    add_column :favoritemaps, :avg, :string
  end
end
