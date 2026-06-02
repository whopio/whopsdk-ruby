# frozen_string_literal: true

module WhopSDK
  module Models
    # The status of an external ad.
    module ExternalAdStatus
      extend WhopSDK::Internal::Type::Enum

      ACTIVE = :active
      PAUSED = :paused
      INACTIVE = :inactive
      IN_REVIEW = :in_review
      REJECTED = :rejected
      FLAGGED = :flagged

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
