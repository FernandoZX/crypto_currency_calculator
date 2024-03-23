class CreateUserBalances < ActiveRecord::Migration[7.1]
  def change
    create_table :user_balances do |t|
      t.float :amount
      t.string :currency
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
