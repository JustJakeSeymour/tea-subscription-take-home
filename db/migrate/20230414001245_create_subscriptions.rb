class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.float :price
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
