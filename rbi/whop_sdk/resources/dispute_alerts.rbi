# typed: strong

module WhopSDK
  module Resources
    class DisputeAlerts
      # Retrieves the details of an existing dispute alert.
      #
      # Required permissions:
      #
      # - `payment:dispute_alert:read`
      # - `payment:basic:read`
      # - `member:email:read`
      # - `member:basic:read`
      # - `member:phone:read`
      # - `payment:dispute:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::DisputeAlertRetrieveResponse)
      end
      def retrieve(
        # The unique identifier of the dispute alert.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of dispute alerts for a company, with optional
      # filtering by creation date.
      #
      # Required permissions:
      #
      # - `payment:dispute_alert:read`
      # - `payment:basic:read`
      # - `payment:dispute:read`
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
            WhopSDK::Models::DisputeAlertListResponse
          ]
        )
      end
      def list(
        # The unique identifier of the company to list dispute alerts for.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return dispute alerts created after this timestamp.
        created_after: nil,
        # Only return dispute alerts created before this timestamp.
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
