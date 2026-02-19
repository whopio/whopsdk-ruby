# frozen_string_literal: true

module WhopSDK
  module Models
    class ProductListItem < WhopSDK::Internal::Type::BaseModel
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

      # @!attribute created_at
      #   The datetime the product was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute external_identifier
      #   A unique identifier used to create or update products via the API. When provided
      #   on product creation endpoints, an existing product with this identifier will be
      #   updated instead of creating a new one.
      #
      #   @return [String, nil]
      required :external_identifier, String, nil?: true

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

      # @!attribute member_count
      #   The number of users who currently hold an active membership to this product.
      #   Returns 0 if the company has disabled public member counts.
      #
      #   @return [Integer]
      required :member_count, Integer

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

      # @!method initialize(id:, business_type:, created_at:, external_identifier:, headline:, industry_type:, member_count:, published_reviews_count:, route:, title:, updated_at:, verified:, visibility:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ProductListItem} for more details.
      #
      #   A product is a digital good or service sold on Whop. Products contain plans for
      #   pricing and experiences for content delivery.
      #
      #   @param id [String] The unique identifier for the product.
      #
      #   @param business_type [Symbol, WhopSDK::Models::BusinessTypes, nil] The different business types a company can be.
      #
      #   @param created_at [Time] The datetime the product was created.
      #
      #   @param external_identifier [String, nil] A unique identifier used to create or update products via the API. When provided
      #
      #   @param headline [String, nil] A short marketing headline displayed prominently on the product's product page.
      #
      #   @param industry_type [Symbol, WhopSDK::Models::IndustryTypes, nil] The different industry types a company can be in.
      #
      #   @param member_count [Integer] The number of users who currently hold an active membership to this product. Ret
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
    end
  end
end
