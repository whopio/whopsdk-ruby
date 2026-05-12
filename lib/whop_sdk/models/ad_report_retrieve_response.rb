# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdReports#retrieve
    class AdReportRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute daily
      #   Per-day breakdown over the date range, ordered ascending. Null when
      #   `includeDaily` is false.
      #
      #   @return [Array<WhopSDK::Models::AdReportRetrieveResponse::Daily>, nil]
      required :daily,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::AdReportRetrieveResponse::Daily] },
               nil?: true

      # @!attribute summary
      #   Aggregate totals and rates over the date range.
      #
      #   @return [WhopSDK::Models::AdReportRetrieveResponse::Summary]
      required :summary, -> { WhopSDK::Models::AdReportRetrieveResponse::Summary }

      # @!method initialize(daily:, summary:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdReportRetrieveResponse} for more details.
      #
      #   An ads performance report. Returns a summary; daily breakdown is included when
      #   `includeDaily` is true.
      #
      #   @param daily [Array<WhopSDK::Models::AdReportRetrieveResponse::Daily>, nil] Per-day breakdown over the date range, ordered ascending. Null when `includeDail
      #
      #   @param summary [WhopSDK::Models::AdReportRetrieveResponse::Summary] Aggregate totals and rates over the date range.

      class Daily < WhopSDK::Internal::Type::BaseModel
        # @!attribute clicks
        #   Clicks on this date.
        #
        #   @return [Integer]
        required :clicks, Integer

        # @!attribute impressions
        #   Impressions on this date.
        #
        #   @return [Integer]
        required :impressions, Integer

        # @!attribute reach
        #   Unique users reached on this date.
        #
        #   @return [Integer]
        required :reach, Integer

        # @!attribute result_count
        #   Count of the primary optimization result on this date.
        #
        #   @return [Integer, nil]
        required :result_count, Integer, nil?: true

        # @!attribute result_label_key
        #   Types of optimization results tracked from external ad platforms
        #
        #   @return [Symbol, WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey, nil]
        required :result_label_key,
                 enum: -> { WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey },
                 nil?: true

        # @!attribute result_label_override
        #   Advertiser-defined label for the result when `resultLabelKey` is `custom`.
        #
        #   @return [String, nil]
        required :result_label_override, String, nil?: true

        # @!attribute spend
        #   Charged spend on this date in the requested reporting currency — the amount
        #   billed including platform fees, not the platform-side net spend.
        #
        #   @return [Float]
        required :spend, Float

        # @!attribute spend_currency
        #   Currency of the `spend` value.
        #
        #   @return [Symbol, WhopSDK::Models::Currency]
        required :spend_currency, enum: -> { WhopSDK::Currency }

        # @!attribute stat_date
        #   The date these stats cover (midnight UTC).
        #
        #   @return [Time]
        required :stat_date, Time

        # @!method initialize(clicks:, impressions:, reach:, result_count:, result_label_key:, result_label_override:, spend:, spend_currency:, stat_date:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AdReportRetrieveResponse::Daily} for more details.
        #
        #   Per-day ad performance for an ad campaign, ad group, or ad.
        #
        #   @param clicks [Integer] Clicks on this date.
        #
        #   @param impressions [Integer] Impressions on this date.
        #
        #   @param reach [Integer] Unique users reached on this date.
        #
        #   @param result_count [Integer, nil] Count of the primary optimization result on this date.
        #
        #   @param result_label_key [Symbol, WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey, nil] Types of optimization results tracked from external ad platforms
        #
        #   @param result_label_override [String, nil] Advertiser-defined label for the result when `resultLabelKey` is `custom`.
        #
        #   @param spend [Float] Charged spend on this date in the requested reporting currency — the amount bill
        #
        #   @param spend_currency [Symbol, WhopSDK::Models::Currency] Currency of the `spend` value.
        #
        #   @param stat_date [Time] The date these stats cover (midnight UTC).

        # Types of optimization results tracked from external ad platforms
        #
        # @see WhopSDK::Models::AdReportRetrieveResponse::Daily#result_label_key
        module ResultLabelKey
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

      # @see WhopSDK::Models::AdReportRetrieveResponse#summary
      class Summary < WhopSDK::Internal::Type::BaseModel
        # @!attribute clicks
        #   Total clicks over the date range.
        #
        #   @return [Integer]
        required :clicks, Integer

        # @!attribute cost_per_result
        #   Spend divided by `resultCount`. Null when there are no results.
        #
        #   @return [Float, nil]
        required :cost_per_result, Float, nil?: true

        # @!attribute cpc
        #   Cost per click in the requested reporting currency.
        #
        #   @return [Float]
        required :cpc, Float

        # @!attribute cpm
        #   Cost per thousand impressions in the requested reporting currency.
        #
        #   @return [Float, nil]
        required :cpm, Float, nil?: true

        # @!attribute ctr
        #   Click-through rate (clicks / impressions).
        #
        #   @return [Float]
        required :ctr, Float

        # @!attribute frequency
        #   Average number of times each reached user saw an ad.
        #
        #   @return [Float, nil]
        required :frequency, Float, nil?: true

        # @!attribute impressions
        #   Total impressions over the date range.
        #
        #   @return [Integer]
        required :impressions, Integer

        # @!attribute reach
        #   Unique users reached, deduplicated by the external ad platform.
        #
        #   @return [Integer]
        required :reach, Integer

        # @!attribute result_count
        #   Count of the campaign's primary optimization result (purchases, clicks, etc.) —
        #   see `resultLabelKey`.
        #
        #   @return [Integer, nil]
        required :result_count, Integer, nil?: true

        # @!attribute result_label_key
        #   Types of optimization results tracked from external ad platforms
        #
        #   @return [Symbol, WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey, nil]
        required :result_label_key,
                 enum: -> { WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey },
                 nil?: true

        # @!attribute result_label_override
        #   Advertiser-defined label for the result when `resultLabelKey` is `custom`.
        #
        #   @return [String, nil]
        required :result_label_override, String, nil?: true

        # @!attribute roas
        #   Alias for `purchaseRoas` — return on ad spend for purchases, as reported by the
        #   external ad platform.
        #
        #   @return [Float, nil]
        required :roas, Float, nil?: true

        # @!attribute spend
        #   Total spend over the date range in the requested reporting currency.
        #
        #   @return [Float]
        required :spend, Float

        # @!attribute spend_currency
        #   The available currencies on the platform
        #
        #   @return [Symbol, WhopSDK::Models::Currency, nil]
        required :spend_currency, enum: -> { WhopSDK::Currency }, nil?: true

        # @!method initialize(clicks:, cost_per_result:, cpc:, cpm:, ctr:, frequency:, impressions:, reach:, result_count:, result_label_key:, result_label_override:, roas:, spend:, spend_currency:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AdReportRetrieveResponse::Summary} for more details.
        #
        #   Aggregate totals and rates over the date range.
        #
        #   @param clicks [Integer] Total clicks over the date range.
        #
        #   @param cost_per_result [Float, nil] Spend divided by `resultCount`. Null when there are no results.
        #
        #   @param cpc [Float] Cost per click in the requested reporting currency.
        #
        #   @param cpm [Float, nil] Cost per thousand impressions in the requested reporting currency.
        #
        #   @param ctr [Float] Click-through rate (clicks / impressions).
        #
        #   @param frequency [Float, nil] Average number of times each reached user saw an ad.
        #
        #   @param impressions [Integer] Total impressions over the date range.
        #
        #   @param reach [Integer] Unique users reached, deduplicated by the external ad platform.
        #
        #   @param result_count [Integer, nil] Count of the campaign's primary optimization result (purchases, clicks, etc.) —
        #
        #   @param result_label_key [Symbol, WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey, nil] Types of optimization results tracked from external ad platforms
        #
        #   @param result_label_override [String, nil] Advertiser-defined label for the result when `resultLabelKey` is `custom`.
        #
        #   @param roas [Float, nil] Alias for `purchaseRoas` — return on ad spend for purchases, as reported by the
        #
        #   @param spend [Float] Total spend over the date range in the requested reporting currency.
        #
        #   @param spend_currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform

        # Types of optimization results tracked from external ad platforms
        #
        # @see WhopSDK::Models::AdReportRetrieveResponse::Summary#result_label_key
        module ResultLabelKey
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
  end
end
