# typed: strong

module WhopSDK
  module Models
    # Bucket size for external ad stat rows.
    module Granularities
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::Granularities) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DAILY = T.let(:daily, WhopSDK::Granularities::TaggedSymbol)
      HOURLY = T.let(:hourly, WhopSDK::Granularities::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::Granularities::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
