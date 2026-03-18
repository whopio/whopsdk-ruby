# typed: strong

module WhopSDK
  module Resources
    # Affiliates
    class Affiliates
      # Affiliates
      sig { returns(WhopSDK::Resources::Affiliates::Overrides) }
      attr_reader :overrides

      # Creates or finds an affiliate for a company and user.
      #
      # Required permissions:
      #
      # - `affiliate:create`
      sig do
        params(
          company_id: String,
          user_identifier: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Affiliate)
      end
      def create(
        # The ID of the company to create the affiliate for.
        company_id:,
        # The user identifier (username, email, user ID, or Discord ID).
        user_identifier:,
        request_options: {}
      )
      end

      # Retrieves the details of an existing affiliate.
      #
      # Required permissions:
      #
      # - `affiliate:basic:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Affiliate)
      end
      def retrieve(
        # The unique identifier of the affiliate.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of affiliates for the actor in context, with optional
      # filtering by status, search, and sorting.
      #
      # Required permissions:
      #
      # - `affiliate:basic:read`
      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(WhopSDK::AffiliateListParams::Order::OrSymbol),
          query: T.nilable(String),
          status: T.nilable(WhopSDK::Status::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::AffiliateListResponse]
        )
      end
      def list(
        # The unique identifier of the company to list affiliates for.
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
        # Which columns can be used to sort.
        order: nil,
        # Search affiliates by username.
        query: nil,
        # Statuses for resources
        status: nil,
        request_options: {}
      )
      end

      # Archives an existing Affiliate
      #
      # Required permissions:
      #
      # - `affiliate:update`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def archive(
        # The internal ID of the affiliate to archive.
        id,
        request_options: {}
      )
      end

      # Unarchives an existing Affiliate
      #
      # Required permissions:
      #
      # - `affiliate:update`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def unarchive(
        # The internal ID of the affiliate to archive.
        id,
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
