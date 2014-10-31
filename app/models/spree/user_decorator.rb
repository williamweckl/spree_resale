module Spree
  User.class_eval do

    cattr_accessor :current_user

    def resale?
      has_spree_role?('resale')
    end

  end
end