# typed: strong

module WhopSDK
  module Models
    class Product < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Product, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the product.
      sig { returns(String) }
      attr_accessor :id

      # The company this product belongs to.
      sig { returns(WhopSDK::Product::Company) }
      attr_reader :company

      sig { params(company: WhopSDK::Product::Company::OrHash).void }
      attr_writer :company

      # The datetime the product was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The call-to-action button label displayed on the product's purchase page (e.g.,
      # 'join', 'buy', 'subscribe').
      sig { returns(WhopSDK::CustomCta::TaggedSymbol) }
      attr_accessor :custom_cta

      # An optional URL that the call-to-action button links to instead of the default
      # checkout flow. Null if no custom URL is set.
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_cta_url

      # A custom text label that appears on the customer's bank or credit card statement
      # for purchases of this product. Maximum 22 characters, including the required
      # prefix WHOP\*.
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_statement_descriptor

      # A brief summary of what the product offers, displayed on product pages and
      # search results.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # A unique identifier used to create or update products via the API. When provided
      # on product creation endpoints, an existing product with this identifier will be
      # updated instead of creating a new one.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_identifier

      # The gallery images for this product, ordered by position.
      sig { returns(T::Array[WhopSDK::Product::GalleryImage]) }
      attr_accessor :gallery_images

      # The commission rate (as a percentage) that affiliates earn on sales through the
      # Whop marketplace global affiliate program. Null if the program is not active.
      sig { returns(T.nilable(Float)) }
      attr_accessor :global_affiliate_percentage

      # The enrollment status of this product in the Whop marketplace global affiliate
      # program.
      sig { returns(WhopSDK::GlobalAffiliateStatus::TaggedSymbol) }
      attr_accessor :global_affiliate_status

      # A short marketing headline displayed prominently on the product's product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :headline

      # The commission rate (as a percentage) that existing members earn when referring
      # new customers through the member affiliate program. Null if the program is not
      # active.
      sig { returns(T.nilable(Float)) }
      attr_accessor :member_affiliate_percentage

      # The enrollment status of this product in the member affiliate program.
      sig { returns(WhopSDK::GlobalAffiliateStatus::TaggedSymbol) }
      attr_accessor :member_affiliate_status

      # The number of users who currently hold an active membership to this product.
      # Returns 0 if the company has disabled public member counts.
      sig { returns(Integer) }
      attr_accessor :member_count

      # The user who owns the company that sells this product.
      sig { returns(WhopSDK::Product::OwnerUser) }
      attr_reader :owner_user

      sig { params(owner_user: WhopSDK::Product::OwnerUser::OrHash).void }
      attr_writer :owner_user

      # The tax classification code applied to purchases of this product for sales tax
      # calculation. Null if no tax code is assigned.
      sig { returns(T.nilable(WhopSDK::Product::ProductTaxCode)) }
      attr_reader :product_tax_code

      sig do
        params(
          product_tax_code: T.nilable(WhopSDK::Product::ProductTaxCode::OrHash)
        ).void
      end
      attr_writer :product_tax_code

      # The total number of published customer reviews for this product's company.
      sig { returns(Integer) }
      attr_accessor :published_reviews_count

      # The URL slug used in the product's public link (e.g., 'my-product' in
      # whop.com/company/my-product).
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
          company: WhopSDK::Product::Company::OrHash,
          created_at: Time,
          custom_cta: WhopSDK::CustomCta::OrSymbol,
          custom_cta_url: T.nilable(String),
          custom_statement_descriptor: T.nilable(String),
          description: T.nilable(String),
          external_identifier: T.nilable(String),
          gallery_images: T::Array[WhopSDK::Product::GalleryImage::OrHash],
          global_affiliate_percentage: T.nilable(Float),
          global_affiliate_status: WhopSDK::GlobalAffiliateStatus::OrSymbol,
          headline: T.nilable(String),
          member_affiliate_percentage: T.nilable(Float),
          member_affiliate_status: WhopSDK::GlobalAffiliateStatus::OrSymbol,
          member_count: Integer,
          owner_user: WhopSDK::Product::OwnerUser::OrHash,
          product_tax_code: T.nilable(WhopSDK::Product::ProductTaxCode::OrHash),
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
        # The company this product belongs to.
        company:,
        # The datetime the product was created.
        created_at:,
        # The call-to-action button label displayed on the product's purchase page (e.g.,
        # 'join', 'buy', 'subscribe').
        custom_cta:,
        # An optional URL that the call-to-action button links to instead of the default
        # checkout flow. Null if no custom URL is set.
        custom_cta_url:,
        # A custom text label that appears on the customer's bank or credit card statement
        # for purchases of this product. Maximum 22 characters, including the required
        # prefix WHOP\*.
        custom_statement_descriptor:,
        # A brief summary of what the product offers, displayed on product pages and
        # search results.
        description:,
        # A unique identifier used to create or update products via the API. When provided
        # on product creation endpoints, an existing product with this identifier will be
        # updated instead of creating a new one.
        external_identifier:,
        # The gallery images for this product, ordered by position.
        gallery_images:,
        # The commission rate (as a percentage) that affiliates earn on sales through the
        # Whop marketplace global affiliate program. Null if the program is not active.
        global_affiliate_percentage:,
        # The enrollment status of this product in the Whop marketplace global affiliate
        # program.
        global_affiliate_status:,
        # A short marketing headline displayed prominently on the product's product page.
        headline:,
        # The commission rate (as a percentage) that existing members earn when referring
        # new customers through the member affiliate program. Null if the program is not
        # active.
        member_affiliate_percentage:,
        # The enrollment status of this product in the member affiliate program.
        member_affiliate_status:,
        # The number of users who currently hold an active membership to this product.
        # Returns 0 if the company has disabled public member counts.
        member_count:,
        # The user who owns the company that sells this product.
        owner_user:,
        # The tax classification code applied to purchases of this product for sales tax
        # calculation. Null if no tax code is assigned.
        product_tax_code:,
        # The total number of published customer reviews for this product's company.
        published_reviews_count:,
        # The URL slug used in the product's public link (e.g., 'my-product' in
        # whop.com/company/my-product).
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
            company: WhopSDK::Product::Company,
            created_at: Time,
            custom_cta: WhopSDK::CustomCta::TaggedSymbol,
            custom_cta_url: T.nilable(String),
            custom_statement_descriptor: T.nilable(String),
            description: T.nilable(String),
            external_identifier: T.nilable(String),
            gallery_images: T::Array[WhopSDK::Product::GalleryImage],
            global_affiliate_percentage: T.nilable(Float),
            global_affiliate_status:
              WhopSDK::GlobalAffiliateStatus::TaggedSymbol,
            headline: T.nilable(String),
            member_affiliate_percentage: T.nilable(Float),
            member_affiliate_status:
              WhopSDK::GlobalAffiliateStatus::TaggedSymbol,
            member_count: Integer,
            owner_user: WhopSDK::Product::OwnerUser,
            product_tax_code: T.nilable(WhopSDK::Product::ProductTaxCode),
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

      class Company < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Product::Company, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the company.
        sig { returns(String) }
        attr_accessor :id

        # The URL slug for the company's store page (e.g., 'pickaxe' in whop.com/pickaxe).
        sig { returns(String) }
        attr_accessor :route

        # The display name of the company shown to customers.
        sig { returns(String) }
        attr_accessor :title

        # The company this product belongs to.
        sig do
          params(id: String, route: String, title: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the company.
          id:,
          # The URL slug for the company's store page (e.g., 'pickaxe' in whop.com/pickaxe).
          route:,
          # The display name of the company shown to customers.
          title:
        )
        end

        sig { override.returns({ id: String, route: String, title: String }) }
        def to_hash
        end
      end

      class GalleryImage < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Product::GalleryImage, WhopSDK::Internal::AnyHash)
          end

        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        sig { returns(String) }
        attr_accessor :id

        # A pre-optimized URL for rendering this attachment on the client. This should be
        # used for displaying attachments in apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # Represents an image attachment
        sig do
          params(id: String, url: T.nilable(String)).returns(T.attached_class)
        end
        def self.new(
          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          id:,
          # A pre-optimized URL for rendering this attachment on the client. This should be
          # used for displaying attachments in apps.
          url:
        )
        end

        sig { override.returns({ id: String, url: T.nilable(String) }) }
        def to_hash
        end
      end

      class OwnerUser < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Product::OwnerUser, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the user.
        sig { returns(String) }
        attr_accessor :id

        # The user's display name shown on their public profile.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The user's unique username shown on their public profile.
        sig { returns(String) }
        attr_accessor :username

        # The user who owns the company that sells this product.
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the user.
          id:,
          # The user's display name shown on their public profile.
          name:,
          # The user's unique username shown on their public profile.
          username:
        )
        end

        sig do
          override.returns(
            { id: String, name: T.nilable(String), username: String }
          )
        end
        def to_hash
        end
      end

      class ProductTaxCode < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Product::ProductTaxCode, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the product tax code.
        sig { returns(String) }
        attr_accessor :id

        # The human-readable name of this tax classification (e.g., 'Digital - SaaS').
        sig { returns(String) }
        attr_accessor :name

        # The broad product category this tax code covers (e.g., physical goods, digital
        # services).
        sig do
          returns(WhopSDK::Product::ProductTaxCode::ProductType::TaggedSymbol)
        end
        attr_accessor :product_type

        # The tax classification code applied to purchases of this product for sales tax
        # calculation. Null if no tax code is assigned.
        sig do
          params(
            id: String,
            name: String,
            product_type:
              WhopSDK::Product::ProductTaxCode::ProductType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the product tax code.
          id:,
          # The human-readable name of this tax classification (e.g., 'Digital - SaaS').
          name:,
          # The broad product category this tax code covers (e.g., physical goods, digital
          # services).
          product_type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              name: String,
              product_type:
                WhopSDK::Product::ProductTaxCode::ProductType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The broad product category this tax code covers (e.g., physical goods, digital
        # services).
        module ProductType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Product::ProductTaxCode::ProductType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PHYSICAL =
            T.let(
              :physical,
              WhopSDK::Product::ProductTaxCode::ProductType::TaggedSymbol
            )
          DIGITAL =
            T.let(
              :digital,
              WhopSDK::Product::ProductTaxCode::ProductType::TaggedSymbol
            )
          SERVICES =
            T.let(
              :services,
              WhopSDK::Product::ProductTaxCode::ProductType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Product::ProductTaxCode::ProductType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
