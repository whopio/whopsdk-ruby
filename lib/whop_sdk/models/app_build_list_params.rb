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
      #   Return results after this cursor. Use `page_info.end_cursor` from the previous
      #   response to fetch the next page.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   Return results before this cursor. Use `page_info.start_cursor` from the
      #   previous response to fetch the previous page.
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
      #   Number of results to return from the start of the range.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   Number of results to return from the end of the range.
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
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AppBuildListParams} for more details.
      #
      #   @param app_id [String] The app to list builds for, prefixed `app_`.
      #
      #   @param after [String] Return results after this cursor. Use `page_info.end_cursor` from the previous r
      #
      #   @param before [String] Return results before this cursor. Use `page_info.start_cursor` from the previou
      #
      #   @param created_after [Integer, String] Only return builds created after this ISO 8601 timestamp.
      #
      #   @param created_before [Integer, String] Only return builds created before this ISO 8601 timestamp.
      #
      #   @param first [Integer] Number of results to return from the start of the range.
      #
      #   @param last [Integer] Number of results to return from the end of the range.
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
