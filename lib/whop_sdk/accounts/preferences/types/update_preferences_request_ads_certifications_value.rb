# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        class UpdatePreferencesRequestAdsCertificationsValue < Internal::Types::Model
          field :status, -> { Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesRequestAdsCertificationsValueStatus }, optional: false, nullable: false
        end
      end
    end
  end
end
