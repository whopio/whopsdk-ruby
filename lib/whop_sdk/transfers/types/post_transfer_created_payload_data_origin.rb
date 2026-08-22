# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      # Account or user sending funds.
      class PostTransferCreatedPayloadDataOrigin < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        discriminant :typename

        member -> { Whop_sdk::Transfers::Types::PostTransferCreatedPayloadDataOriginCompany }, key: "COMPANY"

        member -> { Whop_sdk::Transfers::Types::PostTransferCreatedPayloadDataOriginUser }, key: "USER"
      end
    end
  end
end
