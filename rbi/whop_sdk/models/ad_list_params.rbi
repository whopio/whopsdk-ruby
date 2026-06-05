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

      # Filter by ad campaign. Provide exactly one of ad_group_id, ad_campaign_id, or
      # company_id.
      sig { returns(T.nilable(String)) }
      attr_accessor :ad_campaign_id

      # Only return ads belonging to these ad campaigns (max 100). Can be combined with
      # companyId or used on its own.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :ad_campaign_ids

      # Filter by ad group. Provide exactly one of ad_group_id, ad_campaign_id, or
      # company_id.
      sig { returns(T.nilable(String)) }
      attr_accessor :ad_group_id

      # Only return ads belonging to these ad groups (max 100). Can be combined with
      # companyId or used on its own.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :ad_group_ids

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # Filter by campaign.
      sig { returns(T.nilable(String)) }
      attr_accessor :campaign_id

      # Filter by company. Provide exactly one of ad_group_id, ad_campaign_id, or
      # company_id.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # Only return ads created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_after

      # Only return ads created before this timestamp.
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

      # The fields ad resources can be ordered by.
      sig { returns(T.nilable(WhopSDK::AdListParams::Order::OrSymbol)) }
      attr_accessor :order

      # Columns that the listAds query can sort by. Deprecated — use AdOrder.
      sig { returns(T.nilable(WhopSDK::AdListParams::OrderBy::OrSymbol)) }
      attr_accessor :order_by

      # The direction of the sort.
      sig { returns(T.nilable(WhopSDK::Direction::OrSymbol)) }
      attr_accessor :order_direction

      # Case-insensitive substring match against the ad title or ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :query

      # Inclusive start of the window for each ad's metric fields (spend, impressions,
      # …) and for stats-column sorting. Omit both statsFrom and statsTo for all-time
      # stats.
      sig { returns(T.nilable(Time)) }
      attr_accessor :stats_from

      # Inclusive end of the window for each ad's metric fields and for stats-column
      # sorting. Omit both statsFrom and statsTo for all-time stats.
      sig { returns(T.nilable(Time)) }
      attr_accessor :stats_to

      # The status of an external ad.
      sig { returns(T.nilable(WhopSDK::ExternalAdStatus::OrSymbol)) }
      attr_accessor :status

      sig do
        params(
          ad_campaign_id: T.nilable(String),
          ad_campaign_ids: T.nilable(T::Array[String]),
          ad_group_id: T.nilable(String),
          ad_group_ids: T.nilable(T::Array[String]),
          after: T.nilable(String),
          before: T.nilable(String),
          campaign_id: T.nilable(String),
          company_id: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(WhopSDK::AdListParams::Order::OrSymbol),
          order_by: T.nilable(WhopSDK::AdListParams::OrderBy::OrSymbol),
          order_direction: T.nilable(WhopSDK::Direction::OrSymbol),
          query: T.nilable(String),
          stats_from: T.nilable(Time),
          stats_to: T.nilable(Time),
          status: T.nilable(WhopSDK::ExternalAdStatus::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by ad campaign. Provide exactly one of ad_group_id, ad_campaign_id, or
        # company_id.
        ad_campaign_id: nil,
        # Only return ads belonging to these ad campaigns (max 100). Can be combined with
        # companyId or used on its own.
        ad_campaign_ids: nil,
        # Filter by ad group. Provide exactly one of ad_group_id, ad_campaign_id, or
        # company_id.
        ad_group_id: nil,
        # Only return ads belonging to these ad groups (max 100). Can be combined with
        # companyId or used on its own.
        ad_group_ids: nil,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter by campaign.
        campaign_id: nil,
        # Filter by company. Provide exactly one of ad_group_id, ad_campaign_id, or
        # company_id.
        company_id: nil,
        # Only return ads created after this timestamp.
        created_after: nil,
        # Only return ads created before this timestamp.
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The fields ad resources can be ordered by.
        order: nil,
        # Columns that the listAds query can sort by. Deprecated — use AdOrder.
        order_by: nil,
        # The direction of the sort.
        order_direction: nil,
        # Case-insensitive substring match against the ad title or ID.
        query: nil,
        # Inclusive start of the window for each ad's metric fields (spend, impressions,
        # …) and for stats-column sorting. Omit both statsFrom and statsTo for all-time
        # stats.
        stats_from: nil,
        # Inclusive end of the window for each ad's metric fields and for stats-column
        # sorting. Omit both statsFrom and statsTo for all-time stats.
        stats_to: nil,
        # The status of an external ad.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            ad_campaign_id: T.nilable(String),
            ad_campaign_ids: T.nilable(T::Array[String]),
            ad_group_id: T.nilable(String),
            ad_group_ids: T.nilable(T::Array[String]),
            after: T.nilable(String),
            before: T.nilable(String),
            campaign_id: T.nilable(String),
            company_id: T.nilable(String),
            created_after: T.nilable(Time),
            created_before: T.nilable(Time),
            direction: T.nilable(WhopSDK::Direction::OrSymbol),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            order: T.nilable(WhopSDK::AdListParams::Order::OrSymbol),
            order_by: T.nilable(WhopSDK::AdListParams::OrderBy::OrSymbol),
            order_direction: T.nilable(WhopSDK::Direction::OrSymbol),
            query: T.nilable(String),
            stats_from: T.nilable(Time),
            stats_to: T.nilable(Time),
            status: T.nilable(WhopSDK::ExternalAdStatus::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The fields ad resources can be ordered by.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, WhopSDK::AdListParams::Order::TaggedSymbol)
        SPEND = T.let(:spend, WhopSDK::AdListParams::Order::TaggedSymbol)
        RETURN_ON_AD_SPEND =
          T.let(:return_on_ad_spend, WhopSDK::AdListParams::Order::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::AdListParams::Order::TaggedSymbol])
        end
        def self.values
        end
      end

      # Columns that the listAds query can sort by. Deprecated — use AdOrder.
      module OrderBy
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdListParams::OrderBy) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SPEND = T.let(:spend, WhopSDK::AdListParams::OrderBy::TaggedSymbol)
        RETURN_ON_AD_SPEND =
          T.let(
            :return_on_ad_spend,
            WhopSDK::AdListParams::OrderBy::TaggedSymbol
          )
        ROAS = T.let(:roas, WhopSDK::AdListParams::OrderBy::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AdListParams::OrderBy::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
