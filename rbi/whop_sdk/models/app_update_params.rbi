# typed: strong

module WhopSDK
  module Models
    class AppUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AppUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # The description of the app for the app store in-depth app view.
      sig { returns(T.nilable(String)) }
      attr_accessor :app_store_description

      # The base production url of the app
      sig { returns(T.nilable(String)) }
      attr_accessor :base_url

      # The path for the dashboard view of the app
      sig { returns(T.nilable(String)) }
      attr_accessor :dashboard_path

      # The description of the app
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The path for the discover view of the app
      sig { returns(T.nilable(String)) }
      attr_accessor :discover_path

      # The path for the hub view of the app
      sig { returns(T.nilable(String)) }
      attr_accessor :experience_path

      # The icon for the app
      sig do
        returns(
          T.nilable(
            T.any(
              WhopSDK::AppUpdateParams::Icon::DirectUploadID,
              WhopSDK::AppUpdateParams::Icon::ID
            )
          )
        )
      end
      attr_accessor :icon

      # The name of the app
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The scopes that the app will request off of users when a user installs the app.
      sig do
        returns(
          T.nilable(T::Array[WhopSDK::AppUpdateParams::RequiredScope::OrSymbol])
        )
      end
      attr_accessor :required_scopes

      # The status of an experience interface
      sig { returns(T.nilable(WhopSDK::AppStatuses::OrSymbol)) }
      attr_accessor :status

      sig do
        params(
          app_store_description: T.nilable(String),
          base_url: T.nilable(String),
          dashboard_path: T.nilable(String),
          description: T.nilable(String),
          discover_path: T.nilable(String),
          experience_path: T.nilable(String),
          icon:
            T.nilable(
              T.any(
                WhopSDK::AppUpdateParams::Icon::DirectUploadID::OrHash,
                WhopSDK::AppUpdateParams::Icon::ID::OrHash
              )
            ),
          name: T.nilable(String),
          required_scopes:
            T.nilable(
              T::Array[WhopSDK::AppUpdateParams::RequiredScope::OrSymbol]
            ),
          status: T.nilable(WhopSDK::AppStatuses::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The description of the app for the app store in-depth app view.
        app_store_description: nil,
        # The base production url of the app
        base_url: nil,
        # The path for the dashboard view of the app
        dashboard_path: nil,
        # The description of the app
        description: nil,
        # The path for the discover view of the app
        discover_path: nil,
        # The path for the hub view of the app
        experience_path: nil,
        # The icon for the app
        icon: nil,
        # The name of the app
        name: nil,
        # The scopes that the app will request off of users when a user installs the app.
        required_scopes: nil,
        # The status of an experience interface
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            app_store_description: T.nilable(String),
            base_url: T.nilable(String),
            dashboard_path: T.nilable(String),
            description: T.nilable(String),
            discover_path: T.nilable(String),
            experience_path: T.nilable(String),
            icon:
              T.nilable(
                T.any(
                  WhopSDK::AppUpdateParams::Icon::DirectUploadID,
                  WhopSDK::AppUpdateParams::Icon::ID
                )
              ),
            name: T.nilable(String),
            required_scopes:
              T.nilable(
                T::Array[WhopSDK::AppUpdateParams::RequiredScope::OrSymbol]
              ),
            status: T.nilable(WhopSDK::AppStatuses::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The icon for the app
      module Icon
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              WhopSDK::AppUpdateParams::Icon::DirectUploadID,
              WhopSDK::AppUpdateParams::Icon::ID
            )
          end

        class DirectUploadID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AppUpdateParams::Icon::DirectUploadID,
                WhopSDK::Internal::AnyHash
              )
            end

          # This ID should be used the first time you upload an attachment. It is the ID of
          # the direct upload that was created when uploading the file to S3 via the
          # mediaDirectUpload mutation.
          sig { returns(String) }
          attr_accessor :direct_upload_id

          # Input for an attachment
          sig { params(direct_upload_id: String).returns(T.attached_class) }
          def self.new(
            # This ID should be used the first time you upload an attachment. It is the ID of
            # the direct upload that was created when uploading the file to S3 via the
            # mediaDirectUpload mutation.
            direct_upload_id:
          )
          end

          sig { override.returns({ direct_upload_id: String }) }
          def to_hash
          end
        end

        class ID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AppUpdateParams::Icon::ID,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ID of an existing attachment object. Use this when updating a resource and
          # keeping a subset of the attachments. Don't use this unless you know what you're
          # doing.
          sig { returns(String) }
          attr_accessor :id

          # Input for an attachment
          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The ID of an existing attachment object. Use this when updating a resource and
            # keeping a subset of the attachments. Don't use this unless you know what you're
            # doing.
            id:
          )
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        sig do
          override.returns(T::Array[WhopSDK::AppUpdateParams::Icon::Variants])
        end
        def self.variants
        end
      end

      # These are the scopes an app can request on behalf of a user
      module RequiredScope
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AppUpdateParams::RequiredScope)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        READ_USER =
          T.let(
            :read_user,
            WhopSDK::AppUpdateParams::RequiredScope::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AppUpdateParams::RequiredScope::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
