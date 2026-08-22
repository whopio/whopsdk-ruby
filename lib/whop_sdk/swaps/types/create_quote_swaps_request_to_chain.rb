# frozen_string_literal: true

module Whop_sdk
  module Swaps
    module Types
      # Destination chain name or chain ID. Defaults to the destination token's chain when omitted.
      class CreateQuoteSwapsRequestToChain < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        member -> { String }

        member -> { Integer }
      end
    end
  end
end
