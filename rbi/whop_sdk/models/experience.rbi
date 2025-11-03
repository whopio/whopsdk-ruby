# typed: strong

module WhopSDK
  module Models
    class Experience < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Experience, WhopSDK::Internal::AnyHash) }

      # The unique ID representing this experience
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

      # The timestamp of when this experience was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The logo for the experience.
      sig { returns(T.nilable(WhopSDK::Experience::Image)) }
      attr_reader :image

      sig { params(image: T.nilable(WhopSDK::Experience::Image::OrHash)).void }
      attr_writer :image

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

      # An object representing an experience belonging to a company.
      sig do
        params(
          id: String,
          app: WhopSDK::Experience::App::OrHash,
          company: WhopSDK::Experience::Company::OrHash,
          created_at: Time,
          image: T.nilable(WhopSDK::Experience::Image::OrHash),
          name: String,
          order: T.nilable(String),
          products: T::Array[WhopSDK::Experience::Product::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique ID representing this experience
        id:,
        # The experience interface for this experience.
        app:,
        # The company that owns this experience.
        company:,
        # The timestamp of when this experience was created.
        created_at:,
        # The logo for the experience.
        image:,
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

        # The ID of the app
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
          # The ID of the app
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

          # This is the URL you use to render optimized attachments on the client. This
          # should be used for apps.
          sig { returns(T.nilable(String)) }
          attr_accessor :url

          # The icon for the app. This icon is shown on discovery, on the product page, on
          # checkout, and as a default icon for the experiences.
          sig { params(url: T.nilable(String)).returns(T.attached_class) }
          def self.new(
            # This is the URL you use to render optimized attachments on the client. This
            # should be used for apps.
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

        # The ID (tag) of the company.
        sig { returns(String) }
        attr_accessor :id

        # The slug/route of the company on the Whop site.
        sig { returns(String) }
        attr_accessor :route

        # The title of the company.
        sig { returns(String) }
        attr_accessor :title

        # The company that owns this experience.
        sig do
          params(id: String, route: String, title: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The ID (tag) of the company.
          id:,
          # The slug/route of the company on the Whop site.
          route:,
          # The title of the company.
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

        # This is the URL you use to render optimized attachments on the client. This
        # should be used for apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # The logo for the experience.
        sig { params(url: T.nilable(String)).returns(T.attached_class) }
        def self.new(
          # This is the URL you use to render optimized attachments on the client. This
          # should be used for apps.
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

        # The internal ID of the public product.
        sig { returns(String) }
        attr_accessor :id

        # The route of the product.
        sig { returns(String) }
        attr_accessor :route

        # The title of the product. Use for Whop 4.0.
        sig { returns(String) }
        attr_accessor :title

        # Represents a product on whop. Use products to sell anything on the platform.
        sig do
          params(id: String, route: String, title: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The internal ID of the public product.
          id:,
          # The route of the product.
          route:,
          # The title of the product. Use for Whop 4.0.
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
