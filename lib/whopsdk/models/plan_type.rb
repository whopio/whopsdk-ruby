# frozen_string_literal: true

module Whopsdk
  module Models
    # The type of plan that can be attached to an access pass
    module PlanType
      extend Whopsdk::Internal::Type::Enum

      RENEWAL = :renewal
      ONE_TIME = :one_time

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
