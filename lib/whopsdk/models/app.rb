# frozen_string_literal: true

module Whopsdk
  module Models
    class App < Whopsdk::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the app
      #
      #   @return [String]
      required :id, String

      # @!attribute api_key
      #   The API key for the app
      #
      #   @return [Whopsdk::Models::App::APIKey, nil]
      required :api_key, -> { Whopsdk::App::APIKey }, nil?: true

      # @!attribute base_url
      #   The base url of the app
      #
      #   @return [String, nil]
      required :base_url, String, nil?: true

      # @!attribute company
      #   The company that owns the app
      #
      #   @return [Whopsdk::Models::App::Company]
      required :company, -> { Whopsdk::App::Company }

      # @!attribute creator
      #   The creator of the app
      #
      #   @return [Whopsdk::Models::App::Creator]
      required :creator, -> { Whopsdk::App::Creator }

      # @!attribute dashboard_path
      #   The path part for a specific view of the app. This is the template part of the
      #   url after the base domain. Eg: /experiences/[experienceId]
      #
      #   @return [String, nil]
      required :dashboard_path, String, nil?: true

      # @!attribute description
      #   The description of the app
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute discover_path
      #   The path part for a specific view of the app. This is the template part of the
      #   url after the base domain. Eg: /experiences/[experienceId]
      #
      #   @return [String, nil]
      required :discover_path, String, nil?: true

      # @!attribute domain_id
      #   The unique part of the proxied domain for this app. Used to generate the base
      #   url used to display the app inside the whop platform. Refers to the id part in
      #   the final url: https://{domain_id}.apps.whop.com
      #
      #   @return [String]
      required :domain_id, String

      # @!attribute experience_path
      #   The path part for a specific view of the app. This is the template part of the
      #   url after the base domain. Eg: /experiences/[experienceId]
      #
      #   @return [String, nil]
      required :experience_path, String, nil?: true

      # @!attribute name
      #   The name of the app
      #
      #   @return [String]
      required :name, String

      # @!attribute requested_permissions
      #   The set of permissions that an app requests to be granted when a user installs
      #   the app.
      #
      #   @return [Array<Whopsdk::Models::App::RequestedPermission>]
      required :requested_permissions,
               -> { Whopsdk::Internal::Type::ArrayOf[Whopsdk::App::RequestedPermission] }

      # @!attribute stats
      #   A collection of stats for the app.
      #
      #   @return [Whopsdk::Models::App::Stats, nil]
      required :stats, -> { Whopsdk::App::Stats }, nil?: true

      # @!attribute status
      #   If the status is live, the app is visible on Whop discovery. In order to be
      #   live, you need to set the name, icon, and description. Being unlisted or hidden
      #   means it's not visible on Whop but you can still install the app via direct
      #   link. To remove the app from whop discovery, you should set the status to
      #   unlisted.
      #
      #   @return [Symbol, Whopsdk::Models::AppStatuses]
      required :status, enum: -> { Whopsdk::AppStatuses }

      # @!attribute verified
      #   Whether this app has been verified by Whop. Verified apps are endorsed by whop
      #   and are shown in the 'featured apps' section of the app store.
      #
      #   @return [Boolean]
      required :verified, Whopsdk::Internal::Type::Boolean

      # @!method initialize(id:, api_key:, base_url:, company:, creator:, dashboard_path:, description:, discover_path:, domain_id:, experience_path:, name:, requested_permissions:, stats:, status:, verified:)
      #   Some parameter documentations has been truncated, see {Whopsdk::Models::App} for
      #   more details.
      #
      #   An object representing an app
      #
      #   @param id [String] The ID of the app
      #
      #   @param api_key [Whopsdk::Models::App::APIKey, nil] The API key for the app
      #
      #   @param base_url [String, nil] The base url of the app
      #
      #   @param company [Whopsdk::Models::App::Company] The company that owns the app
      #
      #   @param creator [Whopsdk::Models::App::Creator] The creator of the app
      #
      #   @param dashboard_path [String, nil] The path part for a specific view of the app. This is the template part of the u
      #
      #   @param description [String, nil] The description of the app
      #
      #   @param discover_path [String, nil] The path part for a specific view of the app. This is the template part of the u
      #
      #   @param domain_id [String] The unique part of the proxied domain for this app. Used to generate the base ur
      #
      #   @param experience_path [String, nil] The path part for a specific view of the app. This is the template part of the u
      #
      #   @param name [String] The name of the app
      #
      #   @param requested_permissions [Array<Whopsdk::Models::App::RequestedPermission>] The set of permissions that an app requests to be granted when a user installs t
      #
      #   @param stats [Whopsdk::Models::App::Stats, nil] A collection of stats for the app.
      #
      #   @param status [Symbol, Whopsdk::Models::AppStatuses] If the status is live, the app is visible on Whop discovery. In order to be live
      #
      #   @param verified [Boolean] Whether this app has been verified by Whop. Verified apps are endorsed by whop a

      # @see Whopsdk::Models::App#api_key
      class APIKey < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of this API key
        #
        #   @return [String]
        required :id, String

        # @!attribute token
        #   This is the API key used to authenticate requests
        #
        #   @return [String]
        required :token, String

        # @!attribute created_at
        #   When this API key was created at
        #
        #   @return [Time]
        required :created_at, Time

        # @!method initialize(id:, token:, created_at:)
        #   The API key for the app
        #
        #   @param id [String] The ID of this API key
        #
        #   @param token [String] This is the API key used to authenticate requests
        #
        #   @param created_at [Time] When this API key was created at
      end

      # @see Whopsdk::Models::App#company
      class Company < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The ID (tag) of the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The title of the company.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   The company that owns the app
        #
        #   @param id [String] The ID (tag) of the company.
        #
        #   @param title [String] The title of the company.
      end

      # @see Whopsdk::Models::App#creator
      class Creator < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The name of the user from their Whop account.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The username of the user from their Whop account.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, username:)
        #   The creator of the app
        #
        #   @param id [String] The internal ID of the user.
        #
        #   @param name [String, nil] The name of the user from their Whop account.
        #
        #   @param username [String] The username of the user from their Whop account.
      end

      class RequestedPermission < Whopsdk::Internal::Type::BaseModel
        # @!attribute is_required
        #   Whether the action is required for the app to function.
        #
        #   @return [Boolean]
        required :is_required, Whopsdk::Internal::Type::Boolean

        # @!attribute justification
        #   The reason for requesting the action.
        #
        #   @return [String]
        required :justification, String

        # @!attribute permission_action
        #   The action that the app will request off of users when a user installs the app.
        #
        #   @return [Whopsdk::Models::App::RequestedPermission::PermissionAction]
        required :permission_action, -> { Whopsdk::App::RequestedPermission::PermissionAction }

        # @!method initialize(is_required:, justification:, permission_action:)
        #   A permission that the app requests from the admin of a company during the oauth
        #   flow.
        #
        #   @param is_required [Boolean] Whether the action is required for the app to function.
        #
        #   @param justification [String] The reason for requesting the action.
        #
        #   @param permission_action [Whopsdk::Models::App::RequestedPermission::PermissionAction] The action that the app will request off of users when a user installs the app.

        # @see Whopsdk::Models::App::RequestedPermission#permission_action
        class PermissionAction < Whopsdk::Internal::Type::BaseModel
          # @!attribute action
          #   The identifier of the action.
          #
          #   @return [String]
          required :action, String

          # @!attribute name
          #   The human readable name of the action.
          #
          #   @return [String]
          required :name, String

          # @!method initialize(action:, name:)
          #   The action that the app will request off of users when a user installs the app.
          #
          #   @param action [String] The identifier of the action.
          #
          #   @param name [String] The human readable name of the action.
        end
      end

      # @see Whopsdk::Models::App#stats
      class Stats < Whopsdk::Internal::Type::BaseModel
        # @!attribute dau
        #   This is the number of users that have spent time in this app in the last 24
        #   hours.
        #
        #   @return [Integer]
        required :dau, Integer

        # @!attribute mau
        #   This is the number of users that have spent time in this app in the last 28
        #   days.
        #
        #   @return [Integer]
        required :mau, Integer

        # @!attribute time_spent_last24_hours
        #   This how much time, in seconds, users have spent in this app in the last 24
        #   hours.
        #
        #   @return [Integer]
        required :time_spent_last24_hours, Integer

        # @!attribute wau
        #   This is the number of users that have spent time in this app in the last 7 days.
        #
        #   @return [Integer]
        required :wau, Integer

        # @!method initialize(dau:, mau:, time_spent_last24_hours:, wau:)
        #   Some parameter documentations has been truncated, see
        #   {Whopsdk::Models::App::Stats} for more details.
        #
        #   A collection of stats for the app.
        #
        #   @param dau [Integer] This is the number of users that have spent time in this app in the last 24 hour
        #
        #   @param mau [Integer] This is the number of users that have spent time in this app in the last 28 days
        #
        #   @param time_spent_last24_hours [Integer] This how much time, in seconds, users have spent in this app in the last 24 hour
        #
        #   @param wau [Integer] This is the number of users that have spent time in this app in the last 7 days.
      end
    end
  end
end
