# frozen_string_literal: true

module Whop_sdk
  module Domains
    module Types
      module ListDomainsRequestPlatform
        extend Whop_sdk::Internal::Types::Enum

        PENDING = "pending"
        READY = "ready"
        ACTION_REQUIRED = "action_required"
        RELEASING = "releasing"
        ANY = "any"
      end
    end
  end
end
