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

      # Per-bucket breakdown over the date range, ordered ascending by `bucketStart`.
      # `null` when the `breakdown` arg on `adReport` is omitted; otherwise contains
      # rows at the requested grain (`daily` or `hourly`).
      sig do
        returns(
          T.nilable(
            T::Array[WhopSDK::Models::AdReportRetrieveResponse::Breakdown]
          )
        )
      end
      attr_accessor :breakdown

      # Aggregate totals and rates over the date range.
      sig { returns(WhopSDK::Models::AdReportRetrieveResponse::Summary) }
      attr_reader :summary

      sig do
        params(
          summary: WhopSDK::Models::AdReportRetrieveResponse::Summary::OrHash
        ).void
      end
      attr_writer :summary

      # An ads performance report. Returns a summary; the time-series breakdown is
      # included when the `breakdown` arg is set on `adReport`.
      sig do
        params(
          breakdown:
            T.nilable(
              T::Array[
                WhopSDK::Models::AdReportRetrieveResponse::Breakdown::OrHash
              ]
            ),
          summary: WhopSDK::Models::AdReportRetrieveResponse::Summary::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Per-bucket breakdown over the date range, ordered ascending by `bucketStart`.
        # `null` when the `breakdown` arg on `adReport` is omitted; otherwise contains
        # rows at the requested grain (`daily` or `hourly`).
        breakdown:,
        # Aggregate totals and rates over the date range.
        summary:
      )
      end

      sig do
        override.returns(
          {
            breakdown:
              T.nilable(
                T::Array[WhopSDK::Models::AdReportRetrieveResponse::Breakdown]
              ),
            summary: WhopSDK::Models::AdReportRetrieveResponse::Summary
          }
        )
      end
      def to_hash
      end

      class Breakdown < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AdReportRetrieveResponse::Breakdown,
              WhopSDK::Internal::AnyHash
            )
          end

        # The bucket's start time as a real UTC instant. `(statDate, statHour)` resolved
        # in the ad account's reporting timezone — render this in the viewer's local
        # timezone.
        sig { returns(Time) }
        attr_accessor :bucket_start

        # Clicks in this bucket.
        sig { returns(Integer) }
        attr_accessor :clicks

        # The bucket size of this row (`daily` or `hourly`).
        sig { returns(WhopSDK::Granularities::TaggedSymbol) }
        attr_accessor :granularity

        # Impressions in this bucket.
        sig { returns(Integer) }
        attr_accessor :impressions

        # Unique users reached in this bucket. Always `0` for hourly rows (Meta does not
        # return reach at hourly grain).
        sig { returns(Integer) }
        attr_accessor :reach

        # Count of the primary optimization result in this bucket.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :result_count

        # Types of optimization results tracked from external ad platforms
        sig { returns(T.nilable(WhopSDK::ResultLabelKeys::TaggedSymbol)) }
        attr_accessor :result_label_key

        # Advertiser-defined label for the result when `resultLabelKey` is `custom`.
        sig { returns(T.nilable(String)) }
        attr_accessor :result_label_override

        # Charged spend in this bucket in the requested reporting currency — the amount
        # billed including platform fees, not the platform-side net spend.
        sig { returns(Float) }
        attr_accessor :spend

        # Currency of the `spend` value.
        sig { returns(WhopSDK::Currency::TaggedSymbol) }
        attr_accessor :spend_currency

        # The date these stats cover (midnight UTC). For hourly rows, see `statHour` and
        # `bucketStart`.
        sig { returns(Time) }
        attr_accessor :stat_date

        # Hour of the day in the ad account's reporting timezone (0-23). `null` for daily
        # rows.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :stat_hour

        # Per-bucket ad performance for an ad campaign, ad group, or ad. Bucket grain is
        # set by the `ad_report` query's `granularity` argument.
        sig do
          params(
            bucket_start: Time,
            clicks: Integer,
            granularity: WhopSDK::Granularities::OrSymbol,
            impressions: Integer,
            reach: Integer,
            result_count: T.nilable(Integer),
            result_label_key: T.nilable(WhopSDK::ResultLabelKeys::OrSymbol),
            result_label_override: T.nilable(String),
            spend: Float,
            spend_currency: WhopSDK::Currency::OrSymbol,
            stat_date: Time,
            stat_hour: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          # The bucket's start time as a real UTC instant. `(statDate, statHour)` resolved
          # in the ad account's reporting timezone — render this in the viewer's local
          # timezone.
          bucket_start:,
          # Clicks in this bucket.
          clicks:,
          # The bucket size of this row (`daily` or `hourly`).
          granularity:,
          # Impressions in this bucket.
          impressions:,
          # Unique users reached in this bucket. Always `0` for hourly rows (Meta does not
          # return reach at hourly grain).
          reach:,
          # Count of the primary optimization result in this bucket.
          result_count:,
          # Types of optimization results tracked from external ad platforms
          result_label_key:,
          # Advertiser-defined label for the result when `resultLabelKey` is `custom`.
          result_label_override:,
          # Charged spend in this bucket in the requested reporting currency — the amount
          # billed including platform fees, not the platform-side net spend.
          spend:,
          # Currency of the `spend` value.
          spend_currency:,
          # The date these stats cover (midnight UTC). For hourly rows, see `statHour` and
          # `bucketStart`.
          stat_date:,
          # Hour of the day in the ad account's reporting timezone (0-23). `null` for daily
          # rows.
          stat_hour:
        )
        end

        sig do
          override.returns(
            {
              bucket_start: Time,
              clicks: Integer,
              granularity: WhopSDK::Granularities::TaggedSymbol,
              impressions: Integer,
              reach: Integer,
              result_count: T.nilable(Integer),
              result_label_key:
                T.nilable(WhopSDK::ResultLabelKeys::TaggedSymbol),
              result_label_override: T.nilable(String),
              spend: Float,
              spend_currency: WhopSDK::Currency::TaggedSymbol,
              stat_date: Time,
              stat_hour: T.nilable(Integer)
            }
          )
        end
        def to_hash
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
        sig { returns(T.nilable(WhopSDK::ResultLabelKeys::TaggedSymbol)) }
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
            result_label_key: T.nilable(WhopSDK::ResultLabelKeys::OrSymbol),
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
                T.nilable(WhopSDK::ResultLabelKeys::TaggedSymbol),
              result_label_override: T.nilable(String),
              roas: T.nilable(Float),
              spend: Float,
              spend_currency: T.nilable(WhopSDK::Currency::TaggedSymbol)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
