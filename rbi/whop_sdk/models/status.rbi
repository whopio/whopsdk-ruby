# typed: strong

module WhopSDK
  module Models
    # Statuses for resources
    module Status
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::Status) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACTIVE = T.let(:active, WhopSDK::Status::TaggedSymbol)
      ARCHIVED = T.let(:archived, WhopSDK::Status::TaggedSymbol)
      DELETED = T.let(:deleted, WhopSDK::Status::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::Status::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
