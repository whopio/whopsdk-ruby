# typed: strong

module WhopSDK
  module Models
    class AccountUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AccountUpdateParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account_id

      # Whether prospective affiliates must submit an application before promoting this
      # account.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :affiliate_application_required

      sig { params(affiliate_application_required: T::Boolean).void }
      attr_writer :affiliate_application_required

      # Guidelines shown to affiliates promoting this account.
      sig { returns(T.nilable(String)) }
      attr_accessor :affiliate_instructions

      # Attachment input for the account banner image.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :banner_image

      # The high-level business category for the account.
      sig { returns(T.nilable(String)) }
      attr_accessor :business_type

      # A promotional description for the account.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The ID of the product to feature for affiliates. Pass null to clear.
      sig { returns(T.nilable(String)) }
      attr_accessor :featured_affiliate_product_id

      # The industry group the account belongs to.
      sig { returns(T.nilable(String)) }
      attr_accessor :industry_group

      # The specific industry vertical the account operates in.
      sig { returns(T.nilable(String)) }
      attr_accessor :industry_type

      # Attachment input for the account logo.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :logo

      # Arbitrary key/value metadata to store on the account.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, T.anything]).void }
      attr_writer :metadata

      # The unique URL slug for the account.
      sig { returns(T.nilable(String)) }
      attr_accessor :route

      # Whether Whop sends transactional emails to customers on behalf of this account.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :send_customer_emails

      sig { params(send_customer_emails: T::Boolean).void }
      attr_writer :send_customer_emails

      # The full list of social links to display for the account.
      sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
      attr_reader :social_links

      sig { params(social_links: T::Array[T::Hash[Symbol, T.anything]]).void }
      attr_writer :social_links

      # The target audience for this account.
      sig { returns(T.nilable(String)) }
      attr_accessor :target_audience

      # The display name of the account.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

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
        ).returns(T.attached_class)
      end
      def self.new(
        account_id:,
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

      sig do
        override.returns(
          {
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
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
