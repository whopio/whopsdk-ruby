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

      # A wide image for the product, shown on the product page and on listing cards.
      # Pass `{ id }` for an existing attachment or `{ direct_upload_id }` for a
      # completed direct upload; `null` removes it.
      sig { returns(T.nilable(WhopSDK::ProductUpdateParams::BannerImage)) }
      attr_reader :banner_image

      sig do
        params(
          banner_image:
            T.nilable(WhopSDK::ProductUpdateParams::BannerImage::OrHash)
        ).void
      end
      attr_writer :banner_image

      # A written description displayed on the product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # A short marketing headline for the product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :headline

      # Labels used to group products into collections. Replaces the existing labels.
      # Send an empty array to clear them.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :labels

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

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig do
        params(
          id: String,
          banner_image:
            T.nilable(WhopSDK::ProductUpdateParams::BannerImage::OrHash),
          description: T.nilable(String),
          headline: T.nilable(String),
          labels: T.nilable(T::Array[String]),
          metadata: T.nilable(T.anything),
          product_tax_code_id: T.nilable(String),
          send_welcome_message: T.nilable(T::Boolean),
          title: String,
          visibility: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # A wide image for the product, shown on the product page and on listing cards.
        # Pass `{ id }` for an existing attachment or `{ direct_upload_id }` for a
        # completed direct upload; `null` removes it.
        banner_image: nil,
        # A written description displayed on the product page.
        description: nil,
        # A short marketing headline for the product page.
        headline: nil,
        # Labels used to group products into collections. Replaces the existing labels.
        # Send an empty array to clear them.
        labels: nil,
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
        api_version_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            banner_image: T.nilable(WhopSDK::ProductUpdateParams::BannerImage),
            description: T.nilable(String),
            headline: T.nilable(String),
            labels: T.nilable(T::Array[String]),
            metadata: T.nilable(T.anything),
            product_tax_code_id: T.nilable(String),
            send_welcome_message: T.nilable(T::Boolean),
            title: String,
            visibility: String,
            api_version_date: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class BannerImage < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::ProductUpdateParams::BannerImage,
              WhopSDK::Internal::AnyHash
            )
          end

        # The tag of an already-uploaded attachment.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The signed id of a completed direct upload.
        sig { returns(T.nilable(String)) }
        attr_reader :direct_upload_id

        sig { params(direct_upload_id: String).void }
        attr_writer :direct_upload_id

        # A wide image for the product, shown on the product page and on listing cards.
        # Pass `{ id }` for an existing attachment or `{ direct_upload_id }` for a
        # completed direct upload; `null` removes it.
        sig do
          params(id: String, direct_upload_id: String).returns(T.attached_class)
        end
        def self.new(
          # The tag of an already-uploaded attachment.
          id: nil,
          # The signed id of a completed direct upload.
          direct_upload_id: nil
        )
        end

        sig { override.returns({ id: String, direct_upload_id: String }) }
        def to_hash
        end
      end
    end
  end
end
