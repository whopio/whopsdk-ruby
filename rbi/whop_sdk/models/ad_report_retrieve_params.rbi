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
      attr_accessor :ad_campaign_ids

      # Scope the report to these ad groups (max 100); stats are summed across them.
      # Mutually exclusive with `companyId`, `adCampaignIds`, and `adIds`.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :ad_group_ids

      # Scope the report to these ads (max 100); stats are summed across them. Mutually
      # exclusive with `companyId`, `adCampaignIds`, and `adGroupIds`.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :ad_ids

      # Entity level to group an ad report by.
      sig do
        returns(T.nilable(WhopSDK::AdReportRetrieveParams::Breakdown::OrSymbol))
      end
      attr_accessor :breakdown

      # The unique identifier of a company. Mutually exclusive with `adCampaignIds`,
      # `adGroupIds`, and `adIds`. Use with `breakdown` to fan out across every
      # campaign, ad group, or ad in the company without paging.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # ISO 4217 currency code to report `spend` in. Defaults to the company's ads
      # reporting currency.
      sig { returns(T.nilable(String)) }
      attr_accessor :currency

      # Bucket size for external ad stat rows.
      sig { returns(T.nilable(WhopSDK::Granularities::OrSymbol)) }
      attr_accessor :granularity

      sig do
        params(
          from: Time,
          to: Time,
          ad_campaign_ids: T.nilable(T::Array[String]),
          ad_group_ids: T.nilable(T::Array[String]),
          ad_ids: T.nilable(T::Array[String]),
          breakdown:
            T.nilable(WhopSDK::AdReportRetrieveParams::Breakdown::OrSymbol),
          company_id: T.nilable(String),
          currency: T.nilable(String),
          granularity: T.nilable(WhopSDK::Granularities::OrSymbol),
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
        # Entity level to group an ad report by.
        breakdown: nil,
        # The unique identifier of a company. Mutually exclusive with `adCampaignIds`,
        # `adGroupIds`, and `adIds`. Use with `breakdown` to fan out across every
        # campaign, ad group, or ad in the company without paging.
        company_id: nil,
        # ISO 4217 currency code to report `spend` in. Defaults to the company's ads
        # reporting currency.
        currency: nil,
        # Bucket size for external ad stat rows.
        granularity: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            from: Time,
            to: Time,
            ad_campaign_ids: T.nilable(T::Array[String]),
            ad_group_ids: T.nilable(T::Array[String]),
            ad_ids: T.nilable(T::Array[String]),
            breakdown:
              T.nilable(WhopSDK::AdReportRetrieveParams::Breakdown::OrSymbol),
            company_id: T.nilable(String),
            currency: T.nilable(String),
            granularity: T.nilable(WhopSDK::Granularities::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Entity level to group an ad report by.
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
