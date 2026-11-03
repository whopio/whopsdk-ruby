# frozen_string_literal: true

module Whop_sdk
  module Types
    module AdIssueReason
      extend Whop_sdk::Internal::Types::Enum

      CONTENT_REJECTED = "content_rejected"
      LANDING_PAGE_REJECTED = "landing_page_rejected"
      CREATIVE_UNSUPPORTED = "creative_unsupported"
      TARGETING_REJECTED = "targeting_rejected"
      IN_REVIEW = "in_review"
    end
  end
end
