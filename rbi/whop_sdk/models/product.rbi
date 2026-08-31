# typed: strong

module WhopSDK
  module Models
    class Product < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Product, WhopSDK::Internal::AnyHash) }

      # Product ID, prefixed `prod_`.
      sig { returns(String) }
      attr_accessor :id

      # Account that sells this product.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :account

      # When the product was created, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :created_at

      # Call-to-action button label shown on the product purchase page.
      sig { returns(T.nilable(WhopSDK::Product::CustomCta::TaggedSymbol)) }
      attr_accessor :custom_cta

      # URL the call-to-action button links to instead of checkout.
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_cta_url

      # Custom text label on customer's bank statement.
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_statement_descriptor

      # Buyable plan to show and check out with. The configured default when that plan
      # is buyable, otherwise the first buyable plan in product-page order. `null` when
      # none is buyable.
      sig { returns(T.nilable(WhopSDK::Product::DefaultPlan)) }
      attr_reader :default_plan

      sig do
        params(
          default_plan: T.nilable(WhopSDK::Product::DefaultPlan::OrHash)
        ).void
      end
      attr_writer :default_plan

      # Written description displayed on the product page. `null` if none is set.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # External identifier stored on the product for your own reference.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_identifier

      sig { returns(T::Array[WhopSDK::Product::GalleryImage]) }
      attr_accessor :gallery_images

      # Commission rate affiliates earn through the global affiliate program.
      sig { returns(T.nilable(Float)) }
      attr_accessor :global_affiliate_percentage

      # Enrollment status in the global affiliate program.
      sig do
        returns(
          T.nilable(WhopSDK::Product::GlobalAffiliateStatus::TaggedSymbol)
        )
      end
      attr_accessor :global_affiliate_status

      # Short marketing headline displayed on product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :headline

      sig { returns(T::Array[String]) }
      attr_accessor :labels

      # Listing state on the whop.com marketplace. `pending_review` means submitted and
      # awaiting review; `live_marketplace` means approved and discoverable.
      sig { returns(WhopSDK::Product::MarketplaceStatus::TaggedSymbol) }
      attr_accessor :marketplace_status

      # Commission rate members earn through the member affiliate program.
      sig { returns(T.nilable(Float)) }
      attr_accessor :member_affiliate_percentage

      # Enrollment status in the member affiliate program.
      sig do
        returns(
          T.nilable(WhopSDK::Product::MemberAffiliateStatus::TaggedSymbol)
        )
      end
      attr_accessor :member_affiliate_status

      # Active memberships for this product; 0 if public member counts are disabled.
      sig { returns(Float) }
      attr_accessor :member_count

      # Custom key-value pairs stored on the product.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      # User who owns the account selling this product.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :owner_user

      # Tax classification code for this product, or `null` if no tax code is set.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :product_tax_code

      # Published customer reviews for this product.
      sig { returns(Float) }
      attr_accessor :published_reviews_count

      # URL slug for the product's public link.
      sig { returns(String) }
      attr_accessor :route

      # Product display name shown to customers.
      sig { returns(String) }
      attr_accessor :title

      # When the product was last updated, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :updated_at

      # Whether the product has been verified by Whop.
      sig { returns(T::Boolean) }
      attr_accessor :verified

      # Whether the product is publicly visible, hidden, or archived.
      sig { returns(T.nilable(String)) }
      attr_accessor :visibility

      sig do
        params(
          id: String,
          account: T.nilable(T.anything),
          created_at: String,
          custom_cta: T.nilable(WhopSDK::Product::CustomCta::OrSymbol),
          custom_cta_url: T.nilable(String),
          custom_statement_descriptor: T.nilable(String),
          default_plan: T.nilable(WhopSDK::Product::DefaultPlan::OrHash),
          description: T.nilable(String),
          external_identifier: T.nilable(String),
          gallery_images: T::Array[WhopSDK::Product::GalleryImage::OrHash],
          global_affiliate_percentage: T.nilable(Float),
          global_affiliate_status:
            T.nilable(WhopSDK::Product::GlobalAffiliateStatus::OrSymbol),
          headline: T.nilable(String),
          labels: T::Array[String],
          marketplace_status: WhopSDK::Product::MarketplaceStatus::OrSymbol,
          member_affiliate_percentage: T.nilable(Float),
          member_affiliate_status:
            T.nilable(WhopSDK::Product::MemberAffiliateStatus::OrSymbol),
          member_count: Float,
          metadata: T.nilable(T.anything),
          owner_user: T.nilable(T.anything),
          product_tax_code: T.nilable(T.anything),
          published_reviews_count: Float,
          route: String,
          title: String,
          updated_at: String,
          verified: T::Boolean,
          visibility: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Product ID, prefixed `prod_`.
        id:,
        # Account that sells this product.
        account:,
        # When the product was created, as an ISO 8601 timestamp.
        created_at:,
        # Call-to-action button label shown on the product purchase page.
        custom_cta:,
        # URL the call-to-action button links to instead of checkout.
        custom_cta_url:,
        # Custom text label on customer's bank statement.
        custom_statement_descriptor:,
        # Buyable plan to show and check out with. The configured default when that plan
        # is buyable, otherwise the first buyable plan in product-page order. `null` when
        # none is buyable.
        default_plan:,
        # Written description displayed on the product page. `null` if none is set.
        description:,
        # External identifier stored on the product for your own reference.
        external_identifier:,
        gallery_images:,
        # Commission rate affiliates earn through the global affiliate program.
        global_affiliate_percentage:,
        # Enrollment status in the global affiliate program.
        global_affiliate_status:,
        # Short marketing headline displayed on product page.
        headline:,
        labels:,
        # Listing state on the whop.com marketplace. `pending_review` means submitted and
        # awaiting review; `live_marketplace` means approved and discoverable.
        marketplace_status:,
        # Commission rate members earn through the member affiliate program.
        member_affiliate_percentage:,
        # Enrollment status in the member affiliate program.
        member_affiliate_status:,
        # Active memberships for this product; 0 if public member counts are disabled.
        member_count:,
        # Custom key-value pairs stored on the product.
        metadata:,
        # User who owns the account selling this product.
        owner_user:,
        # Tax classification code for this product, or `null` if no tax code is set.
        product_tax_code:,
        # Published customer reviews for this product.
        published_reviews_count:,
        # URL slug for the product's public link.
        route:,
        # Product display name shown to customers.
        title:,
        # When the product was last updated, as an ISO 8601 timestamp.
        updated_at:,
        # Whether the product has been verified by Whop.
        verified:,
        # Whether the product is publicly visible, hidden, or archived.
        visibility:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account: T.nilable(T.anything),
            created_at: String,
            custom_cta: T.nilable(WhopSDK::Product::CustomCta::TaggedSymbol),
            custom_cta_url: T.nilable(String),
            custom_statement_descriptor: T.nilable(String),
            default_plan: T.nilable(WhopSDK::Product::DefaultPlan),
            description: T.nilable(String),
            external_identifier: T.nilable(String),
            gallery_images: T::Array[WhopSDK::Product::GalleryImage],
            global_affiliate_percentage: T.nilable(Float),
            global_affiliate_status:
              T.nilable(WhopSDK::Product::GlobalAffiliateStatus::TaggedSymbol),
            headline: T.nilable(String),
            labels: T::Array[String],
            marketplace_status:
              WhopSDK::Product::MarketplaceStatus::TaggedSymbol,
            member_affiliate_percentage: T.nilable(Float),
            member_affiliate_status:
              T.nilable(WhopSDK::Product::MemberAffiliateStatus::TaggedSymbol),
            member_count: Float,
            metadata: T.nilable(T.anything),
            owner_user: T.nilable(T.anything),
            product_tax_code: T.nilable(T.anything),
            published_reviews_count: Float,
            route: String,
            title: String,
            updated_at: String,
            verified: T::Boolean,
            visibility: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # Call-to-action button label shown on the product purchase page.
      module CustomCta
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::Product::CustomCta) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GET_ACCESS =
          T.let(:get_access, WhopSDK::Product::CustomCta::TaggedSymbol)
        JOIN = T.let(:join, WhopSDK::Product::CustomCta::TaggedSymbol)
        ORDER_NOW = T.let(:order_now, WhopSDK::Product::CustomCta::TaggedSymbol)
        SHOP_NOW = T.let(:shop_now, WhopSDK::Product::CustomCta::TaggedSymbol)
        CALL_NOW = T.let(:call_now, WhopSDK::Product::CustomCta::TaggedSymbol)
        DONATE_NOW =
          T.let(:donate_now, WhopSDK::Product::CustomCta::TaggedSymbol)
        CONTACT_US =
          T.let(:contact_us, WhopSDK::Product::CustomCta::TaggedSymbol)
        SIGN_UP = T.let(:sign_up, WhopSDK::Product::CustomCta::TaggedSymbol)
        SUBSCRIBE = T.let(:subscribe, WhopSDK::Product::CustomCta::TaggedSymbol)
        PURCHASE = T.let(:purchase, WhopSDK::Product::CustomCta::TaggedSymbol)
        GET_OFFER = T.let(:get_offer, WhopSDK::Product::CustomCta::TaggedSymbol)
        APPLY_NOW = T.let(:apply_now, WhopSDK::Product::CustomCta::TaggedSymbol)
        COMPLETE_ORDER =
          T.let(:complete_order, WhopSDK::Product::CustomCta::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::Product::CustomCta::TaggedSymbol])
        end
        def self.values
        end
      end

      class DefaultPlan < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Product::DefaultPlan, WhopSDK::Internal::AnyHash)
          end

        # Plan ID, prefixed `plan_`.
        sig { returns(String) }
        attr_accessor :id

        # Number of days between recurring charges, such as 30 for monthly or 365 for
        # annual. `null` for one-time plans.
        sig { returns(T.nilable(Float)) }
        attr_accessor :billing_period

        # Access duration in days for expiration-based plans. `null` for plans without an
        # expiration.
        sig { returns(T.nilable(Float)) }
        attr_accessor :expiration_days

        # What checkout charges up front. `amount` is `"0.00"` when the first charge is
        # free, such as a trial.
        sig { returns(WhopSDK::Product::DefaultPlan::InitialPrice) }
        attr_reader :initial_price

        sig do
          params(
            initial_price: WhopSDK::Product::DefaultPlan::InitialPrice::OrHash
          ).void
        end
        attr_writer :initial_price

        # Billing model for this plan: `one_time` or `renewal`.
        sig { returns(WhopSDK::Product::DefaultPlan::PlanType::TaggedSymbol) }
        attr_accessor :plan_type

        # The recurring charge every `billing_period` days. `amount` is `"0.00"` for
        # one-time plans.
        sig { returns(WhopSDK::Product::DefaultPlan::RenewalPrice) }
        attr_reader :renewal_price

        sig do
          params(
            renewal_price: WhopSDK::Product::DefaultPlan::RenewalPrice::OrHash
          ).void
        end
        attr_writer :renewal_price

        # Plan display name shown to customers. `null` if no title has been set.
        sig { returns(T.nilable(String)) }
        attr_accessor :title

        # Whether the plan has unlimited stock.
        sig { returns(T::Boolean) }
        attr_accessor :unlimited_stock

        # Where this plan can be seen. `visible` plans appear on the product page.
        sig { returns(WhopSDK::Product::DefaultPlan::Visibility::TaggedSymbol) }
        attr_accessor :visibility

        # Buyable plan to show and check out with. The configured default when that plan
        # is buyable, otherwise the first buyable plan in product-page order. `null` when
        # none is buyable.
        sig do
          params(
            id: String,
            billing_period: T.nilable(Float),
            expiration_days: T.nilable(Float),
            initial_price: WhopSDK::Product::DefaultPlan::InitialPrice::OrHash,
            plan_type: WhopSDK::Product::DefaultPlan::PlanType::OrSymbol,
            renewal_price: WhopSDK::Product::DefaultPlan::RenewalPrice::OrHash,
            title: T.nilable(String),
            unlimited_stock: T::Boolean,
            visibility: WhopSDK::Product::DefaultPlan::Visibility::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Plan ID, prefixed `plan_`.
          id:,
          # Number of days between recurring charges, such as 30 for monthly or 365 for
          # annual. `null` for one-time plans.
          billing_period:,
          # Access duration in days for expiration-based plans. `null` for plans without an
          # expiration.
          expiration_days:,
          # What checkout charges up front. `amount` is `"0.00"` when the first charge is
          # free, such as a trial.
          initial_price:,
          # Billing model for this plan: `one_time` or `renewal`.
          plan_type:,
          # The recurring charge every `billing_period` days. `amount` is `"0.00"` for
          # one-time plans.
          renewal_price:,
          # Plan display name shown to customers. `null` if no title has been set.
          title:,
          # Whether the plan has unlimited stock.
          unlimited_stock:,
          # Where this plan can be seen. `visible` plans appear on the product page.
          visibility:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billing_period: T.nilable(Float),
              expiration_days: T.nilable(Float),
              initial_price: WhopSDK::Product::DefaultPlan::InitialPrice,
              plan_type: WhopSDK::Product::DefaultPlan::PlanType::TaggedSymbol,
              renewal_price: WhopSDK::Product::DefaultPlan::RenewalPrice,
              title: T.nilable(String),
              unlimited_stock: T::Boolean,
              visibility:
                WhopSDK::Product::DefaultPlan::Visibility::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class InitialPrice < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Product::DefaultPlan::InitialPrice,
                WhopSDK::Internal::AnyHash
              )
            end

          # The amount in major units, as an exact decimal string — `"10.00"` is ten
          # dollars. A string so no float rounds it in transit.
          sig { returns(String) }
          attr_accessor :amount

          # Three-letter ISO 4217 currency code, lowercase.
          sig { returns(String) }
          attr_accessor :currency

          # How many decimal places the amount CARRIES — the precision the charge itself
          # runs at.
          sig { returns(Integer) }
          attr_accessor :decimals

          # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
          # not always: COP is charged in centavos but written in whole pesos, so it is `2`
          # and `0`. Format the number in your own locale using this.
          sig { returns(Integer) }
          attr_accessor :display_decimals

          # What checkout charges up front. `amount` is `"0.00"` when the first charge is
          # free, such as a trial.
          sig do
            params(
              amount: String,
              currency: String,
              decimals: Integer,
              display_decimals: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # The amount in major units, as an exact decimal string — `"10.00"` is ten
            # dollars. A string so no float rounds it in transit.
            amount:,
            # Three-letter ISO 4217 currency code, lowercase.
            currency:,
            # How many decimal places the amount CARRIES — the precision the charge itself
            # runs at.
            decimals:,
            # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
            # not always: COP is charged in centavos but written in whole pesos, so it is `2`
            # and `0`. Format the number in your own locale using this.
            display_decimals:
          )
          end

          sig do
            override.returns(
              {
                amount: String,
                currency: String,
                decimals: Integer,
                display_decimals: Integer
              }
            )
          end
          def to_hash
          end
        end

        # Billing model for this plan: `one_time` or `renewal`.
        module PlanType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Product::DefaultPlan::PlanType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RENEWAL =
            T.let(
              :renewal,
              WhopSDK::Product::DefaultPlan::PlanType::TaggedSymbol
            )
          ONE_TIME =
            T.let(
              :one_time,
              WhopSDK::Product::DefaultPlan::PlanType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[WhopSDK::Product::DefaultPlan::PlanType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class RenewalPrice < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Product::DefaultPlan::RenewalPrice,
                WhopSDK::Internal::AnyHash
              )
            end

          # The amount in major units, as an exact decimal string — `"10.00"` is ten
          # dollars. A string so no float rounds it in transit.
          sig { returns(String) }
          attr_accessor :amount

          # Three-letter ISO 4217 currency code, lowercase.
          sig { returns(String) }
          attr_accessor :currency

          # How many decimal places the amount CARRIES — the precision the charge itself
          # runs at.
          sig { returns(Integer) }
          attr_accessor :decimals

          # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
          # not always: COP is charged in centavos but written in whole pesos, so it is `2`
          # and `0`. Format the number in your own locale using this.
          sig { returns(Integer) }
          attr_accessor :display_decimals

          # The recurring charge every `billing_period` days. `amount` is `"0.00"` for
          # one-time plans.
          sig do
            params(
              amount: String,
              currency: String,
              decimals: Integer,
              display_decimals: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # The amount in major units, as an exact decimal string — `"10.00"` is ten
            # dollars. A string so no float rounds it in transit.
            amount:,
            # Three-letter ISO 4217 currency code, lowercase.
            currency:,
            # How many decimal places the amount CARRIES — the precision the charge itself
            # runs at.
            decimals:,
            # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
            # not always: COP is charged in centavos but written in whole pesos, so it is `2`
            # and `0`. Format the number in your own locale using this.
            display_decimals:
          )
          end

          sig do
            override.returns(
              {
                amount: String,
                currency: String,
                decimals: Integer,
                display_decimals: Integer
              }
            )
          end
          def to_hash
          end
        end

        # Where this plan can be seen. `visible` plans appear on the product page.
        module Visibility
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Product::DefaultPlan::Visibility)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VISIBLE =
            T.let(
              :visible,
              WhopSDK::Product::DefaultPlan::Visibility::TaggedSymbol
            )
          HIDDEN =
            T.let(
              :hidden,
              WhopSDK::Product::DefaultPlan::Visibility::TaggedSymbol
            )
          ARCHIVED =
            T.let(
              :archived,
              WhopSDK::Product::DefaultPlan::Visibility::TaggedSymbol
            )
          QUICK_LINK =
            T.let(
              :quick_link,
              WhopSDK::Product::DefaultPlan::Visibility::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[WhopSDK::Product::DefaultPlan::Visibility::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class GalleryImage < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Product::GalleryImage, WhopSDK::Internal::AnyHash)
          end

        # Gallery image ID.
        sig { returns(String) }
        attr_accessor :id

        # Uploaded file MIME type, such as image/jpeg.
        sig { returns(T.nilable(String)) }
        attr_accessor :content_type

        # Pre-optimized URL for rendering this image on the client.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # Gallery images for this product, ordered by position.
        sig do
          params(
            id: String,
            content_type: T.nilable(String),
            url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Gallery image ID.
          id:,
          # Uploaded file MIME type, such as image/jpeg.
          content_type:,
          # Pre-optimized URL for rendering this image on the client.
          url:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              content_type: T.nilable(String),
              url: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      # Enrollment status in the global affiliate program.
      module GlobalAffiliateStatus
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Product::GlobalAffiliateStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED =
          T.let(:enabled, WhopSDK::Product::GlobalAffiliateStatus::TaggedSymbol)
        DISABLED =
          T.let(
            :disabled,
            WhopSDK::Product::GlobalAffiliateStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Product::GlobalAffiliateStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Listing state on the whop.com marketplace. `pending_review` means submitted and
      # awaiting review; `live_marketplace` means approved and discoverable.
      module MarketplaceStatus
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::Product::MarketplaceStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NOT_AVAILABLE =
          T.let(
            :not_available,
            WhopSDK::Product::MarketplaceStatus::TaggedSymbol
          )
        PENDING_REVIEW =
          T.let(
            :pending_review,
            WhopSDK::Product::MarketplaceStatus::TaggedSymbol
          )
        LIVE_MARKETPLACE =
          T.let(
            :live_marketplace,
            WhopSDK::Product::MarketplaceStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Product::MarketplaceStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Enrollment status in the member affiliate program.
      module MemberAffiliateStatus
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Product::MemberAffiliateStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED =
          T.let(:enabled, WhopSDK::Product::MemberAffiliateStatus::TaggedSymbol)
        DISABLED =
          T.let(
            :disabled,
            WhopSDK::Product::MemberAffiliateStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Product::MemberAffiliateStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
