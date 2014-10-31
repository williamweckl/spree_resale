module Spree
  Price.class_eval do
    validates :resale_price, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
    validates :resale_min_quantity, numericality: { only_integer: true, greater_than: 0 }, allow_nil: true
    validate :validate_resale_price_maximum
    validate :validate_resale_min_quantity

    def money
      money_price = (!resale_price.blank? && Spree::User.current_user && Spree::User.current_user.resale?) ? resale_price : amount
      Spree::Money.new(money_price || 0, { currency: currency })
    end

    def resale_price=(resale_price)
      self[:resale_price] = parse_price(resale_price)
    end

    def resale_min_quantity=(resale_min_quantity)
      self[:resale_min_quantity] = resale_min_quantity
    end

    private

    def validate_resale_price_maximum
      if resale_price && resale_price > maximum_amount
        errors.add :resale_price, I18n.t('errors.messages.less_than_or_equal_to', count: maximum_amount)
      end
    end

    def validate_resale_min_quantity
      if resale_price and resale_min_quantity.blank?
        errors.add :resale_min_quantity, :blank
      end
    end

  end
end