class AddExchangeRateToIcos < ActiveRecord::Migration[5.0]
  def change
    add_column :icos, :exchange_rate_low, :decimal
    add_column :icos, :exchange_rate_high, :decimal
  end
end
