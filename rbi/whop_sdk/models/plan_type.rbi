# typed: strong

module WhopSDK
  module Models
    # The type of plan that can be attached to an access pass
    module PlanType
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::PlanType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      RENEWAL = T.let(:renewal, WhopSDK::PlanType::TaggedSymbol)
      ONE_TIME = T.let(:one_time, WhopSDK::PlanType::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::PlanType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
