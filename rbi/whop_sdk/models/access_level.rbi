# typed: strong

module WhopSDK
  module Models
    # The access level a given user (or company) has to an access pass or company.
    module AccessLevel
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::AccessLevel) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      NO_ACCESS = T.let(:no_access, WhopSDK::AccessLevel::TaggedSymbol)
      ADMIN = T.let(:admin, WhopSDK::AccessLevel::TaggedSymbol)
      CUSTOMER = T.let(:customer, WhopSDK::AccessLevel::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::AccessLevel::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
