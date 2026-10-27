# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Direct
      module Types
        module CreateDirectRequestPlanOverrideTaxType
          extend Whop_sdk::Internal::Types::Enum

          EXCLUSIVE = "exclusive"
          INCLUSIVE = "inclusive"
          UNSPECIFIED = "unspecified"
        end
      end
    end
  end
end
