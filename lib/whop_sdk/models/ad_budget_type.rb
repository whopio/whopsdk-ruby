# frozen_string_literal: true

module WhopSDK
  module Models
    # The budget type for an ad campaign or ad group.
    module AdBudgetType
      extend WhopSDK::Internal::Type::Enum

      DAILY = :daily
      LIFETIME = :lifetime

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
