# frozen_string_literal: true

module Whop_sdk
  module Domains
    module Types
      # Move a domain registered through Whop out of this account. For `internal`, turning it on returns a code in
      # `transfer.code`. The receiving account enters it as `registration.auth_code` on its own copy of the domain. Whop
      # then removes the domain's email, email addresses and Apple Pay from this account. It moves the registration with
      # its expiry and stops charging this account to renew it. Then it removes the domain from this account. Pass
      # `null` to turn it off and invalidate the code, until another account has entered it. For `external`, Whop
      # unlocks the domain at its registrar. Then it turns off the domain's website, email, Apple Pay, pixel, subdomains
      # and DNS. After that, `transfer.code` shows the registrar's auth code for the new registrar. The domain leaves
      # this account when the transfer completes. Pass `null` before then to lock the domain again and keep its
      # registration on Whop.
      class UpdateDomainsRequestTransfer < Internal::Types::Model
        field :destination, -> { Whop_sdk::Domains::Types::UpdateDomainsRequestTransferDestination }, optional: true, nullable: false
      end
    end
  end
end
