# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AppBuilds#list
    class AppBuildListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute app_id
      #   The unique identifier of the app to list builds for.
      #
      #   @return [String]
      required :app_id, String

      # @!attribute after
      #   Returns the elements in the list that come after the specified cursor.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   Returns the elements in the list that come before the specified cursor.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute created_after
      #   Only return builds created after this timestamp.
      #
      #   @return [Time, nil]
      optional :created_after, Time

      # @!attribute created_before
      #   Only return builds created before this timestamp.
      #
      #   @return [Time, nil]
      optional :created_before, Time

      # @!attribute first
      #   Returns the first _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute platform
      #   Filter builds by target platform.
      #
      #   @return [Symbol, WhopSDK::Models::AppBuildPlatforms, nil]
      optional :platform, enum: -> { WhopSDK::AppBuildPlatforms }

      # @!attribute status
      #   Filter builds by review status.
      #
      #   @return [Symbol, WhopSDK::Models::AppBuildStatuses, nil]
      optional :status, enum: -> { WhopSDK::AppBuildStatuses }

      # @!method initialize(app_id:, after: nil, before: nil, created_after: nil, created_before: nil, first: nil, last: nil, platform: nil, status: nil, request_options: {})
      #   @param app_id [String] The unique identifier of the app to list builds for.
      #
      #   @param after [String] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String] Returns the elements in the list that come before the specified cursor.
      #
      #   @param created_after [Time] Only return builds created after this timestamp.
      #
      #   @param created_before [Time] Only return builds created before this timestamp.
      #
      #   @param first [Integer] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer] Returns the last _n_ elements from the list.
      #
      #   @param platform [Symbol, WhopSDK::Models::AppBuildPlatforms] Filter builds by target platform.
      #
      #   @param status [Symbol, WhopSDK::Models::AppBuildStatuses] Filter builds by review status.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
