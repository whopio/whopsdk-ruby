# typed: strong

module Whopsdk
  module Models
    class SupportChannelListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::SupportChannelListParams, Whopsdk::Internal::AnyHash)
        end

      # The ID of the company to list chat channels for
      sig { returns(String) }
      attr_accessor :company_id

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # The direction of the sort.
      sig { returns(T.nilable(Whopsdk::Direction::OrSymbol)) }
      attr_accessor :direction

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # Filter for tickets where customer sent the last message (needs response) AND not
      # resolved. Set to true to only return open channels, false to only return
      # resolved channels.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :open_

      # Sort options for message channels
      sig do
        returns(T.nilable(Whopsdk::SupportChannelListParams::Order::OrSymbol))
      end
      attr_accessor :order

      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          direction: T.nilable(Whopsdk::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          open_: T.nilable(T::Boolean),
          order: T.nilable(Whopsdk::SupportChannelListParams::Order::OrSymbol),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the company to list chat channels for
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
        # Filter for tickets where customer sent the last message (needs response) AND not
        # resolved. Set to true to only return open channels, false to only return
        # resolved channels.
        open_: nil,
        # Sort options for message channels
        order: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            after: T.nilable(String),
            before: T.nilable(String),
            direction: T.nilable(Whopsdk::Direction::OrSymbol),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            open_: T.nilable(T::Boolean),
            order:
              T.nilable(Whopsdk::SupportChannelListParams::Order::OrSymbol),
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Sort options for message channels
      module Order
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Whopsdk::SupportChannelListParams::Order)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(
            :created_at,
            Whopsdk::SupportChannelListParams::Order::TaggedSymbol
          )
        LAST_POST_SENT_AT =
          T.let(
            :last_post_sent_at,
            Whopsdk::SupportChannelListParams::Order::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Whopsdk::SupportChannelListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
