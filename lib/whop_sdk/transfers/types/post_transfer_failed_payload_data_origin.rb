# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      # Account or user sending funds.
      class PostTransferFailedPayloadDataOrigin < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        discriminant :typename

        member -> { Whop_sdk::Transfers::Types::PostTransferFailedPayloadDataOriginCompany }, key: "COMPANY"

        member -> { Whop_sdk::Transfers::Types::PostTransferFailedPayloadDataOriginUser }, key: "USER"
      end
    end
  end
end
