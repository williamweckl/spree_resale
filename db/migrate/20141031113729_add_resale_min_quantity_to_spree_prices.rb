class AddResaleMinQuantityToSpreePrices < ActiveRecord::Migration
  def change
    add_column :spree_prices, :resale_min_quantity, :integer
  end
end