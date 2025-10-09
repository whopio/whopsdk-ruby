# typed: strong

module Whopsdk
  module Resources
    class ChatChannels
      # Retrieves a chat channel
      #
      # Required permissions:
      #
      # - `chat:read`
      sig do
        params(
          id: String,
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Models::ChatChannelRetrieveResponse)
      end
      def retrieve(id, request_options: {})
      end

      # Lists chat channels inside a company
      #
      # Required permissions:
      #
      # - `chat:read`
      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          product_id: T.nilable(String),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(
          Whopsdk::Internal::CursorPage[
            T.nilable(Whopsdk::Models::ChatChannelListResponse)
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
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # If provided, only chat channels connected to this product are returned
        product_id: nil,
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
