# frozen_string_literal: true

module WhopSDK
  module Models
    class AppBuild < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   App build ID, prefixed `abld_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute checksum
      #   Client-generated checksum of the build file, used to verify file integrity.
      #
      #   @return [String]
      required :checksum, String

      # @!attribute created_at
      #   When the build was uploaded, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute file_url
      #   URL to download the uploaded build artifact.
      #
      #   @return [String, nil]
      required :file_url, String, nil?: true

      # @!attribute is_production
      #   Whether this build is the currently active production build for its platform.
      #
      #   @return [Boolean]
      required :is_production, WhopSDK::Internal::Type::Boolean

      # @!attribute platform
      #   The target platform for this build.
      #
      #   @return [Symbol, WhopSDK::Models::AppBuild::Platform]
      required :platform, enum: -> { WhopSDK::AppBuild::Platform }

      # @!attribute review_message
      #   Feedback from the reviewer explaining a rejection, or `null` if the build has
      #   not been reviewed or was approved.
      #
      #   @return [String, nil]
      required :review_message, String, nil?: true

      # @!attribute source_url
      #   URL to download the compressed source code archive that produced this build, or
      #   `null` when the build was uploaded without a source archive.
      #
      #   @return [String, nil]
      required :source_url, String, nil?: true

      # @!attribute status
      #   The build's review status.
      #
      #   @return [Symbol, WhopSDK::Models::AppBuild::Status]
      required :status, enum: -> { WhopSDK::AppBuild::Status }

      # @!attribute supported_app_view_types
      #
      #   @return [Array<Symbol, WhopSDK::Models::AppBuild::SupportedAppViewType>]
      required :supported_app_view_types,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AppBuild::SupportedAppViewType] }

      # @!method initialize(id:, checksum:, created_at:, file_url:, is_production:, platform:, review_message:, source_url:, status:, supported_app_view_types:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AppBuild} for more details.
      #
      #   @param id [String] App build ID, prefixed `abld_`.
      #
      #   @param checksum [String] Client-generated checksum of the build file, used to verify file integrity.
      #
      #   @param created_at [String] When the build was uploaded, as an ISO 8601 timestamp.
      #
      #   @param file_url [String, nil] URL to download the uploaded build artifact.
      #
      #   @param is_production [Boolean] Whether this build is the currently active production build for its platform.
      #
      #   @param platform [Symbol, WhopSDK::Models::AppBuild::Platform] The target platform for this build.
      #
      #   @param review_message [String, nil] Feedback from the reviewer explaining a rejection, or `null` if the build has no
      #
      #   @param source_url [String, nil] URL to download the compressed source code archive that produced this build, or
      #
      #   @param status [Symbol, WhopSDK::Models::AppBuild::Status] The build's review status.
      #
      #   @param supported_app_view_types [Array<Symbol, WhopSDK::Models::AppBuild::SupportedAppViewType>]

      # The target platform for this build.
      #
      # @see WhopSDK::Models::AppBuild#platform
      module Platform
        extend WhopSDK::Internal::Type::Enum

        IOS = :ios
        ANDROID = :android
        WEB = :web

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The build's review status.
      #
      # @see WhopSDK::Models::AppBuild#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        DRAFT = :draft
        PENDING = :pending
        APPROVED = :approved
        REJECTED = :rejected

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The view types this build supports, as declared by the developer.
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
