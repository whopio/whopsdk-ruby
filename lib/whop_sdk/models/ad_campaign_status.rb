# frozen_string_literal: true

module WhopSDK
  module Models
    # The status of an ad campaign.
    module AdCampaignStatus
      extend WhopSDK::Internal::Type::Enum

      ACTIVE = :active
      PAUSED = :paused
      PAYMENT_FAILED = :payment_failed
      DRAFT = :draft
      IN_REVIEW = :in_review
      FLAGGED = :flagged

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
