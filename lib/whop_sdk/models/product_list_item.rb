# frozen_string_literal: true

module WhopSDK
  module Models
    class ProductListItem < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Product ID, prefixed `prod_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute account
      #   Account that sells this product.
      #
      #   @return [Object, nil]
      required :account, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute created_at
      #   When the product was created, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute default_plan
      #   Buyable plan to show and check out with. The configured default when that plan
      #   is buyable, otherwise the first buyable plan in product-page order. `null` when
      #   none is buyable.
      #
      #   @return [WhopSDK::Models::ProductListItem::DefaultPlan, nil]
      required :default_plan, -> { WhopSDK::ProductListItem::DefaultPlan }, nil?: true

      # @!attribute description
      #   Written description displayed on the product page. `null` if none is set.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute external_identifier
      #   External identifier stored on the product for your own reference.
      #
      #   @return [String, nil]
      required :external_identifier, String, nil?: true

      # @!attribute gallery_images
      #
      #   @return [Array<WhopSDK::Models::ProductListItem::GalleryImage>]
      required :gallery_images, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::ProductListItem::GalleryImage] }

      # @!attribute headline
      #   Short marketing headline displayed on product page.
      #
      #   @return [String, nil]
      required :headline, String, nil?: true

      # @!attribute labels
      #
      #   @return [Array<String>]
      required :labels, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute member_count
      #   Active memberships for this product; 0 if public member counts are disabled.
      #
      #   @return [Float]
      required :member_count, Float

      # @!attribute metadata
      #   Custom key-value pairs stored on the product.
      #
      #   @return [Object, nil]
      required :metadata, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute published_reviews_count
      #   Published customer reviews for this product.
      #
      #   @return [Float]
      required :published_reviews_count, Float

      # @!attribute route
      #   URL slug for the product's public link.
      #
      #   @return [String]
      required :route, String

      # @!attribute title
      #   Product display name shown to customers.
      #
      #   @return [String]
      required :title, String

      # @!attribute updated_at
      #   When the product was last updated, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute verified
      #   Whether the product has been verified by Whop.
      #
      #   @return [Boolean]
      required :verified, WhopSDK::Internal::Type::Boolean

      # @!attribute visibility
      #   Whether the product is publicly visible, hidden, or archived.
      #
      #   @return [String, nil]
      required :visibility, String, nil?: true

      # @!method initialize(id:, account:, created_at:, default_plan:, description:, external_identifier:, gallery_images:, headline:, labels:, member_count:, metadata:, published_reviews_count:, route:, title:, updated_at:, verified:, visibility:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ProductListItem} for more details.
      #
      #   @param id [String] Product ID, prefixed `prod_`.
      #
      #   @param account [Object, nil] Account that sells this product.
      #
      #   @param created_at [String] When the product was created, as an ISO 8601 timestamp.
      #
      #   @param default_plan [WhopSDK::Models::ProductListItem::DefaultPlan, nil] Buyable plan to show and check out with. The configured default when that plan i
      #
      #   @param description [String, nil] Written description displayed on the product page. `null` if none is set.
      #
      #   @param external_identifier [String, nil] External identifier stored on the product for your own reference.
      #
      #   @param gallery_images [Array<WhopSDK::Models::ProductListItem::GalleryImage>]
      #
      #   @param headline [String, nil] Short marketing headline displayed on product page.
      #
      #   @param labels [Array<String>]
      #
      #   @param member_count [Float] Active memberships for this product; 0 if public member counts are disabled.
      #
      #   @param metadata [Object, nil] Custom key-value pairs stored on the product.
      #
      #   @param published_reviews_count [Float] Published customer reviews for this product.
      #
      #   @param route [String] URL slug for the product's public link.
      #
      #   @param title [String] Product display name shown to customers.
      #
      #   @param updated_at [String] When the product was last updated, as an ISO 8601 timestamp.
      #
      #   @param verified [Boolean] Whether the product has been verified by Whop.
      #
      #   @param visibility [String, nil] Whether the product is publicly visible, hidden, or archived.

      # @see WhopSDK::Models::ProductListItem#default_plan
      class DefaultPlan < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Plan ID, prefixed `plan_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute billing_period
        #   Number of days between recurring charges, such as 30 for monthly or 365 for
        #   annual. `null` for one-time plans.
        #
        #   @return [Float, nil]
        required :billing_period, Float, nil?: true

        # @!attribute expiration_days
        #   Access duration in days for expiration-based plans. `null` for plans without an
        #   expiration.
        #
        #   @return [Float, nil]
        required :expiration_days, Float, nil?: true

        # @!attribute initial_price
        #   What checkout charges up front. `amount` is `"0.00"` when the first charge is
        #   free, such as a trial.
        #
        #   @return [WhopSDK::Models::ProductListItem::DefaultPlan::InitialPrice]
        required :initial_price, -> { WhopSDK::ProductListItem::DefaultPlan::InitialPrice }

        # @!attribute plan_type
        #   Billing model for this plan: `one_time` or `renewal`.
        #
        #   @return [Symbol, WhopSDK::Models::ProductListItem::DefaultPlan::PlanType]
        required :plan_type, enum: -> { WhopSDK::ProductListItem::DefaultPlan::PlanType }

        # @!attribute renewal_price
        #   The recurring charge every `billing_period` days. `amount` is `"0.00"` for
        #   one-time plans.
        #
        #   @return [WhopSDK::Models::ProductListItem::DefaultPlan::RenewalPrice]
        required :renewal_price, -> { WhopSDK::ProductListItem::DefaultPlan::RenewalPrice }

        # @!attribute title
        #   Plan display name shown to customers. `null` if no title has been set.
        #
        #   @return [String, nil]
        required :title, String, nil?: true

        # @!attribute unlimited_stock
        #   Whether the plan has unlimited stock.
        #
        #   @return [Boolean]
        required :unlimited_stock, WhopSDK::Internal::Type::Boolean

        # @!attribute visibility
        #   Where this plan can be seen. `visible` plans appear on the product page.
        #
        #   @return [Symbol, WhopSDK::Models::ProductListItem::DefaultPlan::Visibility]
        required :visibility, enum: -> { WhopSDK::ProductListItem::DefaultPlan::Visibility }

        # @!method initialize(id:, billing_period:, expiration_days:, initial_price:, plan_type:, renewal_price:, title:, unlimited_stock:, visibility:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::ProductListItem::DefaultPlan} for more details.
        #
        #   Buyable plan to show and check out with. The configured default when that plan
        #   is buyable, otherwise the first buyable plan in product-page order. `null` when
        #   none is buyable.
        #
        #   @param id [String] Plan ID, prefixed `plan_`.
        #
        #   @param billing_period [Float, nil] Number of days between recurring charges, such as 30 for monthly or 365 for annu
        #
        #   @param expiration_days [Float, nil] Access duration in days for expiration-based plans. `null` for plans without an
        #
        #   @param initial_price [WhopSDK::Models::ProductListItem::DefaultPlan::InitialPrice] What checkout charges up front. `amount` is `"0.00"` when the first charge is fr
        #
        #   @param plan_type [Symbol, WhopSDK::Models::ProductListItem::DefaultPlan::PlanType] Billing model for this plan: `one_time` or `renewal`.
        #
        #   @param renewal_price [WhopSDK::Models::ProductListItem::DefaultPlan::RenewalPrice] The recurring charge every `billing_period` days. `amount` is `"0.00"` for one-t
        #
        #   @param title [String, nil] Plan display name shown to customers. `null` if no title has been set.
        #
        #   @param unlimited_stock [Boolean] Whether the plan has unlimited stock.
        #
        #   @param visibility [Symbol, WhopSDK::Models::ProductListItem::DefaultPlan::Visibility] Where this plan can be seen. `visible` plans appear on the product page.

        # @see WhopSDK::Models::ProductListItem::DefaultPlan#initial_price
        class InitialPrice < WhopSDK::Internal::Type::BaseModel
          # @!attribute amount
          #   The amount in major units, as an exact decimal string — `"10.00"` is ten
          #   dollars. A string so no float rounds it in transit.
          #
          #   @return [String]
          required :amount, String

          # @!attribute currency
          #   Three-letter ISO 4217 currency code, lowercase.
          #
          #   @return [String]
          required :currency, String

          # @!attribute decimals
          #   How many decimal places the amount CARRIES — the precision the charge itself
          #   runs at.
          #
          #   @return [Integer]
          required :decimals, Integer

          # @!attribute display_decimals
          #   How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
          #   not always: COP is charged in centavos but written in whole pesos, so it is `2`
          #   and `0`. Format the number in your own locale using this.
          #
          #   @return [Integer]
          required :display_decimals, Integer

          # @!method initialize(amount:, currency:, decimals:, display_decimals:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::ProductListItem::DefaultPlan::InitialPrice} for more details.
          #
          #   What checkout charges up front. `amount` is `"0.00"` when the first charge is
          #   free, such as a trial.
          #
          #   @param amount [String] The amount in major units, as an exact decimal string — `"10.00"` is ten dollars
          #
          #   @param currency [String] Three-letter ISO 4217 currency code, lowercase.
          #
          #   @param decimals [Integer] How many decimal places the amount CARRIES — the precision the charge itself run
          #
          #   @param display_decimals [Integer] How many decimal places to SHOW. Usually equal to `decimals`, and deliberately n
        end

        # Billing model for this plan: `one_time` or `renewal`.
        #
        # @see WhopSDK::Models::ProductListItem::DefaultPlan#plan_type
        module PlanType
          extend WhopSDK::Internal::Type::Enum

          RENEWAL = :renewal
          ONE_TIME = :one_time

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::ProductListItem::DefaultPlan#renewal_price
        class RenewalPrice < WhopSDK::Internal::Type::BaseModel
          # @!attribute amount
          #   The amount in major units, as an exact decimal string — `"10.00"` is ten
          #   dollars. A string so no float rounds it in transit.
          #
          #   @return [String]
          required :amount, String

          # @!attribute currency
          #   Three-letter ISO 4217 currency code, lowercase.
          #
          #   @return [String]
          required :currency, String

          # @!attribute decimals
          #   How many decimal places the amount CARRIES — the precision the charge itself
          #   runs at.
          #
          #   @return [Integer]
          required :decimals, Integer

          # @!attribute display_decimals
          #   How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
          #   not always: COP is charged in centavos but written in whole pesos, so it is `2`
          #   and `0`. Format the number in your own locale using this.
          #
          #   @return [Integer]
          required :display_decimals, Integer

          # @!method initialize(amount:, currency:, decimals:, display_decimals:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::ProductListItem::DefaultPlan::RenewalPrice} for more details.
          #
          #   The recurring charge every `billing_period` days. `amount` is `"0.00"` for
          #   one-time plans.
          #
          #   @param amount [String] The amount in major units, as an exact decimal string — `"10.00"` is ten dollars
          #
          #   @param currency [String] Three-letter ISO 4217 currency code, lowercase.
          #
          #   @param decimals [Integer] How many decimal places the amount CARRIES — the precision the charge itself run
          #
          #   @param display_decimals [Integer] How many decimal places to SHOW. Usually equal to `decimals`, and deliberately n
        end

        # Where this plan can be seen. `visible` plans appear on the product page.
        #
        # @see WhopSDK::Models::ProductListItem::DefaultPlan#visibility
        module Visibility
          extend WhopSDK::Internal::Type::Enum

          VISIBLE = :visible
          HIDDEN = :hidden
          ARCHIVED = :archived
          QUICK_LINK = :quick_link

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class GalleryImage < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Gallery image ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute content_type
        #   Uploaded file MIME type, such as image/jpeg.
        #
        #   @return [String, nil]
        required :content_type, String, nil?: true

        # @!attribute url
        #   Pre-optimized URL for rendering this image on the client.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(id:, content_type:, url:)
        #   Gallery images for this product, ordered by position.
        #
        #   @param id [String] Gallery image ID.
        #
        #   @param content_type [String, nil] Uploaded file MIME type, such as image/jpeg.
        #
        #   @param url [String, nil] Pre-optimized URL for rendering this image on the client.
      end
    end
  end
end
