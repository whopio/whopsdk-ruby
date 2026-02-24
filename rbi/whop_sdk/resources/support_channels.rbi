# typed: strong

module WhopSDK
  module Resources
    class SupportChannels
      # Open a new support channel between a company team member and a customer. Returns
      # the existing channel if one already exists for that user.
      #
      # Required permissions:
      #
      # - `support_chat:create`
      sig do
        params(
          company_id: String,
          user_id: String,
          custom_name: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::SupportChannel)
      end
      def create(
        # The unique identifier of the company to create the support channel in.
        company_id:,
        # The user ID (e.g. 'user_xxxxx') or username of the customer to open a support
        # channel for.
        user_id:,
        # Optional custom display name for the support channel.
        custom_name: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing support channel.
      #
      # Required permissions:
      #
      # - `support_chat:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::SupportChannel)
      end
      def retrieve(
        # The unique identifier of the support channel to retrieve.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of support channels for a specific company, with
      # optional filtering by resolution status and custom sorting.
      #
      # Required permissions:
      #
      # - `support_chat:read`
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
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::SupportChannelListResponse
          ]
        )
      end
      def list(
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

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
