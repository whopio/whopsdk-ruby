# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AppBuilds#list
    class AppBuildListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute app_id
      #   The app to list builds for, prefixed `app_`.
      #
      #   @return [String]
      required :app_id, String

      # @!attribute after
      #   A cursor; returns builds after this position.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   A cursor; returns builds before this position.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute created_after
      #   Only return builds created after this ISO 8601 timestamp.
      #
      #   @return [Integer, String, nil]
      optional :created_after, union: -> { WhopSDK::AppBuildListParams::CreatedAfter }

      # @!attribute created_before
      #   Only return builds created before this ISO 8601 timestamp.
      #
      #   @return [Integer, String, nil]
      optional :created_before, union: -> { WhopSDK::AppBuildListParams::CreatedBefore }

      # @!attribute first
      #   The number of builds to return (default 20, max 100).
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   The number of builds to return from the end of the range.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute platform
      #   Filter builds by target platform.
      #
      #   @return [Symbol, WhopSDK::Models::AppBuildListParams::Platform, nil]
      optional :platform, enum: -> { WhopSDK::AppBuildListParams::Platform }

      # @!attribute status
      #   Filter builds by review status.
      #
      #   @return [Symbol, WhopSDK::Models::AppBuildListParams::Status, nil]
      optional :status, enum: -> { WhopSDK::AppBuildListParams::Status }

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!method initialize(app_id:, after: nil, before: nil, created_after: nil, created_before: nil, first: nil, last: nil, platform: nil, status: nil, api_version_date: nil, request_options: {})
      #   @param app_id [String] The app to list builds for, prefixed `app_`.
      #
      #   @param after [String] A cursor; returns builds after this position.
      #
      #   @param before [String] A cursor; returns builds before this position.
      #
      #   @param created_after [Integer, String] Only return builds created after this ISO 8601 timestamp.
      #
      #   @param created_before [Integer, String] Only return builds created before this ISO 8601 timestamp.
      #
      #   @param first [Integer] The number of builds to return (default 20, max 100).
      #
      #   @param last [Integer] The number of builds to return from the end of the range.
      #
      #   @param platform [Symbol, WhopSDK::Models::AppBuildListParams::Platform] Filter builds by target platform.
      #
      #   @param status [Symbol, WhopSDK::Models::AppBuildListParams::Status] Filter builds by review status.
      #
      #   @param api_version_date [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Only return builds created after this ISO 8601 timestamp.
      module CreatedAfter
        extend WhopSDK::Internal::Type::Union

        variant Integer

        variant String

        # @!method self.variants
        #   @return [Array(Integer, String)]
      end

      # Only return builds created before this ISO 8601 timestamp.
      module CreatedBefore
        extend WhopSDK::Internal::Type::Union

        variant Integer

        variant String

        # @!method self.variants
        #   @return [Array(Integer, String)]
      end

      # Filter builds by target platform.
      module Platform
        extend WhopSDK::Internal::Type::Enum

        IOS = :ios
        ANDROID = :android
        WEB = :web

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Filter builds by review status.
      module Status
        extend WhopSDK::Internal::Type::Enum

        DRAFT = :draft
        PENDING = :pending
        APPROVED = :approved
        REJECTED = :rejected

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
