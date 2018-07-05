class CreateTransactionData < ActiveRecord::Migration[5.2]
  def change
    create_table :transaction_data do |t|
      t.string :type
      t.string :transactionId
      t.string :fromServiceName

      t.timestamps
    end
  end
end
