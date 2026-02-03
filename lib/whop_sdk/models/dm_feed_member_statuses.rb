# frozen_string_literal: true

module WhopSDK
  module Models
    # The statuses of a DMs feed member
    module DmFeedMemberStatuses
      extend WhopSDK::Internal::Type::Enum

      REQUESTED = :requested
      ACCEPTED = :accepted
      HIDDEN = :hidden
      CLOSED = :closed
      ARCHIVED = :archived

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
