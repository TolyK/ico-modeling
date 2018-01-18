class AddHypeToIcos < ActiveRecord::Migration[5.0]
  def change
    add_column :icos, :hype, :integer
  end
end
