# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_04_10_151708) do
  create_schema "auth"
  create_schema "extensions"
  create_schema "graphql"
  create_schema "graphql_public"
  create_schema "pgbouncer"
  create_schema "pgsodium"
  create_schema "pgsodium_masks"
  create_schema "realtime"
  create_schema "storage"
  create_schema "vault"

  # These are extensions that must be enabled in order to support this database
  enable_extension "extensions.pg_stat_statements"
  enable_extension "extensions.pgcrypto"
  enable_extension "extensions.pgjwt"
  enable_extension "extensions.uuid-ossp"
  enable_extension "graphql.pg_graphql"
  enable_extension "pg_catalog.plpgsql"
  enable_extension "pgsodium.pgsodium"
  enable_extension "vault.supabase_vault"

  create_table "products", id: :bigint, default: nil, force: :cascade do |t|
    t.text "title", null: false
    t.bigint "stock"
    t.text "description"
    t.text "category"
    t.text "tags"
    t.float "price"
    t.float "discountPercentage"
    t.text "images"
    t.float "rating"
    t.text "brand"
    t.text "sku"
    t.float "weight"
    t.float "dimensions_width"
    t.float "dimensions_height"
    t.float "dimensions_depth"
    t.text "warrantyInformation"
    t.text "shippingInformation"
    t.text "availabilityStatus"
    t.bigint "reviews_0_rating"
    t.text "reviews_0_comment"
    t.timestamptz "reviews_0_date"
    t.text "reviews_0_reviewerName"
    t.text "reviews_0_reviewerEmail"
    t.bigint "reviews_1_rating"
    t.text "reviews_1_comment"
    t.timestamptz "reviews_1_date"
    t.text "reviews_1_reviewerName"
    t.text "reviews_1_reviewerEmail"
    t.bigint "reviews_2_rating"
    t.text "reviews_2_comment"
    t.text "reviews_2_date"
    t.text "reviews_2_reviewerName"
    t.text "reviews_2_reviewerEmail"
    t.text "returnPolicy"
    t.bigint "minimumOrderQuantity"
    t.timestamptz "meta_createdAt"
    t.timestamptz "meta_updatedAt"
    t.bigint "meta_barcode"
    t.text "meta_qrCode"
    t.text "thumbnail"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end
end
