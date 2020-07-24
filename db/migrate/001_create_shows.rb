#creating a show table
#show table should have name, network, day, rating colums.
#name, network, day has string and rating has integer
#id primary key :id is Created by activerecord gem
class CreateShows < ActiveRecord::Migration[5.2]
def change
    create_table :shows do |t|
      t.string :name
      t.string :day
      t.string :network
      t.integer :rating
    end
  end
end