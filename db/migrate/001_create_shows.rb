class CreateShows < ActiveRecord::Migration[5.2]
    def change
        create_table :shows do |row|
            row.string :name
            row.string :network
            row.string :day
            row.integer :rating
        end
    end
end