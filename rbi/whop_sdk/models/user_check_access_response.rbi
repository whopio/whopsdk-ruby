# typed: strong

module WhopSDK
  module Models
    class UserCheckAccessResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::UserCheckAccessResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The permission level of the user
      sig { returns(WhopSDK::AccessLevel::TaggedSymbol) }
      attr_accessor :access_level

      # Whether the user has access to the resource
      sig { returns(T::Boolean) }
      attr_accessor :has_access

      # The result of a has access check for the developer API
      sig do
        params(
          access_level: WhopSDK::AccessLevel::OrSymbol,
          has_access: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # The permission level of the user
        access_level:,
        # Whether the user has access to the resource
        has_access:
      )
      end

      sig do
        override.returns(
          {
            access_level: WhopSDK::AccessLevel::TaggedSymbol,
            has_access: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
