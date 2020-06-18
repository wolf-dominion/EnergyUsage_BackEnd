class AddMaxToFavoritemaps < ActiveRecord::Migration[6.0]
  def change
    add_column :favoritemaps, :max, :string
  end
end
