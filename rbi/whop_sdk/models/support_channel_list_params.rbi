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

      # The unique identifier of the company to list support channels for. Includes
      # channels of child companies. When omitted, returns support channels across all
      # companies the user has access to.
      sig { returns(T.nilable(String)) }
      attr_reader :company_id

      sig { params(company_id: String).void }
      attr_writer :company_id

      # The sort direction for the results. Use 'asc' for oldest first or 'desc' for
      # newest first.
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

      # Whether to filter by open or resolved support channels. Set to true to only
      # return channels awaiting a response, or false for resolved channels.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :open_

      sig { params(open_: T::Boolean).void }
      attr_writer :open_

      # The field to sort the support channels by, such as creation date or last message
      # time.
      sig do
        returns(T.nilable(WhopSDK::SupportChannelListParams::Order::OrSymbol))
      end
      attr_reader :order

      sig do
        params(order: WhopSDK::SupportChannelListParams::Order::OrSymbol).void
      end
      attr_writer :order

      # Filter support channels by the authenticated user's role. Defaults to admin.
      # When the caller is a company API key (no user), only admin-visible channels are
      # returned.
      sig do
        returns(T.nilable(WhopSDK::SupportChannelListParams::View::OrSymbol))
      end
      attr_reader :view

      sig do
        params(view: WhopSDK::SupportChannelListParams::View::OrSymbol).void
      end
      attr_writer :view

      sig do
        params(
          after: String,
          before: String,
          company_id: String,
          direction: WhopSDK::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          open_: T::Boolean,
          order: WhopSDK::SupportChannelListParams::Order::OrSymbol,
          view: WhopSDK::SupportChannelListParams::View::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The unique identifier of the company to list support channels for. Includes
        # channels of child companies. When omitted, returns support channels across all
        # companies the user has access to.
        company_id: nil,
        # The sort direction for the results. Use 'asc' for oldest first or 'desc' for
        # newest first.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Whether to filter by open or resolved support channels. Set to true to only
        # return channels awaiting a response, or false for resolved channels.
        open_: nil,
        # The field to sort the support channels by, such as creation date or last message
        # time.
        order: nil,
        # Filter support channels by the authenticated user's role. Defaults to admin.
        # When the caller is a company API key (no user), only admin-visible channels are
        # returned.
        view: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: String,
            before: String,
            company_id: String,
            direction: WhopSDK::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            open_: T::Boolean,
            order: WhopSDK::SupportChannelListParams::Order::OrSymbol,
            view: WhopSDK::SupportChannelListParams::View::OrSymbol,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The field to sort the support channels by, such as creation date or last message
      # time.
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

      # Filter support channels by the authenticated user's role. Defaults to admin.
      # When the caller is a company API key (no user), only admin-visible channels are
      # returned.
      module View
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::SupportChannelListParams::View)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL = T.let(:all, WhopSDK::SupportChannelListParams::View::TaggedSymbol)
        ADMIN =
          T.let(:admin, WhopSDK::SupportChannelListParams::View::TaggedSymbol)
        CUSTOMER =
          T.let(
            :customer,
            WhopSDK::SupportChannelListParams::View::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::SupportChannelListParams::View::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
