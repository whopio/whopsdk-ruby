# frozen_string_literal: true

module Whop_sdk
  module Types
    module RecommendedActionType
      extend Whop_sdk::Internal::Types::Enum

      ADD_CANCEL_OFFER = "add_cancel_offer"
      CREATE_EMAIL_AUTOMATION = "create_email_automation"
      IMPROVE_LANDING_PAGE = "improve_landing_page"
      FIX_BROKEN_WEBSITE = "fix_broken_website"
      CLONE_AND_AB_TEST_SITE = "clone_and_ab_test_site"
    end
  end
end
