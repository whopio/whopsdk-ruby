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

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # The unique identifier of the company to list ad campaigns for.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # Only return ad campaigns created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_after

      # Only return ad campaigns created before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_before

      # The direction of the sort.
      sig { returns(T.nilable(WhopSDK::Direction::OrSymbol)) }
      attr_accessor :direction

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # The fields the ads dashboard lists (campaigns, ad sets) can be ordered by. Stat
      # columns are computed over the provided stats date range.
      sig { returns(T.nilable(WhopSDK::AdCampaignListParams::Order::OrSymbol)) }
      attr_accessor :order

      # Case-insensitive substring match against the campaign title or ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :query

      # Inclusive start of the window for each campaign's metric fields (spend,
      # impressions, …). Omit both statsFrom and statsTo for all-time stats.
      sig { returns(T.nilable(Time)) }
      attr_accessor :stats_from

      # Inclusive end of the window for each campaign's metric fields. Omit both
      # statsFrom and statsTo for all-time stats.
      sig { returns(T.nilable(Time)) }
      attr_accessor :stats_to

      # The status of an ad campaign.
      sig { returns(T.nilable(WhopSDK::AdCampaignStatus::OrSymbol)) }
      attr_accessor :status

      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          company_id: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(WhopSDK::AdCampaignListParams::Order::OrSymbol),
          query: T.nilable(String),
          stats_from: T.nilable(Time),
          stats_to: T.nilable(Time),
          status: T.nilable(WhopSDK::AdCampaignStatus::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The unique identifier of the company to list ad campaigns for.
        company_id: nil,
        # Only return ad campaigns created after this timestamp.
        created_after: nil,
        # Only return ad campaigns created before this timestamp.
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The fields the ads dashboard lists (campaigns, ad sets) can be ordered by. Stat
        # columns are computed over the provided stats date range.
        order: nil,
        # Case-insensitive substring match against the campaign title or ID.
        query: nil,
        # Inclusive start of the window for each campaign's metric fields (spend,
        # impressions, …). Omit both statsFrom and statsTo for all-time stats.
        stats_from: nil,
        # Inclusive end of the window for each campaign's metric fields. Omit both
        # statsFrom and statsTo for all-time stats.
        stats_to: nil,
        # The status of an ad campaign.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: T.nilable(String),
            before: T.nilable(String),
            company_id: T.nilable(String),
            created_after: T.nilable(Time),
            created_before: T.nilable(Time),
            direction: T.nilable(WhopSDK::Direction::OrSymbol),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            order: T.nilable(WhopSDK::AdCampaignListParams::Order::OrSymbol),
            query: T.nilable(String),
            stats_from: T.nilable(Time),
            stats_to: T.nilable(Time),
            status: T.nilable(WhopSDK::AdCampaignStatus::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The fields the ads dashboard lists (campaigns, ad sets) can be ordered by. Stat
      # columns are computed over the provided stats date range.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdCampaignListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, WhopSDK::AdCampaignListParams::Order::TaggedSymbol)
        SPEND =
          T.let(:spend, WhopSDK::AdCampaignListParams::Order::TaggedSymbol)
        IMPRESSIONS =
          T.let(
            :impressions,
            WhopSDK::AdCampaignListParams::Order::TaggedSymbol
          )
        CLICKS =
          T.let(:clicks, WhopSDK::AdCampaignListParams::Order::TaggedSymbol)
        REACH =
          T.let(:reach, WhopSDK::AdCampaignListParams::Order::TaggedSymbol)
        UNIQUE_CLICKS =
          T.let(
            :unique_clicks,
            WhopSDK::AdCampaignListParams::Order::TaggedSymbol
          )
        RESULTS =
          T.let(:results, WhopSDK::AdCampaignListParams::Order::TaggedSymbol)
        CLICK_THROUGH_RATE =
          T.let(
            :click_through_rate,
            WhopSDK::AdCampaignListParams::Order::TaggedSymbol
          )
        COST_PER_CLICK =
          T.let(
            :cost_per_click,
            WhopSDK::AdCampaignListParams::Order::TaggedSymbol
          )
        COST_PER_MILLE =
          T.let(
            :cost_per_mille,
            WhopSDK::AdCampaignListParams::Order::TaggedSymbol
          )
        COST_PER_RESULT =
          T.let(
            :cost_per_result,
            WhopSDK::AdCampaignListParams::Order::TaggedSymbol
          )
        FREQUENCY =
          T.let(:frequency, WhopSDK::AdCampaignListParams::Order::TaggedSymbol)
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
    end
  end
end
