class CreateIcos < ActiveRecord::Migration[5.0]
  def change
    create_table :icos do |t|
      t.string :name
      t.string :logo_img
      t.string :logo_img_alt
      t.text :overview
      t.text :meta_description
      t.string :header_img
      t.string :header_img_alt
      t.string :website
      t.date :report_date
      t.integer :team
      t.integer :advisors
      t.integer :codebase
      t.integer :community
      t.integer :vision
      t.integer :market
      t.integer :traction
      t.integer :marketing
      t.integer :whitepaper
      t.integer :roadmap
      t.string :ico_currency
      t.decimal :ico_currency_price
      t.string :symbol
      t.integer :total_supply
      t.decimal :token_price_low
      t.decimal :token_price_high
      t.decimal :ICO_valuation_low
      t.decimal :ICO_valuation_high
      t.date :ICO_start_date
      t.date :ICO_end_date
      t.integer :soft_cap
      t.integer :hard_cap
      t.string :country
      t.string :youtube
      t.string :twitter
      t.string :telegram
      t.string :reddit
      t.string :facebook
      t.string :youtube
      t.string :github
      t.string :description
      t.boolean :active

      t.timestamps
    end
  end
end
