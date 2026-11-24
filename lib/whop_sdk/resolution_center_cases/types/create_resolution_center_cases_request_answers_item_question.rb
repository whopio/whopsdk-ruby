# frozen_string_literal: true

module Whop_sdk
  module ResolutionCenterCases
    module Types
      module CreateResolutionCenterCasesRequestAnswersItemQuestion
        extend Whop_sdk::Internal::Types::Enum

        PURCHASED = "purchased"
        RECOGNIZES_PURCHASE = "recognizes_purchase"
        COMPLAINT_KIND = "complaint_kind"
        MISSING_ITEMS = "missing_items"
        EXPECTED_BY = "expected_by"
        PROMISED = "promised"
        PROMISED_LINK = "promised_link"
        RECEIVED_INSTEAD = "received_instead"
        QUALITY_ISSUE = "quality_issue"
        CONTACTED_MERCHANT = "contacted_merchant"
        CONTACTED_ON = "contacted_on"
        MERCHANT_REPLY = "merchant_reply"
        EXTRA = "extra"
      end
    end
  end
end
