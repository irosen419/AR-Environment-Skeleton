class CreateAnimalsConservationFundsZooTables < ActiveRecord::Migration[6.0]
  def change
    create_table :conservation_funds do |t|
      t.string :name
    end

    create_table :animals do |t|
      t.string :species
      t.string :conservation_status
      t.string :conservation_fund_id
      t.string :zoo_id
    end

    create_table :zoos do |t|
      t.string :location
      t.string :name
    end
  end
end
