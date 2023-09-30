class ChangeColumnsAddNotnullOnCustomers < ActiveRecord::Migration[6.1]
  def change
    change_column_null :customers, :first_name_kana, false
  end
end
