# typed: strong

module WhopSDK
  module Models
    class ProductCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ProductCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The display name of the product. Maximum 80 characters.
      sig { returns(String) }
      attr_accessor :title

      # The unique identifier of the account to create this product for.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # Whether to collect a shipping address at checkout.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :collect_shipping_address

      # The call-to-action button label.
      sig do
        returns(T.nilable(WhopSDK::ProductCreateParams::CustomCta::OrSymbol))
      end
      attr_accessor :custom_cta

      # A URL the call-to-action button links to.
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_cta_url

      # Custom bank statement descriptor. Must start with WHOP\*.
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_statement_descriptor

      # A written description displayed on the product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The commission rate affiliates earn.
      sig { returns(T.nilable(Float)) }
      attr_accessor :global_affiliate_percentage

      # The enrollment status in the global affiliate program.
      sig do
        returns(
          T.nilable(
            WhopSDK::ProductCreateParams::GlobalAffiliateStatus::OrSymbol
          )
        )
      end
      attr_reader :global_affiliate_status

      sig do
        params(
          global_affiliate_status:
            WhopSDK::ProductCreateParams::GlobalAffiliateStatus::OrSymbol
        ).void
      end
      attr_writer :global_affiliate_status

      # A short marketing headline for the product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :headline

      # Labels used to group products into collections. Stored lowercased and
      # de-duplicated. Maximum 20 labels, 50 characters each.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :labels

      # The commission rate members earn.
      sig { returns(T.nilable(Float)) }
      attr_accessor :member_affiliate_percentage

      # The enrollment status in the member affiliate program.
      sig do
        returns(
          T.nilable(
            WhopSDK::ProductCreateParams::MemberAffiliateStatus::OrSymbol
          )
        )
      end
      attr_reader :member_affiliate_status

      sig do
        params(
          member_affiliate_status:
            WhopSDK::ProductCreateParams::MemberAffiliateStatus::OrSymbol
        ).void
      end
      attr_writer :member_affiliate_status

      # Custom key-value pairs to store on the product.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      # The unique identifier of the tax classification code. See the available
      # [product categories](https://docs.numeral.com/essentials/product-categories).
      sig { returns(T.nilable(String)) }
      attr_accessor :product_tax_code_id

      # A URL to redirect the customer to after purchase.
      sig { returns(T.nilable(String)) }
      attr_accessor :redirect_purchase_url

      # The URL slug for the product's public link.
      sig { returns(T.nilable(String)) }
      attr_accessor :route

      # Whether to send an automated welcome message via support chat when a user joins
      # this product. Defaults to true.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :send_welcome_message

      # Whether the product is visible to customers.
      sig { returns(T.nilable(String)) }
      attr_reader :visibility

      sig { params(visibility: String).void }
      attr_writer :visibility

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig do
        params(
          title: String,
          account_id: String,
          collect_shipping_address: T.nilable(T::Boolean),
          custom_cta:
            T.nilable(WhopSDK::ProductCreateParams::CustomCta::OrSymbol),
          custom_cta_url: T.nilable(String),
          custom_statement_descriptor: T.nilable(String),
          description: T.nilable(String),
          global_affiliate_percentage: T.nilable(Float),
          global_affiliate_status:
            WhopSDK::ProductCreateParams::GlobalAffiliateStatus::OrSymbol,
          headline: T.nilable(String),
          labels: T.nilable(T::Array[String]),
          member_affiliate_percentage: T.nilable(Float),
          member_affiliate_status:
            WhopSDK::ProductCreateParams::MemberAffiliateStatus::OrSymbol,
          metadata: T.nilable(T.anything),
          product_tax_code_id: T.nilable(String),
          redirect_purchase_url: T.nilable(String),
          route: T.nilable(String),
          send_welcome_message: T.nilable(T::Boolean),
          visibility: String,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The display name of the product. Maximum 80 characters.
        title:,
        # The unique identifier of the account to create this product for.
        account_id: nil,
        # Whether to collect a shipping address at checkout.
        collect_shipping_address: nil,
        # The call-to-action button label.
        custom_cta: nil,
        # A URL the call-to-action button links to.
        custom_cta_url: nil,
        # Custom bank statement descriptor. Must start with WHOP\*.
        custom_statement_descriptor: nil,
        # A written description displayed on the product page.
        description: nil,
        # The commission rate affiliates earn.
        global_affiliate_percentage: nil,
        # The enrollment status in the global affiliate program.
        global_affiliate_status: nil,
        # A short marketing headline for the product page.
        headline: nil,
        # Labels used to group products into collections. Stored lowercased and
        # de-duplicated. Maximum 20 labels, 50 characters each.
        labels: nil,
        # The commission rate members earn.
        member_affiliate_percentage: nil,
        # The enrollment status in the member affiliate program.
        member_affiliate_status: nil,
        # Custom key-value pairs to store on the product.
        metadata: nil,
        # The unique identifier of the tax classification code. See the available
        # [product categories](https://docs.numeral.com/essentials/product-categories).
        product_tax_code_id: nil,
        # A URL to redirect the customer to after purchase.
        redirect_purchase_url: nil,
        # The URL slug for the product's public link.
        route: nil,
        # Whether to send an automated welcome message via support chat when a user joins
        # this product. Defaults to true.
        send_welcome_message: nil,
        # Whether the product is visible to customers.
        visibility: nil,
        api_version_date: nil,
        idempotency_key: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            title: String,
            account_id: String,
            collect_shipping_address: T.nilable(T::Boolean),
            custom_cta:
              T.nilable(WhopSDK::ProductCreateParams::CustomCta::OrSymbol),
            custom_cta_url: T.nilable(String),
            custom_statement_descriptor: T.nilable(String),
            description: T.nilable(String),
            global_affiliate_percentage: T.nilable(Float),
            global_affiliate_status:
              WhopSDK::ProductCreateParams::GlobalAffiliateStatus::OrSymbol,
            headline: T.nilable(String),
            labels: T.nilable(T::Array[String]),
            member_affiliate_percentage: T.nilable(Float),
            member_affiliate_status:
              WhopSDK::ProductCreateParams::MemberAffiliateStatus::OrSymbol,
            metadata: T.nilable(T.anything),
            product_tax_code_id: T.nilable(String),
            redirect_purchase_url: T.nilable(String),
            route: T.nilable(String),
            send_welcome_message: T.nilable(T::Boolean),
            visibility: String,
            api_version_date: String,
            idempotency_key: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The call-to-action button label.
      module CustomCta
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::ProductCreateParams::CustomCta)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GET_ACCESS =
          T.let(
            :get_access,
            WhopSDK::ProductCreateParams::CustomCta::TaggedSymbol
          )
        JOIN =
          T.let(:join, WhopSDK::ProductCreateParams::CustomCta::TaggedSymbol)
        ORDER_NOW =
          T.let(
            :order_now,
            WhopSDK::ProductCreateParams::CustomCta::TaggedSymbol
          )
        SHOP_NOW =
          T.let(
            :shop_now,
            WhopSDK::ProductCreateParams::CustomCta::TaggedSymbol
          )
        CALL_NOW =
          T.let(
            :call_now,
            WhopSDK::ProductCreateParams::CustomCta::TaggedSymbol
          )
        DONATE_NOW =
          T.let(
            :donate_now,
            WhopSDK::ProductCreateParams::CustomCta::TaggedSymbol
          )
        CONTACT_US =
          T.let(
            :contact_us,
            WhopSDK::ProductCreateParams::CustomCta::TaggedSymbol
          )
        SIGN_UP =
          T.let(:sign_up, WhopSDK::ProductCreateParams::CustomCta::TaggedSymbol)
        SUBSCRIBE =
          T.let(
            :subscribe,
            WhopSDK::ProductCreateParams::CustomCta::TaggedSymbol
          )
        PURCHASE =
          T.let(
            :purchase,
            WhopSDK::ProductCreateParams::CustomCta::TaggedSymbol
          )
        GET_OFFER =
          T.let(
            :get_offer,
            WhopSDK::ProductCreateParams::CustomCta::TaggedSymbol
          )
        APPLY_NOW =
          T.let(
            :apply_now,
            WhopSDK::ProductCreateParams::CustomCta::TaggedSymbol
          )
        COMPLETE_ORDER =
          T.let(
            :complete_order,
            WhopSDK::ProductCreateParams::CustomCta::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::ProductCreateParams::CustomCta::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The enrollment status in the global affiliate program.
      module GlobalAffiliateStatus
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::ProductCreateParams::GlobalAffiliateStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED =
          T.let(
            :enabled,
            WhopSDK::ProductCreateParams::GlobalAffiliateStatus::TaggedSymbol
          )
        DISABLED =
          T.let(
            :disabled,
            WhopSDK::ProductCreateParams::GlobalAffiliateStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::ProductCreateParams::GlobalAffiliateStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The enrollment status in the member affiliate program.
      module MemberAffiliateStatus
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::ProductCreateParams::MemberAffiliateStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED =
          T.let(
            :enabled,
            WhopSDK::ProductCreateParams::MemberAffiliateStatus::TaggedSymbol
          )
        DISABLED =
          T.let(
            :disabled,
            WhopSDK::ProductCreateParams::MemberAffiliateStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::ProductCreateParams::MemberAffiliateStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
