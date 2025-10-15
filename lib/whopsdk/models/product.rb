# frozen_string_literal: true

module Whopsdk
  module Models
    class Product < Whopsdk::Internal::Type::BaseModel
      # @!attribute id
      #   The internal ID of the public product.
      #
      #   @return [String]
      required :id, String

      # @!attribute business_type
      #   The different business types a company can be.
      #
      #   @return [Symbol, Whopsdk::Models::BusinessTypes, nil]
      required :business_type, enum: -> { Whopsdk::BusinessTypes }, nil?: true

      # @!attribute company
      #   A short type of the company that this product belongs to.
      #
      #   @return [Whopsdk::Models::Product::Company]
      required :company, -> { Whopsdk::Product::Company }

      # @!attribute created_at
      #   When the product was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute custom_cta
      #   The custom call to action for the product.
      #
      #   @return [Symbol, Whopsdk::Models::CustomCta]
      required :custom_cta, enum: -> { Whopsdk::CustomCta }

      # @!attribute custom_cta_url
      #   The custom call to action URL for the product, if any.
      #
      #   @return [String, nil]
      required :custom_cta_url, String, nil?: true

      # @!attribute custom_statement_descriptor
      #   The custom statement descriptor for the product.
      #
      #   @return [String, nil]
      required :custom_statement_descriptor, String, nil?: true

      # @!attribute description
      #   A short description of what the company offers or does.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute global_affiliate_percentage
      #   The percentage of a transaction a user is eligible to earn from the whop
      #   marketplace global affiliate program.
      #
      #   @return [Float, nil]
      required :global_affiliate_percentage, Float, nil?: true

      # @!attribute global_affiliate_status
      #   The status of the global affiliate program for this product.
      #
      #   @return [Symbol, Whopsdk::Models::GlobalAffiliateStatus]
      required :global_affiliate_status, enum: -> { Whopsdk::GlobalAffiliateStatus }

      # @!attribute headline
      #   The headline of the product.
      #
      #   @return [String, nil]
      required :headline, String, nil?: true

      # @!attribute industry_type
      #   The different industry types a company can be in.
      #
      #   @return [Symbol, Whopsdk::Models::IndustryTypes, nil]
      required :industry_type, enum: -> { Whopsdk::IndustryTypes }, nil?: true

      # @!attribute member_affiliate_percentage
      #   The percentage of a transaction a user is eligible to earn from the whop
      #   marketplace member affiliate program.
      #
      #   @return [Float, nil]
      required :member_affiliate_percentage, Float, nil?: true

      # @!attribute member_affiliate_status
      #   The status of the member affiliate program for this product.
      #
      #   @return [Symbol, Whopsdk::Models::GlobalAffiliateStatus]
      required :member_affiliate_status, enum: -> { Whopsdk::GlobalAffiliateStatus }

      # @!attribute member_count
      #   The number of active users for this product.
      #
      #   @return [Integer]
      required :member_count, Integer

      # @!attribute owner_user
      #   The user that owns the product (company owner).
      #
      #   @return [Whopsdk::Models::Product::OwnerUser]
      required :owner_user, -> { Whopsdk::Product::OwnerUser }

      # @!attribute product_tax_code
      #   The product tax code for the product, if any.
      #
      #   @return [Whopsdk::Models::Product::ProductTaxCode, nil]
      required :product_tax_code, -> { Whopsdk::Product::ProductTaxCode }, nil?: true

      # @!attribute published_reviews_count
      #   The number of reviews that have been published for the product.
      #
      #   @return [Integer]
      required :published_reviews_count, Integer

      # @!attribute route
      #   The route of the product.
      #
      #   @return [String]
      required :route, String

      # @!attribute title
      #   The title of the product. Use for Whop 4.0.
      #
      #   @return [String]
      required :title, String

      # @!attribute updated_at
      #   When the product was updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute verified
      #   Whether this product is Whop verified.
      #
      #   @return [Boolean]
      required :verified, Whopsdk::Internal::Type::Boolean

      # @!attribute visibility
      #   This product will/will not be displayed publicly.
      #
      #   @return [Symbol, Whopsdk::Models::Visibility]
      required :visibility, enum: -> { Whopsdk::Visibility }

      # @!method initialize(id:, business_type:, company:, created_at:, custom_cta:, custom_cta_url:, custom_statement_descriptor:, description:, global_affiliate_percentage:, global_affiliate_status:, headline:, industry_type:, member_affiliate_percentage:, member_affiliate_status:, member_count:, owner_user:, product_tax_code:, published_reviews_count:, route:, title:, updated_at:, verified:, visibility:)
      #   Some parameter documentations has been truncated, see {Whopsdk::Models::Product}
      #   for more details.
      #
      #   An object representing a (sanitized) access pass.
      #
      #   @param id [String] The internal ID of the public product.
      #
      #   @param business_type [Symbol, Whopsdk::Models::BusinessTypes, nil] The different business types a company can be.
      #
      #   @param company [Whopsdk::Models::Product::Company] A short type of the company that this product belongs to.
      #
      #   @param created_at [Time] When the product was created.
      #
      #   @param custom_cta [Symbol, Whopsdk::Models::CustomCta] The custom call to action for the product.
      #
      #   @param custom_cta_url [String, nil] The custom call to action URL for the product, if any.
      #
      #   @param custom_statement_descriptor [String, nil] The custom statement descriptor for the product.
      #
      #   @param description [String, nil] A short description of what the company offers or does.
      #
      #   @param global_affiliate_percentage [Float, nil] The percentage of a transaction a user is eligible to earn from the whop marketp
      #
      #   @param global_affiliate_status [Symbol, Whopsdk::Models::GlobalAffiliateStatus] The status of the global affiliate program for this product.
      #
      #   @param headline [String, nil] The headline of the product.
      #
      #   @param industry_type [Symbol, Whopsdk::Models::IndustryTypes, nil] The different industry types a company can be in.
      #
      #   @param member_affiliate_percentage [Float, nil] The percentage of a transaction a user is eligible to earn from the whop marketp
      #
      #   @param member_affiliate_status [Symbol, Whopsdk::Models::GlobalAffiliateStatus] The status of the member affiliate program for this product.
      #
      #   @param member_count [Integer] The number of active users for this product.
      #
      #   @param owner_user [Whopsdk::Models::Product::OwnerUser] The user that owns the product (company owner).
      #
      #   @param product_tax_code [Whopsdk::Models::Product::ProductTaxCode, nil] The product tax code for the product, if any.
      #
      #   @param published_reviews_count [Integer] The number of reviews that have been published for the product.
      #
      #   @param route [String] The route of the product.
      #
      #   @param title [String] The title of the product. Use for Whop 4.0.
      #
      #   @param updated_at [Time] When the product was updated.
      #
      #   @param verified [Boolean] Whether this product is Whop verified.
      #
      #   @param visibility [Symbol, Whopsdk::Models::Visibility] This product will/will not be displayed publicly.

      # @see Whopsdk::Models::Product#company
      class Company < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The ID (tag) of the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute route
        #   The slug/route of the company on the Whop site.
        #
        #   @return [String]
        required :route, String

        # @!attribute title
        #   The title of the company.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, route:, title:)
        #   A short type of the company that this product belongs to.
        #
        #   @param id [String] The ID (tag) of the company.
        #
        #   @param route [String] The slug/route of the company on the Whop site.
        #
        #   @param title [String] The title of the company.
      end

      # @see Whopsdk::Models::Product#owner_user
      class OwnerUser < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The name of the user from their Whop account.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The username of the user from their Whop account.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, username:)
        #   The user that owns the product (company owner).
        #
        #   @param id [String] The internal ID of the user.
        #
        #   @param name [String, nil] The name of the user from their Whop account.
        #
        #   @param username [String] The username of the user from their Whop account.
      end

      # @see Whopsdk::Models::Product#product_tax_code
      class ProductTaxCode < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the product tax code.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The name of the product tax code.
        #
        #   @return [String]
        required :name, String

        # @!attribute product_type
        #   The type of product this tax code applies to.
        #
        #   @return [Symbol, Whopsdk::Models::Product::ProductTaxCode::ProductType]
        required :product_type, enum: -> { Whopsdk::Product::ProductTaxCode::ProductType }

        # @!method initialize(id:, name:, product_type:)
        #   The product tax code for the product, if any.
        #
        #   @param id [String] The internal ID of the product tax code.
        #
        #   @param name [String] The name of the product tax code.
        #
        #   @param product_type [Symbol, Whopsdk::Models::Product::ProductTaxCode::ProductType] The type of product this tax code applies to.

        # The type of product this tax code applies to.
        #
        # @see Whopsdk::Models::Product::ProductTaxCode#product_type
        module ProductType
          extend Whopsdk::Internal::Type::Enum

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
