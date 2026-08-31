# typed: strong

module WhopSDK
  module Models
    class AdListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AdListParams, WhopSDK::Internal::AnyHash)
        end

      # The account the ads belong to. Defaults to the account-scoped key's own account.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # Only return ads in this ad campaign.
      sig { returns(T.nilable(String)) }
      attr_reader :ad_campaign_id

      sig { params(ad_campaign_id: String).void }
      attr_writer :ad_campaign_id

      # Only return ads in these ad campaigns (max 100). Repeat the parameter for each
      # id (ad_campaign_ids=a&ad_campaign_ids=b).
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :ad_campaign_ids

      sig { params(ad_campaign_ids: T::Array[String]).void }
      attr_writer :ad_campaign_ids

      # Only return ads in this ad group.
      sig { returns(T.nilable(String)) }
      attr_reader :ad_group_id

      sig { params(ad_group_id: String).void }
      attr_writer :ad_group_id

      # Only return ads in these ad groups (max 100). Repeat the parameter for each id
      # (ad_group_ids=a&ad_group_ids=b).
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :ad_group_ids

      sig { params(ad_group_ids: T::Array[String]).void }
      attr_writer :ad_group_ids

      # Cursor to fetch the page after (from page_info.end_cursor).
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Attribution model the conversion stats count under (defaults to last_touch).
      # Under both models a journey with any whop ad touch attributes to whop; the model
      # picks which whop touch credits the entity and which non-whop source wins
      # otherwise.
      sig do
        returns(T.nilable(WhopSDK::AdListParams::AttributionModel::OrSymbol))
      end
      attr_reader :attribution_model

      sig do
        params(
          attribution_model: WhopSDK::AdListParams::AttributionModel::OrSymbol
        ).void
      end
      attr_writer :attribution_model

      # Cursor to fetch the page before (from page_info.start_cursor).
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Only return ads created after this timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_after

      sig { params(created_after: String).void }
      attr_writer :created_after

      # Only return ads created before this timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_before

      sig { params(created_before: String).void }
      attr_writer :created_before

      # The sort direction. Defaults to desc.
      sig { returns(T.nilable(WhopSDK::AdListParams::Direction::OrSymbol)) }
      attr_reader :direction

      sig { params(direction: WhopSDK::AdListParams::Direction::OrSymbol).void }
      attr_writer :direction

      # The number of ads to return.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # The number of ads to return from the end of the range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # The field to sort by. Defaults to created_at. Stat columns (spend, impressions,
      # …) rank over the stats_from/stats_to window across the whole list, not just the
      # current page. results, cost_per_result and return_on_ad_spend rank by the same
      # Whop pixel-attributed values the response reports.
      sig { returns(T.nilable(WhopSDK::AdListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: WhopSDK::AdListParams::Order::OrSymbol).void }
      attr_writer :order

      # Filter ads by a title or ID substring.
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

      # Only return ads with this status.
      sig { returns(T.nilable(WhopSDK::AdListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: WhopSDK::AdListParams::Status::OrSymbol).void }
      attr_writer :status

      # IANA timezone (e.g. America/New_York) the stats window is interpreted in. Bare
      # stats_from/stats_to dates resolve to day boundaries on this clock. Defaults to
      # UTC.
      sig { returns(T.nilable(String)) }
      attr_reader :time_zone

      sig { params(time_zone: String).void }
      attr_writer :time_zone

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig do
        params(
          account_id: String,
          ad_campaign_id: String,
          ad_campaign_ids: T::Array[String],
          ad_group_id: String,
          ad_group_ids: T::Array[String],
          after: String,
          attribution_model: WhopSDK::AdListParams::AttributionModel::OrSymbol,
          before: String,
          created_after: String,
          created_before: String,
          direction: WhopSDK::AdListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::AdListParams::Order::OrSymbol,
          query: String,
          stats_from: String,
          stats_to: String,
          status: WhopSDK::AdListParams::Status::OrSymbol,
          time_zone: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The account the ads belong to. Defaults to the account-scoped key's own account.
        account_id: nil,
        # Only return ads in this ad campaign.
        ad_campaign_id: nil,
        # Only return ads in these ad campaigns (max 100). Repeat the parameter for each
        # id (ad_campaign_ids=a&ad_campaign_ids=b).
        ad_campaign_ids: nil,
        # Only return ads in this ad group.
        ad_group_id: nil,
        # Only return ads in these ad groups (max 100). Repeat the parameter for each id
        # (ad_group_ids=a&ad_group_ids=b).
        ad_group_ids: nil,
        # Cursor to fetch the page after (from page_info.end_cursor).
        after: nil,
        # Attribution model the conversion stats count under (defaults to last_touch).
        # Under both models a journey with any whop ad touch attributes to whop; the model
        # picks which whop touch credits the entity and which non-whop source wins
        # otherwise.
        attribution_model: nil,
        # Cursor to fetch the page before (from page_info.start_cursor).
        before: nil,
        # Only return ads created after this timestamp.
        created_after: nil,
        # Only return ads created before this timestamp.
        created_before: nil,
        # The sort direction. Defaults to desc.
        direction: nil,
        # The number of ads to return.
        first: nil,
        # The number of ads to return from the end of the range.
        last: nil,
        # The field to sort by. Defaults to created_at. Stat columns (spend, impressions,
        # …) rank over the stats_from/stats_to window across the whole list, not just the
        # current page. results, cost_per_result and return_on_ad_spend rank by the same
        # Whop pixel-attributed values the response reports.
        order: nil,
        # Filter ads by a title or ID substring.
        query: nil,
        # Start of the stats window. Defaults to all-time.
        stats_from: nil,
        # End of the stats window. Defaults to now.
        stats_to: nil,
        # Only return ads with this status.
        status: nil,
        # IANA timezone (e.g. America/New_York) the stats window is interpreted in. Bare
        # stats_from/stats_to dates resolve to day boundaries on this clock. Defaults to
        # UTC.
        time_zone: nil,
        api_version_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            ad_campaign_id: String,
            ad_campaign_ids: T::Array[String],
            ad_group_id: String,
            ad_group_ids: T::Array[String],
            after: String,
            attribution_model:
              WhopSDK::AdListParams::AttributionModel::OrSymbol,
            before: String,
            created_after: String,
            created_before: String,
            direction: WhopSDK::AdListParams::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: WhopSDK::AdListParams::Order::OrSymbol,
            query: String,
            stats_from: String,
            stats_to: String,
            status: WhopSDK::AdListParams::Status::OrSymbol,
            time_zone: String,
            api_version_date: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Attribution model the conversion stats count under (defaults to last_touch).
      # Under both models a journey with any whop ad touch attributes to whop; the model
      # picks which whop touch credits the entity and which non-whop source wins
      # otherwise.
      module AttributionModel
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdListParams::AttributionModel)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LAST_TOUCH =
          T.let(
            :last_touch,
            WhopSDK::AdListParams::AttributionModel::TaggedSymbol
          )
        FIRST_TOUCH =
          T.let(
            :first_touch,
            WhopSDK::AdListParams::AttributionModel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AdListParams::AttributionModel::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The sort direction. Defaults to desc.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdListParams::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, WhopSDK::AdListParams::Direction::TaggedSymbol)
        DESC = T.let(:desc, WhopSDK::AdListParams::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AdListParams::Direction::TaggedSymbol]
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
          T.type_alias { T.all(Symbol, WhopSDK::AdListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, WhopSDK::AdListParams::Order::TaggedSymbol)
        UPDATED_AT =
          T.let(:updated_at, WhopSDK::AdListParams::Order::TaggedSymbol)
        SPEND = T.let(:spend, WhopSDK::AdListParams::Order::TaggedSymbol)
        IMPRESSIONS =
          T.let(:impressions, WhopSDK::AdListParams::Order::TaggedSymbol)
        REACH = T.let(:reach, WhopSDK::AdListParams::Order::TaggedSymbol)
        CLICKS = T.let(:clicks, WhopSDK::AdListParams::Order::TaggedSymbol)
        LINK_CLICKS =
          T.let(:link_clicks, WhopSDK::AdListParams::Order::TaggedSymbol)
        UNIQUE_CLICKS =
          T.let(:unique_clicks, WhopSDK::AdListParams::Order::TaggedSymbol)
        FREQUENCY =
          T.let(:frequency, WhopSDK::AdListParams::Order::TaggedSymbol)
        CLICK_THROUGH_RATE =
          T.let(:click_through_rate, WhopSDK::AdListParams::Order::TaggedSymbol)
        RESULTS = T.let(:results, WhopSDK::AdListParams::Order::TaggedSymbol)
        COST_PER_MILLE =
          T.let(:cost_per_mille, WhopSDK::AdListParams::Order::TaggedSymbol)
        COST_PER_CLICK =
          T.let(:cost_per_click, WhopSDK::AdListParams::Order::TaggedSymbol)
        COST_PER_RESULT =
          T.let(:cost_per_result, WhopSDK::AdListParams::Order::TaggedSymbol)
        RETURN_ON_AD_SPEND =
          T.let(:return_on_ad_spend, WhopSDK::AdListParams::Order::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::AdListParams::Order::TaggedSymbol])
        end
        def self.values
        end
      end

      # Only return ads with this status.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE = T.let(:active, WhopSDK::AdListParams::Status::TaggedSymbol)
        PAUSED = T.let(:paused, WhopSDK::AdListParams::Status::TaggedSymbol)
        IN_REVIEW =
          T.let(:in_review, WhopSDK::AdListParams::Status::TaggedSymbol)
        REJECTED = T.let(:rejected, WhopSDK::AdListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AdListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
