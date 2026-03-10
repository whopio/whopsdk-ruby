# typed: strong

module WhopSDK
  module Models
    # The different websites you can have social links for
    module SocialLinkWebsites
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::SocialLinkWebsites) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      X = T.let(:x, WhopSDK::SocialLinkWebsites::TaggedSymbol)
      INSTAGRAM = T.let(:instagram, WhopSDK::SocialLinkWebsites::TaggedSymbol)
      FACEBOOK = T.let(:facebook, WhopSDK::SocialLinkWebsites::TaggedSymbol)
      TIKTOK = T.let(:tiktok, WhopSDK::SocialLinkWebsites::TaggedSymbol)
      YOUTUBE = T.let(:youtube, WhopSDK::SocialLinkWebsites::TaggedSymbol)
      LINKEDIN = T.let(:linkedin, WhopSDK::SocialLinkWebsites::TaggedSymbol)
      TWITCH = T.let(:twitch, WhopSDK::SocialLinkWebsites::TaggedSymbol)
      WEBSITE = T.let(:website, WhopSDK::SocialLinkWebsites::TaggedSymbol)
      CUSTOM = T.let(:custom, WhopSDK::SocialLinkWebsites::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::SocialLinkWebsites::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
