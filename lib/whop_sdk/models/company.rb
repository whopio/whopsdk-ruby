# frozen_string_literal: true

module WhopSDK
  module Models
    class Company < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID (tag) of the company.
      #
      #   @return [String]
      required :id, String

      # @!attribute business_type
      #   The different business types a company can be.
      #
      #   @return [Symbol, WhopSDK::Models::BusinessTypes, nil]
      required :business_type, enum: -> { WhopSDK::BusinessTypes }, nil?: true

      # @!attribute created_at
      #   When the company was created (signed up)
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute industry_type
      #   The different industry types a company can be in.
      #
      #   @return [Symbol, WhopSDK::Models::IndustryTypes, nil]
      required :industry_type, enum: -> { WhopSDK::IndustryTypes }, nil?: true

      # @!attribute member_count
      #   The number of members in the company.
      #
      #   @return [Integer]
      required :member_count, Integer

      # @!attribute owner_user
      #   The user who owns this company
      #
      #   @return [WhopSDK::Models::Company::OwnerUser]
      required :owner_user, -> { WhopSDK::Company::OwnerUser }

      # @!attribute published_reviews_count
      #   The number of reviews that have been published for the company.
      #
      #   @return [Integer]
      required :published_reviews_count, Integer

      # @!attribute route
      #   The slug/route of the company on the Whop site.
      #
      #   @return [String]
      required :route, String

      # @!attribute social_links
      #   The social media accounts of the company
      #
      #   @return [Array<WhopSDK::Models::Company::SocialLink>]
      required :social_links, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Company::SocialLink] }

      # @!attribute title
      #   The title of the company.
      #
      #   @return [String]
      required :title, String

      # @!attribute updated_at
      #   The time the company was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute verified
      #   If the company is Whop Verified
      #
      #   @return [Boolean]
      required :verified, WhopSDK::Internal::Type::Boolean

      # @!method initialize(id:, business_type:, created_at:, industry_type:, member_count:, owner_user:, published_reviews_count:, route:, social_links:, title:, updated_at:, verified:)
      #   An object representing a (sanitized) company.
      #
      #   @param id [String] The ID (tag) of the company.
      #
      #   @param business_type [Symbol, WhopSDK::Models::BusinessTypes, nil] The different business types a company can be.
      #
      #   @param created_at [Time] When the company was created (signed up)
      #
      #   @param industry_type [Symbol, WhopSDK::Models::IndustryTypes, nil] The different industry types a company can be in.
      #
      #   @param member_count [Integer] The number of members in the company.
      #
      #   @param owner_user [WhopSDK::Models::Company::OwnerUser] The user who owns this company
      #
      #   @param published_reviews_count [Integer] The number of reviews that have been published for the company.
      #
      #   @param route [String] The slug/route of the company on the Whop site.
      #
      #   @param social_links [Array<WhopSDK::Models::Company::SocialLink>] The social media accounts of the company
      #
      #   @param title [String] The title of the company.
      #
      #   @param updated_at [Time] The time the company was last updated.
      #
      #   @param verified [Boolean] If the company is Whop Verified

      # @see WhopSDK::Models::Company#owner_user
      class OwnerUser < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The name of the user from their Whop account.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The username of the user from their Whop account.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, username:)
        #   The user who owns this company
        #
        #   @param id [String] The internal ID of the user.
        #
        #   @param name [String, nil] The name of the user from their Whop account.
        #
        #   @param username [String] The username of the user from their Whop account.
      end

      class SocialLink < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID
        #
        #   @return [String]
        required :id, String

        # @!attribute url
        #   The URL
        #
        #   @return [String]
        required :url, String

        # @!attribute website
        #   The website
        #
        #   @return [Symbol, WhopSDK::Models::Company::SocialLink::Website]
        required :website, enum: -> { WhopSDK::Company::SocialLink::Website }

        # @!method initialize(id:, url:, website:)
        #   A social link attached to a resource on the site.
        #
        #   @param id [String] The ID
        #
        #   @param url [String] The URL
        #
        #   @param website [Symbol, WhopSDK::Models::Company::SocialLink::Website] The website

        # The website
        #
        # @see WhopSDK::Models::Company::SocialLink#website
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

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
