# typed: strong

module WhopSDK
  module Models
    # The budget type for an ad campaign or ad group.
    module AdBudgetType
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::AdBudgetType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DAILY = T.let(:daily, WhopSDK::AdBudgetType::TaggedSymbol)
      LIFETIME = T.let(:lifetime, WhopSDK::AdBudgetType::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::AdBudgetType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
