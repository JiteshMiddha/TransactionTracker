class RenameTypeField < ActiveRecord::Migration
  def change
    rename_column :transaction_data, :type, :transactionType
  end
end