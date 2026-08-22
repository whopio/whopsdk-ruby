# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module SupportedMethods
      module Types
        # Standard-delivery estimate. Null if unsupported or the amount does not cover the fee.
        class ListSupportedMethodsResponseDataItemQuotesItemStandard < Internal::Types::Model
          field :estimated_arrival, -> { String }, optional: false, nullable: false

          field :fee, -> { Integer }, optional: false, nullable: false

          field :total_received, -> { Integer }, optional: false, nullable: false
        end
      end
    end
  end
end
