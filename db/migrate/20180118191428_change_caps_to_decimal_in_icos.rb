class ChangeCapsToDecimalInIcos < ActiveRecord::Migration[5.0]
  def change
    change_column :icos, :soft_cap, :decimal
    change_column :icos, :hard_cap, :decimal
  end
end
