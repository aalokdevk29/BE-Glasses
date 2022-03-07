class AddCurrencyToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :currency, :integer, default: 0
  end
end
