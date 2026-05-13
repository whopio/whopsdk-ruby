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

      # The unique identifier of an ad campaign. Mutually exclusive with `adGroupId` and
      # `adId`.
      sig { returns(T.nilable(String)) }
      attr_accessor :ad_campaign_id

      # The unique identifier of an ad group. Mutually exclusive with `adCampaignId` and
      # `adId`.
      sig { returns(T.nilable(String)) }
      attr_accessor :ad_group_id

      # The unique identifier of an ad. Mutually exclusive with `adCampaignId` and
      # `adGroupId`.
      sig { returns(T.nilable(String)) }
      attr_accessor :ad_id

      # Bucket size for external ad stat rows.
      sig do
        returns(T.nilable(WhopSDK::AdReportRetrieveParams::Breakdown::OrSymbol))
      end
      attr_accessor :breakdown

      # ISO 4217 currency code to report `spend` in. Defaults to the company's ads
      # reporting currency.
      sig { returns(T.nilable(String)) }
      attr_accessor :currency

      sig do
        params(
          from: Time,
          to: Time,
          ad_campaign_id: T.nilable(String),
          ad_group_id: T.nilable(String),
          ad_id: T.nilable(String),
          breakdown:
            T.nilable(WhopSDK::AdReportRetrieveParams::Breakdown::OrSymbol),
          currency: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Inclusive start of the reporting window.
        from:,
        # Inclusive end of the reporting window.
        to:,
        # The unique identifier of an ad campaign. Mutually exclusive with `adGroupId` and
        # `adId`.
        ad_campaign_id: nil,
        # The unique identifier of an ad group. Mutually exclusive with `adCampaignId` and
        # `adId`.
        ad_group_id: nil,
        # The unique identifier of an ad. Mutually exclusive with `adCampaignId` and
        # `adGroupId`.
        ad_id: nil,
        # Bucket size for external ad stat rows.
        breakdown: nil,
        # ISO 4217 currency code to report `spend` in. Defaults to the company's ads
        # reporting currency.
        currency: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            from: Time,
            to: Time,
            ad_campaign_id: T.nilable(String),
            ad_group_id: T.nilable(String),
            ad_id: T.nilable(String),
            breakdown:
              T.nilable(WhopSDK::AdReportRetrieveParams::Breakdown::OrSymbol),
            currency: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Bucket size for external ad stat rows.
      module Breakdown
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdReportRetrieveParams::Breakdown)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAILY =
          T.let(
            :daily,
            WhopSDK::AdReportRetrieveParams::Breakdown::TaggedSymbol
          )
        HOURLY =
          T.let(
            :hourly,
            WhopSDK::AdReportRetrieveParams::Breakdown::TaggedSymbol
          )

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
