class AddVideoToIcos < ActiveRecord::Migration[5.0]
  def change
    add_column :icos, :video, :string
  end
end
