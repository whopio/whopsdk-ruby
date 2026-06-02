# typed: strong

module WhopSDK
  module Models
    class Account < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Account, WhopSDK::Internal::AnyHash) }

      # The ID of the account, which will look like biz\_******\*******
      sig { returns(String) }
      attr_accessor :id

      # The URL of the account banner image
      sig { returns(T.nilable(String)) }
      attr_accessor :banner_image_url

      # The high-level business category for the account
      sig { returns(T.nilable(String)) }
      attr_accessor :business_type

      # When the account was created, as an ISO 8601 timestamp
      sig { returns(String) }
      attr_accessor :created_at

      # A promotional description for the account
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The email address of the account owner
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # The industry group the account belongs to
      sig { returns(T.nilable(String)) }
      attr_accessor :industry_group

      # The specific industry vertical the account operates in
      sig { returns(T.nilable(String)) }
      attr_accessor :industry_type

      # The URL of the account logo image
      sig { returns(T.nilable(String)) }
      attr_accessor :logo_url

      # Arbitrary key/value metadata supplied when the account was created
      sig { returns(T.anything) }
      attr_accessor :metadata

      # The parent account ID for connected accounts
      sig { returns(T.nilable(String)) }
      attr_accessor :parent_account_id

      # The account's public route identifier
      sig { returns(String) }
      attr_accessor :route

      # Whether Whop sends transactional emails to customers on behalf of this account
      sig { returns(T::Boolean) }
      attr_accessor :send_customer_emails

      sig { returns(T::Array[WhopSDK::AccountSocialLink]) }
      attr_accessor :social_links

      # The target audience for this account
      sig { returns(T.nilable(String)) }
      attr_accessor :target_audience

      # The display name of the account
      sig { returns(String) }
      attr_accessor :title

      # The account's primary crypto wallet, or null if none has been provisioned
      sig { returns(T.nilable(WhopSDK::AccountWallet)) }
      attr_reader :wallet

      sig { params(wallet: T.nilable(WhopSDK::AccountWallet::OrHash)).void }
      attr_writer :wallet

      sig do
        params(
          id: String,
          banner_image_url: T.nilable(String),
          business_type: T.nilable(String),
          created_at: String,
          description: T.nilable(String),
          email: T.nilable(String),
          industry_group: T.nilable(String),
          industry_type: T.nilable(String),
          logo_url: T.nilable(String),
          metadata: T.anything,
          parent_account_id: T.nilable(String),
          route: String,
          send_customer_emails: T::Boolean,
          social_links: T::Array[WhopSDK::AccountSocialLink::OrHash],
          target_audience: T.nilable(String),
          title: String,
          wallet: T.nilable(WhopSDK::AccountWallet::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the account, which will look like biz\_******\*******
        id:,
        # The URL of the account banner image
        banner_image_url:,
        # The high-level business category for the account
        business_type:,
        # When the account was created, as an ISO 8601 timestamp
        created_at:,
        # A promotional description for the account
        description:,
        # The email address of the account owner
        email:,
        # The industry group the account belongs to
        industry_group:,
        # The specific industry vertical the account operates in
        industry_type:,
        # The URL of the account logo image
        logo_url:,
        # Arbitrary key/value metadata supplied when the account was created
        metadata:,
        # The parent account ID for connected accounts
        parent_account_id:,
        # The account's public route identifier
        route:,
        # Whether Whop sends transactional emails to customers on behalf of this account
        send_customer_emails:,
        social_links:,
        # The target audience for this account
        target_audience:,
        # The display name of the account
        title:,
        # The account's primary crypto wallet, or null if none has been provisioned
        wallet:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            banner_image_url: T.nilable(String),
            business_type: T.nilable(String),
            created_at: String,
            description: T.nilable(String),
            email: T.nilable(String),
            industry_group: T.nilable(String),
            industry_type: T.nilable(String),
            logo_url: T.nilable(String),
            metadata: T.anything,
            parent_account_id: T.nilable(String),
            route: String,
            send_customer_emails: T::Boolean,
            social_links: T::Array[WhopSDK::AccountSocialLink],
            target_audience: T.nilable(String),
            title: String,
            wallet: T.nilable(WhopSDK::AccountWallet)
          }
        )
      end
      def to_hash
      end
    end
  end
end
