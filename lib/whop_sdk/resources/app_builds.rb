# frozen_string_literal: true

module WhopSDK
  module Resources
    # An App Build is a versioned artifact uploaded for an app — a hosted web archive,
    # or an iOS/Android bundle. Builds start as drafts, go through review, and one
    # approved build per platform is served to users as the production build.
    #
    # Use the App Builds API to upload a build for an app, list an app's builds with
    # platform and status filters, retrieve a build, and promote a draft or approved
    # build to production.
    class AppBuilds
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AppBuildCreateParams} for more details.
      #
      # Uploads a new build artifact for an app. Upload the file first (POST /files or a
      # direct upload), then reference it here; iOS and Android take a .zip bundle, web
      # takes a JavaScript file or a .zip archive of the hosted site.
      #
      # @overload create(attachment:, checksum:, platform:, ai_prompt_id: nil, app_id: nil, source_attachment: nil, supported_app_view_types: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param attachment [WhopSDK::Models::AppBuildCreateParams::Attachment] Body param: The uploaded build file: `{ id }` for an existing file or `{
      # direct\_
      #
      # @param checksum [String] Body param: A client-generated checksum of the build file, used to verify file i
      #
      # @param platform [Symbol, WhopSDK::Models::AppBuildCreateParams::Platform] Body param: The target platform for the build.
      #
      # @param ai_prompt_id [String] Body param: The AI prompt that generated this build, if applicable.
      #
      # @param app_id [String] Body param: The app to create the build for, prefixed `app_`. Defaults to the ap
      #
      # @param source_attachment [WhopSDK::Models::AppBuildCreateParams::SourceAttachment] Body param: An optional compressed archive (.zip or .gz) of the source code that
      #
      # @param supported_app_view_types [Array<Symbol, WhopSDK::Models::AppBuildCreateParams::SupportedAppViewType>] Body param: The view types this build supports. Only list the ones its code impl
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param idempotency_key [String] Header param: A unique key that makes this request safe to retry. See [Idempoten
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AppBuild]
      #
      # @see WhopSDK::Models::AppBuildCreateParams
      def create(params)
        parsed, options = WhopSDK::AppBuildCreateParams.dump_request(params)
        header_params = {api_version_date: "api-version-date", idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "app_builds",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: WhopSDK::AppBuild,
          options: options
        )
      end

      # Retrieves the details of an existing app build.
      #
      # @overload retrieve(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] App build ID, prefixed `abld_`.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AppBuild]
      #
      # @see WhopSDK::Models::AppBuildRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::AppBuildRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["app_builds/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::AppBuild,
          options: options
        )
      end

      # Returns a paginated list of build artifacts for an app, newest first, with
      # optional platform, status, and creation-date filters.
      #
      # @overload list(app_id:, after: nil, before: nil, created_after: nil, created_before: nil, first: nil, last: nil, platform: nil, status: nil, api_version_date: nil, request_options: {})
      #
      # @param app_id [String] Query param: The app to list builds for, prefixed `app_`.
      #
      # @param after [String] Query param: A cursor; returns builds after this position.
      #
      # @param before [String] Query param: A cursor; returns builds before this position.
      #
      # @param created_after [Integer, String] Query param: Only return builds created after this ISO 8601 timestamp.
      #
      # @param created_before [Integer, String] Query param: Only return builds created before this ISO 8601 timestamp.
      #
      # @param first [Integer] Query param: The number of builds to return (default 20, max 100).
      #
      # @param last [Integer] Query param: The number of builds to return from the end of the range.
      #
      # @param platform [Symbol, WhopSDK::Models::AppBuildListParams::Platform] Query param: Filter builds by target platform.
      #
      # @param status [Symbol, WhopSDK::Models::AppBuildListParams::Status] Query param: Filter builds by review status.
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::AppBuild>]
      #
      # @see WhopSDK::Models::AppBuildListParams
      def list(params)
        query_params =
          [:app_id, :after, :before, :created_after, :created_before, :first, :last, :platform, :status]
        parsed, options = WhopSDK::AppBuildListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "app_builds",
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::AppBuild,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AppBuildPromoteParams} for more details.
      #
      # Promotes a draft or approved app build to production so it becomes the active
      # version served to users. Draft builds enter review first.
      #
      # @overload promote(id, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param id [String] App build ID, prefixed `abld_`.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param idempotency_key [String] A unique key that makes this request safe to retry. See [Idempotent requests](ht
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AppBuild]
      #
      # @see WhopSDK::Models::AppBuildPromoteParams
      def promote(id, params = {})
        parsed, options = WhopSDK::AppBuildPromoteParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["app_builds/%1$s/promote", id],
          headers: parsed.transform_keys(
            api_version_date: "api-version-date",
            idempotency_key: "idempotency-key"
          ),
          model: WhopSDK::AppBuild,
          options: options
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
