# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        module ListBusinessesRequestOrder
          extend Whop_sdk::Internal::Types::Enum

          CREATED_AT = "created_at"
          REFERRAL_STARTED_AT = "referral_started_at"
          REFERRAL_EXPIRES_AT = "referral_expires_at"
          PAYOUT_PERCENTAGE = "payout_percentage"
          VOLUME_USD = "volume_usd"
          EARNINGS_USD = "earnings_usd"
        end
      end
    end
  end
end
