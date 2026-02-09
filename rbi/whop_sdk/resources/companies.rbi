# typed: strong

module WhopSDK
  module Resources
    class Companies
      # Create a new company. Pass parent_company_id to create a sub-company under a
      # platform, or omit it to create a company for the current user.
      #
      # Required permissions:
      #
      # - `company:create`
      # - `company:basic:read`
      sig do
        params(
          title: String,
          business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
          description: T.nilable(String),
          email: T.nilable(String),
          industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
          logo: T.nilable(WhopSDK::CompanyCreateParams::Logo::OrHash),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          parent_company_id: T.nilable(String),
          send_customer_emails: T.nilable(T::Boolean),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Company)
      end
      def create(
        # The name of the company being created.
        title:,
        # The different business types a company can be.
        business_type: nil,
        # A description of what the company offers or does.
        description: nil,
        # The email of the user who the sub-company will belong to. Required when
        # parent_company_id is provided.
        email: nil,
        # The different industry types a company can be in.
        industry_type: nil,
        # The logo for the company in png, jpeg, or gif format
        logo: nil,
        # Additional metadata for the company
        metadata: nil,
        # The company ID of the platform creating this sub-company. If omitted, the
        # company is created for the current user.
        parent_company_id: nil,
        # Whether Whop sends transactional emails to customers on behalf of this company.
        # Only used when parent_company_id is provided.
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
          banner_image:
            T.nilable(WhopSDK::CompanyUpdateParams::BannerImage::OrHash),
          business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
          description: T.nilable(String),
          industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
          logo: T.nilable(WhopSDK::CompanyUpdateParams::Logo::OrHash),
          send_customer_emails: T.nilable(T::Boolean),
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Company)
      end
      def update(
        # The ID of the company to update
        id,
        # The banner image for the company in png or jpeg format
        banner_image: nil,
        # The different business types a company can be.
        business_type: nil,
        # A description of what the company offers or does.
        description: nil,
        # The different industry types a company can be in.
        industry_type: nil,
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

      # Lists companies. When parent_company_id is provided, lists connected accounts
      # under that company. When omitted, lists companies the current user has access
      # to.
      #
      # Required permissions:
      #
      # - `company:basic:read`
      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          parent_company_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::CompanyListResponse]
        )
      end
      def list(
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
        # The ID of the parent company to list connected accounts for. Omit to list the
        # current user's own companies.
        parent_company_id: nil,
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
