# typed: strong

module WhopSDK
  module Models
    class ProductListItem < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::ProductListItem, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier for the product.
      sig { returns(String) }
      attr_accessor :id

      # The datetime the product was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # External identifier for the product. Providing it on a product creation endpoint
      # updates the existing product with this identifier instead of creating a new one.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_identifier

      # The gallery images for this product, ordered by position.
      sig { returns(T::Array[WhopSDK::ProductListItem::GalleryImage]) }
      attr_accessor :gallery_images

      # A short marketing headline displayed prominently on the product's product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :headline

      # Active memberships for this product. Returns `0` if the account has disabled
      # public member counts.
      sig { returns(Integer) }
      attr_accessor :member_count

      # Custom key-value pairs stored on the product and included in payment and
      # membership webhook payloads. Max 50 keys, 100 characters per key, 500 characters
      # per string value.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # The total number of published customer reviews for this product's company.
      sig { returns(Integer) }
      attr_accessor :published_reviews_count

      # URL slug in the product's public link, e.g. `pickaxe-analytics` in
      # whop.com/company/pickaxe-analytics.
      sig { returns(String) }
      attr_accessor :route

      # The display name of the product shown to customers on the product page and in
      # search results.
      sig { returns(String) }
      attr_accessor :title

      # The datetime the product was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Whether this company has been verified by Whop's trust and safety team.
      sig { returns(T::Boolean) }
      attr_accessor :verified

      # Controls whether the product is visible to customers. When set to 'hidden', the
      # product is only accessible via direct link.
      sig { returns(WhopSDK::Visibility::TaggedSymbol) }
      attr_accessor :visibility

      # A product is a digital good or service sold on Whop. Products contain plans for
      # pricing and experiences for content delivery.
      sig do
        params(
          id: String,
          created_at: Time,
          external_identifier: T.nilable(String),
          gallery_images:
            T::Array[WhopSDK::ProductListItem::GalleryImage::OrHash],
          headline: T.nilable(String),
          member_count: Integer,
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          published_reviews_count: Integer,
          route: String,
          title: String,
          updated_at: Time,
          verified: T::Boolean,
          visibility: WhopSDK::Visibility::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the product.
        id:,
        # The datetime the product was created.
        created_at:,
        # External identifier for the product. Providing it on a product creation endpoint
        # updates the existing product with this identifier instead of creating a new one.
        external_identifier:,
        # The gallery images for this product, ordered by position.
        gallery_images:,
        # A short marketing headline displayed prominently on the product's product page.
        headline:,
        # Active memberships for this product. Returns `0` if the account has disabled
        # public member counts.
        member_count:,
        # Custom key-value pairs stored on the product and included in payment and
        # membership webhook payloads. Max 50 keys, 100 characters per key, 500 characters
        # per string value.
        metadata:,
        # The total number of published customer reviews for this product's company.
        published_reviews_count:,
        # URL slug in the product's public link, e.g. `pickaxe-analytics` in
        # whop.com/company/pickaxe-analytics.
        route:,
        # The display name of the product shown to customers on the product page and in
        # search results.
        title:,
        # The datetime the product was last updated.
        updated_at:,
        # Whether this company has been verified by Whop's trust and safety team.
        verified:,
        # Controls whether the product is visible to customers. When set to 'hidden', the
        # product is only accessible via direct link.
        visibility:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            external_identifier: T.nilable(String),
            gallery_images: T::Array[WhopSDK::ProductListItem::GalleryImage],
            headline: T.nilable(String),
            member_count: Integer,
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            published_reviews_count: Integer,
            route: String,
            title: String,
            updated_at: Time,
            verified: T::Boolean,
            visibility: WhopSDK::Visibility::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class GalleryImage < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::ProductListItem::GalleryImage,
              WhopSDK::Internal::AnyHash
            )
          end

        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        sig { returns(String) }
        attr_accessor :id

        # Uploaded file MIME type, such as image/jpeg, video/mp4, or audio/mpeg.
        sig { returns(T.nilable(String)) }
        attr_accessor :content_type

        # A pre-optimized URL for rendering this attachment on the client. This should be
        # used for displaying attachments in apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # Represents an image attachment
        sig do
          params(
            id: String,
            content_type: T.nilable(String),
            url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          id:,
          # Uploaded file MIME type, such as image/jpeg, video/mp4, or audio/mpeg.
          content_type:,
          # A pre-optimized URL for rendering this attachment on the client. This should be
          # used for displaying attachments in apps.
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
