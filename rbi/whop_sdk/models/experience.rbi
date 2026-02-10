# typed: strong

module WhopSDK
  module Models
    class Experience < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Experience, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the experience.
      sig { returns(String) }
      attr_accessor :id

      # The app that powers this experience, defining its interface and behavior.
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

      # The custom logo image for this experience. Null if no custom logo has been
      # uploaded.
      sig { returns(T.nilable(WhopSDK::Experience::Image)) }
      attr_reader :image

      sig { params(image: T.nilable(WhopSDK::Experience::Image::OrHash)).void }
      attr_writer :image

      # Whether this experience is publicly visible to all users, including those
      # without a membership.
      sig { returns(T::Boolean) }
      attr_accessor :is_public

      # The display name of this experience shown to users in the product navigation.
      # Maximum 255 characters.
      sig { returns(String) }
      attr_accessor :name

      # The sort position of this experience within its section. Lower values appear
      # first. Null if no position has been set.
      sig { returns(T.nilable(String)) }
      attr_accessor :order

      # The list of products this experience is attached to, which determines which
      # customers have access. Empty if the experience is only visible to authorized
      # company team members.
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
        # The app that powers this experience, defining its interface and behavior.
        app:,
        # The company that owns this experience.
        company:,
        # The datetime the experience was created.
        created_at:,
        # The custom logo image for this experience. Null if no custom logo has been
        # uploaded.
        image:,
        # Whether this experience is publicly visible to all users, including those
        # without a membership.
        is_public:,
        # The display name of this experience shown to users in the product navigation.
        # Maximum 255 characters.
        name:,
        # The sort position of this experience within its section. Lower values appear
        # first. Null if no position has been set.
        order:,
        # The list of products this experience is attached to, which determines which
        # customers have access. Empty if the experience is only visible to authorized
        # company team members.
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

        # The icon image for this app, displayed on the app store, product pages,
        # checkout, and as the default icon for experiences using this app.
        sig { returns(T.nilable(WhopSDK::Experience::App::Icon)) }
        attr_reader :icon

        sig do
          params(icon: T.nilable(WhopSDK::Experience::App::Icon::OrHash)).void
        end
        attr_writer :icon

        # The display name of this app shown on the app store and in experience
        # navigation. Maximum 30 characters.
        sig { returns(String) }
        attr_accessor :name

        # The app that powers this experience, defining its interface and behavior.
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
          # The icon image for this app, displayed on the app store, product pages,
          # checkout, and as the default icon for experiences using this app.
          icon:,
          # The display name of this app shown on the app store and in experience
          # navigation. Maximum 30 characters.
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

          # The icon image for this app, displayed on the app store, product pages,
          # checkout, and as the default icon for experiences using this app.
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

        # The custom logo image for this experience. Null if no custom logo has been
        # uploaded.
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
