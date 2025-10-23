# frozen_string_literal: true

module WhopSDK
  module Models
    class ProductListItem < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The internal ID of the public product.
      #
      #   @return [String]
      required :id, String

      # @!attribute business_type
      #   The different business types a company can be.
      #
      #   @return [Symbol, WhopSDK::Models::BusinessTypes, nil]
      required :business_type, enum: -> { WhopSDK::BusinessTypes }, nil?: true

      # @!attribute created_at
      #   When the product was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute external_identifier
      #   A unique identifier used to create or update products. When provided on product
      #   creation endpoints, we’ll look up an existing product by this identifier — if it
      #   exists, we’ll update it; if not, we’ll create a new one.
      #
      #   @return [String, nil]
      required :external_identifier, String, nil?: true

      # @!attribute headline
      #   The headline of the product.
      #
      #   @return [String, nil]
      required :headline, String, nil?: true

      # @!attribute industry_type
      #   The different industry types a company can be in.
      #
      #   @return [Symbol, WhopSDK::Models::IndustryTypes, nil]
      required :industry_type, enum: -> { WhopSDK::IndustryTypes }, nil?: true

      # @!attribute member_count
      #   The number of active users for this product.
      #
      #   @return [Integer]
      required :member_count, Integer

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
      required :verified, WhopSDK::Internal::Type::Boolean

      # @!attribute visibility
      #   This product will/will not be displayed publicly.
      #
      #   @return [Symbol, WhopSDK::Models::Visibility]
      required :visibility, enum: -> { WhopSDK::Visibility }

      # @!method initialize(id:, business_type:, created_at:, external_identifier:, headline:, industry_type:, member_count:, published_reviews_count:, route:, title:, updated_at:, verified:, visibility:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ProductListItem} for more details.
      #
      #   An object representing a (sanitized) access pass.
      #
      #   @param id [String] The internal ID of the public product.
      #
      #   @param business_type [Symbol, WhopSDK::Models::BusinessTypes, nil] The different business types a company can be.
      #
      #   @param created_at [Time] When the product was created.
      #
      #   @param external_identifier [String, nil] A unique identifier used to create or update products. When provided on product
      #
      #   @param headline [String, nil] The headline of the product.
      #
      #   @param industry_type [Symbol, WhopSDK::Models::IndustryTypes, nil] The different industry types a company can be in.
      #
      #   @param member_count [Integer] The number of active users for this product.
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
      #   @param visibility [Symbol, WhopSDK::Models::Visibility] This product will/will not be displayed publicly.
    end
  end
end
