# frozen_string_literal: true

module Whop_sdk
  module ClaimLinks
    module Types
      # The public account or user funding the claim link.
      class ClaimClaimLinksResponseSender < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        discriminant :object

        member -> { Whop_sdk::ClaimLinks::Types::ClaimClaimLinksResponseSenderAccount }, key: "ACCOUNT"

        member -> { Whop_sdk::ClaimLinks::Types::ClaimClaimLinksResponseSenderUser }, key: "USER"
      end
    end
  end
end
