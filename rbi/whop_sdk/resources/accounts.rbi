# typed: strong

module WhopSDK
  module Resources
    class Accounts
      # Creates an account. User tokens create business accounts; business account API
      # keys create connected accounts.
      sig do
        params(
          email: String,
          metadata: T::Hash[Symbol, T.anything],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Account)
      end
      def create(
        # The email address of the account owner. Required for business account API key
        # requests.
        email: nil,
        # Arbitrary key/value metadata to store on the account.
        metadata: nil,
        request_options: {}
      )
      end

      # Retrieves a single account visible to the credential, including its crypto
      # wallet.
      sig do
        params(
          account_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Account)
      end
      def retrieve(
        # The ID of the account, which will look like biz\_******\*******
        account_id,
        request_options: {}
      )
      end

      # Updates an account. User tokens can update business accounts; business account
      # API keys can update connected accounts.
      sig do
        params(
          account_id: String,
          affiliate_application_required: T::Boolean,
          affiliate_instructions: T.nilable(String),
          banner_image: T.nilable(T::Hash[Symbol, T.anything]),
          business_type: T.nilable(String),
          description: T.nilable(String),
          featured_affiliate_product_id: T.nilable(String),
          industry_group: T.nilable(String),
          industry_type: T.nilable(String),
          logo: T.nilable(T::Hash[Symbol, T.anything]),
          metadata: T::Hash[Symbol, T.anything],
          route: T.nilable(String),
          send_customer_emails: T::Boolean,
          social_links: T::Array[T::Hash[Symbol, T.anything]],
          target_audience: T.nilable(String),
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Account)
      end
      def update(
        # The ID of the account, which will look like biz\_******\*******
        account_id,
        # Whether prospective affiliates must submit an application before promoting this
        # account.
        affiliate_application_required: nil,
        # Guidelines shown to affiliates promoting this account.
        affiliate_instructions: nil,
        # Attachment input for the account banner image.
        banner_image: nil,
        # The high-level business category for the account.
        business_type: nil,
        # A promotional description for the account.
        description: nil,
        # The ID of the product to feature for affiliates. Pass null to clear.
        featured_affiliate_product_id: nil,
        # The industry group the account belongs to.
        industry_group: nil,
        # The specific industry vertical the account operates in.
        industry_type: nil,
        # Attachment input for the account logo.
        logo: nil,
        # Arbitrary key/value metadata to store on the account.
        metadata: nil,
        # The unique URL slug for the account.
        route: nil,
        # Whether Whop sends transactional emails to customers on behalf of this account.
        send_customer_emails: nil,
        # The full list of social links to display for the account.
        social_links: nil,
        # The target audience for this account.
        target_audience: nil,
        # The display name of the account.
        title: nil,
        request_options: {}
      )
      end

      # Lists accounts visible to the credential. User tokens return the user's business
      # accounts; business account API keys return the requesting business account and
      # its connected accounts.
      sig do
        params(
          page: Integer,
          per: Integer,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AccountListResponse)
      end
      def list(
        # The page number to retrieve
        page: nil,
        # The number of resources to return per page. There is a limit of 50 results per
        # page.
        per: nil,
        request_options: {}
      )
      end

      # Retrieves the business account associated with the current business account API
      # key.
      sig do
        params(request_options: WhopSDK::RequestOptions::OrHash).returns(
          WhopSDK::Account
        )
      end
      def me(request_options: {})
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
