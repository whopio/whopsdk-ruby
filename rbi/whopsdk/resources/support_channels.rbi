# typed: strong

module Whopsdk
  module Resources
    class SupportChannels
      # Retrieves a support channel
      #
      # Required permissions:
      #
      # - `support_chat:read`
      sig do
        params(
          id: String,
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Models::SupportChannelRetrieveResponse)
      end
      def retrieve(id, request_options: {})
      end

      # Lists chat channels inside a company
      #
      # Required permissions:
      #
      # - `support_chat:read`
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
        ).returns(
          Whopsdk::Internal::CursorPage[
            T.nilable(Whopsdk::Models::SupportChannelListResponse)
          ]
        )
      end
      def list(
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

      # @api private
      sig { params(client: Whopsdk::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
