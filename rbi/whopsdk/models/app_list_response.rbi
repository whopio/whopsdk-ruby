# typed: strong

module Whopsdk
  module Models
    class AppListResponse < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Whopsdk::Models::AppListResponse, Whopsdk::Internal::AnyHash)
        end

      # The ID of the app
      sig { returns(String) }
      attr_accessor :id

      # The base url of the app
      sig { returns(T.nilable(String)) }
      attr_accessor :base_url

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

      # The status of an experience interface
      sig { returns(T.nilable(Whopsdk::AppStatuses::TaggedSymbol)) }
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
          dashboard_path: T.nilable(String),
          description: T.nilable(String),
          discover_path: T.nilable(String),
          domain_id: String,
          experience_path: T.nilable(String),
          name: String,
          status: T.nilable(Whopsdk::AppStatuses::OrSymbol),
          verified: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the app
        id:,
        # The base url of the app
        base_url:,
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
        # The status of an experience interface
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
            dashboard_path: T.nilable(String),
            description: T.nilable(String),
            discover_path: T.nilable(String),
            domain_id: String,
            experience_path: T.nilable(String),
            name: String,
            status: T.nilable(Whopsdk::AppStatuses::TaggedSymbol),
            verified: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
