module Spree
  Product.class_eval do
    delegate_belongs_to :master, :resale_price, :resale_min_quantity
  end
end