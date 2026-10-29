# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module SupportedMethods
      module Types
        module ListSupportedMethodsRequestPartyType
          extend Whop_sdk::Internal::Types::Enum

          FIRST_PARTY = "first_party"
          THIRD_PARTY = "third_party"
        end
      end
    end
  end
end
