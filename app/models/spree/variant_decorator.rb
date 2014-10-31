module Spree
  Variant.class_eval do
    delegate_belongs_to :default_price, :resale_price, :resale_price=, :resale_min_quantity, :resale_min_quantity=

  end
end