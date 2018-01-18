class AddBodyToIcos < ActiveRecord::Migration[5.0]
  def change
    add_column :icos, :body, :text
  end
end
