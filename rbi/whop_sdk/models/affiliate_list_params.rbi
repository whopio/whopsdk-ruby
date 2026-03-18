# typed: strong

module WhopSDK
  module Models
    class AffiliateListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AffiliateListParams, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier of the company to list affiliates for.
      sig { returns(String) }
      attr_accessor :company_id

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # The direction of the sort.
      sig { returns(T.nilable(WhopSDK::Direction::OrSymbol)) }
      attr_accessor :direction

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # Which columns can be used to sort.
      sig { returns(T.nilable(WhopSDK::AffiliateListParams::Order::OrSymbol)) }
      attr_accessor :order

      # Search affiliates by username.
      sig { returns(T.nilable(String)) }
      attr_accessor :query

      # Statuses for resources
      sig { returns(T.nilable(WhopSDK::Status::OrSymbol)) }
      attr_accessor :status

      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(WhopSDK::AffiliateListParams::Order::OrSymbol),
          query: T.nilable(String),
          status: T.nilable(WhopSDK::Status::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the company to list affiliates for.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Which columns can be used to sort.
        order: nil,
        # Search affiliates by username.
        query: nil,
        # Statuses for resources
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            after: T.nilable(String),
            before: T.nilable(String),
            direction: T.nilable(WhopSDK::Direction::OrSymbol),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            order: T.nilable(WhopSDK::AffiliateListParams::Order::OrSymbol),
            query: T.nilable(String),
            status: T.nilable(WhopSDK::Status::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Which columns can be used to sort.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AffiliateListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ID = T.let(:id, WhopSDK::AffiliateListParams::Order::TaggedSymbol)
        CREATED_AT =
          T.let(:created_at, WhopSDK::AffiliateListParams::Order::TaggedSymbol)
        CACHED_TOTAL_REFERRALS =
          T.let(
            :cached_total_referrals,
            WhopSDK::AffiliateListParams::Order::TaggedSymbol
          )
        CACHED_TOTAL_REWARDS =
          T.let(
            :cached_total_rewards,
            WhopSDK::AffiliateListParams::Order::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AffiliateListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
