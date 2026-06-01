# frozen_string_literal: true

module WhopSDK
  module Models
    # Types of optimization results tracked from external ad platforms
    module ResultLabelKeys
      extend WhopSDK::Internal::Type::Enum

      APP_INSTALLS = :app_installs
      MESSAGING_CONVERSATIONS_STARTED = :messaging_conversations_started
      POST_ENGAGEMENT = :post_engagement
      EVENT_RESPONSES = :event_responses
      IMPRESSIONS = :impressions
      WEBSITE_PURCHASES = :website_purchases
      LANDING_PAGE_VIEWS = :landing_page_views
      LEADS = :leads
      LINK_CLICKS = :link_clicks
      QUALITY_CALLS = :quality_calls
      APPOINTMENTS_BOOKED = :appointments_booked
      MESSAGING_PURCHASES = :messaging_purchases
      PAGE_LIKES = :page_likes
      INSTAGRAM_PROFILE_VISITS = :instagram_profile_visits
      REACH = :reach
      REMINDERS_SET = :reminders_set
      NEW_SUBSCRIBERS = :new_subscribers
      VIDEO_VIEWS = :video_views
      REGISTRATIONS = :registrations
      CONTENT_VIEWS = :content_views
      SEARCHES = :searches
      WEBSITE_SCHEDULES = :website_schedules
      WEBSITE_SUBMIT_APPLICATIONS = :website_submit_applications
      CUSTOM = :custom

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
