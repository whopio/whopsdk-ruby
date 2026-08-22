# frozen_string_literal: true

module Whop_sdk
  module Swaps
    module Types
      # Source chain name or chain ID. Defaults to the source token's chain when omitted.
      class CreateQuoteSwapsRequestFromChain < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        member -> { String }

        member -> { Integer }
      end
    end
  end
end
