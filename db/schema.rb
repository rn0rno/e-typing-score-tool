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

ActiveRecord::Schema.define(version: 20171229144210) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "competitions", force: :cascade do |t|
    t.string "title", comment: "大会"
    t.datetime "start_at", comment: "開始日時"
    t.datetime "end_at", comment: "終了日時"
    t.bigint "theme_id", comment: "テーマ"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["theme_id"], name: "index_competitions_on_theme_id"
  end

  create_table "levels", force: :cascade do |t|
    t.string "name", comment: "レベル名"
    t.integer "min_score", comment: "レベルの最低wpm"
    t.integer "max_score", comment: "レベルの最高wpm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scores", force: :cascade do |t|
    t.integer "score", comment: "スコア"
    t.time "input_time", comment: "入力時間"
    t.integer "correct", comment: "入力文字数"
    t.integer "miss", comment: "ミス入力数"
    t.float "wpm", comment: "wpm"
    t.float "accuracy", comment: "正答率"
    t.bigint "competition_id", comment: "大会"
    t.bigint "level_id", comment: "レベル"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["competition_id"], name: "index_scores_on_competition_id"
    t.index ["level_id"], name: "index_scores_on_level_id"
  end

  create_table "themes", force: :cascade do |t|
    t.string "name", comment: "テーマ名"
    t.integer "type", comment: "入力タイプ"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weak_keys", force: :cascade do |t|
    t.string "character"
    t.bigint "score_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["score_id"], name: "index_weak_keys_on_score_id"
  end

end
