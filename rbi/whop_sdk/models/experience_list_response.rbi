# typed: strong

module WhopSDK
  module Models
    class ExperienceListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::ExperienceListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the experience.
      sig { returns(String) }
      attr_accessor :id

      # The experience interface for this experience.
      sig { returns(WhopSDK::Models::ExperienceListResponse::App) }
      attr_reader :app

      sig do
        params(app: WhopSDK::Models::ExperienceListResponse::App::OrHash).void
      end
      attr_writer :app

      # The company that owns this experience.
      sig { returns(WhopSDK::Models::ExperienceListResponse::Company) }
      attr_reader :company

      sig do
        params(
          company: WhopSDK::Models::ExperienceListResponse::Company::OrHash
        ).void
      end
      attr_writer :company

      # The datetime the experience was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The logo for the experience.
      sig { returns(T.nilable(WhopSDK::Models::ExperienceListResponse::Image)) }
      attr_reader :image

      sig do
        params(
          image:
            T.nilable(WhopSDK::Models::ExperienceListResponse::Image::OrHash)
        ).void
      end
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

      # An experience is a feature or content module within a product, such as a chat,
      # course, or app.
      sig do
        params(
          id: String,
          app: WhopSDK::Models::ExperienceListResponse::App::OrHash,
          company: WhopSDK::Models::ExperienceListResponse::Company::OrHash,
          created_at: Time,
          image:
            T.nilable(WhopSDK::Models::ExperienceListResponse::Image::OrHash),
          is_public: T::Boolean,
          name: String,
          order: T.nilable(String)
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
        order:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            app: WhopSDK::Models::ExperienceListResponse::App,
            company: WhopSDK::Models::ExperienceListResponse::Company,
            created_at: Time,
            image: T.nilable(WhopSDK::Models::ExperienceListResponse::Image),
            is_public: T::Boolean,
            name: String,
            order: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class App < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::ExperienceListResponse::App,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the app.
        sig { returns(String) }
        attr_accessor :id

        # The icon for the app. This icon is shown on discovery, on the product page, on
        # checkout, and as a default icon for the experiences.
        sig do
          returns(T.nilable(WhopSDK::Models::ExperienceListResponse::App::Icon))
        end
        attr_reader :icon

        sig do
          params(
            icon:
              T.nilable(
                WhopSDK::Models::ExperienceListResponse::App::Icon::OrHash
              )
          ).void
        end
        attr_writer :icon

        # The name of the app
        sig { returns(String) }
        attr_accessor :name

        # The experience interface for this experience.
        sig do
          params(
            id: String,
            icon:
              T.nilable(
                WhopSDK::Models::ExperienceListResponse::App::Icon::OrHash
              ),
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
              icon:
                T.nilable(WhopSDK::Models::ExperienceListResponse::App::Icon),
              name: String
            }
          )
        end
        def to_hash
        end

        class Icon < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::ExperienceListResponse::App::Icon,
                WhopSDK::Internal::AnyHash
              )
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
            T.any(
              WhopSDK::Models::ExperienceListResponse::Company,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the company.
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
          # The unique identifier for the company.
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
            T.any(
              WhopSDK::Models::ExperienceListResponse::Image,
              WhopSDK::Internal::AnyHash
            )
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
    end
  end
end
