# typed: strong

module Whopsdk
  module Models
    # Possible roles an authorized user can have
    module AuthorizedUserRoles
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Whopsdk::AuthorizedUserRoles) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      OWNER = T.let(:owner, Whopsdk::AuthorizedUserRoles::TaggedSymbol)
      ADMIN = T.let(:admin, Whopsdk::AuthorizedUserRoles::TaggedSymbol)
      SALES_MANAGER =
        T.let(:sales_manager, Whopsdk::AuthorizedUserRoles::TaggedSymbol)
      MODERATOR = T.let(:moderator, Whopsdk::AuthorizedUserRoles::TaggedSymbol)
      APP_MANAGER =
        T.let(:app_manager, Whopsdk::AuthorizedUserRoles::TaggedSymbol)
      SUPPORT = T.let(:support, Whopsdk::AuthorizedUserRoles::TaggedSymbol)
      MANAGER = T.let(:manager, Whopsdk::AuthorizedUserRoles::TaggedSymbol)

      sig do
        override.returns(T::Array[Whopsdk::AuthorizedUserRoles::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
