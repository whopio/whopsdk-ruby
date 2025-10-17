# frozen_string_literal: true

module WhopSDK
  module Models
    # The type of plan that can be attached to an access pass
    module PlanType
      extend WhopSDK::Internal::Type::Enum

      RENEWAL = :renewal
      ONE_TIME = :one_time

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
