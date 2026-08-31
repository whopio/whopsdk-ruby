# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AppBuilds#create
    class AppBuildCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute attachment
      #   The uploaded build file: `{ id }` for an existing file or `{ direct_upload_id }`
      #   for a completed direct upload.
      #
      #   @return [WhopSDK::Models::AppBuildCreateParams::Attachment]
      required :attachment, -> { WhopSDK::AppBuildCreateParams::Attachment }

      # @!attribute checksum
      #   A client-generated checksum of the build file, used to verify file integrity
      #   when unpacked.
      #
      #   @return [String]
      required :checksum, String

      # @!attribute platform
      #   The target platform for the build.
      #
      #   @return [Symbol, WhopSDK::Models::AppBuildCreateParams::Platform]
      required :platform, enum: -> { WhopSDK::AppBuildCreateParams::Platform }

      # @!attribute ai_prompt_id
      #   The AI prompt that generated this build, if applicable.
      #
      #   @return [String, nil]
      optional :ai_prompt_id, String

      # @!attribute app_id
      #   The app to create the build for, prefixed `app_`. Defaults to the app behind the
      #   presented credential.
      #
      #   @return [String, nil]
      optional :app_id, String

      # @!attribute source_attachment
      #   An optional compressed archive (.zip or .gz) of the source code that produced
      #   this build, stored alongside the build so it can be downloaded later. Referenced
      #   like `attachment`, and must be a different file.
      #
      #   @return [WhopSDK::Models::AppBuildCreateParams::SourceAttachment, nil]
      optional :source_attachment, -> { WhopSDK::AppBuildCreateParams::SourceAttachment }

      # @!attribute supported_app_view_types
      #   The view types this build supports. Only list the ones its code implements.
      #
      #   @return [Array<Symbol, WhopSDK::Models::AppBuildCreateParams::SupportedAppViewType>, nil]
      optional :supported_app_view_types,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AppBuildCreateParams::SupportedAppViewType] }

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!attribute idempotency_key
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!method initialize(attachment:, checksum:, platform:, ai_prompt_id: nil, app_id: nil, source_attachment: nil, supported_app_view_types: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AppBuildCreateParams} for more details.
      #
      #   @param attachment [WhopSDK::Models::AppBuildCreateParams::Attachment] The uploaded build file: `{ id }` for an existing file or `{ direct_upload_id }`
      #
      #   @param checksum [String] A client-generated checksum of the build file, used to verify file integrity whe
      #
      #   @param platform [Symbol, WhopSDK::Models::AppBuildCreateParams::Platform] The target platform for the build.
      #
      #   @param ai_prompt_id [String] The AI prompt that generated this build, if applicable.
      #
      #   @param app_id [String] The app to create the build for, prefixed `app_`. Defaults to the app behind the
      #
      #   @param source_attachment [WhopSDK::Models::AppBuildCreateParams::SourceAttachment] An optional compressed archive (.zip or .gz) of the source code that produced th
      #
      #   @param supported_app_view_types [Array<Symbol, WhopSDK::Models::AppBuildCreateParams::SupportedAppViewType>] The view types this build supports. Only list the ones its code implements.
      #
      #   @param api_version_date [String]
      #
      #   @param idempotency_key [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Attachment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The tag of an already-uploaded file.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute direct_upload_id
        #   The signed id of a completed direct upload.
        #
        #   @return [String, nil]
        optional :direct_upload_id, String

        # @!method initialize(id: nil, direct_upload_id: nil)
        #   The uploaded build file: `{ id }` for an existing file or `{ direct_upload_id }`
        #   for a completed direct upload.
        #
        #   @param id [String] The tag of an already-uploaded file.
        #
        #   @param direct_upload_id [String] The signed id of a completed direct upload.
      end

      # The target platform for the build.
      module Platform
        extend WhopSDK::Internal::Type::Enum

        IOS = :ios
        ANDROID = :android
        WEB = :web

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class SourceAttachment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The tag of an already-uploaded file.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute direct_upload_id
        #   The signed id of a completed direct upload.
        #
        #   @return [String, nil]
        optional :direct_upload_id, String

        # @!method initialize(id: nil, direct_upload_id: nil)
        #   An optional compressed archive (.zip or .gz) of the source code that produced
        #   this build, stored alongside the build so it can be downloaded later. Referenced
        #   like `attachment`, and must be a different file.
        #
        #   @param id [String] The tag of an already-uploaded file.
        #
        #   @param direct_upload_id [String] The signed id of a completed direct upload.
      end

      module SupportedAppViewType
        extend WhopSDK::Internal::Type::Enum

        HUB = :hub
        DISCOVER = :discover
        DASH = :dash
        DASHBOARD = :dashboard
        ANALYTICS = :analytics
        SKILLS = :skills
        OPENAPI = :openapi

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
