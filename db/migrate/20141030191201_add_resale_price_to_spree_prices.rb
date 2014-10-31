class AddResalePriceToSpreePrices < ActiveRecord::Migration
  def change
    add_column :spree_prices, :resale_price, :decimal, :precision => 8, :scale => 2
  end
end