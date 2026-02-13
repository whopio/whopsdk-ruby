# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AppBuilds#create
    class AppBuildCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute attachment
      #   The build file to upload. For iOS and Android, this should be a .zip archive
      #   containing a main_js_bundle.hbc file and an optional assets folder. For web,
      #   this should be a JavaScript file.
      #
      #   @return [WhopSDK::Models::AppBuildCreateParams::Attachment]
      required :attachment, -> { WhopSDK::AppBuildCreateParams::Attachment }

      # @!attribute checksum
      #   A client-generated checksum of the build file, used to verify file integrity
      #   when unpacked on a device.
      #
      #   @return [String]
      required :checksum, String

      # @!attribute platform
      #   The target platform for the build. Accepted values: ios, android, web.
      #
      #   @return [Symbol, WhopSDK::Models::AppBuildPlatforms]
      required :platform, enum: -> { WhopSDK::AppBuildPlatforms }

      # @!attribute ai_prompt_id
      #   The identifier of the AI prompt that generated this build, if applicable.
      #
      #   @return [String, nil]
      optional :ai_prompt_id, String, nil?: true

      # @!attribute app_id
      #   The unique identifier of the app to create the build for. Defaults to the app
      #   associated with the current API key.
      #
      #   @return [String, nil]
      optional :app_id, String, nil?: true

      # @!attribute supported_app_view_types
      #   The view types this build supports. A build can support multiple view types but
      #   should only list the ones its code implements.
      #
      #   @return [Array<Symbol, WhopSDK::Models::AppViewType>, nil]
      optional :supported_app_view_types,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AppViewType] },
               nil?: true

      # @!method initialize(attachment:, checksum:, platform:, ai_prompt_id: nil, app_id: nil, supported_app_view_types: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AppBuildCreateParams} for more details.
      #
      #   @param attachment [WhopSDK::Models::AppBuildCreateParams::Attachment] The build file to upload. For iOS and Android, this should be a .zip archive con
      #
      #   @param checksum [String] A client-generated checksum of the build file, used to verify file integrity whe
      #
      #   @param platform [Symbol, WhopSDK::Models::AppBuildPlatforms] The target platform for the build. Accepted values: ios, android, web.
      #
      #   @param ai_prompt_id [String, nil] The identifier of the AI prompt that generated this build, if applicable.
      #
      #   @param app_id [String, nil] The unique identifier of the app to create the build for. Defaults to the app as
      #
      #   @param supported_app_view_types [Array<Symbol, WhopSDK::Models::AppViewType>, nil] The view types this build supports. A build can support multiple view types but
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Attachment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The build file to upload. For iOS and Android, this should be a .zip archive
        #   containing a main_js_bundle.hbc file and an optional assets folder. For web,
        #   this should be a JavaScript file.
        #
        #   @param id [String] The ID of an existing file object.
      end
    end
  end
end
