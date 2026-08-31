# typed: strong

module WhopSDK
  module Models
    class AdCampaignListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AdCampaignListParams, WhopSDK::Internal::AnyHash)
        end

      # The account the campaigns belong to. Defaults to the account-scoped key's own
      # account.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

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
        returns(
          T.nilable(WhopSDK::AdCampaignListParams::AttributionModel::OrSymbol)
        )
      end
      attr_reader :attribution_model

      sig do
        params(
          attribution_model:
            WhopSDK::AdCampaignListParams::AttributionModel::OrSymbol
        ).void
      end
      attr_writer :attribution_model

      # Cursor to fetch the page before (from page_info.start_cursor).
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Only return campaigns created after this timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_after

      sig { params(created_after: String).void }
      attr_writer :created_after

      # Only return campaigns created before this timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_before

      sig { params(created_before: String).void }
      attr_writer :created_before

      # The sort direction. Defaults to desc.
      sig do
        returns(T.nilable(WhopSDK::AdCampaignListParams::Direction::OrSymbol))
      end
      attr_reader :direction

      sig do
        params(
          direction: WhopSDK::AdCampaignListParams::Direction::OrSymbol
        ).void
      end
      attr_writer :direction

      # The number of campaigns to return.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # The number of campaigns to return from the end of the range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # The field to sort by. Defaults to created_at. Stat columns (spend, impressions,
      # …) rank over the stats_from/stats_to window across the whole list, not just the
      # current page. results, cost_per_result and return_on_ad_spend rank by the same
      # Whop pixel-attributed values the response reports.
      sig { returns(T.nilable(WhopSDK::AdCampaignListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: WhopSDK::AdCampaignListParams::Order::OrSymbol).void }
      attr_writer :order

      # Filter campaigns by a title or ID substring.
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

      # Only return campaigns with this status.
      sig do
        returns(T.nilable(WhopSDK::AdCampaignListParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: WhopSDK::AdCampaignListParams::Status::OrSymbol).void
      end
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
          after: String,
          attribution_model:
            WhopSDK::AdCampaignListParams::AttributionModel::OrSymbol,
          before: String,
          created_after: String,
          created_before: String,
          direction: WhopSDK::AdCampaignListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::AdCampaignListParams::Order::OrSymbol,
          query: String,
          stats_from: String,
          stats_to: String,
          status: WhopSDK::AdCampaignListParams::Status::OrSymbol,
          time_zone: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The account the campaigns belong to. Defaults to the account-scoped key's own
        # account.
        account_id: nil,
        # Cursor to fetch the page after (from page_info.end_cursor).
        after: nil,
        # Attribution model the conversion stats count under (defaults to last_touch).
        # Under both models a journey with any whop ad touch attributes to whop; the model
        # picks which whop touch credits the entity and which non-whop source wins
        # otherwise.
        attribution_model: nil,
        # Cursor to fetch the page before (from page_info.start_cursor).
        before: nil,
        # Only return campaigns created after this timestamp.
        created_after: nil,
        # Only return campaigns created before this timestamp.
        created_before: nil,
        # The sort direction. Defaults to desc.
        direction: nil,
        # The number of campaigns to return.
        first: nil,
        # The number of campaigns to return from the end of the range.
        last: nil,
        # The field to sort by. Defaults to created_at. Stat columns (spend, impressions,
        # …) rank over the stats_from/stats_to window across the whole list, not just the
        # current page. results, cost_per_result and return_on_ad_spend rank by the same
        # Whop pixel-attributed values the response reports.
        order: nil,
        # Filter campaigns by a title or ID substring.
        query: nil,
        # Start of the stats window. Defaults to all-time.
        stats_from: nil,
        # End of the stats window. Defaults to now.
        stats_to: nil,
        # Only return campaigns with this status.
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
            after: String,
            attribution_model:
              WhopSDK::AdCampaignListParams::AttributionModel::OrSymbol,
            before: String,
            created_after: String,
            created_before: String,
            direction: WhopSDK::AdCampaignListParams::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: WhopSDK::AdCampaignListParams::Order::OrSymbol,
            query: String,
            stats_from: String,
            stats_to: String,
            status: WhopSDK::AdCampaignListParams::Status::OrSymbol,
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
            T.all(Symbol, WhopSDK::AdCampaignListParams::AttributionModel)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LAST_TOUCH =
          T.let(
            :last_touch,
            WhopSDK::AdCampaignListParams::AttributionModel::TaggedSymbol
          )
        FIRST_TOUCH =
          T.let(
            :first_touch,
            WhopSDK::AdCampaignListParams::AttributionModel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::AdCampaignListParams::AttributionModel::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The sort direction. Defaults to desc.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdCampaignListParams::Direction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC =
          T.let(:asc, WhopSDK::AdCampaignListParams::Direction::TaggedSymbol)
        DESC =
          T.let(:desc, WhopSDK::AdCampaignListParams::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AdCampaignListParams::Direction::TaggedSymbol]
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
          T.type_alias { T.all(Symbol, WhopSDK::AdCampaignListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, WhopSDK::AdCampaignListParams::Order::TaggedSymbol)
        UPDATED_AT =
          T.let(:updated_at, WhopSDK::AdCampaignListParams::Order::TaggedSymbol)
        SPEND =
          T.let(:spend, WhopSDK::AdCampaignListParams::Order::TaggedSymbol)
        IMPRESSIONS =
          T.let(
            :impressions,
            WhopSDK::AdCampaignListParams::Order::TaggedSymbol
          )
        REACH =
          T.let(:reach, WhopSDK::AdCampaignListParams::Order::TaggedSymbol)
        CLICKS =
          T.let(:clicks, WhopSDK::AdCampaignListParams::Order::TaggedSymbol)
        LINK_CLICKS =
          T.let(
            :link_clicks,
            WhopSDK::AdCampaignListParams::Order::TaggedSymbol
          )
        UNIQUE_CLICKS =
          T.let(
            :unique_clicks,
            WhopSDK::AdCampaignListParams::Order::TaggedSymbol
          )
        FREQUENCY =
          T.let(:frequency, WhopSDK::AdCampaignListParams::Order::TaggedSymbol)
        CLICK_THROUGH_RATE =
          T.let(
            :click_through_rate,
            WhopSDK::AdCampaignListParams::Order::TaggedSymbol
          )
        RESULTS =
          T.let(:results, WhopSDK::AdCampaignListParams::Order::TaggedSymbol)
        COST_PER_MILLE =
          T.let(
            :cost_per_mille,
            WhopSDK::AdCampaignListParams::Order::TaggedSymbol
          )
        COST_PER_CLICK =
          T.let(
            :cost_per_click,
            WhopSDK::AdCampaignListParams::Order::TaggedSymbol
          )
        COST_PER_RESULT =
          T.let(
            :cost_per_result,
            WhopSDK::AdCampaignListParams::Order::TaggedSymbol
          )
        RETURN_ON_AD_SPEND =
          T.let(
            :return_on_ad_spend,
            WhopSDK::AdCampaignListParams::Order::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AdCampaignListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Only return campaigns with this status.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdCampaignListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DRAFT =
          T.let(:draft, WhopSDK::AdCampaignListParams::Status::TaggedSymbol)
        ACTIVE =
          T.let(:active, WhopSDK::AdCampaignListParams::Status::TaggedSymbol)
        PAUSED =
          T.let(:paused, WhopSDK::AdCampaignListParams::Status::TaggedSymbol)
        PAYMENT_FAILED =
          T.let(
            :payment_failed,
            WhopSDK::AdCampaignListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AdCampaignListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
