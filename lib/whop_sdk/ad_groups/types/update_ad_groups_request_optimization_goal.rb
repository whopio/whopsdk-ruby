# frozen_string_literal: true

module Whop_sdk
  module AdGroups
    module Types
      module UpdateAdGroupsRequestOptimizationGoal
        extend Whop_sdk::Internal::Types::Enum

        CONVERSIONS = "conversions"
        LINK_CLICKS = "link_clicks"
        LANDING_PAGE_VIEWS = "landing_page_views"
        REACH = "reach"
        IMPRESSIONS = "impressions"
        ENGAGEMENT = "engagement"
        CONVERSATIONS = "conversations"
        VIDEO_VIEWS = "video_views"
        TWO_SECOND_VIEWS = "two_second_views"
        PAGE_LIKES = "page_likes"
        SOCIAL_PROFILE = "social_profile"
        AD_RECALL_LIFT = "ad_recall_lift"
        EVENT_RESPONSES = "event_responses"
        REMINDERS_SET = "reminders_set"
        LEAD_GENERATION = "lead_generation"
        QUALITY_LEAD = "quality_lead"
        VALUE = "value"
        PROFILE_AND_PAGE_ENGAGEMENT = "profile_and_page_engagement"
      end
    end
  end
end
