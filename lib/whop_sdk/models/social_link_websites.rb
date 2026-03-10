# frozen_string_literal: true

module WhopSDK
  module Models
    # The different websites you can have social links for
    module SocialLinkWebsites
      extend WhopSDK::Internal::Type::Enum

      X = :x
      INSTAGRAM = :instagram
      FACEBOOK = :facebook
      TIKTOK = :tiktok
      YOUTUBE = :youtube
      LINKEDIN = :linkedin
      TWITCH = :twitch
      WEBSITE = :website
      CUSTOM = :custom

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
