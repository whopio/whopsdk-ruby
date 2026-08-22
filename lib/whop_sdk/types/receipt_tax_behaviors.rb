# frozen_string_literal: true

module Whop_sdk
  module Types
    module ReceiptTaxBehaviors
      extend Whop_sdk::Internal::Types::Enum

      EXCLUSIVE = "exclusive"
      INCLUSIVE = "inclusive"
      UNSPECIFIED = "unspecified"
      UNABLE_TO_COLLECT = "unable_to_collect"
    end
  end
end
