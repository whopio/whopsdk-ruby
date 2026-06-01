# typed: strong

module WhopSDK
  module Models
    # Types of optimization results tracked from external ad platforms
    module ResultLabelKeys
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::ResultLabelKeys) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      APP_INSTALLS =
        T.let(:app_installs, WhopSDK::ResultLabelKeys::TaggedSymbol)
      MESSAGING_CONVERSATIONS_STARTED =
        T.let(
          :messaging_conversations_started,
          WhopSDK::ResultLabelKeys::TaggedSymbol
        )
      POST_ENGAGEMENT =
        T.let(:post_engagement, WhopSDK::ResultLabelKeys::TaggedSymbol)
      EVENT_RESPONSES =
        T.let(:event_responses, WhopSDK::ResultLabelKeys::TaggedSymbol)
      IMPRESSIONS = T.let(:impressions, WhopSDK::ResultLabelKeys::TaggedSymbol)
      WEBSITE_PURCHASES =
        T.let(:website_purchases, WhopSDK::ResultLabelKeys::TaggedSymbol)
      LANDING_PAGE_VIEWS =
        T.let(:landing_page_views, WhopSDK::ResultLabelKeys::TaggedSymbol)
      LEADS = T.let(:leads, WhopSDK::ResultLabelKeys::TaggedSymbol)
      LINK_CLICKS = T.let(:link_clicks, WhopSDK::ResultLabelKeys::TaggedSymbol)
      QUALITY_CALLS =
        T.let(:quality_calls, WhopSDK::ResultLabelKeys::TaggedSymbol)
      APPOINTMENTS_BOOKED =
        T.let(:appointments_booked, WhopSDK::ResultLabelKeys::TaggedSymbol)
      MESSAGING_PURCHASES =
        T.let(:messaging_purchases, WhopSDK::ResultLabelKeys::TaggedSymbol)
      PAGE_LIKES = T.let(:page_likes, WhopSDK::ResultLabelKeys::TaggedSymbol)
      INSTAGRAM_PROFILE_VISITS =
        T.let(:instagram_profile_visits, WhopSDK::ResultLabelKeys::TaggedSymbol)
      REACH = T.let(:reach, WhopSDK::ResultLabelKeys::TaggedSymbol)
      REMINDERS_SET =
        T.let(:reminders_set, WhopSDK::ResultLabelKeys::TaggedSymbol)
      NEW_SUBSCRIBERS =
        T.let(:new_subscribers, WhopSDK::ResultLabelKeys::TaggedSymbol)
      VIDEO_VIEWS = T.let(:video_views, WhopSDK::ResultLabelKeys::TaggedSymbol)
      REGISTRATIONS =
        T.let(:registrations, WhopSDK::ResultLabelKeys::TaggedSymbol)
      CONTENT_VIEWS =
        T.let(:content_views, WhopSDK::ResultLabelKeys::TaggedSymbol)
      SEARCHES = T.let(:searches, WhopSDK::ResultLabelKeys::TaggedSymbol)
      WEBSITE_SCHEDULES =
        T.let(:website_schedules, WhopSDK::ResultLabelKeys::TaggedSymbol)
      WEBSITE_SUBMIT_APPLICATIONS =
        T.let(
          :website_submit_applications,
          WhopSDK::ResultLabelKeys::TaggedSymbol
        )
      CUSTOM = T.let(:custom, WhopSDK::ResultLabelKeys::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::ResultLabelKeys::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
