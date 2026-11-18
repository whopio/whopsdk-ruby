# frozen_string_literal: true

module Whop_sdk
  module Types
    module PaymentRuleFieldStage
      extend Whop_sdk::Internal::Types::Enum

      BEFORE_AUTHORIZATION = "before_authorization"
      AFTER_AUTHORIZATION = "after_authorization"
    end
  end
end
