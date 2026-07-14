# frozen_string_literal: true

module WhopSDK
  module Models
    class ProductListItem < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the product.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The datetime the product was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute external_identifier
      #   External identifier for the product. Providing it on a product creation endpoint
      #   updates the existing product with this identifier instead of creating a new one.
      #
      #   @return [String, nil]
      required :external_identifier, String, nil?: true

      # @!attribute headline
      #   A short marketing headline displayed prominently on the product's product page.
      #
      #   @return [String, nil]
      required :headline, String, nil?: true

      # @!attribute member_count
      #   Active memberships for this product. Returns `0` if the account has disabled
      #   public member counts.
      #
      #   @return [Integer]
      required :member_count, Integer

      # @!attribute metadata
      #   Custom key-value pairs stored on the product and included in payment and
      #   membership webhook payloads. Max 50 keys, 100 characters per key, 500 characters
      #   per string value.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      required :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute published_reviews_count
      #   The total number of published customer reviews for this product's company.
      #
      #   @return [Integer]
      required :published_reviews_count, Integer

      # @!attribute route
      #   URL slug in the product's public link, e.g. `pickaxe-analytics` in
      #   whop.com/company/pickaxe-analytics.
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

      # @!method initialize(id:, created_at:, external_identifier:, headline:, member_count:, metadata:, published_reviews_count:, route:, title:, updated_at:, verified:, visibility:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ProductListItem} for more details.
      #
      #   A product is a digital good or service sold on Whop. Products contain plans for
      #   pricing and experiences for content delivery.
      #
      #   @param id [String] The unique identifier for the product.
      #
      #   @param created_at [Time] The datetime the product was created.
      #
      #   @param external_identifier [String, nil] External identifier for the product. Providing it on a product creation endpoint
      #
      #   @param headline [String, nil] A short marketing headline displayed prominently on the product's product page.
      #
      #   @param member_count [Integer] Active memberships for this product. Returns `0` if the account has disabled pub
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] Custom key-value pairs stored on the product and included in payment and members
      #
      #   @param published_reviews_count [Integer] The total number of published customer reviews for this product's company.
      #
      #   @param route [String] URL slug in the product's public link, e.g. `pickaxe-analytics` in whop.com/comp
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
