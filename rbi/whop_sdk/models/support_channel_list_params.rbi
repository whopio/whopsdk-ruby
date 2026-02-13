# typed: strong

module WhopSDK
  module Models
    class SupportChannelListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::SupportChannelListParams, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier of the company to list support channels for.
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

      # Whether to filter by open or resolved support channels. Set to true to only
      # return channels awaiting a response, or false for resolved channels.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :open_

      # Sort options for message channels
      sig do
        returns(T.nilable(WhopSDK::SupportChannelListParams::Order::OrSymbol))
      end
      attr_accessor :order

      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          open_: T.nilable(T::Boolean),
          order: T.nilable(WhopSDK::SupportChannelListParams::Order::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the company to list support channels for.
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
        # Whether to filter by open or resolved support channels. Set to true to only
        # return channels awaiting a response, or false for resolved channels.
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
            direction: T.nilable(WhopSDK::Direction::OrSymbol),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            open_: T.nilable(T::Boolean),
            order:
              T.nilable(WhopSDK::SupportChannelListParams::Order::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Sort options for message channels
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::SupportChannelListParams::Order)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(
            :created_at,
            WhopSDK::SupportChannelListParams::Order::TaggedSymbol
          )
        LAST_POST_SENT_AT =
          T.let(
            :last_post_sent_at,
            WhopSDK::SupportChannelListParams::Order::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::SupportChannelListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
