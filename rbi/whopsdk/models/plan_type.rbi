# typed: strong

module Whopsdk
  module Models
    # The type of plan that can be attached to an access pass
    module PlanType
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::PlanType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      RENEWAL = T.let(:renewal, Whopsdk::PlanType::TaggedSymbol)
      ONE_TIME = T.let(:one_time, Whopsdk::PlanType::TaggedSymbol)

      sig { override.returns(T::Array[Whopsdk::PlanType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
