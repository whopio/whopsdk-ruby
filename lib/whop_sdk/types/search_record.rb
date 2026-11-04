# frozen_string_literal: true

module Whop_sdk
  module Types
    # The record a result points to. Its fields depend on `object`, and every type shares basics like `title` and
    # `image_url`.
    class SearchRecord < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      discriminant :object

      member -> { Whop_sdk::Types::SearchRecordAccount }, key: "ACCOUNT"

      member -> { Whop_sdk::Types::SearchRecordAffiliate }, key: "AFFILIATE"

      member -> { Whop_sdk::Types::SearchRecordMember }, key: "MEMBER"

      member -> { Whop_sdk::Types::SearchRecordMembership }, key: "MEMBERSHIP"

      member -> { Whop_sdk::Types::SearchRecordPayment }, key: "PAYMENT"

      member -> { Whop_sdk::Types::SearchRecordPromoCode }, key: "PROMO_CODE"

      member -> { Whop_sdk::Types::SearchRecordResolutionCenterCase }, key: "RESOLUTION_CENTER_CASE"

      member -> { Whop_sdk::Types::SearchRecordReview }, key: "REVIEW"
    end
  end
end
