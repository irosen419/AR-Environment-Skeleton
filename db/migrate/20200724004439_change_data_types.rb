class ChangeDataTypes < ActiveRecord::Migration[6.0]
  def change
    change_column :animals, :conservation_fund_id, :integer
    change_column :animals, :zoo_id, :integer
  end
end
