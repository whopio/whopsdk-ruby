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
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # The sort direction for results. Defaults to descending.
      sig { returns(T.nilable(WhopSDK::Direction::OrSymbol)) }
      attr_reader :direction

      sig { params(direction: WhopSDK::Direction::OrSymbol).void }
      attr_writer :direction

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # The field to sort results by.
      sig { returns(T.nilable(WhopSDK::AffiliateListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: WhopSDK::AffiliateListParams::Order::OrSymbol).void }
      attr_writer :order

      # Search affiliates by username.
      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      # Filter by affiliate status (active or archived).
      sig { returns(T.nilable(WhopSDK::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: WhopSDK::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          company_id: String,
          after: String,
          before: String,
          direction: WhopSDK::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::AffiliateListParams::Order::OrSymbol,
          query: String,
          status: WhopSDK::Status::OrSymbol,
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
        # The sort direction for results. Defaults to descending.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The field to sort results by.
        order: nil,
        # Search affiliates by username.
        query: nil,
        # Filter by affiliate status (active or archived).
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            after: String,
            before: String,
            direction: WhopSDK::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: WhopSDK::AffiliateListParams::Order::OrSymbol,
            query: String,
            status: WhopSDK::Status::OrSymbol,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The field to sort results by.
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
