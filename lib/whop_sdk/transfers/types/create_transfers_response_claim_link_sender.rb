# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      # The public account or user funding the claim link.
      class CreateTransfersResponseClaimLinkSender < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        discriminant :object

        member -> { Whop_sdk::Transfers::Types::CreateTransfersResponseClaimLinkSenderAccount }, key: "ACCOUNT"

        member -> { Whop_sdk::Transfers::Types::CreateTransfersResponseClaimLinkSenderUser }, key: "USER"
      end
    end
  end
end
