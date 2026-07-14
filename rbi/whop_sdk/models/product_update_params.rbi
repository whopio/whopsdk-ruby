# typed: strong

module WhopSDK
  module Models
    class ProductUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ProductUpdateParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # A written description displayed on the product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # A short marketing headline for the product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :headline

      # Custom key-value pairs to store on the product.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      # The unique identifier of the tax classification code. See the available
      # [product categories](https://docs.numeral.com/essentials/product-categories).
      sig { returns(T.nilable(String)) }
      attr_accessor :product_tax_code_id

      # Whether to send an automated welcome message via support chat when a user joins
      # this product.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :send_welcome_message

      # The display name of the product.
      sig { returns(T.nilable(String)) }
      attr_reader :title

      sig { params(title: String).void }
      attr_writer :title

      # Whether the product is visible to customers.
      sig { returns(T.nilable(String)) }
      attr_reader :visibility

      sig { params(visibility: String).void }
      attr_writer :visibility

      sig do
        params(
          id: String,
          description: T.nilable(String),
          headline: T.nilable(String),
          metadata: T.nilable(T.anything),
          product_tax_code_id: T.nilable(String),
          send_welcome_message: T.nilable(T::Boolean),
          title: String,
          visibility: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # A written description displayed on the product page.
        description: nil,
        # A short marketing headline for the product page.
        headline: nil,
        # Custom key-value pairs to store on the product.
        metadata: nil,
        # The unique identifier of the tax classification code. See the available
        # [product categories](https://docs.numeral.com/essentials/product-categories).
        product_tax_code_id: nil,
        # Whether to send an automated welcome message via support chat when a user joins
        # this product.
        send_welcome_message: nil,
        # The display name of the product.
        title: nil,
        # Whether the product is visible to customers.
        visibility: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            description: T.nilable(String),
            headline: T.nilable(String),
            metadata: T.nilable(T.anything),
            product_tax_code_id: T.nilable(String),
            send_welcome_message: T.nilable(T::Boolean),
            title: String,
            visibility: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
