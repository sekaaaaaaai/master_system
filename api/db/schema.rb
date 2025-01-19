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

ActiveRecord::Schema[7.1].define(version: 2025_01_18_150656) do
  create_table "break_periods", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", comment: "所定労働時間に関連する休憩時間を記録するテーブル", force: :cascade do |t|
    t.bigint "work_period_id", null: false, comment: "所定労働時間テーブルとの外部キー"
    t.time "break_start_time", null: false, comment: "休憩開始時刻"
    t.time "break_end_time", null: false, comment: "休憩終了時刻"
    t.string "note", comment: "備考"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["work_period_id"], name: "index_break_periods_on_work_period_id"
  end

  create_table "department_transfers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "employee_id", null: false, comment: "社員ID"
    t.bigint "department_id", null: false, comment: "異動先部署ID"
    t.bigint "previous_department_id", comment: "異動前部署ID（任意）"
    t.datetime "transferred_at", null: false, comment: "異動日"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_department_transfers_on_department_id"
    t.index ["employee_id"], name: "index_department_transfers_on_employee_id"
    t.index ["previous_department_id"], name: "index_department_transfers_on_previous_department_id"
  end

  create_table "departments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "parent_id", limit: 100, comment: "上位の部署id(nullの場合は最上位)"
    t.string "name", limit: 100, null: false, comment: "組織名"
    t.string "short_name", limit: 100, comment: "省略名、略称"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", id: :string, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "first_name", null: false, comment: "名"
    t.string "middle_name", comment: "ミドルネーム"
    t.string "last_name", null: false, comment: "姓"
    t.string "first_name_kana", null: false, comment: "名かな"
    t.string "middle_name_kana", comment: "ミドルネームかな"
    t.string "last_name_kana", null: false, comment: "姓かな"
    t.string "email", null: false, comment: "メールアドレスユーザ名"
    t.date "joined_at", null: false, comment: "入社日"
    t.date "retired_at", comment: "退職日(現職の場合はnull)"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "work_periods", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", comment: "社員の所定労働時間を記録するテーブル", force: :cascade do |t|
    t.string "employee_id", null: false, comment: "社員テーブルとの外部キー"
    t.date "assigned_date", null: false, comment: "設定日"
    t.time "start_time", null: false, comment: "所定労働の開始時刻"
    t.time "end_time", null: false, comment: "所定労働の終了時刻"
    t.string "note", comment: "備考"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_work_periods_on_employee_id"
  end

  add_foreign_key "break_periods", "work_periods"
  add_foreign_key "department_transfers", "departments"
  add_foreign_key "department_transfers", "departments", column: "previous_department_id"
  add_foreign_key "department_transfers", "employees"
  add_foreign_key "work_periods", "employees"
end
