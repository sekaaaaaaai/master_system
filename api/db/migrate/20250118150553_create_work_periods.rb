class CreateWorkPeriods < ActiveRecord::Migration[7.1]
  def change
    create_table :work_periods, comment: '社員の所定労働時間を記録するテーブル' do |t|
      t.references :employee, null: false, type: :string, foreign_key: { to_table: :employees }, comment: '社員テーブルとの外部キー'
      t.date :assigned_date, null: false, comment: '設定日'
      t.time :start_time, null: false, comment: '所定労働の開始時刻'
      t.time :end_time, null: false, comment: '所定労働の終了時刻'
      t.string :note, comment: '備考'

      t.timestamps
    end
  end
end
