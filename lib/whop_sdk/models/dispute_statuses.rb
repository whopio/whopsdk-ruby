# frozen_string_literal: true

module WhopSDK
  module Models
    # The possible statuses of a dispute
    module DisputeStatuses
      extend WhopSDK::Internal::Type::Enum

      WARNING_NEEDS_RESPONSE = :warning_needs_response
      WARNING_UNDER_REVIEW = :warning_under_review
      WARNING_CLOSED = :warning_closed
      NEEDS_RESPONSE = :needs_response
      UNDER_REVIEW = :under_review
      WON = :won
      LOST = :lost
      CLOSED = :closed
      OTHER = :other

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
