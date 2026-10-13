# frozen_string_literal: true

module Whop_sdk
  module Domains
    module Types
      # Track page views on the domain with the Whop pixel. It needs no other capability: it stays `pending` until the
      # pixel records a page view, and turns `action_required` if it goes 7 days without one. Pass `null` to stop
      # tracking.
      class CreateDomainsRequestPixel < Internal::Types::Model; end
    end
  end
end
