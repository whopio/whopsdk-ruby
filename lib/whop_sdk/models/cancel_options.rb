# frozen_string_literal: true

module WhopSDK
  module Models
    # The different reasons a user can choose for why they are canceling their
    # membership.
    module CancelOptions
      extend WhopSDK::Internal::Type::Enum

      TOO_EXPENSIVE = :too_expensive
      SWITCHING = :switching
      MISSING_FEATURES = :missing_features
      TECHNICAL_ISSUES = :technical_issues
      BAD_EXPERIENCE = :bad_experience
      OTHER = :other
      TESTING = :testing

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
