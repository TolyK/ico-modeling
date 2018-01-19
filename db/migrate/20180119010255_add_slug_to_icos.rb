class AddSlugToIcos < ActiveRecord::Migration[5.0]
  def change
    add_column :icos, :slug, :string
    add_index :icos, :slug, unique: true
  end
end
