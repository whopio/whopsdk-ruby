# frozen_string_literal: true

module Whop_sdk
  module Domains
    module Types
      # Send and receive email on the domain. Only a domain bought through Whop, or a subdomain of one in the same
      # account, can have it. Whop publishes the DNS records and stays `pending` until its email provider verifies them,
      # then turns `ready`. Pass `null` to remove email.
      class UpdateDomainsRequestEmail < Internal::Types::Model; end
    end
  end
end
