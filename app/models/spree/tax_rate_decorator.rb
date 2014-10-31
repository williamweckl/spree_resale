module Spree
  TaxRate.class_eval do

    def compute_amount(item)
      return 0 unless calculator

      super
    end

  end
end