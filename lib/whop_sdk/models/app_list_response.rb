# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Apps#list
    class AppListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the app.
      #
      #   @return [String]
      required :id, String

      # @!attribute app_type
      #   The type of end-user an app is built for
      #
      #   @return [Symbol, WhopSDK::Models::AppType]
      required :app_type, enum: -> { WhopSDK::AppType }

      # @!attribute base_url
      #   The base url of the app
      #
      #   @return [String, nil]
      required :base_url, String, nil?: true

      # @!attribute company
      #   The company that owns the app
      #
      #   @return [WhopSDK::Models::AppListResponse::Company]
      required :company, -> { WhopSDK::Models::AppListResponse::Company }

      # @!attribute creator
      #   The creator of the app
      #
      #   @return [WhopSDK::Models::AppListResponse::Creator]
      required :creator, -> { WhopSDK::Models::AppListResponse::Creator }

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

      # @!attribute icon
      #   The icon for the app. This icon is shown on discovery, on the product page, on
      #   checkout, and as a default icon for the experiences.
      #
      #   @return [WhopSDK::Models::AppListResponse::Icon, nil]
      required :icon, -> { WhopSDK::Models::AppListResponse::Icon }, nil?: true

      # @!attribute name
      #   The name of the app
      #
      #   @return [String]
      required :name, String

      # @!attribute status
      #   If the status is live, the app is visible on Whop discovery. In order to be
      #   live, you need to set the name, icon, and description. Being unlisted or hidden
      #   means it's not visible on Whop but you can still install the app via direct
      #   link. To remove the app from whop discovery, you should set the status to
      #   unlisted.
      #
      #   @return [Symbol, WhopSDK::Models::AppStatuses]
      required :status, enum: -> { WhopSDK::AppStatuses }

      # @!attribute verified
      #   Whether this app has been verified by Whop. Verified apps are endorsed by whop
      #   and are shown in the 'featured apps' section of the app store.
      #
      #   @return [Boolean]
      required :verified, WhopSDK::Internal::Type::Boolean

      # @!method initialize(id:, app_type:, base_url:, company:, creator:, dashboard_path:, description:, discover_path:, domain_id:, experience_path:, icon:, name:, status:, verified:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AppListResponse} for more details.
      #
      #   An app is an integration built on Whop. Apps can serve consumers as experiences
      #   within products, or serve companies as business tools.
      #
      #   @param id [String] The unique identifier for the app.
      #
      #   @param app_type [Symbol, WhopSDK::Models::AppType] The type of end-user an app is built for
      #
      #   @param base_url [String, nil] The base url of the app
      #
      #   @param company [WhopSDK::Models::AppListResponse::Company] The company that owns the app
      #
      #   @param creator [WhopSDK::Models::AppListResponse::Creator] The creator of the app
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
      #   @param icon [WhopSDK::Models::AppListResponse::Icon, nil] The icon for the app. This icon is shown on discovery, on the product page, on c
      #
      #   @param name [String] The name of the app
      #
      #   @param status [Symbol, WhopSDK::Models::AppStatuses] If the status is live, the app is visible on Whop discovery. In order to be live
      #
      #   @param verified [Boolean] Whether this app has been verified by Whop. Verified apps are endorsed by whop a

      # @see WhopSDK::Models::AppListResponse#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company.
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
        #   @param id [String] The unique identifier for the company.
        #
        #   @param title [String] The title of the company.
      end

      # @see WhopSDK::Models::AppListResponse#creator
      class Creator < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
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
        #   @param id [String] The unique identifier for the user.
        #
        #   @param name [String, nil] The name of the user from their Whop account.
        #
        #   @param username [String] The username of the user from their Whop account.
      end

      # @see WhopSDK::Models::AppListResponse#icon
      class Icon < WhopSDK::Internal::Type::BaseModel
        # @!attribute url
        #   This is the URL you use to render optimized attachments on the client. This
        #   should be used for apps.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AppListResponse::Icon} for more details.
        #
        #   The icon for the app. This icon is shown on discovery, on the product page, on
        #   checkout, and as a default icon for the experiences.
        #
        #   @param url [String, nil] This is the URL you use to render optimized attachments on the client. This shou
      end
    end
  end
end
