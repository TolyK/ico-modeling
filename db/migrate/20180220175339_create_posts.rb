class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.text :meta_description
      t.string :header_image
      t.string :header_alts

      t.timestamps
    end
  end
end
