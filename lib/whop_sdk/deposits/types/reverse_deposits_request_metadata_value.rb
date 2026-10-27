# frozen_string_literal: true

module Whop_sdk
  module Deposits
    module Types
      class ReverseDepositsRequestMetadataValue < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        member -> { String }

        member -> { Integer }

        member -> { Internal::Types::Boolean }
      end
    end
  end
end
