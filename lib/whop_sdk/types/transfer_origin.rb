# frozen_string_literal: true

module Whop_sdk
  module Types
    class TransferOrigin < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      discriminant :typename

      member -> { Whop_sdk::Types::TransferOriginUser }, key: "USER"

      member -> { Whop_sdk::Types::TransferOriginCompany }, key: "COMPANY"
    end
  end
end
