class CreateDepartmentTransfers < ActiveRecord::Migration[7.1]
  def change
    create_table :department_transfers do |t|
      t.references :employee, null: false, type: :string, foreign_key: { to_table: :employees }, comment: '社員ID'
      t.references :department, null: false, type: :bigint, foreign_key: { to_table: :departments }, comment: '異動先部署ID'
      t.references :previous_department, type: :bigint, foreign_key: { to_table: :departments }, comment: '異動前部署ID（任意）'
      t.datetime :transferred_at, null: false, comment: '異動日'

      t.timestamps
    end
  end
end
