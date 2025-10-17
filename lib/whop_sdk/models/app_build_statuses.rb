# frozen_string_literal: true

module WhopSDK
  module Models
    # The different statuses an AppBuild can be in.
    module AppBuildStatuses
      extend WhopSDK::Internal::Type::Enum

      DRAFT = :draft
      PENDING = :pending
      APPROVED = :approved
      REJECTED = :rejected

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
