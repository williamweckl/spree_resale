module Spree
  BaseController.class_eval do
    before_action :set_user

    def set_user
      Spree::User.current_user = spree_current_user
    end
  end
end