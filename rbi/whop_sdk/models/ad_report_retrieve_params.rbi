# typed: strong

module WhopSDK
  module Models
    class AdReportRetrieveParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AdReportRetrieveParams, WhopSDK::Internal::AnyHash)
        end

      # Inclusive start of the reporting window.
      sig { returns(Time) }
      attr_accessor :from

      # Inclusive end of the reporting window.
      sig { returns(Time) }
      attr_accessor :to

      # Scope the report to these ad campaigns (max 100); stats are summed across them.
      # Mutually exclusive with `companyId`, `adGroupIds`, and `adIds`.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :ad_campaign_ids

      sig { params(ad_campaign_ids: T::Array[String]).void }
      attr_writer :ad_campaign_ids

      # Scope the report to these ad groups (max 100); stats are summed across them.
      # Mutually exclusive with `companyId`, `adCampaignIds`, and `adIds`.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :ad_group_ids

      sig { params(ad_group_ids: T::Array[String]).void }
      attr_writer :ad_group_ids

      # Scope the report to these ads (max 100); stats are summed across them. Mutually
      # exclusive with `companyId`, `adCampaignIds`, and `adGroupIds`.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :ad_ids

      sig { params(ad_ids: T::Array[String]).void }
      attr_writer :ad_ids

      # Entity level to break down the report by. When set, `breakdown` on the response
      # contains one row per entity at the requested level inside the requested scope.
      # `ad` returns one row per ad, `ad_group` per ad group, `campaign` per ad
      # campaign. The breakdown level must be at or below the scope (e.g. `adId` cannot
      # be broken down by `campaign`). The `summary` totals are unaffected.
      sig do
        returns(T.nilable(WhopSDK::AdReportRetrieveParams::Breakdown::OrSymbol))
      end
      attr_reader :breakdown

      sig do
        params(
          breakdown: WhopSDK::AdReportRetrieveParams::Breakdown::OrSymbol
        ).void
      end
      attr_writer :breakdown

      # The unique identifier of a company. Mutually exclusive with `adCampaignIds`,
      # `adGroupIds`, and `adIds`. Use with `breakdown` to fan out across every
      # campaign, ad group, or ad in the company without paging.
      sig { returns(T.nilable(String)) }
      attr_reader :company_id

      sig { params(company_id: String).void }
      attr_writer :company_id

      # ISO 4217 currency code to report `spend` in. Defaults to the company's ads
      # reporting currency.
      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      # Bucket grain for the per-bucket `granularity` time series. Omit (`null`) for
      # summary-only. `hourly`/`daily` max 90 days, `weekly` max 366 days, `monthly` max
      # 4 years. The `summary` totals are unaffected. With `breakdown`, each row gets
      # its own series at the same grain.
      sig { returns(T.nilable(WhopSDK::Granularities::OrSymbol)) }
      attr_reader :granularity

      sig { params(granularity: WhopSDK::Granularities::OrSymbol).void }
      attr_writer :granularity

      sig do
        params(
          from: Time,
          to: Time,
          ad_campaign_ids: T::Array[String],
          ad_group_ids: T::Array[String],
          ad_ids: T::Array[String],
          breakdown: WhopSDK::AdReportRetrieveParams::Breakdown::OrSymbol,
          company_id: String,
          currency: String,
          granularity: WhopSDK::Granularities::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Inclusive start of the reporting window.
        from:,
        # Inclusive end of the reporting window.
        to:,
        # Scope the report to these ad campaigns (max 100); stats are summed across them.
        # Mutually exclusive with `companyId`, `adGroupIds`, and `adIds`.
        ad_campaign_ids: nil,
        # Scope the report to these ad groups (max 100); stats are summed across them.
        # Mutually exclusive with `companyId`, `adCampaignIds`, and `adIds`.
        ad_group_ids: nil,
        # Scope the report to these ads (max 100); stats are summed across them. Mutually
        # exclusive with `companyId`, `adCampaignIds`, and `adGroupIds`.
        ad_ids: nil,
        # Entity level to break down the report by. When set, `breakdown` on the response
        # contains one row per entity at the requested level inside the requested scope.
        # `ad` returns one row per ad, `ad_group` per ad group, `campaign` per ad
        # campaign. The breakdown level must be at or below the scope (e.g. `adId` cannot
        # be broken down by `campaign`). The `summary` totals are unaffected.
        breakdown: nil,
        # The unique identifier of a company. Mutually exclusive with `adCampaignIds`,
        # `adGroupIds`, and `adIds`. Use with `breakdown` to fan out across every
        # campaign, ad group, or ad in the company without paging.
        company_id: nil,
        # ISO 4217 currency code to report `spend` in. Defaults to the company's ads
        # reporting currency.
        currency: nil,
        # Bucket grain for the per-bucket `granularity` time series. Omit (`null`) for
        # summary-only. `hourly`/`daily` max 90 days, `weekly` max 366 days, `monthly` max
        # 4 years. The `summary` totals are unaffected. With `breakdown`, each row gets
        # its own series at the same grain.
        granularity: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            from: Time,
            to: Time,
            ad_campaign_ids: T::Array[String],
            ad_group_ids: T::Array[String],
            ad_ids: T::Array[String],
            breakdown: WhopSDK::AdReportRetrieveParams::Breakdown::OrSymbol,
            company_id: String,
            currency: String,
            granularity: WhopSDK::Granularities::OrSymbol,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Entity level to break down the report by. When set, `breakdown` on the response
      # contains one row per entity at the requested level inside the requested scope.
      # `ad` returns one row per ad, `ad_group` per ad group, `campaign` per ad
      # campaign. The breakdown level must be at or below the scope (e.g. `adId` cannot
      # be broken down by `campaign`). The `summary` totals are unaffected.
      module Breakdown
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdReportRetrieveParams::Breakdown)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CAMPAIGN =
          T.let(
            :campaign,
            WhopSDK::AdReportRetrieveParams::Breakdown::TaggedSymbol
          )
        AD_GROUP =
          T.let(
            :ad_group,
            WhopSDK::AdReportRetrieveParams::Breakdown::TaggedSymbol
          )
        AD =
          T.let(:ad, WhopSDK::AdReportRetrieveParams::Breakdown::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AdReportRetrieveParams::Breakdown::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
