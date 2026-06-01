# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdReports#retrieve
    class AdReportRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute breakdown
      #   Per-entity rows over the date range. `null` when the `breakdown` arg on
      #   `adReport` is omitted; otherwise contains one row per ad campaign, ad group, or
      #   ad inside the requested scope at the requested level.
      #
      #   @return [Array<WhopSDK::Models::AdReportRetrieveResponse::Breakdown>, nil]
      required :breakdown,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::AdReportRetrieveResponse::Breakdown] },
               nil?: true

      # @!attribute granularity
      #   Per-bucket time series over the date range, ordered ascending by `bucketStart`.
      #   `null` when the `granularity` arg on `adReport` is omitted; otherwise contains
      #   rows at the requested grain (`daily` or `hourly`).
      #
      #   @return [Array<WhopSDK::Models::AdReportRetrieveResponse::Granularity>, nil]
      required :granularity,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::AdReportRetrieveResponse::Granularity] },
               nil?: true

      # @!attribute summary
      #   Aggregate totals and rates over the date range.
      #
      #   @return [WhopSDK::Models::AdReportRetrieveResponse::Summary]
      required :summary, -> { WhopSDK::Models::AdReportRetrieveResponse::Summary }

      # @!method initialize(breakdown:, granularity:, summary:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdReportRetrieveResponse} for more details.
      #
      #   An ads performance report. Always returns a summary. The `granularity` field
      #   contains a per-bucket time series when the `granularity` arg is set; the
      #   `breakdown` field contains per-entity rows when the `breakdown` arg is set.
      #
      #   @param breakdown [Array<WhopSDK::Models::AdReportRetrieveResponse::Breakdown>, nil] Per-entity rows over the date range. `null` when the `breakdown` arg on `adRepor
      #
      #   @param granularity [Array<WhopSDK::Models::AdReportRetrieveResponse::Granularity>, nil] Per-bucket time series over the date range, ordered ascending by `bucketStart`.
      #
      #   @param summary [WhopSDK::Models::AdReportRetrieveResponse::Summary] Aggregate totals and rates over the date range.

      class Breakdown < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Tag of the entity (ad campaign, ad group, or ad).
        #
        #   @return [String]
        required :id, String

        # @!attribute granularity
        #   Per-bucket time series for this entity over the date range, ordered ascending by
        #   `bucketStart`. `null` when the `granularity` arg on `adReport` is omitted;
        #   otherwise contains rows at the requested grain (`daily` or `hourly`).
        #
        #   @return [Array<WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Granularity>, nil]
        required :granularity,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Granularity] },
                 nil?: true

        # @!attribute level
        #   The entity level of this row — matches the `breakdown` arg.
        #
        #   @return [Symbol, WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Level]
        required :level, enum: -> { WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Level }

        # @!attribute name
        #   Display name of the entity, when available.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute summary
        #   Aggregate totals and rates for this entity over the date range.
        #
        #   @return [WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Summary]
        required :summary, -> { WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Summary }

        # @!method initialize(id:, granularity:, level:, name:, summary:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AdReportRetrieveResponse::Breakdown} for more details.
        #
        #   Per-entity ad performance row. Returned when the `breakdown` arg on `adReport`
        #   is set.
        #
        #   @param id [String] Tag of the entity (ad campaign, ad group, or ad).
        #
        #   @param granularity [Array<WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Granularity>, nil] Per-bucket time series for this entity over the date range, ordered ascending by
        #
        #   @param level [Symbol, WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Level] The entity level of this row — matches the `breakdown` arg.
        #
        #   @param name [String, nil] Display name of the entity, when available.
        #
        #   @param summary [WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Summary] Aggregate totals and rates for this entity over the date range.

        class Granularity < WhopSDK::Internal::Type::BaseModel
          # @!attribute bucket_start
          #   The bucket's start time as a real UTC instant. `(statDate, statHour)` resolved
          #   in the ad account's reporting timezone — render this in the viewer's local
          #   timezone.
          #
          #   @return [Time]
          required :bucket_start, Time

          # @!attribute clicks
          #   Clicks in this bucket.
          #
          #   @return [Integer]
          required :clicks, Integer

          # @!attribute granularity
          #   The bucket size of this row (`daily` or `hourly`).
          #
          #   @return [Symbol, WhopSDK::Models::Granularities]
          required :granularity, enum: -> { WhopSDK::Granularities }

          # @!attribute impressions
          #   Impressions in this bucket.
          #
          #   @return [Integer]
          required :impressions, Integer

          # @!attribute reach
          #   Unique users reached in this bucket. Always `0` for hourly rows (Meta does not
          #   return reach at hourly grain).
          #
          #   @return [Integer]
          required :reach, Integer

          # @!attribute result_count
          #   Count of the primary optimization result in this bucket.
          #
          #   @return [Integer, nil]
          required :result_count, Integer, nil?: true

          # @!attribute result_label_key
          #   Types of optimization results tracked from external ad platforms
          #
          #   @return [Symbol, WhopSDK::Models::ResultLabelKeys, nil]
          required :result_label_key, enum: -> { WhopSDK::ResultLabelKeys }, nil?: true

          # @!attribute result_label_override
          #   Advertiser-defined label for the result when `resultLabelKey` is `custom`.
          #
          #   @return [String, nil]
          required :result_label_override, String, nil?: true

          # @!attribute spend
          #   Charged spend in this bucket in the requested reporting currency — the amount
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
          #   The date these stats cover (midnight UTC). For hourly rows, see `statHour` and
          #   `bucketStart`.
          #
          #   @return [Time]
          required :stat_date, Time

          # @!attribute stat_hour
          #   Hour of the day in the ad account's reporting timezone (0-23). `null` for daily
          #   rows.
          #
          #   @return [Integer, nil]
          required :stat_hour, Integer, nil?: true

          # @!method initialize(bucket_start:, clicks:, granularity:, impressions:, reach:, result_count:, result_label_key:, result_label_override:, spend:, spend_currency:, stat_date:, stat_hour:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Granularity} for more
          #   details.
          #
          #   Per-bucket ad performance for an ad campaign, ad group, or ad. Bucket grain is
          #   set by the `ad_report` query's `granularity` argument.
          #
          #   @param bucket_start [Time] The bucket's start time as a real UTC instant. `(statDate, statHour)` resolved i
          #
          #   @param clicks [Integer] Clicks in this bucket.
          #
          #   @param granularity [Symbol, WhopSDK::Models::Granularities] The bucket size of this row (`daily` or `hourly`).
          #
          #   @param impressions [Integer] Impressions in this bucket.
          #
          #   @param reach [Integer] Unique users reached in this bucket. Always `0` for hourly rows (Meta does not r
          #
          #   @param result_count [Integer, nil] Count of the primary optimization result in this bucket.
          #
          #   @param result_label_key [Symbol, WhopSDK::Models::ResultLabelKeys, nil] Types of optimization results tracked from external ad platforms
          #
          #   @param result_label_override [String, nil] Advertiser-defined label for the result when `resultLabelKey` is `custom`.
          #
          #   @param spend [Float] Charged spend in this bucket in the requested reporting currency — the amount bi
          #
          #   @param spend_currency [Symbol, WhopSDK::Models::Currency] Currency of the `spend` value.
          #
          #   @param stat_date [Time] The date these stats cover (midnight UTC). For hourly rows, see `statHour` and `
          #
          #   @param stat_hour [Integer, nil] Hour of the day in the ad account's reporting timezone (0-23). `null` for daily
        end

        # The entity level of this row — matches the `breakdown` arg.
        #
        # @see WhopSDK::Models::AdReportRetrieveResponse::Breakdown#level
        module Level
          extend WhopSDK::Internal::Type::Enum

          CAMPAIGN = :campaign
          AD_GROUP = :ad_group
          AD = :ad

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::AdReportRetrieveResponse::Breakdown#summary
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
          #   @return [Symbol, WhopSDK::Models::ResultLabelKeys, nil]
          required :result_label_key, enum: -> { WhopSDK::ResultLabelKeys }, nil?: true

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
          #   {WhopSDK::Models::AdReportRetrieveResponse::Breakdown::Summary} for more
          #   details.
          #
          #   Aggregate totals and rates for this entity over the date range.
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
          #   @param result_label_key [Symbol, WhopSDK::Models::ResultLabelKeys, nil] Types of optimization results tracked from external ad platforms
          #
          #   @param result_label_override [String, nil] Advertiser-defined label for the result when `resultLabelKey` is `custom`.
          #
          #   @param roas [Float, nil] Alias for `purchaseRoas` — return on ad spend for purchases, as reported by the
          #
          #   @param spend [Float] Total spend over the date range in the requested reporting currency.
          #
          #   @param spend_currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
        end
      end

      class Granularity < WhopSDK::Internal::Type::BaseModel
        # @!attribute bucket_start
        #   The bucket's start time as a real UTC instant. `(statDate, statHour)` resolved
        #   in the ad account's reporting timezone — render this in the viewer's local
        #   timezone.
        #
        #   @return [Time]
        required :bucket_start, Time

        # @!attribute clicks
        #   Clicks in this bucket.
        #
        #   @return [Integer]
        required :clicks, Integer

        # @!attribute granularity
        #   The bucket size of this row (`daily` or `hourly`).
        #
        #   @return [Symbol, WhopSDK::Models::Granularities]
        required :granularity, enum: -> { WhopSDK::Granularities }

        # @!attribute impressions
        #   Impressions in this bucket.
        #
        #   @return [Integer]
        required :impressions, Integer

        # @!attribute reach
        #   Unique users reached in this bucket. Always `0` for hourly rows (Meta does not
        #   return reach at hourly grain).
        #
        #   @return [Integer]
        required :reach, Integer

        # @!attribute result_count
        #   Count of the primary optimization result in this bucket.
        #
        #   @return [Integer, nil]
        required :result_count, Integer, nil?: true

        # @!attribute result_label_key
        #   Types of optimization results tracked from external ad platforms
        #
        #   @return [Symbol, WhopSDK::Models::ResultLabelKeys, nil]
        required :result_label_key, enum: -> { WhopSDK::ResultLabelKeys }, nil?: true

        # @!attribute result_label_override
        #   Advertiser-defined label for the result when `resultLabelKey` is `custom`.
        #
        #   @return [String, nil]
        required :result_label_override, String, nil?: true

        # @!attribute spend
        #   Charged spend in this bucket in the requested reporting currency — the amount
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
        #   The date these stats cover (midnight UTC). For hourly rows, see `statHour` and
        #   `bucketStart`.
        #
        #   @return [Time]
        required :stat_date, Time

        # @!attribute stat_hour
        #   Hour of the day in the ad account's reporting timezone (0-23). `null` for daily
        #   rows.
        #
        #   @return [Integer, nil]
        required :stat_hour, Integer, nil?: true

        # @!method initialize(bucket_start:, clicks:, granularity:, impressions:, reach:, result_count:, result_label_key:, result_label_override:, spend:, spend_currency:, stat_date:, stat_hour:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AdReportRetrieveResponse::Granularity} for more details.
        #
        #   Per-bucket ad performance for an ad campaign, ad group, or ad. Bucket grain is
        #   set by the `ad_report` query's `granularity` argument.
        #
        #   @param bucket_start [Time] The bucket's start time as a real UTC instant. `(statDate, statHour)` resolved i
        #
        #   @param clicks [Integer] Clicks in this bucket.
        #
        #   @param granularity [Symbol, WhopSDK::Models::Granularities] The bucket size of this row (`daily` or `hourly`).
        #
        #   @param impressions [Integer] Impressions in this bucket.
        #
        #   @param reach [Integer] Unique users reached in this bucket. Always `0` for hourly rows (Meta does not r
        #
        #   @param result_count [Integer, nil] Count of the primary optimization result in this bucket.
        #
        #   @param result_label_key [Symbol, WhopSDK::Models::ResultLabelKeys, nil] Types of optimization results tracked from external ad platforms
        #
        #   @param result_label_override [String, nil] Advertiser-defined label for the result when `resultLabelKey` is `custom`.
        #
        #   @param spend [Float] Charged spend in this bucket in the requested reporting currency — the amount bi
        #
        #   @param spend_currency [Symbol, WhopSDK::Models::Currency] Currency of the `spend` value.
        #
        #   @param stat_date [Time] The date these stats cover (midnight UTC). For hourly rows, see `statHour` and `
        #
        #   @param stat_hour [Integer, nil] Hour of the day in the ad account's reporting timezone (0-23). `null` for daily
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
        #   @return [Symbol, WhopSDK::Models::ResultLabelKeys, nil]
        required :result_label_key, enum: -> { WhopSDK::ResultLabelKeys }, nil?: true

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
        #   @param result_label_key [Symbol, WhopSDK::Models::ResultLabelKeys, nil] Types of optimization results tracked from external ad platforms
        #
        #   @param result_label_override [String, nil] Advertiser-defined label for the result when `resultLabelKey` is `custom`.
        #
        #   @param roas [Float, nil] Alias for `purchaseRoas` — return on ad spend for purchases, as reported by the
        #
        #   @param spend [Float] Total spend over the date range in the requested reporting currency.
        #
        #   @param spend_currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      end
    end
  end
end
