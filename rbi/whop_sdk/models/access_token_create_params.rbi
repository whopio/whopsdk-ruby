# typed: strong

module WhopSDK
  module Models
    class AccessTokenCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AccessTokenCreateParams, WhopSDK::Internal::AnyHash)
        end

      # Array of desired scoped actions for the access token.
      sig { returns(T::Array[String]) }
      attr_accessor :scoped_actions

      # The ID of the target resource (Company or User) for which the access token is
      # being created.
      sig { returns(String) }
      attr_accessor :target_resource_id

      # The type of the target resource (Company or User).
      sig do
        returns(WhopSDK::AccessTokenCreateParams::TargetResourceType::OrSymbol)
      end
      attr_accessor :target_resource_type

      # The expiration timestamp for the access token. If not provided, a default
      # expiration time will be used.
      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_at

      sig do
        params(
          scoped_actions: T::Array[String],
          target_resource_id: String,
          target_resource_type:
            WhopSDK::AccessTokenCreateParams::TargetResourceType::OrSymbol,
          expires_at: T.nilable(Time),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Array of desired scoped actions for the access token.
        scoped_actions:,
        # The ID of the target resource (Company or User) for which the access token is
        # being created.
        target_resource_id:,
        # The type of the target resource (Company or User).
        target_resource_type:,
        # The expiration timestamp for the access token. If not provided, a default
        # expiration time will be used.
        expires_at: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            scoped_actions: T::Array[String],
            target_resource_id: String,
            target_resource_type:
              WhopSDK::AccessTokenCreateParams::TargetResourceType::OrSymbol,
            expires_at: T.nilable(Time),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The type of the target resource (Company or User).
      module TargetResourceType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AccessTokenCreateParams::TargetResourceType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COMPANY =
          T.let(
            :company,
            WhopSDK::AccessTokenCreateParams::TargetResourceType::TaggedSymbol
          )
        PRODUCT =
          T.let(
            :product,
            WhopSDK::AccessTokenCreateParams::TargetResourceType::TaggedSymbol
          )
        EXPERIENCE =
          T.let(
            :experience,
            WhopSDK::AccessTokenCreateParams::TargetResourceType::TaggedSymbol
          )
        APP =
          T.let(
            :app,
            WhopSDK::AccessTokenCreateParams::TargetResourceType::TaggedSymbol
          )
        USER =
          T.let(
            :user,
            WhopSDK::AccessTokenCreateParams::TargetResourceType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::AccessTokenCreateParams::TargetResourceType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
