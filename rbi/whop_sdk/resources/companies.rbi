# typed: strong

module WhopSDK
  module Resources
    class Companies
      # Create a new connected account for your platform
      #
      # Required permissions:
      #
      # - `company:create_child`
      # - `company:basic:read`
      sig do
        params(
          email: String,
          parent_company_id: String,
          title: String,
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          send_customer_emails: T.nilable(T::Boolean),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Company)
      end
      def create(
        # The email of the user who the company will belong to.
        email:,
        # The company ID of the platform creating this company.
        parent_company_id:,
        # The name of the company being created.
        title:,
        # Additional metadata for the account
        metadata: nil,
        # Whether Whop sends transactional emails to customers on behalf of this company.
        # Includes: order confirmations, payment failures, refund notifications, upcoming
        # renewals, and membership cancelations/expirations. When disabled, the platform
        # is responsible for handling these communications.
        send_customer_emails: nil,
        request_options: {}
      )
      end

      # Retrieves an company by ID or its url route
      #
      # Required permissions:
      #
      # - `company:basic:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Company)
      end
      def retrieve(
        # The ID or route of the company
        id,
        request_options: {}
      )
      end

      # Update an existing company. Either a regular company, platform company, or one
      # of a platform's connected accounts
      #
      # Required permissions:
      #
      # - `company:update`
      # - `company:basic:read`
      sig do
        params(
          id: String,
          logo:
            T.nilable(
              T.any(
                WhopSDK::CompanyUpdateParams::Logo::AttachmentInputWithDirectUploadID::OrHash,
                WhopSDK::CompanyUpdateParams::Logo::AttachmentInputWithID::OrHash
              )
            ),
          send_customer_emails: T.nilable(T::Boolean),
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Company)
      end
      def update(
        # The ID of the company to update
        id,
        # The logo for the company in png, jpeg, or gif format
        logo: nil,
        # Whether Whop sends transactional emails to customers on behalf of this company.
        # Includes: order confirmations, payment failures, refund notifications, upcoming
        # renewals, and membership cancelations/expirations. When disabled, the platform
        # is responsible for handling these communications.
        send_customer_emails: nil,
        # The title of the company
        title: nil,
        request_options: {}
      )
      end

      # Lists companies the current user has access to
      #
      # Required permissions:
      #
      # - `company:basic:read`
      sig do
        params(
          parent_company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::CompanyListResponse]
        )
      end
      def list(
        # The ID of the parent company to list connected accounts for
        parent_company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The minimum creation date to filter by
        created_after: nil,
        # The maximum creation date to filter by
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
