# frozen_string_literal: true

module WhopSDK
  module Models
    class AccountSocialLink < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the social link
      #
      #   @return [String]
      required :id, String

      # @!attribute title
      #   The optional display title for the social link
      #
      #   @return [String, nil]
      required :title, String, nil?: true

      # @!attribute url
      #   The social link URL
      #
      #   @return [String]
      required :url, String

      # @!attribute website
      #   The social platform for this link
      #
      #   @return [Symbol, WhopSDK::Models::AccountSocialLink::Website]
      required :website, enum: -> { WhopSDK::AccountSocialLink::Website }

      # @!method initialize(id:, title:, url:, website:)
      #   @param id [String] The ID of the social link
      #
      #   @param title [String, nil] The optional display title for the social link
      #
      #   @param url [String] The social link URL
      #
      #   @param website [Symbol, WhopSDK::Models::AccountSocialLink::Website] The social platform for this link

      # The social platform for this link
      #
      # @see WhopSDK::Models::AccountSocialLink#website
      module Website
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
end
