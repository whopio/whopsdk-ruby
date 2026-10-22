# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        # Customer tracking settings for the hosted tracking page and Element, replaced as a whole: fields left out are
        # saved as unset. Pass null to clear them, which turns tracking off. Tracking is off unless `enabled` is `true`.
        # Requires the `company:manage_checkout` scope on your API key.
        class UpdatePreferencesRequestCustomerTracking < Internal::Types::Model
          field :accent_color, -> { String }, optional: true, nullable: false

          field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :show_business_name, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :show_logo, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :support_email, -> { String }, optional: true, nullable: false

          field :support_url, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
