# typed: strong

module WhopSDK
  module Resources
    class Leads
      # Record a new lead for a company, capturing a potential customer's interest in a
      # specific product.
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
        # The unique identifier of the company to create the lead for, starting with
        # 'biz\_'.
        company_id:,
        # A JSON object of custom metadata to attach to the lead for tracking purposes.
        metadata: nil,
        # The unique identifier of the product the lead is interested in, starting with
        # 'prod\_'.
        product_id: nil,
        # The referral URL that brought the lead to the company, such as
        # 'https://example.com/landing'.
        referrer: nil,
        # The unique identifier of the user to record as the lead. If authenticated as a
        # user, that user is used automatically.
        user_id: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing lead.
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
        # The unique identifier of the lead to retrieve.
        id,
        request_options: {}
      )
      end

      # Update the metadata or referrer information on an existing lead record.
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
        # The unique identifier of the lead to update, starting with 'lead\_'.
        id,
        # A JSON object of custom metadata to set on the lead, replacing any existing
        # metadata.
        metadata: nil,
        # The updated referral URL for the lead, such as 'https://example.com/landing'.
        referrer: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of leads for a company, with optional filtering by
      # product and creation date.
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
        # The unique identifier of the company to list leads for.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return leads created after this timestamp.
        created_after: nil,
        # Only return leads created before this timestamp.
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Filter leads to only those associated with these specific product identifiers.
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
