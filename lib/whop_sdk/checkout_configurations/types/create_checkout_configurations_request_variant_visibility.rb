# frozen_string_literal: true

module Whop_sdk
  module CheckoutConfigurations
    module Types
      module CreateCheckoutConfigurationsRequestVariantVisibility
        extend Whop_sdk::Internal::Types::Enum

        VISIBLE = "visible"
        HIDDEN = "hidden"
        ARCHIVED = "archived"
        QUICK_LINK = "quick_link"
      end
    end
  end
end
