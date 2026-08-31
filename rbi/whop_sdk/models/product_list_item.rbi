# typed: strong

module WhopSDK
  module Models
    class ProductListItem < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::ProductListItem, WhopSDK::Internal::AnyHash)
        end

      # Product ID, prefixed `prod_`.
      sig { returns(String) }
      attr_accessor :id

      # Account that sells this product.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :account

      # When the product was created, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :created_at

      # Buyable plan to show and check out with. The configured default when that plan
      # is buyable, otherwise the first buyable plan in product-page order. `null` when
      # none is buyable.
      sig { returns(T.nilable(WhopSDK::ProductListItem::DefaultPlan)) }
      attr_reader :default_plan

      sig do
        params(
          default_plan: T.nilable(WhopSDK::ProductListItem::DefaultPlan::OrHash)
        ).void
      end
      attr_writer :default_plan

      # Written description displayed on the product page. `null` if none is set.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # External identifier stored on the product for your own reference.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_identifier

      sig { returns(T::Array[WhopSDK::ProductListItem::GalleryImage]) }
      attr_accessor :gallery_images

      # Short marketing headline displayed on product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :headline

      sig { returns(T::Array[String]) }
      attr_accessor :labels

      # Active memberships for this product; 0 if public member counts are disabled.
      sig { returns(Float) }
      attr_accessor :member_count

      # Custom key-value pairs stored on the product.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

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
          default_plan:
            T.nilable(WhopSDK::ProductListItem::DefaultPlan::OrHash),
          description: T.nilable(String),
          external_identifier: T.nilable(String),
          gallery_images:
            T::Array[WhopSDK::ProductListItem::GalleryImage::OrHash],
          headline: T.nilable(String),
          labels: T::Array[String],
          member_count: Float,
          metadata: T.nilable(T.anything),
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
        # Buyable plan to show and check out with. The configured default when that plan
        # is buyable, otherwise the first buyable plan in product-page order. `null` when
        # none is buyable.
        default_plan:,
        # Written description displayed on the product page. `null` if none is set.
        description:,
        # External identifier stored on the product for your own reference.
        external_identifier:,
        gallery_images:,
        # Short marketing headline displayed on product page.
        headline:,
        labels:,
        # Active memberships for this product; 0 if public member counts are disabled.
        member_count:,
        # Custom key-value pairs stored on the product.
        metadata:,
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
            default_plan: T.nilable(WhopSDK::ProductListItem::DefaultPlan),
            description: T.nilable(String),
            external_identifier: T.nilable(String),
            gallery_images: T::Array[WhopSDK::ProductListItem::GalleryImage],
            headline: T.nilable(String),
            labels: T::Array[String],
            member_count: Float,
            metadata: T.nilable(T.anything),
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

      class DefaultPlan < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::ProductListItem::DefaultPlan,
              WhopSDK::Internal::AnyHash
            )
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
        sig { returns(WhopSDK::ProductListItem::DefaultPlan::InitialPrice) }
        attr_reader :initial_price

        sig do
          params(
            initial_price:
              WhopSDK::ProductListItem::DefaultPlan::InitialPrice::OrHash
          ).void
        end
        attr_writer :initial_price

        # Billing model for this plan: `one_time` or `renewal`.
        sig do
          returns(WhopSDK::ProductListItem::DefaultPlan::PlanType::TaggedSymbol)
        end
        attr_accessor :plan_type

        # The recurring charge every `billing_period` days. `amount` is `"0.00"` for
        # one-time plans.
        sig { returns(WhopSDK::ProductListItem::DefaultPlan::RenewalPrice) }
        attr_reader :renewal_price

        sig do
          params(
            renewal_price:
              WhopSDK::ProductListItem::DefaultPlan::RenewalPrice::OrHash
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
        sig do
          returns(
            WhopSDK::ProductListItem::DefaultPlan::Visibility::TaggedSymbol
          )
        end
        attr_accessor :visibility

        # Buyable plan to show and check out with. The configured default when that plan
        # is buyable, otherwise the first buyable plan in product-page order. `null` when
        # none is buyable.
        sig do
          params(
            id: String,
            billing_period: T.nilable(Float),
            expiration_days: T.nilable(Float),
            initial_price:
              WhopSDK::ProductListItem::DefaultPlan::InitialPrice::OrHash,
            plan_type:
              WhopSDK::ProductListItem::DefaultPlan::PlanType::OrSymbol,
            renewal_price:
              WhopSDK::ProductListItem::DefaultPlan::RenewalPrice::OrHash,
            title: T.nilable(String),
            unlimited_stock: T::Boolean,
            visibility:
              WhopSDK::ProductListItem::DefaultPlan::Visibility::OrSymbol
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
              initial_price:
                WhopSDK::ProductListItem::DefaultPlan::InitialPrice,
              plan_type:
                WhopSDK::ProductListItem::DefaultPlan::PlanType::TaggedSymbol,
              renewal_price:
                WhopSDK::ProductListItem::DefaultPlan::RenewalPrice,
              title: T.nilable(String),
              unlimited_stock: T::Boolean,
              visibility:
                WhopSDK::ProductListItem::DefaultPlan::Visibility::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class InitialPrice < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::ProductListItem::DefaultPlan::InitialPrice,
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
              T.all(Symbol, WhopSDK::ProductListItem::DefaultPlan::PlanType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RENEWAL =
            T.let(
              :renewal,
              WhopSDK::ProductListItem::DefaultPlan::PlanType::TaggedSymbol
            )
          ONE_TIME =
            T.let(
              :one_time,
              WhopSDK::ProductListItem::DefaultPlan::PlanType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::ProductListItem::DefaultPlan::PlanType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class RenewalPrice < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::ProductListItem::DefaultPlan::RenewalPrice,
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
              T.all(Symbol, WhopSDK::ProductListItem::DefaultPlan::Visibility)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VISIBLE =
            T.let(
              :visible,
              WhopSDK::ProductListItem::DefaultPlan::Visibility::TaggedSymbol
            )
          HIDDEN =
            T.let(
              :hidden,
              WhopSDK::ProductListItem::DefaultPlan::Visibility::TaggedSymbol
            )
          ARCHIVED =
            T.let(
              :archived,
              WhopSDK::ProductListItem::DefaultPlan::Visibility::TaggedSymbol
            )
          QUICK_LINK =
            T.let(
              :quick_link,
              WhopSDK::ProductListItem::DefaultPlan::Visibility::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::ProductListItem::DefaultPlan::Visibility::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class GalleryImage < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::ProductListItem::GalleryImage,
              WhopSDK::Internal::AnyHash
            )
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
    end
  end
end
