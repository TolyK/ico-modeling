class ChangeIntegerLimitInIcos < ActiveRecord::Migration[5.0]
  def change
    change_column :icos, :total_supply, :integer, limit: 8
  end
end
