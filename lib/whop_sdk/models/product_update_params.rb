# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Products#update
    class ProductUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute description
      #   A written description displayed on the product page.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute headline
      #   A short marketing headline for the product page.
      #
      #   @return [String, nil]
      optional :headline, String, nil?: true

      # @!attribute metadata
      #   Custom key-value pairs to store on the product.
      #
      #   @return [Object, nil]
      optional :metadata, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute product_tax_code_id
      #   The unique identifier of the tax classification code. See the available
      #   [product categories](https://docs.numeral.com/essentials/product-categories).
      #
      #   @return [String, nil]
      optional :product_tax_code_id, String, nil?: true

      # @!attribute send_welcome_message
      #   Whether to send an automated welcome message via support chat when a user joins
      #   this product.
      #
      #   @return [Boolean, nil]
      optional :send_welcome_message, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute title
      #   The display name of the product.
      #
      #   @return [String, nil]
      optional :title, String

      # @!attribute visibility
      #   Whether the product is visible to customers.
      #
      #   @return [String, nil]
      optional :visibility, String

      # @!method initialize(id:, description: nil, headline: nil, metadata: nil, product_tax_code_id: nil, send_welcome_message: nil, title: nil, visibility: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ProductUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param description [String, nil] A written description displayed on the product page.
      #
      #   @param headline [String, nil] A short marketing headline for the product page.
      #
      #   @param metadata [Object, nil] Custom key-value pairs to store on the product.
      #
      #   @param product_tax_code_id [String, nil] The unique identifier of the tax classification code. See the available [product
      #
      #   @param send_welcome_message [Boolean, nil] Whether to send an automated welcome message via support chat when a user joins
      #
      #   @param title [String] The display name of the product.
      #
      #   @param visibility [String] Whether the product is visible to customers.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
