# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        # The card surcharge a point of sale adds to credit card payments, replaced as a whole. You can always turn it
        # off. You can turn it on only when `card_surcharge.maximum_percentage` is not null. Requires the
        # `company:update` scope on your API key.
        class UpdatePreferencesRequestCardSurcharge < Internal::Types::Model
          field :enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :percentage, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
