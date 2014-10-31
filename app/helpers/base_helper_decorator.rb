Spree::BaseHelper.class_eval do
=begin
    def display_price(product_or_variant)
      if spree_current_user.resale?
        product_or_variant.price_in(current_currency).display_resale_price.to_html
      else
        product_or_variant.price_in(current_currency).display_price.to_html
      end
    end
=end
end