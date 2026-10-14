# frozen_string_literal: true

module Whop_sdk
  module Domains
    module Types
      # Accept Apple Pay at checkout on the domain. It needs no other capability. Whop registers the domain with Apple:
      # it stays `pending` until Apple answers, then turns `ready`, or `action_required` when Apple couldn't fetch the
      # domain association file. Serve the file, then check the domain to register it again. Pass `null` to turn Apple
      # Pay off: Whop removes the domain from Apple, and the domain stays, like releasing any other capability.
      class UpdateDomainsRequestApplePay < Internal::Types::Model; end
    end
  end
end
