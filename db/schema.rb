# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180220180413) do

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "icos", force: :cascade do |t|
    t.string   "name"
    t.string   "logo_img"
    t.string   "logo_img_alt"
    t.text     "overview"
    t.text     "meta_description"
    t.string   "header_img"
    t.string   "header_img_alt"
    t.string   "website"
    t.date     "report_date"
    t.integer  "team"
    t.integer  "advisors"
    t.integer  "codebase"
    t.integer  "community"
    t.integer  "vision"
    t.integer  "market"
    t.integer  "traction"
    t.integer  "marketing"
    t.integer  "whitepaper"
    t.integer  "roadmap"
    t.string   "ico_currency"
    t.decimal  "ico_currency_price"
    t.string   "symbol"
    t.integer  "total_supply",       limit: 8
    t.decimal  "token_price_low"
    t.decimal  "token_price_high"
    t.decimal  "ICO_valuation_low"
    t.decimal  "ICO_valuation_high"
    t.date     "ICO_start_date"
    t.date     "ICO_end_date"
    t.decimal  "soft_cap"
    t.decimal  "hard_cap"
    t.string   "country"
    t.string   "youtube"
    t.string   "twitter"
    t.string   "telegram"
    t.string   "reddit"
    t.string   "facebook"
    t.string   "github"
    t.string   "description"
    t.boolean  "active"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "investors"
    t.string   "title"
    t.string   "video"
    t.integer  "hype"
    t.text     "body"
    t.decimal  "exchange_rate_low"
    t.decimal  "exchange_rate_high"
    t.string   "medium"
    t.string   "slug"
    t.index ["slug"], name: "index_icos_on_slug", unique: true
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.text     "body"
    t.text     "meta_description"
    t.string   "header_image"
    t.string   "header_alts"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "slug"
    t.index ["slug"], name: "index_posts_on_slug", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
