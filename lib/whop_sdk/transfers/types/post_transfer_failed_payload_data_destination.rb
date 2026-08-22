# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      # Account or user receiving funds.
      class PostTransferFailedPayloadDataDestination < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        discriminant :typename

        member -> { Whop_sdk::Transfers::Types::PostTransferFailedPayloadDataDestinationCompany }, key: "COMPANY"

        member -> { Whop_sdk::Transfers::Types::PostTransferFailedPayloadDataDestinationUser }, key: "USER"
      end
    end
  end
end
