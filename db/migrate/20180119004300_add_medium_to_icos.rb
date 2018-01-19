class AddMediumToIcos < ActiveRecord::Migration[5.0]
  def change
    add_column :icos, :medium, :string
  end
end
