# typed: strong

module WhopSDK
  module Models
    # The platforms where an ad campaign can run.
    module AdCampaignPlatform
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::AdCampaignPlatform) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      META = T.let(:meta, WhopSDK::AdCampaignPlatform::TaggedSymbol)
      TIKTOK = T.let(:tiktok, WhopSDK::AdCampaignPlatform::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::AdCampaignPlatform::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
