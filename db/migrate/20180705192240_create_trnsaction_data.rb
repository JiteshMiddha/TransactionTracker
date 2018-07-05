class CreateTrnsactionData < ActiveRecord::Migration[5.2]
  def change
    create_table :trnsaction_data do |t|
      t.string :from_service_name
      t.string :request_type
      t.string :created_at
      t.string :user_email
      t.integer :inc_id
      t.string :transaction_id
      t.integer :amount
      t.string :action

      t.timestamps
    end
  end
end
