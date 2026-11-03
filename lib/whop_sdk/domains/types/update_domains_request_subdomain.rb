# frozen_string_literal: true

module Whop_sdk
  module Domains
    module Types
      # Use a subdomain of a domain this account bought through Whop, such as shop.example.com under example.com. It's
      # the default when you add such a subdomain without a capability. Whop publishes its DNS records in the root
      # domain's zone, so it needs nothing from you: it stays `pending` until the root domain is set up, then turns
      # `ready`. Whop releases it, and its website, when the account no longer holds the root domain, and deletes it
      # when the root domain leaves the account. Pass `null` to release it. Can't be combined with `verification` or
      # `registration`.
      class UpdateDomainsRequestSubdomain < Internal::Types::Model; end
    end
  end
end
