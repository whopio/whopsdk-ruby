# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Apps#update
    class AppUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute app_store_description
      #   The description of the app for the app store in-depth app view.
      #
      #   @return [String, nil]
      optional :app_store_description, String, nil?: true

      # @!attribute base_url
      #   The base production url of the app
      #
      #   @return [String, nil]
      optional :base_url, String, nil?: true

      # @!attribute dashboard_path
      #   The path for the dashboard view of the app
      #
      #   @return [String, nil]
      optional :dashboard_path, String, nil?: true

      # @!attribute description
      #   The description of the app
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute discover_path
      #   The path for the discover view of the app
      #
      #   @return [String, nil]
      optional :discover_path, String, nil?: true

      # @!attribute experience_path
      #   The path for the hub view of the app
      #
      #   @return [String, nil]
      optional :experience_path, String, nil?: true

      # @!attribute icon
      #   The icon for the app
      #
      #   @return [WhopSDK::Models::AppUpdateParams::Icon::DirectUploadID, WhopSDK::Models::AppUpdateParams::Icon::ID, nil]
      optional :icon, union: -> { WhopSDK::AppUpdateParams::Icon }, nil?: true

      # @!attribute name
      #   The name of the app
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute required_scopes
      #   The scopes that the app will request off of users when a user installs the app.
      #
      #   @return [Array<Symbol, WhopSDK::Models::AppUpdateParams::RequiredScope>, nil]
      optional :required_scopes,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AppUpdateParams::RequiredScope] },
               nil?: true

      # @!attribute status
      #   The status of an experience interface
      #
      #   @return [Symbol, WhopSDK::Models::AppStatuses, nil]
      optional :status, enum: -> { WhopSDK::AppStatuses }, nil?: true

      # @!method initialize(app_store_description: nil, base_url: nil, dashboard_path: nil, description: nil, discover_path: nil, experience_path: nil, icon: nil, name: nil, required_scopes: nil, status: nil, request_options: {})
      #   @param app_store_description [String, nil] The description of the app for the app store in-depth app view.
      #
      #   @param base_url [String, nil] The base production url of the app
      #
      #   @param dashboard_path [String, nil] The path for the dashboard view of the app
      #
      #   @param description [String, nil] The description of the app
      #
      #   @param discover_path [String, nil] The path for the discover view of the app
      #
      #   @param experience_path [String, nil] The path for the hub view of the app
      #
      #   @param icon [WhopSDK::Models::AppUpdateParams::Icon::DirectUploadID, WhopSDK::Models::AppUpdateParams::Icon::ID, nil] The icon for the app
      #
      #   @param name [String, nil] The name of the app
      #
      #   @param required_scopes [Array<Symbol, WhopSDK::Models::AppUpdateParams::RequiredScope>, nil] The scopes that the app will request off of users when a user installs the app.
      #
      #   @param status [Symbol, WhopSDK::Models::AppStatuses, nil] The status of an experience interface
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The icon for the app
      module Icon
        extend WhopSDK::Internal::Type::Union

        # Input for an attachment
        variant -> { WhopSDK::AppUpdateParams::Icon::DirectUploadID }

        # Input for an attachment
        variant -> { WhopSDK::AppUpdateParams::Icon::ID }

        class DirectUploadID < WhopSDK::Internal::Type::BaseModel
          # @!attribute direct_upload_id
          #   This ID should be used the first time you upload an attachment. It is the ID of
          #   the direct upload that was created when uploading the file to S3 via the
          #   mediaDirectUpload mutation.
          #
          #   @return [String]
          required :direct_upload_id, String

          # @!method initialize(direct_upload_id:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AppUpdateParams::Icon::DirectUploadID} for more details.
          #
          #   Input for an attachment
          #
          #   @param direct_upload_id [String] This ID should be used the first time you upload an attachment. It is the ID of
        end

        class ID < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of an existing attachment object. Use this when updating a resource and
          #   keeping a subset of the attachments. Don't use this unless you know what you're
          #   doing.
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AppUpdateParams::Icon::ID} for more details.
          #
          #   Input for an attachment
          #
          #   @param id [String] The ID of an existing attachment object. Use this when updating a resource and k
        end

        # @!method self.variants
        #   @return [Array(WhopSDK::Models::AppUpdateParams::Icon::DirectUploadID, WhopSDK::Models::AppUpdateParams::Icon::ID)]
      end

      # These are the scopes an app can request on behalf of a user
      module RequiredScope
        extend WhopSDK::Internal::Type::Enum

        READ_USER = :read_user

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
