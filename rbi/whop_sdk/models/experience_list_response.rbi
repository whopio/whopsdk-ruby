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

      # The app that powers this experience, defining its interface and behavior.
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

      # The custom logo image for this experience. Null if no custom logo has been
      # uploaded.
      sig { returns(T.nilable(WhopSDK::Models::ExperienceListResponse::Image)) }
      attr_reader :image

      sig do
        params(
          image:
            T.nilable(WhopSDK::Models::ExperienceListResponse::Image::OrHash)
        ).void
      end
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

      # An experience is a feature or content module within a product, such as a chat,
      # course, or custom app.
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

        # The icon image for this app, displayed on the app store, product pages,
        # checkout, and as the default icon for experiences using this app.
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

        # The display name of this app shown on the app store and in experience
        # navigation. Maximum 30 characters.
        sig { returns(String) }
        attr_accessor :name

        # The app that powers this experience, defining its interface and behavior.
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
            T.any(
              WhopSDK::Models::ExperienceListResponse::Company,
              WhopSDK::Internal::AnyHash
            )
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
            T.any(
              WhopSDK::Models::ExperienceListResponse::Image,
              WhopSDK::Internal::AnyHash
            )
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
    end
  end
end
