# frozen_string_literal: true

module WhopSDK
  module Resources
    class AppBuilds
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AppBuildCreateParams} for more details.
      #
      # Upload a new build artifact for an app. The build must include a compiled code
      # bundle for the specified platform.
      #
      # Required permissions:
      #
      # - `developer:manage_builds`
      #
      # @overload create(attachment:, checksum:, platform:, ai_prompt_id: nil, app_id: nil, supported_app_view_types: nil, request_options: {})
      #
      # @param attachment [WhopSDK::Models::AppBuildCreateParams::Attachment] The build file to upload. For iOS and Android, this should be a .zip archive con
      #
      # @param checksum [String] A client-generated checksum of the build file, used to verify file integrity whe
      #
      # @param platform [Symbol, WhopSDK::Models::AppBuildPlatforms] The target platform for the build. Accepted values: ios, android, web.
      #
      # @param ai_prompt_id [String, nil] The identifier of the AI prompt that generated this build, if applicable.
      #
      # @param app_id [String, nil] The unique identifier of the app to create the build for. Defaults to the app as
      #
      # @param supported_app_view_types [Array<Symbol, WhopSDK::Models::AppViewType>, nil] The view types this build supports. A build can support multiple view types but
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AppBuild]
      #
      # @see WhopSDK::Models::AppBuildCreateParams
      def create(params)
        parsed, options = WhopSDK::AppBuildCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "app_builds",
          body: parsed,
          model: WhopSDK::AppBuild,
          options: options
        )
      end

      # Retrieves the details of an existing app build.
      #
      # Required permissions:
      #
      # - `developer:manage_builds`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the app build to retrieve.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AppBuild]
      #
      # @see WhopSDK::Models::AppBuildRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["app_builds/%1$s", id],
          model: WhopSDK::AppBuild,
          options: params[:request_options]
        )
      end

      # Returns a paginated list of build artifacts for a given app, with optional
      # filtering by platform, status, and creation date.
      #
      # Required permissions:
      #
      # - `developer:manage_builds`
      #
      # @overload list(app_id:, after: nil, before: nil, created_after: nil, created_before: nil, first: nil, last: nil, platform: nil, status: nil, request_options: {})
      #
      # @param app_id [String] The unique identifier of the app to list builds for.
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param created_after [Time, nil] Only return builds created after this timestamp.
      #
      # @param created_before [Time, nil] Only return builds created before this timestamp.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param platform [Symbol, WhopSDK::Models::AppBuildPlatforms, nil] The different platforms an app build can target.
      #
      # @param status [Symbol, WhopSDK::Models::AppBuildStatuses, nil] The different statuses an AppBuild can be in.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::AppBuildListResponse>]
      #
      # @see WhopSDK::Models::AppBuildListParams
      def list(params)
        parsed, options = WhopSDK::AppBuildListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "app_builds",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::AppBuildListResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AppBuildPromoteParams} for more details.
      #
      # Promote an approved or draft app build to production so it becomes the active
      # version served to users.
      #
      # Required permissions:
      #
      # - `developer:manage_builds`
      #
      # @overload promote(id, request_options: {})
      #
      # @param id [String] The unique identifier of the app build to promote to production, starting with '
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AppBuild]
      #
      # @see WhopSDK::Models::AppBuildPromoteParams
      def promote(id, params = {})
        @client.request(
          method: :post,
          path: ["app_builds/%1$s/promote", id],
          model: WhopSDK::AppBuild,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
