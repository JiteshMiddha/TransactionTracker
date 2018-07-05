class CreateTransactionDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :transaction_details do |t|
      t.string :createdAt
      t.string :userEmail
      t.integer :incId
      t.string :transactionId
      t.integer :amount
      t.string :action

      t.timestamps
    end
  end
end
