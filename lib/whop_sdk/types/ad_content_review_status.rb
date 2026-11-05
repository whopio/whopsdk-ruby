# frozen_string_literal: true

module Whop_sdk
  module Types
    module AdContentReviewStatus
      extend Whop_sdk::Internal::Types::Enum

      REVIEWED = "reviewed"
      IN_REVIEW = "in_review"
      NOT_REVIEWED = "not_reviewed"
    end
  end
end
