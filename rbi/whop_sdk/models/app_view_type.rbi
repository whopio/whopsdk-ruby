# typed: strong

module WhopSDK
  module Models
    # The different types of an app view
    module AppViewType
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::AppViewType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      HUB = T.let(:hub, WhopSDK::AppViewType::TaggedSymbol)
      DISCOVER = T.let(:discover, WhopSDK::AppViewType::TaggedSymbol)
      DASH = T.let(:dash, WhopSDK::AppViewType::TaggedSymbol)
      DASHBOARD = T.let(:dashboard, WhopSDK::AppViewType::TaggedSymbol)
      ANALYTICS = T.let(:analytics, WhopSDK::AppViewType::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::AppViewType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
