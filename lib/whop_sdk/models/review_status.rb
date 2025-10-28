# frozen_string_literal: true

module WhopSDK
  module Models
    # The statuses a review can have
    module ReviewStatus
      extend WhopSDK::Internal::Type::Enum

      PENDING = :pending
      PUBLISHED = :published
      REMOVED = :removed

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
