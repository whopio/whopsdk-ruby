# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      # Account or user receiving funds.
      class RetrieveTransfersResponseDestination < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        discriminant :typename

        member -> { Whop_sdk::Transfers::Types::RetrieveTransfersResponseDestinationCompany }, key: "COMPANY"

        member -> { Whop_sdk::Transfers::Types::RetrieveTransfersResponseDestinationUser }, key: "USER"
      end
    end
  end
end
