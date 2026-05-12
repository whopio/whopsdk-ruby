# typed: strong

module WhopSDK
  module Models
    class AdReportRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::AdReportRetrieveResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # Per-day breakdown over the date range, ordered ascending. Null when
      # `includeDaily` is false.
      sig do
        returns(
          T.nilable(T::Array[WhopSDK::Models::AdReportRetrieveResponse::Daily])
        )
      end
      attr_accessor :daily

      # Aggregate totals and rates over the date range.
      sig { returns(WhopSDK::Models::AdReportRetrieveResponse::Summary) }
      attr_reader :summary

      sig do
        params(
          summary: WhopSDK::Models::AdReportRetrieveResponse::Summary::OrHash
        ).void
      end
      attr_writer :summary

      # An ads performance report. Returns a summary; daily breakdown is included when
      # `includeDaily` is true.
      sig do
        params(
          daily:
            T.nilable(
              T::Array[WhopSDK::Models::AdReportRetrieveResponse::Daily::OrHash]
            ),
          summary: WhopSDK::Models::AdReportRetrieveResponse::Summary::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Per-day breakdown over the date range, ordered ascending. Null when
        # `includeDaily` is false.
        daily:,
        # Aggregate totals and rates over the date range.
        summary:
      )
      end

      sig do
        override.returns(
          {
            daily:
              T.nilable(
                T::Array[WhopSDK::Models::AdReportRetrieveResponse::Daily]
              ),
            summary: WhopSDK::Models::AdReportRetrieveResponse::Summary
          }
        )
      end
      def to_hash
      end

      class Daily < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AdReportRetrieveResponse::Daily,
              WhopSDK::Internal::AnyHash
            )
          end

        # Clicks on this date.
        sig { returns(Integer) }
        attr_accessor :clicks

        # Impressions on this date.
        sig { returns(Integer) }
        attr_accessor :impressions

        # Unique users reached on this date.
        sig { returns(Integer) }
        attr_accessor :reach

        # Count of the primary optimization result on this date.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :result_count

        # Types of optimization results tracked from external ad platforms
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )
          )
        end
        attr_accessor :result_label_key

        # Advertiser-defined label for the result when `resultLabelKey` is `custom`.
        sig { returns(T.nilable(String)) }
        attr_accessor :result_label_override

        # Charged spend on this date in the requested reporting currency — the amount
        # billed including platform fees, not the platform-side net spend.
        sig { returns(Float) }
        attr_accessor :spend

        # Currency of the `spend` value.
        sig { returns(WhopSDK::Currency::TaggedSymbol) }
        attr_accessor :spend_currency

        # The date these stats cover (midnight UTC).
        sig { returns(Time) }
        attr_accessor :stat_date

        # Per-day ad performance for an ad campaign, ad group, or ad.
        sig do
          params(
            clicks: Integer,
            impressions: Integer,
            reach: Integer,
            result_count: T.nilable(Integer),
            result_label_key:
              T.nilable(
                WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::OrSymbol
              ),
            result_label_override: T.nilable(String),
            spend: Float,
            spend_currency: WhopSDK::Currency::OrSymbol,
            stat_date: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Clicks on this date.
          clicks:,
          # Impressions on this date.
          impressions:,
          # Unique users reached on this date.
          reach:,
          # Count of the primary optimization result on this date.
          result_count:,
          # Types of optimization results tracked from external ad platforms
          result_label_key:,
          # Advertiser-defined label for the result when `resultLabelKey` is `custom`.
          result_label_override:,
          # Charged spend on this date in the requested reporting currency — the amount
          # billed including platform fees, not the platform-side net spend.
          spend:,
          # Currency of the `spend` value.
          spend_currency:,
          # The date these stats cover (midnight UTC).
          stat_date:
        )
        end

        sig do
          override.returns(
            {
              clicks: Integer,
              impressions: Integer,
              reach: Integer,
              result_count: T.nilable(Integer),
              result_label_key:
                T.nilable(
                  WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
                ),
              result_label_override: T.nilable(String),
              spend: Float,
              spend_currency: WhopSDK::Currency::TaggedSymbol,
              stat_date: Time
            }
          )
        end
        def to_hash
        end

        # Types of optimization results tracked from external ad platforms
        module ResultLabelKey
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APP_INSTALLS =
            T.let(
              :app_installs,
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )
          MESSAGING_CONVERSATIONS_STARTED =
            T.let(
              :messaging_conversations_started,
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )
          POST_ENGAGEMENT =
            T.let(
              :post_engagement,
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )
          EVENT_RESPONSES =
            T.let(
              :event_responses,
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )
          IMPRESSIONS =
            T.let(
              :impressions,
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )
          WEBSITE_PURCHASES =
            T.let(
              :website_purchases,
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )
          LANDING_PAGE_VIEWS =
            T.let(
              :landing_page_views,
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )
          LEADS =
            T.let(
              :leads,
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )
          LINK_CLICKS =
            T.let(
              :link_clicks,
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )
          QUALITY_CALLS =
            T.let(
              :quality_calls,
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )
          APPOINTMENTS_BOOKED =
            T.let(
              :appointments_booked,
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )
          MESSAGING_PURCHASES =
            T.let(
              :messaging_purchases,
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )
          PAGE_LIKES =
            T.let(
              :page_likes,
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )
          INSTAGRAM_PROFILE_VISITS =
            T.let(
              :instagram_profile_visits,
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )
          REACH =
            T.let(
              :reach,
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )
          REMINDERS_SET =
            T.let(
              :reminders_set,
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )
          NEW_SUBSCRIBERS =
            T.let(
              :new_subscribers,
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )
          VIDEO_VIEWS =
            T.let(
              :video_views,
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )
          REGISTRATIONS =
            T.let(
              :registrations,
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )
          CONTENT_VIEWS =
            T.let(
              :content_views,
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )
          SEARCHES =
            T.let(
              :searches,
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )
          WEBSITE_SCHEDULES =
            T.let(
              :website_schedules,
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )
          WEBSITE_SUBMIT_APPLICATIONS =
            T.let(
              :website_submit_applications,
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :custom,
              WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::AdReportRetrieveResponse::Daily::ResultLabelKey::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Summary < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AdReportRetrieveResponse::Summary,
              WhopSDK::Internal::AnyHash
            )
          end

        # Total clicks over the date range.
        sig { returns(Integer) }
        attr_accessor :clicks

        # Spend divided by `resultCount`. Null when there are no results.
        sig { returns(T.nilable(Float)) }
        attr_accessor :cost_per_result

        # Cost per click in the requested reporting currency.
        sig { returns(Float) }
        attr_accessor :cpc

        # Cost per thousand impressions in the requested reporting currency.
        sig { returns(T.nilable(Float)) }
        attr_accessor :cpm

        # Click-through rate (clicks / impressions).
        sig { returns(Float) }
        attr_accessor :ctr

        # Average number of times each reached user saw an ad.
        sig { returns(T.nilable(Float)) }
        attr_accessor :frequency

        # Total impressions over the date range.
        sig { returns(Integer) }
        attr_accessor :impressions

        # Unique users reached, deduplicated by the external ad platform.
        sig { returns(Integer) }
        attr_accessor :reach

        # Count of the campaign's primary optimization result (purchases, clicks, etc.) —
        # see `resultLabelKey`.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :result_count

        # Types of optimization results tracked from external ad platforms
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )
          )
        end
        attr_accessor :result_label_key

        # Advertiser-defined label for the result when `resultLabelKey` is `custom`.
        sig { returns(T.nilable(String)) }
        attr_accessor :result_label_override

        # Alias for `purchaseRoas` — return on ad spend for purchases, as reported by the
        # external ad platform.
        sig { returns(T.nilable(Float)) }
        attr_accessor :roas

        # Total spend over the date range in the requested reporting currency.
        sig { returns(Float) }
        attr_accessor :spend

        # The available currencies on the platform
        sig { returns(T.nilable(WhopSDK::Currency::TaggedSymbol)) }
        attr_accessor :spend_currency

        # Aggregate totals and rates over the date range.
        sig do
          params(
            clicks: Integer,
            cost_per_result: T.nilable(Float),
            cpc: Float,
            cpm: T.nilable(Float),
            ctr: Float,
            frequency: T.nilable(Float),
            impressions: Integer,
            reach: Integer,
            result_count: T.nilable(Integer),
            result_label_key:
              T.nilable(
                WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::OrSymbol
              ),
            result_label_override: T.nilable(String),
            roas: T.nilable(Float),
            spend: Float,
            spend_currency: T.nilable(WhopSDK::Currency::OrSymbol)
          ).returns(T.attached_class)
        end
        def self.new(
          # Total clicks over the date range.
          clicks:,
          # Spend divided by `resultCount`. Null when there are no results.
          cost_per_result:,
          # Cost per click in the requested reporting currency.
          cpc:,
          # Cost per thousand impressions in the requested reporting currency.
          cpm:,
          # Click-through rate (clicks / impressions).
          ctr:,
          # Average number of times each reached user saw an ad.
          frequency:,
          # Total impressions over the date range.
          impressions:,
          # Unique users reached, deduplicated by the external ad platform.
          reach:,
          # Count of the campaign's primary optimization result (purchases, clicks, etc.) —
          # see `resultLabelKey`.
          result_count:,
          # Types of optimization results tracked from external ad platforms
          result_label_key:,
          # Advertiser-defined label for the result when `resultLabelKey` is `custom`.
          result_label_override:,
          # Alias for `purchaseRoas` — return on ad spend for purchases, as reported by the
          # external ad platform.
          roas:,
          # Total spend over the date range in the requested reporting currency.
          spend:,
          # The available currencies on the platform
          spend_currency:
        )
        end

        sig do
          override.returns(
            {
              clicks: Integer,
              cost_per_result: T.nilable(Float),
              cpc: Float,
              cpm: T.nilable(Float),
              ctr: Float,
              frequency: T.nilable(Float),
              impressions: Integer,
              reach: Integer,
              result_count: T.nilable(Integer),
              result_label_key:
                T.nilable(
                  WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
                ),
              result_label_override: T.nilable(String),
              roas: T.nilable(Float),
              spend: Float,
              spend_currency: T.nilable(WhopSDK::Currency::TaggedSymbol)
            }
          )
        end
        def to_hash
        end

        # Types of optimization results tracked from external ad platforms
        module ResultLabelKey
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APP_INSTALLS =
            T.let(
              :app_installs,
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )
          MESSAGING_CONVERSATIONS_STARTED =
            T.let(
              :messaging_conversations_started,
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )
          POST_ENGAGEMENT =
            T.let(
              :post_engagement,
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )
          EVENT_RESPONSES =
            T.let(
              :event_responses,
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )
          IMPRESSIONS =
            T.let(
              :impressions,
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )
          WEBSITE_PURCHASES =
            T.let(
              :website_purchases,
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )
          LANDING_PAGE_VIEWS =
            T.let(
              :landing_page_views,
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )
          LEADS =
            T.let(
              :leads,
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )
          LINK_CLICKS =
            T.let(
              :link_clicks,
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )
          QUALITY_CALLS =
            T.let(
              :quality_calls,
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )
          APPOINTMENTS_BOOKED =
            T.let(
              :appointments_booked,
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )
          MESSAGING_PURCHASES =
            T.let(
              :messaging_purchases,
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )
          PAGE_LIKES =
            T.let(
              :page_likes,
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )
          INSTAGRAM_PROFILE_VISITS =
            T.let(
              :instagram_profile_visits,
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )
          REACH =
            T.let(
              :reach,
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )
          REMINDERS_SET =
            T.let(
              :reminders_set,
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )
          NEW_SUBSCRIBERS =
            T.let(
              :new_subscribers,
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )
          VIDEO_VIEWS =
            T.let(
              :video_views,
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )
          REGISTRATIONS =
            T.let(
              :registrations,
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )
          CONTENT_VIEWS =
            T.let(
              :content_views,
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )
          SEARCHES =
            T.let(
              :searches,
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )
          WEBSITE_SCHEDULES =
            T.let(
              :website_schedules,
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )
          WEBSITE_SUBMIT_APPLICATIONS =
            T.let(
              :website_submit_applications,
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :custom,
              WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::AdReportRetrieveResponse::Summary::ResultLabelKey::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
