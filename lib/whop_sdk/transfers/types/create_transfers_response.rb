# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      class CreateTransfersResponse < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        discriminant :object

        member -> { Whop_sdk::Transfers::Types::CreateTransfersResponseTransfer }, key: "TRANSFER"

        member -> { Whop_sdk::Transfers::Types::CreateTransfersResponseSend }, key: "SEND"

        member -> { Whop_sdk::Transfers::Types::CreateTransfersResponseClaimLink }, key: "CLAIM_LINK"
      end
    end
  end
end
