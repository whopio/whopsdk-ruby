# typed: strong

module WhopSDK
  module Models
    class AdGroupListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AdGroupListParams, WhopSDK::Internal::AnyHash)
        end

      # Account whose ad groups to list. Defaults to the authenticated account.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # Filter to ad groups in this campaign.
      sig { returns(T.nilable(String)) }
      attr_reader :ad_campaign_id

      sig { params(ad_campaign_id: String).void }
      attr_writer :ad_campaign_id

      # Cursor to fetch the page after (from page_info.end_cursor).
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Cursor to fetch the page before (from page_info.start_cursor).
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Only return ad groups created after this timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_after

      sig { params(created_after: String).void }
      attr_writer :created_after

      # Only return ad groups created before this timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_before

      sig { params(created_before: String).void }
      attr_writer :created_before

      # The sort direction. Defaults to desc.
      sig do
        returns(T.nilable(WhopSDK::AdGroupListParams::Direction::OrSymbol))
      end
      attr_reader :direction

      sig do
        params(direction: WhopSDK::AdGroupListParams::Direction::OrSymbol).void
      end
      attr_writer :direction

      # The number of ad groups to return.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # The number of ad groups to return from the end of the range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # The field to sort by. Defaults to created_at. Stat columns (spend, impressions,
      # …) rank over the stats_from/stats_to window across the whole list, not just the
      # current page. results, cost_per_result and return_on_ad_spend rank by the same
      # Whop pixel-attributed values the response reports.
      sig { returns(T.nilable(WhopSDK::AdGroupListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: WhopSDK::AdGroupListParams::Order::OrSymbol).void }
      attr_writer :order

      # Filter ad groups by a title or ID substring.
      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      # Start of the stats window. Defaults to all-time.
      sig { returns(T.nilable(String)) }
      attr_reader :stats_from

      sig { params(stats_from: String).void }
      attr_writer :stats_from

      # End of the stats window. Defaults to now.
      sig { returns(T.nilable(String)) }
      attr_reader :stats_to

      sig { params(stats_to: String).void }
      attr_writer :stats_to

      # Filter to a status (active, paused, in_review, rejected).
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      # IANA timezone (e.g. America/New_York) the stats window is interpreted in. Bare
      # stats_from/stats_to dates resolve to day boundaries on this clock. Defaults to
      # UTC.
      sig { returns(T.nilable(String)) }
      attr_reader :time_zone

      sig { params(time_zone: String).void }
      attr_writer :time_zone

      sig do
        params(
          account_id: String,
          ad_campaign_id: String,
          after: String,
          before: String,
          created_after: String,
          created_before: String,
          direction: WhopSDK::AdGroupListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::AdGroupListParams::Order::OrSymbol,
          query: String,
          stats_from: String,
          stats_to: String,
          status: String,
          time_zone: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Account whose ad groups to list. Defaults to the authenticated account.
        account_id: nil,
        # Filter to ad groups in this campaign.
        ad_campaign_id: nil,
        # Cursor to fetch the page after (from page_info.end_cursor).
        after: nil,
        # Cursor to fetch the page before (from page_info.start_cursor).
        before: nil,
        # Only return ad groups created after this timestamp.
        created_after: nil,
        # Only return ad groups created before this timestamp.
        created_before: nil,
        # The sort direction. Defaults to desc.
        direction: nil,
        # The number of ad groups to return.
        first: nil,
        # The number of ad groups to return from the end of the range.
        last: nil,
        # The field to sort by. Defaults to created_at. Stat columns (spend, impressions,
        # …) rank over the stats_from/stats_to window across the whole list, not just the
        # current page. results, cost_per_result and return_on_ad_spend rank by the same
        # Whop pixel-attributed values the response reports.
        order: nil,
        # Filter ad groups by a title or ID substring.
        query: nil,
        # Start of the stats window. Defaults to all-time.
        stats_from: nil,
        # End of the stats window. Defaults to now.
        stats_to: nil,
        # Filter to a status (active, paused, in_review, rejected).
        status: nil,
        # IANA timezone (e.g. America/New_York) the stats window is interpreted in. Bare
        # stats_from/stats_to dates resolve to day boundaries on this clock. Defaults to
        # UTC.
        time_zone: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            ad_campaign_id: String,
            after: String,
            before: String,
            created_after: String,
            created_before: String,
            direction: WhopSDK::AdGroupListParams::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: WhopSDK::AdGroupListParams::Order::OrSymbol,
            query: String,
            stats_from: String,
            stats_to: String,
            status: String,
            time_zone: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The sort direction. Defaults to desc.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdGroupListParams::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, WhopSDK::AdGroupListParams::Direction::TaggedSymbol)
        DESC = T.let(:desc, WhopSDK::AdGroupListParams::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AdGroupListParams::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The field to sort by. Defaults to created_at. Stat columns (spend, impressions,
      # …) rank over the stats_from/stats_to window across the whole list, not just the
      # current page. results, cost_per_result and return_on_ad_spend rank by the same
      # Whop pixel-attributed values the response reports.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdGroupListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, WhopSDK::AdGroupListParams::Order::TaggedSymbol)
        UPDATED_AT =
          T.let(:updated_at, WhopSDK::AdGroupListParams::Order::TaggedSymbol)
        SPEND = T.let(:spend, WhopSDK::AdGroupListParams::Order::TaggedSymbol)
        IMPRESSIONS =
          T.let(:impressions, WhopSDK::AdGroupListParams::Order::TaggedSymbol)
        REACH = T.let(:reach, WhopSDK::AdGroupListParams::Order::TaggedSymbol)
        CLICKS = T.let(:clicks, WhopSDK::AdGroupListParams::Order::TaggedSymbol)
        UNIQUE_CLICKS =
          T.let(:unique_clicks, WhopSDK::AdGroupListParams::Order::TaggedSymbol)
        FREQUENCY =
          T.let(:frequency, WhopSDK::AdGroupListParams::Order::TaggedSymbol)
        CLICK_THROUGH_RATE =
          T.let(
            :click_through_rate,
            WhopSDK::AdGroupListParams::Order::TaggedSymbol
          )
        RESULTS =
          T.let(:results, WhopSDK::AdGroupListParams::Order::TaggedSymbol)
        COST_PER_MILLE =
          T.let(
            :cost_per_mille,
            WhopSDK::AdGroupListParams::Order::TaggedSymbol
          )
        COST_PER_CLICK =
          T.let(
            :cost_per_click,
            WhopSDK::AdGroupListParams::Order::TaggedSymbol
          )
        COST_PER_RESULT =
          T.let(
            :cost_per_result,
            WhopSDK::AdGroupListParams::Order::TaggedSymbol
          )
        RETURN_ON_AD_SPEND =
          T.let(
            :return_on_ad_spend,
            WhopSDK::AdGroupListParams::Order::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AdGroupListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
