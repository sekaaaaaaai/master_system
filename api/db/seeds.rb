# ひらがなに変換する簡単な方法（注意: 正確な変換ではありません）
def to_kana(name)
  # 簡単なひらがな変換。完全な変換ではないので、後で調整が必要な場合があります。
  name&.tr("A-Za-z", "あ-ん") # 英字をひらがなに変換
end

# 例として3人の従業員データを作成します。
10.times do |i|
  first_name = Faker::Japanese::Name.first_name  # 名
  last_name = Faker::Japanese::Name.last_name  # 姓

  # idを4桁の数字で生成
  employee_id = format('%04d', i + 1)  # 1から始まり、4桁の数字（ゼロ埋め）

  Employee.create!(
    id: employee_id,  # 4桁の数字のid
    first_name: first_name,  # 名
    middle_name: nil,  # ミドルネーム
    last_name: last_name,  # 姓
    first_name_kana: to_kana(first_name),  # 名かな（仮にひらがなに変換）
    middle_name_kana: nil,  # ミドルネームかな（仮にひらがなに変換）
    last_name_kana: to_kana(last_name),  # 姓かな（仮にひらがなに変換）
    email: Faker::Internet.email,  # メールアドレス
    joined_at: Faker::Date.backward(days: 365),  # 入社日
    retired_at: [nil, Faker::Date.forward(days: 1000)].sample  # 退職日(現職の場合はnil)
  )
end