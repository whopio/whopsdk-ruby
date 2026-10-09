# frozen_string_literal: true

module Whop_sdk
  module Domains
    module Types
      # Prove you control the domain's DNS: Whop returns a TXT record to publish in `issues`, and whoever publishes it
      # owns the domain on Whop. Pass `null` to release it. Can't be combined with `registration`.
      class CreateDomainsRequestVerification < Internal::Types::Model; end
    end
  end
end
