# typed: strong

module Whopsdk
  module Models
    class App < Whopsdk::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Whopsdk::App, Whopsdk::Internal::AnyHash) }

      # The ID of the app
      sig { returns(String) }
      attr_accessor :id

      # The API key for the app
      sig { returns(T.nilable(Whopsdk::App::APIKey)) }
      attr_reader :api_key

      sig { params(api_key: T.nilable(Whopsdk::App::APIKey::OrHash)).void }
      attr_writer :api_key

      # The base url of the app
      sig { returns(T.nilable(String)) }
      attr_accessor :base_url

      # The company that owns the app
      sig { returns(Whopsdk::App::Company) }
      attr_reader :company

      sig { params(company: Whopsdk::App::Company::OrHash).void }
      attr_writer :company

      # The creator of the app
      sig { returns(Whopsdk::App::Creator) }
      attr_reader :creator

      sig { params(creator: Whopsdk::App::Creator::OrHash).void }
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

      # The name of the app
      sig { returns(String) }
      attr_accessor :name

      # The set of permissions that an app requests to be granted when a user installs
      # the app.
      sig { returns(T::Array[Whopsdk::App::RequestedPermission]) }
      attr_accessor :requested_permissions

      # A collection of stats for the app.
      sig { returns(T.nilable(Whopsdk::App::Stats)) }
      attr_reader :stats

      sig { params(stats: T.nilable(Whopsdk::App::Stats::OrHash)).void }
      attr_writer :stats

      # If the status is live, the app is visible on Whop discovery. In order to be
      # live, you need to set the name, icon, and description. Being unlisted or hidden
      # means it's not visible on Whop but you can still install the app via direct
      # link. To remove the app from whop discovery, you should set the status to
      # unlisted.
      sig { returns(Whopsdk::AppStatuses::TaggedSymbol) }
      attr_accessor :status

      # Whether this app has been verified by Whop. Verified apps are endorsed by whop
      # and are shown in the 'featured apps' section of the app store.
      sig { returns(T::Boolean) }
      attr_accessor :verified

      # An object representing an app
      sig do
        params(
          id: String,
          api_key: T.nilable(Whopsdk::App::APIKey::OrHash),
          base_url: T.nilable(String),
          company: Whopsdk::App::Company::OrHash,
          creator: Whopsdk::App::Creator::OrHash,
          dashboard_path: T.nilable(String),
          description: T.nilable(String),
          discover_path: T.nilable(String),
          domain_id: String,
          experience_path: T.nilable(String),
          name: String,
          requested_permissions:
            T::Array[Whopsdk::App::RequestedPermission::OrHash],
          stats: T.nilable(Whopsdk::App::Stats::OrHash),
          status: Whopsdk::AppStatuses::OrSymbol,
          verified: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the app
        id:,
        # The API key for the app
        api_key:,
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
        # The name of the app
        name:,
        # The set of permissions that an app requests to be granted when a user installs
        # the app.
        requested_permissions:,
        # A collection of stats for the app.
        stats:,
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
            api_key: T.nilable(Whopsdk::App::APIKey),
            base_url: T.nilable(String),
            company: Whopsdk::App::Company,
            creator: Whopsdk::App::Creator,
            dashboard_path: T.nilable(String),
            description: T.nilable(String),
            discover_path: T.nilable(String),
            domain_id: String,
            experience_path: T.nilable(String),
            name: String,
            requested_permissions: T::Array[Whopsdk::App::RequestedPermission],
            stats: T.nilable(Whopsdk::App::Stats),
            status: Whopsdk::AppStatuses::TaggedSymbol,
            verified: T::Boolean
          }
        )
      end
      def to_hash
      end

      class APIKey < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::App::APIKey, Whopsdk::Internal::AnyHash)
          end

        # The ID of this API key
        sig { returns(String) }
        attr_accessor :id

        # This is the API key used to authenticate requests
        sig { returns(String) }
        attr_accessor :token

        # When this API key was created at
        sig { returns(Time) }
        attr_accessor :created_at

        # The API key for the app
        sig do
          params(id: String, token: String, created_at: Time).returns(
            T.attached_class
          )
        end
        def self.new(
          # The ID of this API key
          id:,
          # This is the API key used to authenticate requests
          token:,
          # When this API key was created at
          created_at:
        )
        end

        sig do
          override.returns({ id: String, token: String, created_at: Time })
        end
        def to_hash
        end
      end

      class Company < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::App::Company, Whopsdk::Internal::AnyHash)
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

      class Creator < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::App::Creator, Whopsdk::Internal::AnyHash)
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

      class RequestedPermission < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::App::RequestedPermission, Whopsdk::Internal::AnyHash)
          end

        # Whether the action is required for the app to function.
        sig { returns(T::Boolean) }
        attr_accessor :is_required

        # The reason for requesting the action.
        sig { returns(String) }
        attr_accessor :justification

        # The action that the app will request off of users when a user installs the app.
        sig { returns(Whopsdk::App::RequestedPermission::PermissionAction) }
        attr_reader :permission_action

        sig do
          params(
            permission_action:
              Whopsdk::App::RequestedPermission::PermissionAction::OrHash
          ).void
        end
        attr_writer :permission_action

        # A permission that the app requests from the admin of a company during the oauth
        # flow.
        sig do
          params(
            is_required: T::Boolean,
            justification: String,
            permission_action:
              Whopsdk::App::RequestedPermission::PermissionAction::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether the action is required for the app to function.
          is_required:,
          # The reason for requesting the action.
          justification:,
          # The action that the app will request off of users when a user installs the app.
          permission_action:
        )
        end

        sig do
          override.returns(
            {
              is_required: T::Boolean,
              justification: String,
              permission_action:
                Whopsdk::App::RequestedPermission::PermissionAction
            }
          )
        end
        def to_hash
        end

        class PermissionAction < Whopsdk::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Whopsdk::App::RequestedPermission::PermissionAction,
                Whopsdk::Internal::AnyHash
              )
            end

          # The identifier of the action.
          sig { returns(String) }
          attr_accessor :action

          # The human readable name of the action.
          sig { returns(String) }
          attr_accessor :name

          # The action that the app will request off of users when a user installs the app.
          sig { params(action: String, name: String).returns(T.attached_class) }
          def self.new(
            # The identifier of the action.
            action:,
            # The human readable name of the action.
            name:
          )
          end

          sig { override.returns({ action: String, name: String }) }
          def to_hash
          end
        end
      end

      class Stats < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::App::Stats, Whopsdk::Internal::AnyHash)
          end

        # This is the number of users that have spent time in this app in the last 24
        # hours.
        sig { returns(Integer) }
        attr_accessor :dau

        # This is the number of users that have spent time in this app in the last 28
        # days.
        sig { returns(Integer) }
        attr_accessor :mau

        # This how much time, in seconds, users have spent in this app in the last 24
        # hours.
        sig { returns(Integer) }
        attr_accessor :time_spent_last24_hours

        # This is the number of users that have spent time in this app in the last 7 days.
        sig { returns(Integer) }
        attr_accessor :wau

        # A collection of stats for the app.
        sig do
          params(
            dau: Integer,
            mau: Integer,
            time_spent_last24_hours: Integer,
            wau: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # This is the number of users that have spent time in this app in the last 24
          # hours.
          dau:,
          # This is the number of users that have spent time in this app in the last 28
          # days.
          mau:,
          # This how much time, in seconds, users have spent in this app in the last 24
          # hours.
          time_spent_last24_hours:,
          # This is the number of users that have spent time in this app in the last 7 days.
          wau:
        )
        end

        sig do
          override.returns(
            {
              dau: Integer,
              mau: Integer,
              time_spent_last24_hours: Integer,
              wau: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
