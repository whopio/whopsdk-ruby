# typed: strong

module WhopSDK
  module Models
    class AppBuildCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AppBuildCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The build file to upload. For iOS and Android, this should be a .zip archive
      # containing a main_js_bundle.hbc file and an optional assets folder. For web,
      # this should be a JavaScript file.
      sig { returns(WhopSDK::AppBuildCreateParams::Attachment) }
      attr_reader :attachment

      sig do
        params(
          attachment: WhopSDK::AppBuildCreateParams::Attachment::OrHash
        ).void
      end
      attr_writer :attachment

      # A client-generated checksum of the build file, used to verify file integrity
      # when unpacked on a device.
      sig { returns(String) }
      attr_accessor :checksum

      # The target platform for the build. Accepted values: ios, android, web.
      sig { returns(WhopSDK::AppBuildPlatforms::OrSymbol) }
      attr_accessor :platform

      # The identifier of the AI prompt that generated this build, if applicable.
      sig { returns(T.nilable(String)) }
      attr_accessor :ai_prompt_id

      # The unique identifier of the app to create the build for. Defaults to the app
      # associated with the current API key.
      sig { returns(T.nilable(String)) }
      attr_accessor :app_id

      # The view types this build supports. A build can support multiple view types but
      # should only list the ones its code implements.
      sig { returns(T.nilable(T::Array[WhopSDK::AppViewType::OrSymbol])) }
      attr_accessor :supported_app_view_types

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            attachment: WhopSDK::AppBuildCreateParams::Attachment,
            checksum: String,
            platform: WhopSDK::AppBuildPlatforms::OrSymbol,
            ai_prompt_id: T.nilable(String),
            app_id: T.nilable(String),
            supported_app_view_types:
              T.nilable(T::Array[WhopSDK::AppViewType::OrSymbol]),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Attachment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AppBuildCreateParams::Attachment,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of an existing file object.
        sig { returns(String) }
        attr_accessor :id

        # The build file to upload. For iOS and Android, this should be a .zip archive
        # containing a main_js_bundle.hbc file and an optional assets folder. For web,
        # this should be a JavaScript file.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The ID of an existing file object.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end
    end
  end
end
