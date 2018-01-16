class AddTitleToIcos < ActiveRecord::Migration[5.0]
  def change
    add_column :icos, :title, :string
  end
end
