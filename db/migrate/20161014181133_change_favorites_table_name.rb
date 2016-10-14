class ChangeFavoritesTableName < ActiveRecord::Migration
  def change
    rename_table(:favorites, :users_restaurants)    
  end
end
