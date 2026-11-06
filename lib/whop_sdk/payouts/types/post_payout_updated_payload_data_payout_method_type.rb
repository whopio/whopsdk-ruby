# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      module PostPayoutUpdatedPayloadDataPayoutMethodType
        extend Whop_sdk::Internal::Types::Enum

        EXTERNAL = "external"
        WHOP_CARD = "whop_card"
      end
    end
  end
end
