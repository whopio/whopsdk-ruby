# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        module UpdatePreferencesResponseAdsAgreementStatus
          extend Whop_sdk::Internal::Types::Enum

          NOT_REQUIRED = "not_required"
          PENDING_SIGNATURE = "pending_signature"
          SIGNED = "signed"
        end
      end
    end
  end
end
