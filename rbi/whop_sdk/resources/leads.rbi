# typed: strong

module WhopSDK
  module Resources
    class Leads
      # Creates a new lead
      #
      # Required permissions:
      #
      # - `lead:manage`
      # - `member:email:read`
      # - `access_pass:basic:read`
      # - `member:basic:read`
      sig do
        params(
          company_id: String,
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          product_id: T.nilable(String),
          referrer: T.nilable(String),
          user_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Lead)
      end
      def create(
        # The ID of the company to create a lead for.
        company_id:,
        # Custom metadata for the lead.
        metadata: nil,
        # The ID of the product the lead is interested in.
        product_id: nil,
        # The url referrer of the lead, if any.
        referrer: nil,
        # The ID of the user to create a lead for. If the request is made by a user, that
        # user will be used.
        user_id: nil,
        request_options: {}
      )
      end

      # Retrieves a lead by ID
      #
      # Required permissions:
      #
      # - `lead:basic:read`
      # - `member:email:read`
      # - `access_pass:basic:read`
      # - `member:basic:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Lead)
      end
      def retrieve(
        # The ID of the lead
        id,
        request_options: {}
      )
      end

      # Updates a lead
      #
      # Required permissions:
      #
      # - `lead:manage`
      # - `member:email:read`
      # - `access_pass:basic:read`
      # - `member:basic:read`
      sig do
        params(
          id: String,
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          referrer: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Lead)
      end
      def update(
        # The ID of the lead to update.
        id,
        # Custom metadata for the lead.
        metadata: nil,
        # The url referrer of the lead.
        referrer: nil,
        request_options: {}
      )
      end

      # Lists leads for a company
      #
      # Required permissions:
      #
      # - `lead:basic:read`
      # - `member:email:read`
      # - `access_pass:basic:read`
      # - `member:basic:read`
      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          product_ids: T.nilable(T::Array[String]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::LeadListResponse]
        )
      end
      def list(
        # The ID of the company to list leads for
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The minimum creation date to filter by
        created_after: nil,
        # The maximum creation date to filter by
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The product IDs to filter the leads by
        product_ids: nil,
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
