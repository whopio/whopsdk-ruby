# frozen_string_literal: true

module WhopSDK
  module Models
    class Product < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the product.
      #
      #   @return [String]
      required :id, String

      # @!attribute business_type
      #   The different business types a company can be.
      #
      #   @return [Symbol, WhopSDK::Models::BusinessTypes, nil]
      required :business_type, enum: -> { WhopSDK::BusinessTypes }, nil?: true

      # @!attribute company
      #   The company this product belongs to.
      #
      #   @return [WhopSDK::Models::Product::Company]
      required :company, -> { WhopSDK::Product::Company }

      # @!attribute created_at
      #   The datetime the product was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute custom_cta
      #   The call-to-action button label displayed on the product's purchase page (e.g.,
      #   'join', 'buy', 'subscribe').
      #
      #   @return [Symbol, WhopSDK::Models::CustomCta]
      required :custom_cta, enum: -> { WhopSDK::CustomCta }

      # @!attribute custom_cta_url
      #   An optional URL that the call-to-action button links to instead of the default
      #   checkout flow. Null if no custom URL is set.
      #
      #   @return [String, nil]
      required :custom_cta_url, String, nil?: true

      # @!attribute custom_statement_descriptor
      #   A custom text label that appears on the customer's bank or credit card statement
      #   for purchases of this product. Maximum 22 characters, including the required
      #   prefix WHOP\*.
      #
      #   @return [String, nil]
      required :custom_statement_descriptor, String, nil?: true

      # @!attribute description
      #   A brief summary of what the product offers, displayed on product pages and
      #   search results.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute external_identifier
      #   A unique identifier used to create or update products via the API. When provided
      #   on product creation endpoints, an existing product with this identifier will be
      #   updated instead of creating a new one.
      #
      #   @return [String, nil]
      required :external_identifier, String, nil?: true

      # @!attribute gallery_images
      #   The gallery images for this product, ordered by position.
      #
      #   @return [Array<WhopSDK::Models::Product::GalleryImage>]
      required :gallery_images, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Product::GalleryImage] }

      # @!attribute global_affiliate_percentage
      #   The commission rate (as a percentage) that affiliates earn on sales through the
      #   Whop marketplace global affiliate program. Null if the program is not active.
      #
      #   @return [Float, nil]
      required :global_affiliate_percentage, Float, nil?: true

      # @!attribute global_affiliate_status
      #   The enrollment status of this product in the Whop marketplace global affiliate
      #   program.
      #
      #   @return [Symbol, WhopSDK::Models::GlobalAffiliateStatus]
      required :global_affiliate_status, enum: -> { WhopSDK::GlobalAffiliateStatus }

      # @!attribute headline
      #   A short marketing headline displayed prominently on the product's product page.
      #
      #   @return [String, nil]
      required :headline, String, nil?: true

      # @!attribute industry_type
      #   The different industry types a company can be in.
      #
      #   @return [Symbol, WhopSDK::Models::IndustryTypes, nil]
      required :industry_type, enum: -> { WhopSDK::IndustryTypes }, nil?: true

      # @!attribute member_affiliate_percentage
      #   The commission rate (as a percentage) that existing members earn when referring
      #   new customers through the member affiliate program. Null if the program is not
      #   active.
      #
      #   @return [Float, nil]
      required :member_affiliate_percentage, Float, nil?: true

      # @!attribute member_affiliate_status
      #   The enrollment status of this product in the member affiliate program.
      #
      #   @return [Symbol, WhopSDK::Models::GlobalAffiliateStatus]
      required :member_affiliate_status, enum: -> { WhopSDK::GlobalAffiliateStatus }

      # @!attribute member_count
      #   The number of users who currently hold an active membership to this product.
      #   Returns 0 if the company has disabled public member counts.
      #
      #   @return [Integer]
      required :member_count, Integer

      # @!attribute owner_user
      #   The user who owns the company that sells this product.
      #
      #   @return [WhopSDK::Models::Product::OwnerUser]
      required :owner_user, -> { WhopSDK::Product::OwnerUser }

      # @!attribute product_tax_code
      #   The tax classification code applied to purchases of this product for sales tax
      #   calculation. Null if no tax code is assigned.
      #
      #   @return [WhopSDK::Models::Product::ProductTaxCode, nil]
      required :product_tax_code, -> { WhopSDK::Product::ProductTaxCode }, nil?: true

      # @!attribute published_reviews_count
      #   The total number of published customer reviews for this product's company.
      #
      #   @return [Integer]
      required :published_reviews_count, Integer

      # @!attribute route
      #   The URL slug used in the product's public link (e.g., 'my-product' in
      #   whop.com/company/my-product).
      #
      #   @return [String]
      required :route, String

      # @!attribute title
      #   The display name of the product shown to customers on the product page and in
      #   search results.
      #
      #   @return [String]
      required :title, String

      # @!attribute updated_at
      #   The datetime the product was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute verified
      #   Whether this company has been verified by Whop's trust and safety team.
      #
      #   @return [Boolean]
      required :verified, WhopSDK::Internal::Type::Boolean

      # @!attribute visibility
      #   Controls whether the product is visible to customers. When set to 'hidden', the
      #   product is only accessible via direct link.
      #
      #   @return [Symbol, WhopSDK::Models::Visibility]
      required :visibility, enum: -> { WhopSDK::Visibility }

      # @!method initialize(id:, business_type:, company:, created_at:, custom_cta:, custom_cta_url:, custom_statement_descriptor:, description:, external_identifier:, gallery_images:, global_affiliate_percentage:, global_affiliate_status:, headline:, industry_type:, member_affiliate_percentage:, member_affiliate_status:, member_count:, owner_user:, product_tax_code:, published_reviews_count:, route:, title:, updated_at:, verified:, visibility:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::Product}
      #   for more details.
      #
      #   A product is a digital good or service sold on Whop. Products contain plans for
      #   pricing and experiences for content delivery.
      #
      #   @param id [String] The unique identifier for the product.
      #
      #   @param business_type [Symbol, WhopSDK::Models::BusinessTypes, nil] The different business types a company can be.
      #
      #   @param company [WhopSDK::Models::Product::Company] The company this product belongs to.
      #
      #   @param created_at [Time] The datetime the product was created.
      #
      #   @param custom_cta [Symbol, WhopSDK::Models::CustomCta] The call-to-action button label displayed on the product's purchase page (e.g.,
      #
      #   @param custom_cta_url [String, nil] An optional URL that the call-to-action button links to instead of the default c
      #
      #   @param custom_statement_descriptor [String, nil] A custom text label that appears on the customer's bank or credit card statement
      #
      #   @param description [String, nil] A brief summary of what the product offers, displayed on product pages and searc
      #
      #   @param external_identifier [String, nil] A unique identifier used to create or update products via the API. When provided
      #
      #   @param gallery_images [Array<WhopSDK::Models::Product::GalleryImage>] The gallery images for this product, ordered by position.
      #
      #   @param global_affiliate_percentage [Float, nil] The commission rate (as a percentage) that affiliates earn on sales through the
      #
      #   @param global_affiliate_status [Symbol, WhopSDK::Models::GlobalAffiliateStatus] The enrollment status of this product in the Whop marketplace global affiliate p
      #
      #   @param headline [String, nil] A short marketing headline displayed prominently on the product's product page.
      #
      #   @param industry_type [Symbol, WhopSDK::Models::IndustryTypes, nil] The different industry types a company can be in.
      #
      #   @param member_affiliate_percentage [Float, nil] The commission rate (as a percentage) that existing members earn when referring
      #
      #   @param member_affiliate_status [Symbol, WhopSDK::Models::GlobalAffiliateStatus] The enrollment status of this product in the member affiliate program.
      #
      #   @param member_count [Integer] The number of users who currently hold an active membership to this product. Ret
      #
      #   @param owner_user [WhopSDK::Models::Product::OwnerUser] The user who owns the company that sells this product.
      #
      #   @param product_tax_code [WhopSDK::Models::Product::ProductTaxCode, nil] The tax classification code applied to purchases of this product for sales tax c
      #
      #   @param published_reviews_count [Integer] The total number of published customer reviews for this product's company.
      #
      #   @param route [String] The URL slug used in the product's public link (e.g., 'my-product' in whop.com/c
      #
      #   @param title [String] The display name of the product shown to customers on the product page and in se
      #
      #   @param updated_at [Time] The datetime the product was last updated.
      #
      #   @param verified [Boolean] Whether this company has been verified by Whop's trust and safety team.
      #
      #   @param visibility [Symbol, WhopSDK::Models::Visibility] Controls whether the product is visible to customers. When set to 'hidden', the

      # @see WhopSDK::Models::Product#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute route
        #   The URL slug for the company's store page (e.g., 'pickaxe' in whop.com/pickaxe).
        #
        #   @return [String]
        required :route, String

        # @!attribute title
        #   The display name of the company shown to customers.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, route:, title:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Product::Company} for more details.
        #
        #   The company this product belongs to.
        #
        #   @param id [String] The unique identifier for the company.
        #
        #   @param route [String] The URL slug for the company's store page (e.g., 'pickaxe' in whop.com/pickaxe).
        #
        #   @param title [String] The display name of the company shown to customers.
      end

      class GalleryImage < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Represents a unique identifier that is Base64 obfuscated. It is often used to
        #   refetch an object or as key for a cache. The ID type appears in a JSON response
        #   as a String; however, it is not intended to be human-readable. When expected as
        #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        #   input value will be accepted as an ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute url
        #   A pre-optimized URL for rendering this attachment on the client. This should be
        #   used for displaying attachments in apps.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(id:, url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Product::GalleryImage} for more details.
        #
        #   Represents an image attachment
        #
        #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
        #
        #   @param url [String, nil] A pre-optimized URL for rendering this attachment on the client. This should be
      end

      # @see WhopSDK::Models::Product#owner_user
      class OwnerUser < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The user's display name shown on their public profile.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The user's unique username shown on their public profile.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, username:)
        #   The user who owns the company that sells this product.
        #
        #   @param id [String] The unique identifier for the user.
        #
        #   @param name [String, nil] The user's display name shown on their public profile.
        #
        #   @param username [String] The user's unique username shown on their public profile.
      end

      # @see WhopSDK::Models::Product#product_tax_code
      class ProductTaxCode < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the product tax code.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The human-readable name of this tax classification (e.g., 'Digital - SaaS').
        #
        #   @return [String]
        required :name, String

        # @!attribute product_type
        #   The broad product category this tax code covers (e.g., physical goods, digital
        #   services).
        #
        #   @return [Symbol, WhopSDK::Models::Product::ProductTaxCode::ProductType]
        required :product_type, enum: -> { WhopSDK::Product::ProductTaxCode::ProductType }

        # @!method initialize(id:, name:, product_type:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Product::ProductTaxCode} for more details.
        #
        #   The tax classification code applied to purchases of this product for sales tax
        #   calculation. Null if no tax code is assigned.
        #
        #   @param id [String] The unique identifier for the product tax code.
        #
        #   @param name [String] The human-readable name of this tax classification (e.g., 'Digital - SaaS').
        #
        #   @param product_type [Symbol, WhopSDK::Models::Product::ProductTaxCode::ProductType] The broad product category this tax code covers (e.g., physical goods, digital s

        # The broad product category this tax code covers (e.g., physical goods, digital
        # services).
        #
        # @see WhopSDK::Models::Product::ProductTaxCode#product_type
        module ProductType
          extend WhopSDK::Internal::Type::Enum

          PHYSICAL = :physical
          DIGITAL = :digital
          SERVICES = :services

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
