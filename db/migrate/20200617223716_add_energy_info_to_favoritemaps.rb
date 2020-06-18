class AddEnergyInfoToFavoritemaps < ActiveRecord::Migration[6.0]
  def change
    add_column :favoritemaps, :energyInfo, :string
  end
end
