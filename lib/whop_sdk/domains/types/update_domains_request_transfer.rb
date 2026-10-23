# frozen_string_literal: true

module Whop_sdk
  module Domains
    module Types
      # Move a domain registered through Whop to another Whop account. Turning it on returns a code in `transfer.code`;
      # the receiving account enters it as `registration.auth_code` on its own copy of the domain. Whop then removes the
      # domain's email, email addresses and Apple Pay from this account, moves the registration with its expiry, stops
      # charging this account to renew it, and removes the domain from this account. Pass `null` to turn it off and
      # invalidate the code, until another account has entered it.
      class UpdateDomainsRequestTransfer < Internal::Types::Model
        field :destination, -> { Whop_sdk::Domains::Types::UpdateDomainsRequestTransferDestination }, optional: true, nullable: false
      end
    end
  end
end
