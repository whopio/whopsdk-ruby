# typed: strong

module WhopSDK
  module Models
    class AppListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::AppListResponse, WhopSDK::Internal::AnyHash)
        end

      # The ID of the app
      sig { returns(String) }
      attr_accessor :id

      # The base url of the app
      sig { returns(T.nilable(String)) }
      attr_accessor :base_url

      # The company that owns the app
      sig { returns(WhopSDK::Models::AppListResponse::Company) }
      attr_reader :company

      sig do
        params(company: WhopSDK::Models::AppListResponse::Company::OrHash).void
      end
      attr_writer :company

      # The creator of the app
      sig { returns(WhopSDK::Models::AppListResponse::Creator) }
      attr_reader :creator

      sig do
        params(creator: WhopSDK::Models::AppListResponse::Creator::OrHash).void
      end
      attr_writer :creator

      # The path part for a specific view of the app. This is the template part of the
      # url after the base domain. Eg: /experiences/[experienceId]
      sig { returns(T.nilable(String)) }
      attr_accessor :dashboard_path

      # The description of the app
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The path part for a specific view of the app. This is the template part of the
      # url after the base domain. Eg: /experiences/[experienceId]
      sig { returns(T.nilable(String)) }
      attr_accessor :discover_path

      # The unique part of the proxied domain for this app. Used to generate the base
      # url used to display the app inside the whop platform. Refers to the id part in
      # the final url: https://{domain_id}.apps.whop.com
      sig { returns(String) }
      attr_accessor :domain_id

      # The path part for a specific view of the app. This is the template part of the
      # url after the base domain. Eg: /experiences/[experienceId]
      sig { returns(T.nilable(String)) }
      attr_accessor :experience_path

      # The icon for the app. This icon is shown on discovery, on the product page, on
      # checkout, and as a default icon for the experiences.
      sig { returns(T.nilable(WhopSDK::Models::AppListResponse::Icon)) }
      attr_reader :icon

      sig do
        params(
          icon: T.nilable(WhopSDK::Models::AppListResponse::Icon::OrHash)
        ).void
      end
      attr_writer :icon

      # The name of the app
      sig { returns(String) }
      attr_accessor :name

      # If the status is live, the app is visible on Whop discovery. In order to be
      # live, you need to set the name, icon, and description. Being unlisted or hidden
      # means it's not visible on Whop but you can still install the app via direct
      # link. To remove the app from whop discovery, you should set the status to
      # unlisted.
      sig { returns(WhopSDK::AppStatuses::TaggedSymbol) }
      attr_accessor :status

      # Whether this app has been verified by Whop. Verified apps are endorsed by whop
      # and are shown in the 'featured apps' section of the app store.
      sig { returns(T::Boolean) }
      attr_accessor :verified

      # An object representing an app
      sig do
        params(
          id: String,
          base_url: T.nilable(String),
          company: WhopSDK::Models::AppListResponse::Company::OrHash,
          creator: WhopSDK::Models::AppListResponse::Creator::OrHash,
          dashboard_path: T.nilable(String),
          description: T.nilable(String),
          discover_path: T.nilable(String),
          domain_id: String,
          experience_path: T.nilable(String),
          icon: T.nilable(WhopSDK::Models::AppListResponse::Icon::OrHash),
          name: String,
          status: WhopSDK::AppStatuses::OrSymbol,
          verified: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the app
        id:,
        # The base url of the app
        base_url:,
        # The company that owns the app
        company:,
        # The creator of the app
        creator:,
        # The path part for a specific view of the app. This is the template part of the
        # url after the base domain. Eg: /experiences/[experienceId]
        dashboard_path:,
        # The description of the app
        description:,
        # The path part for a specific view of the app. This is the template part of the
        # url after the base domain. Eg: /experiences/[experienceId]
        discover_path:,
        # The unique part of the proxied domain for this app. Used to generate the base
        # url used to display the app inside the whop platform. Refers to the id part in
        # the final url: https://{domain_id}.apps.whop.com
        domain_id:,
        # The path part for a specific view of the app. This is the template part of the
        # url after the base domain. Eg: /experiences/[experienceId]
        experience_path:,
        # The icon for the app. This icon is shown on discovery, on the product page, on
        # checkout, and as a default icon for the experiences.
        icon:,
        # The name of the app
        name:,
        # If the status is live, the app is visible on Whop discovery. In order to be
        # live, you need to set the name, icon, and description. Being unlisted or hidden
        # means it's not visible on Whop but you can still install the app via direct
        # link. To remove the app from whop discovery, you should set the status to
        # unlisted.
        status:,
        # Whether this app has been verified by Whop. Verified apps are endorsed by whop
        # and are shown in the 'featured apps' section of the app store.
        verified:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            base_url: T.nilable(String),
            company: WhopSDK::Models::AppListResponse::Company,
            creator: WhopSDK::Models::AppListResponse::Creator,
            dashboard_path: T.nilable(String),
            description: T.nilable(String),
            discover_path: T.nilable(String),
            domain_id: String,
            experience_path: T.nilable(String),
            icon: T.nilable(WhopSDK::Models::AppListResponse::Icon),
            name: String,
            status: WhopSDK::AppStatuses::TaggedSymbol,
            verified: T::Boolean
          }
        )
      end
      def to_hash
      end

      class Company < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AppListResponse::Company,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID (tag) of the company.
        sig { returns(String) }
        attr_accessor :id

        # The title of the company.
        sig { returns(String) }
        attr_accessor :title

        # The company that owns the app
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # The ID (tag) of the company.
          id:,
          # The title of the company.
          title:
        )
        end

        sig { override.returns({ id: String, title: String }) }
        def to_hash
        end
      end

      class Creator < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AppListResponse::Creator,
              WhopSDK::Internal::AnyHash
            )
          end

        # The internal ID of the user.
        sig { returns(String) }
        attr_accessor :id

        # The name of the user from their Whop account.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The username of the user from their Whop account.
        sig { returns(String) }
        attr_accessor :username

        # The creator of the app
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The internal ID of the user.
          id:,
          # The name of the user from their Whop account.
          name:,
          # The username of the user from their Whop account.
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

      class Icon < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AppListResponse::Icon,
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
  end
end
