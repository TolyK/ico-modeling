class AddInvestorsToIcos < ActiveRecord::Migration[5.0]
  def change
    add_column :icos, :investors, :integer
  end
end
