module Spree
  LineItem.class_eval do

    def copy_price
      if variant
        self.price = variant.price if price.nil?
        self.cost_price = variant.cost_price if cost_price.nil?
        self.currency = variant.currency if currency.nil?

        self.price = variant.resale_price if (!variant.resale_price.blank? && Spree::User.current_user && Spree::User.current_user.resale?)
      end
    end

  end
end