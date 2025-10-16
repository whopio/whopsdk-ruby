# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AppBuilds#list
    class AppBuildListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute app_id
      #   The ID of the app to filter app builds by
      #
      #   @return [String]
      required :app_id, String

      # @!attribute after
      #   Returns the elements in the list that come after the specified cursor.
      #
      #   @return [String, nil]
      optional :after, String, nil?: true

      # @!attribute before
      #   Returns the elements in the list that come before the specified cursor.
      #
      #   @return [String, nil]
      optional :before, String, nil?: true

      # @!attribute first
      #   Returns the first _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :first, Integer, nil?: true

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer, nil?: true

      # @!attribute platform
      #   The different platforms an app build can target.
      #
      #   @return [Symbol, WhopSDK::Models::AppBuildPlatforms, nil]
      optional :platform, enum: -> { WhopSDK::AppBuildPlatforms }, nil?: true

      # @!attribute status
      #   The different statuses an AppBuild can be in.
      #
      #   @return [Symbol, WhopSDK::Models::AppBuildStatuses, nil]
      optional :status, enum: -> { WhopSDK::AppBuildStatuses }, nil?: true

      # @!method initialize(app_id:, after: nil, before: nil, first: nil, last: nil, platform: nil, status: nil, request_options: {})
      #   @param app_id [String] The ID of the app to filter app builds by
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param platform [Symbol, WhopSDK::Models::AppBuildPlatforms, nil] The different platforms an app build can target.
      #
      #   @param status [Symbol, WhopSDK::Models::AppBuildStatuses, nil] The different statuses an AppBuild can be in.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
