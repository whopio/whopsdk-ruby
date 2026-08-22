# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      # Account or user receiving funds.
      class CreateTransfersResponseTransferDestination < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        discriminant :typename

        member -> { Whop_sdk::Transfers::Types::CreateTransfersResponseTransferDestinationCompany }, key: "COMPANY"

        member -> { Whop_sdk::Transfers::Types::CreateTransfersResponseTransferDestinationUser }, key: "USER"
      end
    end
  end
end
