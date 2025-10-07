# typed: strong

module Whopsdk
  module Models
    # The different platforms an app build can target.
    module AppBuildPlatforms
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::AppBuildPlatforms) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      IOS = T.let(:ios, Whopsdk::AppBuildPlatforms::TaggedSymbol)
      ANDROID = T.let(:android, Whopsdk::AppBuildPlatforms::TaggedSymbol)
      WEB = T.let(:web, Whopsdk::AppBuildPlatforms::TaggedSymbol)

      sig do
        override.returns(T::Array[Whopsdk::AppBuildPlatforms::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
