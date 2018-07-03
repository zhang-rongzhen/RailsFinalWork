class ChangeColumnLcoalxToLocalx < ActiveRecord::Migration[5.2]
  def change
    rename_column :restaurants, :lcoalx, :localx
  end
end
