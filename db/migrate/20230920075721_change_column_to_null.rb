class ChangeColumnToNull < ActiveRecord::Migration[6.1]
  def up
    change_column_null :customers, :is_deleted, true
  end
  
  def down
    change_column_null :customers, :is_deleted, false
  end
end
