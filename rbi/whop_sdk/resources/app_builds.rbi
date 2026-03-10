# typed: strong

module WhopSDK
  module Resources
    # App builds
    class AppBuilds
      # Upload a new build artifact for an app. The build must include a compiled code
      # bundle for the specified platform.
      #
      # Required permissions:
      #
      # - `developer:manage_builds`
      sig do
        params(
          attachment: WhopSDK::AppBuildCreateParams::Attachment::OrHash,
          checksum: String,
          platform: WhopSDK::AppBuildPlatforms::OrSymbol,
          ai_prompt_id: T.nilable(String),
          app_id: T.nilable(String),
          supported_app_view_types:
            T.nilable(T::Array[WhopSDK::AppViewType::OrSymbol]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AppBuild)
      end
      def create(
        # The build file to upload. For iOS and Android, this should be a .zip archive
        # containing a main_js_bundle.hbc file and an optional assets folder. For web,
        # this should be a JavaScript file.
        attachment:,
        # A client-generated checksum of the build file, used to verify file integrity
        # when unpacked on a device.
        checksum:,
        # The target platform for the build. Accepted values: ios, android, web.
        platform:,
        # The identifier of the AI prompt that generated this build, if applicable.
        ai_prompt_id: nil,
        # The unique identifier of the app to create the build for. Defaults to the app
        # associated with the current API key.
        app_id: nil,
        # The view types this build supports. A build can support multiple view types but
        # should only list the ones its code implements.
        supported_app_view_types: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing app build.
      #
      # Required permissions:
      #
      # - `developer:manage_builds`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AppBuild)
      end
      def retrieve(
        # The unique identifier of the app build to retrieve.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of build artifacts for a given app, with optional
      # filtering by platform, status, and creation date.
      #
      # Required permissions:
      #
      # - `developer:manage_builds`
      sig do
        params(
          app_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          platform: T.nilable(WhopSDK::AppBuildPlatforms::OrSymbol),
          status: T.nilable(WhopSDK::AppBuildStatuses::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::AppBuildListResponse]
        )
      end
      def list(
        # The unique identifier of the app to list builds for.
        app_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return builds created after this timestamp.
        created_after: nil,
        # Only return builds created before this timestamp.
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The different platforms an app build can target.
        platform: nil,
        # The different statuses an AppBuild can be in.
        status: nil,
        request_options: {}
      )
      end

      # Promote an approved or draft app build to production so it becomes the active
      # version served to users.
      #
      # Required permissions:
      #
      # - `developer:manage_builds`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AppBuild)
      end
      def promote(
        # The unique identifier of the app build to promote to production, starting with
        # 'abld\_'.
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
