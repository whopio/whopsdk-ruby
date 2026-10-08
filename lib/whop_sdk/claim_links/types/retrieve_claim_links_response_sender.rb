# frozen_string_literal: true

module Whop_sdk
  module ClaimLinks
    module Types
      # The public account or user funding the claim link.
      class RetrieveClaimLinksResponseSender < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        discriminant :object

        member -> { Whop_sdk::ClaimLinks::Types::RetrieveClaimLinksResponseSenderAccount }, key: "ACCOUNT"

        member -> { Whop_sdk::ClaimLinks::Types::RetrieveClaimLinksResponseSenderUser }, key: "USER"
      end
    end
  end
end
