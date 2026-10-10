# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      class CreateTransfersRequestBody < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        discriminant :type

        member -> { Whop_sdk::Transfers::Types::CreateTransfersRequestBodyBalance }, key: "BALANCE"

        member -> { Whop_sdk::Transfers::Types::CreateTransfersRequestBodyClaimLink }, key: "CLAIM_LINK"
      end
    end
  end
end
