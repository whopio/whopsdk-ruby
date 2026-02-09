# typed: strong

module WhopSDK
  module Models
    class Experience < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Experience, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the experience.
      sig { returns(String) }
      attr_accessor :id

      # The experience interface for this experience.
      sig { returns(WhopSDK::Experience::App) }
      attr_reader :app

      sig { params(app: WhopSDK::Experience::App::OrHash).void }
      attr_writer :app

      # The company that owns this experience.
      sig { returns(WhopSDK::Experience::Company) }
      attr_reader :company

      sig { params(company: WhopSDK::Experience::Company::OrHash).void }
      attr_writer :company

      # The datetime the experience was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The logo for the experience.
      sig { returns(T.nilable(WhopSDK::Experience::Image)) }
      attr_reader :image

      sig { params(image: T.nilable(WhopSDK::Experience::Image::OrHash)).void }
      attr_writer :image

      # Whether the experience is visible to the public
      sig { returns(T::Boolean) }
      attr_accessor :is_public

      # The written name of the description.
      sig { returns(String) }
      attr_accessor :name

      # The order of the experience in the section
      sig { returns(T.nilable(String)) }
      attr_accessor :order

      # The products that this experience is attached to. This defines which set of
      # customers have access and can view this experience. If empty, this experience is
      # only visible to authorized users of the company
      sig { returns(T::Array[WhopSDK::Experience::Product]) }
      attr_accessor :products

      # An experience is a feature or content module within a product, such as a chat,
      # course, or app.
      sig do
        params(
          id: String,
          app: WhopSDK::Experience::App::OrHash,
          company: WhopSDK::Experience::Company::OrHash,
          created_at: Time,
          image: T.nilable(WhopSDK::Experience::Image::OrHash),
          is_public: T::Boolean,
          name: String,
          order: T.nilable(String),
          products: T::Array[WhopSDK::Experience::Product::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the experience.
        id:,
        # The experience interface for this experience.
        app:,
        # The company that owns this experience.
        company:,
        # The datetime the experience was created.
        created_at:,
        # The logo for the experience.
        image:,
        # Whether the experience is visible to the public
        is_public:,
        # The written name of the description.
        name:,
        # The order of the experience in the section
        order:,
        # The products that this experience is attached to. This defines which set of
        # customers have access and can view this experience. If empty, this experience is
        # only visible to authorized users of the company
        products:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            app: WhopSDK::Experience::App,
            company: WhopSDK::Experience::Company,
            created_at: Time,
            image: T.nilable(WhopSDK::Experience::Image),
            is_public: T::Boolean,
            name: String,
            order: T.nilable(String),
            products: T::Array[WhopSDK::Experience::Product]
          }
        )
      end
      def to_hash
      end

      class App < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Experience::App, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the app.
        sig { returns(String) }
        attr_accessor :id

        # The icon for the app. This icon is shown on discovery, on the product page, on
        # checkout, and as a default icon for the experiences.
        sig { returns(T.nilable(WhopSDK::Experience::App::Icon)) }
        attr_reader :icon

        sig do
          params(icon: T.nilable(WhopSDK::Experience::App::Icon::OrHash)).void
        end
        attr_writer :icon

        # The name of the app
        sig { returns(String) }
        attr_accessor :name

        # The experience interface for this experience.
        sig do
          params(
            id: String,
            icon: T.nilable(WhopSDK::Experience::App::Icon::OrHash),
            name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the app.
          id:,
          # The icon for the app. This icon is shown on discovery, on the product page, on
          # checkout, and as a default icon for the experiences.
          icon:,
          # The name of the app
          name:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              icon: T.nilable(WhopSDK::Experience::App::Icon),
              name: String
            }
          )
        end
        def to_hash
        end

        class Icon < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(WhopSDK::Experience::App::Icon, WhopSDK::Internal::AnyHash)
            end

          # A pre-optimized URL for rendering this attachment on the client. This should be
          # used for displaying attachments in apps.
          sig { returns(T.nilable(String)) }
          attr_accessor :url

          # The icon for the app. This icon is shown on discovery, on the product page, on
          # checkout, and as a default icon for the experiences.
          sig { params(url: T.nilable(String)).returns(T.attached_class) }
          def self.new(
            # A pre-optimized URL for rendering this attachment on the client. This should be
            # used for displaying attachments in apps.
            url:
          )
          end

          sig { override.returns({ url: T.nilable(String) }) }
          def to_hash
          end
        end
      end

      class Company < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Experience::Company, WhopSDK::Internal::AnyHash)
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

        # The company that owns this experience.
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

      class Image < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Experience::Image, WhopSDK::Internal::AnyHash)
          end

        # A pre-optimized URL for rendering this attachment on the client. This should be
        # used for displaying attachments in apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # The logo for the experience.
        sig { params(url: T.nilable(String)).returns(T.attached_class) }
        def self.new(
          # A pre-optimized URL for rendering this attachment on the client. This should be
          # used for displaying attachments in apps.
          url:
        )
        end

        sig { override.returns({ url: T.nilable(String) }) }
        def to_hash
        end
      end

      class Product < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Experience::Product, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the product.
        sig { returns(String) }
        attr_accessor :id

        # The URL slug used in the product's public link (e.g., 'my-product' in
        # whop.com/company/my-product).
        sig { returns(String) }
        attr_accessor :route

        # The display name of the product shown to customers on the product page and in
        # search results.
        sig { returns(String) }
        attr_accessor :title

        # A product is a digital good or service sold on Whop. Products contain plans for
        # pricing and experiences for content delivery.
        sig do
          params(id: String, route: String, title: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the product.
          id:,
          # The URL slug used in the product's public link (e.g., 'my-product' in
          # whop.com/company/my-product).
          route:,
          # The display name of the product shown to customers on the product page and in
          # search results.
          title:
        )
        end

        sig { override.returns({ id: String, route: String, title: String }) }
        def to_hash
        end
      end
    end
  end
end
