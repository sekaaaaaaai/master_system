class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees, id: :string do |t|
      t.string :first_name, null: false, comment: '名'
      t.string :middle_name, comment: 'ミドルネーム'
      t.string :last_name, null: false, comment: '姓'
      t.string :first_name_kana, null: false, comment: '名かな'
      t.string :middle_name_kana, comment: 'ミドルネームかな'
      t.string :last_name_kana, null: false, comment: '姓かな'
      t.string :email, null: false, comment: 'メールアドレスユーザ名'
      t.date :joined_at, null: false, comment: '入社日'
      t.date :retired_at, comment: '退職日(現職の場合はnull)'

      t.timestamps
    end
  end
end
