# typed: strong

module WhopSDK
  module Models
    # Possible roles an authorized user can have
    module AuthorizedUserRoles
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, WhopSDK::AuthorizedUserRoles) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      OWNER = T.let(:owner, WhopSDK::AuthorizedUserRoles::TaggedSymbol)
      ADMIN = T.let(:admin, WhopSDK::AuthorizedUserRoles::TaggedSymbol)
      SALES_MANAGER =
        T.let(:sales_manager, WhopSDK::AuthorizedUserRoles::TaggedSymbol)
      MODERATOR = T.let(:moderator, WhopSDK::AuthorizedUserRoles::TaggedSymbol)
      APP_MANAGER =
        T.let(:app_manager, WhopSDK::AuthorizedUserRoles::TaggedSymbol)
      SUPPORT = T.let(:support, WhopSDK::AuthorizedUserRoles::TaggedSymbol)
      MANAGER = T.let(:manager, WhopSDK::AuthorizedUserRoles::TaggedSymbol)
      CUSTOM = T.let(:custom, WhopSDK::AuthorizedUserRoles::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::AuthorizedUserRoles::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
