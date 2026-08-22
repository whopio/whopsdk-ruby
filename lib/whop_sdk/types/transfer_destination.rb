# frozen_string_literal: true

module Whop_sdk
  module Types
    class TransferDestination < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      discriminant :typename

      member -> { Whop_sdk::Types::TransferDestinationUser }, key: "USER"

      member -> { Whop_sdk::Types::TransferDestinationCompany }, key: "COMPANY"
    end
  end
end
