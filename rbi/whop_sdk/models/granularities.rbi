# typed: strong

module WhopSDK
  module Models
    # Bucket size for external ad stat rows.
    module Granularities
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::Granularities) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      HOURLY = T.let(:hourly, WhopSDK::Granularities::TaggedSymbol)
      DAILY = T.let(:daily, WhopSDK::Granularities::TaggedSymbol)
      WEEKLY = T.let(:weekly, WhopSDK::Granularities::TaggedSymbol)
      MONTHLY = T.let(:monthly, WhopSDK::Granularities::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::Granularities::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
