# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      # Account or user receiving funds.
      class PostTransferCreatedPayloadDataDestination < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        discriminant :typename

        member -> { Whop_sdk::Transfers::Types::PostTransferCreatedPayloadDataDestinationCompany }, key: "COMPANY"

        member -> { Whop_sdk::Transfers::Types::PostTransferCreatedPayloadDataDestinationUser }, key: "USER"
      end
    end
  end
end
