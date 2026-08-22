# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Types
      module RetrieveStatsRequestEventType
        extend Whop_sdk::Internal::Types::Enum

        PAGE_VIEW = "page_view"
        CHECKOUT_START = "checkout_start"
        OTHER = "other"
      end
    end
  end
end
