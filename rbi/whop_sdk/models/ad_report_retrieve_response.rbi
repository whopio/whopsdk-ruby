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

      # Per-entity rows over the date range. `null` when the `breakdown` arg on
      # `adReport` is omitted; otherwise contains one row per ad campaign, ad group, or
      # ad inside the requested scope at the requested level.
      sig do
        returns(
          T.nilable(
            T::Array[WhopSDK::Models::AdReportRetrieveResponse::Breakdown]
          )
        )
      end
      attr_accessor :breakdown

      # Per-bucket time series over the date range, ordered ascending by `bucketStart`.
      # `null` when the `granularity` arg on `adReport` is omitted; otherwise contains
      # rows at the requested grain (`daily` or `hourly`).
      sig do
        returns(
          T.nilable(
            T::Array[WhopSDK::Models::AdReportRetrieveResponse::Granularity]
          )
        )
      end
      attr_accessor :granularity

      # Aggregate totals and rates over the date range.
      sig { returns(WhopSDK::Models::AdReportRetrieveResponse::Summary) }
      attr_reader :summary

      sig do
        params(
          summary: WhopSDK::Models::AdReportRetrieveResponse::Summary::OrHash
        ).void
      end
      attr_writer :summary

      # An ads performance report. Always returns a summary. The `granularity` field
      # contains a per-bucket time series when the `granularity` arg is set; the
      # `breakdown` field contains per-entity rows when the `breakdown` arg is set.
      sig do
        params(
          breakdown:
            T.nilable(
              T::Array[
                WhopSDK::Models::AdReportRetrieveResponse::Breakdown::OrHash
              ]
            ),
          granularity:
            T.nilable(
              T::Array[
                WhopSDK::Models::AdReportRetrieveResponse::Granularity::OrHash
              ]
            ),
          summary: WhopSDK::Models::AdReportRetrieveResponse::Summary::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Per-entity rows over the date range. `null` when the `breakdown` arg on
        # `adReport` is omitted; otherwise contains one row per ad campaign, ad group, or
        # ad inside the requested scope at the requested level.
        breakdown:,
        # Per-bucket time series over the date range, ordered ascending by `bucketStart`.
        # `null` when the `granularity` arg on `adReport` is omitted; otherwise contains
        # rows at the requested grain (`daily` or `hourly`).
        granularity:,
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
            granularity:
              T.nilable(
                T::Array[WhopSDK::Models::AdReportRetrieveResponse::Granularity]
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

        # Tag of the entity (ad campaign, ad group, or ad).
        sig { returns(String) }
        attr_accessor :id

        # Per-bucket time series for this entity over the date range, ordered ascending by
        # `bucketStart`. `null` when the `granularity` arg on `adReport` is omitted;
        # otherwise contains rows at the requested grain (`daily` or `hourly`).
        sig do
          returns(
            T.nilable(
              T::Array[
                WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Granularity
              ]
            )
          )
        end
        attr_accessor :granularity

        # The entity level of this row — matches the `breakdown` arg.
        sig do
          returns(
            WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Level::TaggedSymbol
          )
        end
        attr_accessor :level

        # Display name of the entity, when available.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Aggregate totals and rates for this entity over the date range.
        sig do
          returns(WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Summary)
        end
        attr_reader :summary

        sig do
          params(
            summary:
              WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Summary::OrHash
          ).void
        end
        attr_writer :summary

        # Per-entity ad performance row. Returned when the `breakdown` arg on `adReport`
        # is set.
        sig do
          params(
            id: String,
            granularity:
              T.nilable(
                T::Array[
                  WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Granularity::OrHash
                ]
              ),
            level:
              WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Level::OrSymbol,
            name: T.nilable(String),
            summary:
              WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Summary::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Tag of the entity (ad campaign, ad group, or ad).
          id:,
          # Per-bucket time series for this entity over the date range, ordered ascending by
          # `bucketStart`. `null` when the `granularity` arg on `adReport` is omitted;
          # otherwise contains rows at the requested grain (`daily` or `hourly`).
          granularity:,
          # The entity level of this row — matches the `breakdown` arg.
          level:,
          # Display name of the entity, when available.
          name:,
          # Aggregate totals and rates for this entity over the date range.
          summary:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              granularity:
                T.nilable(
                  T::Array[
                    WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Granularity
                  ]
                ),
              level:
                WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Level::TaggedSymbol,
              name: T.nilable(String),
              summary:
                WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Summary
            }
          )
        end
        def to_hash
        end

        class Granularity < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Granularity,
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

          # The bucket size of this row (`hourly`, `daily`, `weekly`, or `monthly`).
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
            # The bucket size of this row (`hourly`, `daily`, `weekly`, or `monthly`).
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

        # The entity level of this row — matches the `breakdown` arg.
        module Level
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Level
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CAMPAIGN =
            T.let(
              :campaign,
              WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Level::TaggedSymbol
            )
          AD_GROUP =
            T.let(
              :ad_group,
              WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Level::TaggedSymbol
            )
          AD =
            T.let(
              :ad,
              WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Level::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Level::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Summary < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Summary,
                WhopSDK::Internal::AnyHash
              )
            end

          # Click-through rate (clicks / impressions).
          sig { returns(Float) }
          attr_accessor :click_through_rate

          # Total clicks over the date range.
          sig { returns(Integer) }
          attr_accessor :clicks

          # Cost per click in the requested reporting currency.
          sig { returns(Float) }
          attr_accessor :cost_per_click

          # Cost per thousand impressions in the requested reporting currency.
          sig { returns(T.nilable(Float)) }
          attr_accessor :cost_per_mille

          # Spend divided by `resultCount`. Null when there are no results.
          sig { returns(T.nilable(Float)) }
          attr_accessor :cost_per_result

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

          # Alias for `purchaseReturnOnAdSpend` — return on ad spend for purchases, as
          # reported by the external ad platform.
          sig { returns(T.nilable(Float)) }
          attr_accessor :return_on_ad_spend

          # Total spend over the date range in the requested reporting currency.
          sig { returns(Float) }
          attr_accessor :spend

          # The available currencies on the platform
          sig { returns(T.nilable(WhopSDK::Currency::TaggedSymbol)) }
          attr_accessor :spend_currency

          # Aggregate totals and rates for this entity over the date range.
          sig do
            params(
              click_through_rate: Float,
              clicks: Integer,
              cost_per_click: Float,
              cost_per_mille: T.nilable(Float),
              cost_per_result: T.nilable(Float),
              frequency: T.nilable(Float),
              impressions: Integer,
              reach: Integer,
              result_count: T.nilable(Integer),
              result_label_key: T.nilable(WhopSDK::ResultLabelKeys::OrSymbol),
              result_label_override: T.nilable(String),
              return_on_ad_spend: T.nilable(Float),
              spend: Float,
              spend_currency: T.nilable(WhopSDK::Currency::OrSymbol)
            ).returns(T.attached_class)
          end
          def self.new(
            # Click-through rate (clicks / impressions).
            click_through_rate:,
            # Total clicks over the date range.
            clicks:,
            # Cost per click in the requested reporting currency.
            cost_per_click:,
            # Cost per thousand impressions in the requested reporting currency.
            cost_per_mille:,
            # Spend divided by `resultCount`. Null when there are no results.
            cost_per_result:,
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
            # Alias for `purchaseReturnOnAdSpend` — return on ad spend for purchases, as
            # reported by the external ad platform.
            return_on_ad_spend:,
            # Total spend over the date range in the requested reporting currency.
            spend:,
            # The available currencies on the platform
            spend_currency:
          )
          end

          sig do
            override.returns(
              {
                click_through_rate: Float,
                clicks: Integer,
                cost_per_click: Float,
                cost_per_mille: T.nilable(Float),
                cost_per_result: T.nilable(Float),
                frequency: T.nilable(Float),
                impressions: Integer,
                reach: Integer,
                result_count: T.nilable(Integer),
                result_label_key:
                  T.nilable(WhopSDK::ResultLabelKeys::TaggedSymbol),
                result_label_override: T.nilable(String),
                return_on_ad_spend: T.nilable(Float),
                spend: Float,
                spend_currency: T.nilable(WhopSDK::Currency::TaggedSymbol)
              }
            )
          end
          def to_hash
          end
        end
      end

      class Granularity < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AdReportRetrieveResponse::Granularity,
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

        # The bucket size of this row (`hourly`, `daily`, `weekly`, or `monthly`).
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
          # The bucket size of this row (`hourly`, `daily`, `weekly`, or `monthly`).
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

        # Click-through rate (clicks / impressions).
        sig { returns(Float) }
        attr_accessor :click_through_rate

        # Total clicks over the date range.
        sig { returns(Integer) }
        attr_accessor :clicks

        # Cost per click in the requested reporting currency.
        sig { returns(Float) }
        attr_accessor :cost_per_click

        # Cost per thousand impressions in the requested reporting currency.
        sig { returns(T.nilable(Float)) }
        attr_accessor :cost_per_mille

        # Spend divided by `resultCount`. Null when there are no results.
        sig { returns(T.nilable(Float)) }
        attr_accessor :cost_per_result

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

        # Alias for `purchaseReturnOnAdSpend` — return on ad spend for purchases, as
        # reported by the external ad platform.
        sig { returns(T.nilable(Float)) }
        attr_accessor :return_on_ad_spend

        # Total spend over the date range in the requested reporting currency.
        sig { returns(Float) }
        attr_accessor :spend

        # The available currencies on the platform
        sig { returns(T.nilable(WhopSDK::Currency::TaggedSymbol)) }
        attr_accessor :spend_currency

        # Aggregate totals and rates over the date range.
        sig do
          params(
            click_through_rate: Float,
            clicks: Integer,
            cost_per_click: Float,
            cost_per_mille: T.nilable(Float),
            cost_per_result: T.nilable(Float),
            frequency: T.nilable(Float),
            impressions: Integer,
            reach: Integer,
            result_count: T.nilable(Integer),
            result_label_key: T.nilable(WhopSDK::ResultLabelKeys::OrSymbol),
            result_label_override: T.nilable(String),
            return_on_ad_spend: T.nilable(Float),
            spend: Float,
            spend_currency: T.nilable(WhopSDK::Currency::OrSymbol)
          ).returns(T.attached_class)
        end
        def self.new(
          # Click-through rate (clicks / impressions).
          click_through_rate:,
          # Total clicks over the date range.
          clicks:,
          # Cost per click in the requested reporting currency.
          cost_per_click:,
          # Cost per thousand impressions in the requested reporting currency.
          cost_per_mille:,
          # Spend divided by `resultCount`. Null when there are no results.
          cost_per_result:,
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
          # Alias for `purchaseReturnOnAdSpend` — return on ad spend for purchases, as
          # reported by the external ad platform.
          return_on_ad_spend:,
          # Total spend over the date range in the requested reporting currency.
          spend:,
          # The available currencies on the platform
          spend_currency:
        )
        end

        sig do
          override.returns(
            {
              click_through_rate: Float,
              clicks: Integer,
              cost_per_click: Float,
              cost_per_mille: T.nilable(Float),
              cost_per_result: T.nilable(Float),
              frequency: T.nilable(Float),
              impressions: Integer,
              reach: Integer,
              result_count: T.nilable(Integer),
              result_label_key:
                T.nilable(WhopSDK::ResultLabelKeys::TaggedSymbol),
              result_label_override: T.nilable(String),
              return_on_ad_spend: T.nilable(Float),
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
