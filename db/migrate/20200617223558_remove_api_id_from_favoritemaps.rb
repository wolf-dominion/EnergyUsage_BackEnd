class RemoveApiIdFromFavoritemaps < ActiveRecord::Migration[6.0]
  def change
    remove_column :favoritemaps, :api_id, :integer
  end
end
