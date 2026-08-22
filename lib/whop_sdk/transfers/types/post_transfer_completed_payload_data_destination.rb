# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      # Account or user receiving funds.
      class PostTransferCompletedPayloadDataDestination < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        discriminant :typename

        member -> { Whop_sdk::Transfers::Types::PostTransferCompletedPayloadDataDestinationCompany }, key: "COMPANY"

        member -> { Whop_sdk::Transfers::Types::PostTransferCompletedPayloadDataDestinationUser }, key: "USER"
      end
    end
  end
end
