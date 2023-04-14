class CreateCustomerSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_subscriptions do |t|
      t.references :customer_id, foreign_key: true
      t.references :subscription_id, foreign_key: true

      t.timestamps
    end
  end
end
