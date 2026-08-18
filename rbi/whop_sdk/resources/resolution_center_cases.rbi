# typed: strong

module WhopSDK
  module Resources
    # Resolution center cases
    class ResolutionCenterCases
      # Retrieves the details of an existing resolution center case.
      #
      # Required permissions:
      #
      # - `payment:resolution_center_case:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::ResolutionCenterCaseRetrieveResponse)
      end
      def retrieve(
        # The unique identifier of the resolution center case.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of resolution center cases, with optional filtering by
      # company, status, and creation date.
      #
      # Required permissions:
      #
      # - `payment:resolution_center_case:read`
      sig do
        params(
          after: String,
          before: String,
          company_id: String,
          created_after: Time,
          created_before: Time,
          direction: WhopSDK::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          statuses: T::Array[WhopSDK::ResolutionCenterCaseStatus::OrSymbol],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::ResolutionCenterCaseListResponse
          ]
        )
      end
      def list(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The unique identifier of the company to list resolution center cases for.
        company_id: nil,
        # Only return cases created after this timestamp.
        created_after: nil,
        # Only return cases created before this timestamp.
        created_before: nil,
        # The sort direction.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Filter by resolution center case status.
        statuses: nil,
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
