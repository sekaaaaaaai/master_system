class CreateBreakPeriods < ActiveRecord::Migration[7.1]
  def change
    create_table :break_periods, comment: '所定労働時間に関連する休憩時間を記録するテーブル' do |t|
      t.references :work_period, null: false, foreign_key: { to_table: :work_periods }, comment: '所定労働時間テーブルとの外部キー'
      t.time :break_start_time, null: false, comment: '休憩開始時刻'
      t.time :break_end_time, null: false, comment: '休憩終了時刻'
      t.string :note, comment: '備考'

      t.timestamps
    end
  end
end
