# typed: strong

module WhopSDK
  module Models
    class StatRetrieveParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::StatRetrieveParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :metric

      # Start of the date range (YYYY-MM-DD).
      sig { returns(Date) }
      attr_accessor :from

      # End of the date range (YYYY-MM-DD).
      sig { returns(Date) }
      attr_accessor :to

      # Filter to a single access level. Pair with breakdown_by=access_level. Available
      # on metrics that list access_level.
      sig { returns(T.nilable(String)) }
      attr_reader :access_level

      sig { params(access_level: String).void }
      attr_writer :access_level

      # The account this query concerns, for example biz_AbC123.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # Ad campaign ids (adcamp\_...) to scope the report to; stats are summed across
      # them. Available on metrics that list ad_campaign_ids.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :ad_campaign_ids

      sig { params(ad_campaign_ids: T::Array[String]).void }
      attr_writer :ad_campaign_ids

      # Ad group ids (adgrp\_...) to scope the report to; stats are summed across them.
      # Available on metrics that list ad_group_ids.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :ad_group_ids

      sig { params(ad_group_ids: T::Array[String]).void }
      attr_writer :ad_group_ids

      # Ad ids (ad\_...) to scope the report to; stats are summed across them. Available
      # on metrics that list ad_ids.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :ad_ids

      sig { params(ad_ids: T::Array[String]).void }
      attr_writer :ad_ids

      # Split the metric out by one of its properties — each point gets a breakdown
      # array. For example breakdown_by=currency returns an entry for usd, an entry for
      # eur, and so on.
      sig { returns(T.nilable(String)) }
      attr_reader :breakdown_by

      sig { params(breakdown_by: String).void }
      attr_writer :breakdown_by

      # Filter to a single card brand, for example visa. A refinement of
      # payment_method=card. Available on metrics that list card_network.
      sig { returns(T.nilable(String)) }
      attr_reader :card_network

      sig { params(card_network: String).void }
      attr_writer :card_network

      # Filter to a single balance-activity category, for example payments. Pair with
      # breakdown_by=category to split the activity. Available on metrics that list
      # category.
      sig { returns(T.nilable(String)) }
      attr_reader :category

      sig { params(category: String).void }
      attr_writer :category

      # Display currency for money metrics — every amount is converted into this ISO
      # currency using the exchange rate on each period's date. Defaults to usd. For the
      # ads metrics (ad_spend, ad_report), pass the account's ads reporting currency to
      # match the ad entity endpoints. Ignored when you filter or break down by currency
      # (those report the original transaction currency, unconverted).
      sig { returns(T.nilable(String)) }
      attr_reader :convert_to

      sig { params(convert_to: String).void }
      attr_writer :convert_to

      # Filter to transactions made in this original ISO currency, for example eur —
      # reported in that currency, not converted. Pair with breakdown_by=currency to
      # split a metric by currency. Available on metrics that list currency.
      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      # Filter to a single fee type. Pair with breakdown_by=fee_type to split fees by
      # type. Available on metrics that list fee_type.
      sig { returns(T.nilable(String)) }
      attr_reader :fee_type

      sig { params(fee_type: String).void }
      attr_writer :fee_type

      # How wide each point is. Defaults to day. Snapshot metrics are day-only.
      sig do
        returns(T.nilable(WhopSDK::StatRetrieveParams::Interval::OrSymbol))
      end
      attr_reader :interval

      sig do
        params(interval: WhopSDK::StatRetrieveParams::Interval::OrSymbol).void
      end
      attr_writer :interval

      # Filter to a single most-recent member action. Pair with
      # breakdown_by=most_recent_action. Available on metrics that list
      # most_recent_action.
      sig { returns(T.nilable(String)) }
      attr_reader :most_recent_action

      sig { params(most_recent_action: String).void }
      attr_writer :most_recent_action

      # Filter to a single payment method, for example card or crypto. Available on
      # metrics that list payment_method.
      sig { returns(T.nilable(String)) }
      attr_reader :payment_method

      sig { params(payment_method: String).void }
      attr_writer :payment_method

      # Filter to a single product (access pass id), for example prod_AbC123. Pair with
      # breakdown_by=product. Available on metrics that list product.
      sig { returns(T.nilable(String)) }
      attr_reader :product

      sig { params(product: String).void }
      attr_writer :product

      # Filter a referral metric to the businesses attributed to one person you
      # referred, for example user_AbC123. Available on metrics that list
      # referred_user_id.
      sig { returns(T.nilable(String)) }
      attr_reader :referred_user_id

      sig { params(referred_user_id: String).void }
      attr_writer :referred_user_id

      # Filter to a single wallet-balance segment, for example available. Pair with
      # breakdown_by=segment to split the balance. Available on metrics that list
      # segment.
      sig { returns(T.nilable(String)) }
      attr_reader :segment

      sig { params(segment: String).void }
      attr_writer :segment

      # Trailing window for snapshot metrics. Only accepted by snapshot metrics (each
      # lists its allowed windows in the catalog); defaults to the metric's first
      # supported window. Only 30d today.
      sig do
        returns(
          T.nilable(WhopSDK::StatRetrieveParams::SnapshotWindow::OrSymbol)
        )
      end
      attr_reader :snapshot_window

      sig do
        params(
          snapshot_window: WhopSDK::StatRetrieveParams::SnapshotWindow::OrSymbol
        ).void
      end
      attr_writer :snapshot_window

      # Filter to a single GMV source, for example payments. Pair with
      # breakdown_by=source to split by source. Available on metrics that list source.
      sig { returns(T.nilable(String)) }
      attr_reader :source

      sig { params(source: String).void }
      attr_writer :source

      # Filter to a single membership status. Pair with breakdown_by=status. Available
      # on metrics that list status.
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      # IANA time zone to bucket the series in, for example America/New_York. Defaults
      # to UTC. Not accepted by snapshot metrics, which are UTC only.
      sig { returns(T.nilable(String)) }
      attr_reader :time_zone

      sig { params(time_zone: String).void }
      attr_writer :time_zone

      sig do
        params(
          metric: String,
          from: Date,
          to: Date,
          access_level: String,
          account_id: String,
          ad_campaign_ids: T::Array[String],
          ad_group_ids: T::Array[String],
          ad_ids: T::Array[String],
          breakdown_by: String,
          card_network: String,
          category: String,
          convert_to: String,
          currency: String,
          fee_type: String,
          interval: WhopSDK::StatRetrieveParams::Interval::OrSymbol,
          most_recent_action: String,
          payment_method: String,
          product: String,
          referred_user_id: String,
          segment: String,
          snapshot_window:
            WhopSDK::StatRetrieveParams::SnapshotWindow::OrSymbol,
          source: String,
          status: String,
          time_zone: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        metric:,
        # Start of the date range (YYYY-MM-DD).
        from:,
        # End of the date range (YYYY-MM-DD).
        to:,
        # Filter to a single access level. Pair with breakdown_by=access_level. Available
        # on metrics that list access_level.
        access_level: nil,
        # The account this query concerns, for example biz_AbC123.
        account_id: nil,
        # Ad campaign ids (adcamp\_...) to scope the report to; stats are summed across
        # them. Available on metrics that list ad_campaign_ids.
        ad_campaign_ids: nil,
        # Ad group ids (adgrp\_...) to scope the report to; stats are summed across them.
        # Available on metrics that list ad_group_ids.
        ad_group_ids: nil,
        # Ad ids (ad\_...) to scope the report to; stats are summed across them. Available
        # on metrics that list ad_ids.
        ad_ids: nil,
        # Split the metric out by one of its properties — each point gets a breakdown
        # array. For example breakdown_by=currency returns an entry for usd, an entry for
        # eur, and so on.
        breakdown_by: nil,
        # Filter to a single card brand, for example visa. A refinement of
        # payment_method=card. Available on metrics that list card_network.
        card_network: nil,
        # Filter to a single balance-activity category, for example payments. Pair with
        # breakdown_by=category to split the activity. Available on metrics that list
        # category.
        category: nil,
        # Display currency for money metrics — every amount is converted into this ISO
        # currency using the exchange rate on each period's date. Defaults to usd. For the
        # ads metrics (ad_spend, ad_report), pass the account's ads reporting currency to
        # match the ad entity endpoints. Ignored when you filter or break down by currency
        # (those report the original transaction currency, unconverted).
        convert_to: nil,
        # Filter to transactions made in this original ISO currency, for example eur —
        # reported in that currency, not converted. Pair with breakdown_by=currency to
        # split a metric by currency. Available on metrics that list currency.
        currency: nil,
        # Filter to a single fee type. Pair with breakdown_by=fee_type to split fees by
        # type. Available on metrics that list fee_type.
        fee_type: nil,
        # How wide each point is. Defaults to day. Snapshot metrics are day-only.
        interval: nil,
        # Filter to a single most-recent member action. Pair with
        # breakdown_by=most_recent_action. Available on metrics that list
        # most_recent_action.
        most_recent_action: nil,
        # Filter to a single payment method, for example card or crypto. Available on
        # metrics that list payment_method.
        payment_method: nil,
        # Filter to a single product (access pass id), for example prod_AbC123. Pair with
        # breakdown_by=product. Available on metrics that list product.
        product: nil,
        # Filter a referral metric to the businesses attributed to one person you
        # referred, for example user_AbC123. Available on metrics that list
        # referred_user_id.
        referred_user_id: nil,
        # Filter to a single wallet-balance segment, for example available. Pair with
        # breakdown_by=segment to split the balance. Available on metrics that list
        # segment.
        segment: nil,
        # Trailing window for snapshot metrics. Only accepted by snapshot metrics (each
        # lists its allowed windows in the catalog); defaults to the metric's first
        # supported window. Only 30d today.
        snapshot_window: nil,
        # Filter to a single GMV source, for example payments. Pair with
        # breakdown_by=source to split by source. Available on metrics that list source.
        source: nil,
        # Filter to a single membership status. Pair with breakdown_by=status. Available
        # on metrics that list status.
        status: nil,
        # IANA time zone to bucket the series in, for example America/New_York. Defaults
        # to UTC. Not accepted by snapshot metrics, which are UTC only.
        time_zone: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            metric: String,
            from: Date,
            to: Date,
            access_level: String,
            account_id: String,
            ad_campaign_ids: T::Array[String],
            ad_group_ids: T::Array[String],
            ad_ids: T::Array[String],
            breakdown_by: String,
            card_network: String,
            category: String,
            convert_to: String,
            currency: String,
            fee_type: String,
            interval: WhopSDK::StatRetrieveParams::Interval::OrSymbol,
            most_recent_action: String,
            payment_method: String,
            product: String,
            referred_user_id: String,
            segment: String,
            snapshot_window:
              WhopSDK::StatRetrieveParams::SnapshotWindow::OrSymbol,
            source: String,
            status: String,
            time_zone: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # How wide each point is. Defaults to day. Snapshot metrics are day-only.
      module Interval
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::StatRetrieveParams::Interval) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HOUR = T.let(:hour, WhopSDK::StatRetrieveParams::Interval::TaggedSymbol)
        DAY = T.let(:day, WhopSDK::StatRetrieveParams::Interval::TaggedSymbol)
        WEEK = T.let(:week, WhopSDK::StatRetrieveParams::Interval::TaggedSymbol)
        MONTH =
          T.let(:month, WhopSDK::StatRetrieveParams::Interval::TaggedSymbol)
        YEAR = T.let(:year, WhopSDK::StatRetrieveParams::Interval::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::StatRetrieveParams::Interval::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Trailing window for snapshot metrics. Only accepted by snapshot metrics (each
      # lists its allowed windows in the catalog); defaults to the metric's first
      # supported window. Only 30d today.
      module SnapshotWindow
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::StatRetrieveParams::SnapshotWindow)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SNAPSHOT_WINDOW_30D =
          T.let(
            :"30d",
            WhopSDK::StatRetrieveParams::SnapshotWindow::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::StatRetrieveParams::SnapshotWindow::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
