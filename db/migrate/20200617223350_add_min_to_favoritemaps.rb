class AddMinToFavoritemaps < ActiveRecord::Migration[6.0]
  def change
    add_column :favoritemaps, :min, :string
  end
end
