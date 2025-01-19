class CreateDepartments < ActiveRecord::Migration[7.1]
  def change
    create_table :departments do |t|
      t.string :parent_id, limit: 100, comment: '上位の部署id(nullの場合は最上位)'
      t.string :name, null: false, limit: 100, comment: '組織名'
      t.string :short_name, limit: 100, comment: '省略名、略称'
      
      t.timestamps
    end
  end
end
