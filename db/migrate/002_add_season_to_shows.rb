class AddSeasonToShows < ActiveRecord::Migration[5.2]
  def change
    add_column :shows, :season, :sting
  end
end