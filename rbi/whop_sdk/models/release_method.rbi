# typed: strong

module WhopSDK
  module Models
    # The methods of how a plan can be released.
    module ReleaseMethod
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::ReleaseMethod) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      BUY_NOW = T.let(:buy_now, WhopSDK::ReleaseMethod::TaggedSymbol)
      WAITLIST = T.let(:waitlist, WhopSDK::ReleaseMethod::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::ReleaseMethod::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
