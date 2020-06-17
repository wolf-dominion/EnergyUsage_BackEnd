class CreateFavoritemaps < ActiveRecord::Migration[6.0]
  def change
    create_table :favoritemaps do |t|
      t.integer :zip
      t.integer :api_id
      t.references :user, null: false, foreign_key: true
    end
  end
end
