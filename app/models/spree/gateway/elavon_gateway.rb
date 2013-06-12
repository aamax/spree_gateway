module Spree
  class Gateway::ElavonGateway < Gateway
    #preference :login, :string
    #preference :password, :string
    #
    # attr_accessible :preferred_login, :preferred_password
    #
    #def provider_class
    #  ActiveMerchant::Billing::AuthorizeNetGateway
    #end
    #
    #def options_with_test_preference
    #  options_without_test_preference.merge(:test => self.preferred_test_mode)
    #end
    #
    #alias_method_chain :options, :test_preference

    preference :login, :string
    preference :password, :string
    preference :user, :string

    attr_accessible :preferred_login, :preferred_password, :preferred_user

    def provider_class
      ActiveMerchant::Billing::ElavonGateway
    end

    def options_with_test_preference
      options_without_test_preference.merge(:test => self.preferred_test_mode)
    end

    alias_method_chain :options, :test_preference
  end
end