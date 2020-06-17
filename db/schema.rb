ActiveRecord::Schema.define(version: 2020_06_16_155712) do

  create_table "favoritemaps", force: :cascade do |t|
    t.integer "zip"
    t.integer "api_id"
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_favoritemaps_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

  add_foreign_key "favoritemaps", "users"
end
