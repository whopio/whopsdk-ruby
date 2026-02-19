# typed: strong

module WhopSDK
  module Resources
    class Companies
      # Create a new company. Pass parent_company_id to create a connected account under
      # a platform, or omit it to create a company for the current user.
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
          industry_group: T.nilable(WhopSDK::IndustryGroups::OrSymbol),
          industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
          logo: T.nilable(WhopSDK::CompanyCreateParams::Logo::OrHash),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          parent_company_id: T.nilable(String),
          send_customer_emails: T.nilable(T::Boolean),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Company)
      end
      def create(
        # The display name of the company shown to customers.
        title:,
        # The different business types a company can be.
        business_type: nil,
        # A promotional pitch displayed to potential customers on the company's store
        # page.
        description: nil,
        # The email address of the user who will own the connected account. Required when
        # parent_company_id is provided.
        email: nil,
        # The different industry groups a company can be in.
        industry_group: nil,
        # The different industry types a company can be in.
        industry_type: nil,
        # The company's logo image. Accepts PNG, JPEG, or GIF format.
        logo: nil,
        # A key-value JSON object of custom metadata to store on the company.
        metadata: nil,
        # The unique identifier of the parent platform company. When provided, creates a
        # connected account under that platform. Omit to create a company for the current
        # user.
        parent_company_id: nil,
        # Whether Whop sends transactional emails to customers on behalf of this company.
        # Only applies when creating a connected account.
        send_customer_emails: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing company.
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
        # The unique identifier or route slug of the company.
        id,
        request_options: {}
      )
      end

      # Update a company's title, description, logo, and other settings.
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
          industry_group: T.nilable(WhopSDK::IndustryGroups::OrSymbol),
          industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
          logo: T.nilable(WhopSDK::CompanyUpdateParams::Logo::OrHash),
          send_customer_emails: T.nilable(T::Boolean),
          target_audience: T.nilable(String),
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Company)
      end
      def update(
        # The unique identifier of the company to update.
        id,
        # The company's banner image. Accepts PNG or JPEG format.
        banner_image: nil,
        # The different business types a company can be.
        business_type: nil,
        # A promotional pitch displayed to potential customers on the company's store
        # page.
        description: nil,
        # The different industry groups a company can be in.
        industry_group: nil,
        # The different industry types a company can be in.
        industry_type: nil,
        # The company's logo image. Accepts PNG, JPEG, or GIF format.
        logo: nil,
        # Whether Whop sends transactional emails (receipts, renewals, cancelations) to
        # customers on behalf of this company.
        send_customer_emails: nil,
        # The target audience for this company (e.g., 'beginner day traders aged 18-25
        # looking to learn options').
        target_audience: nil,
        # The display name of the company shown to customers.
        title: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of companies. When parent_company_id is provided, lists
      # connected accounts under that platform. When omitted, lists companies the
      # current user has access to.
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
        # Only return companies created after this timestamp.
        created_after: nil,
        # Only return companies created before this timestamp.
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The unique identifier of the parent platform company. When provided, lists
        # connected accounts under that platform. Omit to list the current user's own
        # companies.
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
