# typed: strong

module WhopSDK
  module Models
    # The different platforms an app build can target.
    module AppBuildPlatforms
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::AppBuildPlatforms) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      IOS = T.let(:ios, WhopSDK::AppBuildPlatforms::TaggedSymbol)
      ANDROID = T.let(:android, WhopSDK::AppBuildPlatforms::TaggedSymbol)
      WEB = T.let(:web, WhopSDK::AppBuildPlatforms::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::AppBuildPlatforms::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
