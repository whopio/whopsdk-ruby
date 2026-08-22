# frozen_string_literal: true

module Whop_sdk
  module Types
    module AccessPassTypes
      extend Whop_sdk::Internal::Types::Enum

      REGULAR = "regular"
      APP = "app"
      EXPERIENCE_UPSELL = "experience_upsell"
      API_ONLY = "api_only"
    end
  end
end
