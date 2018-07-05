class RenameTypeField < ActiveRecord::Migration[5.2]
  def change
  	rename_column :transaction_data, :type, :transactionType
  end
end
