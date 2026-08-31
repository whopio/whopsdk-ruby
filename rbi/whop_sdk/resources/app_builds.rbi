# typed: strong

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
      # Uploads a new build artifact for an app. Upload the file first (POST /files or a
      # direct upload), then reference it here; iOS and Android take a .zip bundle, web
      # takes a JavaScript file or a .zip archive of the hosted site.
      sig do
        params(
          attachment: WhopSDK::AppBuildCreateParams::Attachment::OrHash,
          checksum: String,
          platform: WhopSDK::AppBuildCreateParams::Platform::OrSymbol,
          ai_prompt_id: String,
          app_id: String,
          source_attachment:
            WhopSDK::AppBuildCreateParams::SourceAttachment::OrHash,
          supported_app_view_types:
            T::Array[
              WhopSDK::AppBuildCreateParams::SupportedAppViewType::OrSymbol
            ],
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AppBuild)
      end
      def create(
        # Body param: The uploaded build file: `{ id }` for an existing file or
        # `{ direct_upload_id }` for a completed direct upload.
        attachment:,
        # Body param: A client-generated checksum of the build file, used to verify file
        # integrity when unpacked.
        checksum:,
        # Body param: The target platform for the build.
        platform:,
        # Body param: The AI prompt that generated this build, if applicable.
        ai_prompt_id: nil,
        # Body param: The app to create the build for, prefixed `app_`. Defaults to the
        # app behind the presented credential.
        app_id: nil,
        # Body param: An optional compressed archive (.zip or .gz) of the source code that
        # produced this build, stored alongside the build so it can be downloaded later.
        # Referenced like `attachment`, and must be a different file.
        source_attachment: nil,
        # Body param: The view types this build supports. Only list the ones its code
        # implements.
        supported_app_view_types: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        # Header param: A unique key that makes this request safe to retry. See
        # [Idempotent requests](https://docs.whop.com/developer/api/idempotency).
        idempotency_key: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing app build.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AppBuild)
      end
      def retrieve(
        # App build ID, prefixed `abld_`.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of build artifacts for an app, newest first, with
      # optional platform, status, and creation-date filters.
      sig do
        params(
          app_id: String,
          after: String,
          before: String,
          created_after: WhopSDK::AppBuildListParams::CreatedAfter::Variants,
          created_before: WhopSDK::AppBuildListParams::CreatedBefore::Variants,
          first: Integer,
          last: Integer,
          platform: WhopSDK::AppBuildListParams::Platform::OrSymbol,
          status: WhopSDK::AppBuildListParams::Status::OrSymbol,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Internal::CursorPage[WhopSDK::AppBuild])
      end
      def list(
        # Query param: The app to list builds for, prefixed `app_`.
        app_id:,
        # Query param: A cursor; returns builds after this position.
        after: nil,
        # Query param: A cursor; returns builds before this position.
        before: nil,
        # Query param: Only return builds created after this ISO 8601 timestamp.
        created_after: nil,
        # Query param: Only return builds created before this ISO 8601 timestamp.
        created_before: nil,
        # Query param: The number of builds to return (default 20, max 100).
        first: nil,
        # Query param: The number of builds to return from the end of the range.
        last: nil,
        # Query param: Filter builds by target platform.
        platform: nil,
        # Query param: Filter builds by review status.
        status: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Promotes a draft or approved app build to production so it becomes the active
      # version served to users. Draft builds enter review first.
      sig do
        params(
          id: String,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AppBuild)
      end
      def promote(
        # App build ID, prefixed `abld_`.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        # A unique key that makes this request safe to retry. See
        # [Idempotent requests](https://docs.whop.com/developer/api/idempotency).
        idempotency_key: nil,
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
