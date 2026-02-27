# typed: strong

module WhopSDK
  module Resources
    # Setup intents
    class SetupIntents
      # Retrieves the details of an existing setup intent.
      #
      # Required permissions:
      #
      # - `payment:setup_intent:read`
      # - `member:basic:read`
      # - `member:email:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::SetupIntent)
      end
      def retrieve(
        # The unique identifier of the setup intent.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of setup intents for a company, with optional filtering
      # by creation date. A setup intent securely collects and stores a member's payment
      # method for future use without charging them immediately.
      #
      # Required permissions:
      #
      # - `payment:setup_intent:read`
      # - `member:basic:read`
      # - `member:email:read`
      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::SetupIntentListResponse
          ]
        )
      end
      def list(
        # The unique identifier of the company to list setup intents for.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return setup intents created after this timestamp.
        created_after: nil,
        # Only return setup intents created before this timestamp.
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
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
