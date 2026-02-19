# frozen_string_literal: true

module WhopSDK
  module Models
    class Company < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the company.
      #
      #   @return [String]
      required :id, String

      # @!attribute business_type
      #   The different business types a company can be.
      #
      #   @return [Symbol, WhopSDK::Models::BusinessTypes, nil]
      required :business_type, enum: -> { WhopSDK::BusinessTypes }, nil?: true

      # @!attribute created_at
      #   The datetime the company was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   A promotional pitch written by the company creator, displayed to potential
      #   customers on the store page.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute industry_type
      #   The different industry types a company can be in.
      #
      #   @return [Symbol, WhopSDK::Models::IndustryTypes, nil]
      required :industry_type, enum: -> { WhopSDK::IndustryTypes }, nil?: true

      # @!attribute logo
      #   The company's logo.
      #
      #   @return [WhopSDK::Models::Company::Logo, nil]
      required :logo, -> { WhopSDK::Company::Logo }, nil?: true

      # @!attribute member_count
      #   The total number of users who currently hold active memberships across all of
      #   this company's products.
      #
      #   @return [Integer]
      required :member_count, Integer

      # @!attribute metadata
      #   A key-value JSON object of custom metadata for this company, managed by the
      #   platform that created the account.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      required :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute owner_user
      #   The user who owns and has full administrative control over this company.
      #
      #   @return [WhopSDK::Models::Company::OwnerUser]
      required :owner_user, -> { WhopSDK::Company::OwnerUser }

      # @!attribute published_reviews_count
      #   The total number of published customer reviews across all products for this
      #   company.
      #
      #   @return [Integer]
      required :published_reviews_count, Integer

      # @!attribute route
      #   The URL slug for the company's store page (e.g., 'pickaxe' in whop.com/pickaxe).
      #
      #   @return [String]
      required :route, String

      # @!attribute send_customer_emails
      #   Whether Whop sends transactional emails (receipts, updates) to customers on
      #   behalf of this company.
      #
      #   @return [Boolean]
      required :send_customer_emails, WhopSDK::Internal::Type::Boolean

      # @!attribute social_links
      #   The list of social media accounts and external links associated with this
      #   company.
      #
      #   @return [Array<WhopSDK::Models::Company::SocialLink>]
      required :social_links, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Company::SocialLink] }

      # @!attribute title
      #   The display name of the company shown to customers.
      #
      #   @return [String]
      required :title, String

      # @!attribute updated_at
      #   The datetime the company was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute verified
      #   Whether this company has been verified by Whop's trust and safety team.
      #
      #   @return [Boolean]
      required :verified, WhopSDK::Internal::Type::Boolean

      # @!method initialize(id:, business_type:, created_at:, description:, industry_type:, logo:, member_count:, metadata:, owner_user:, published_reviews_count:, route:, send_customer_emails:, social_links:, title:, updated_at:, verified:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::Company}
      #   for more details.
      #
      #   A company is a seller on Whop. Companies own products, manage members, and
      #   receive payouts.
      #
      #   @param id [String] The unique identifier for the company.
      #
      #   @param business_type [Symbol, WhopSDK::Models::BusinessTypes, nil] The different business types a company can be.
      #
      #   @param created_at [Time] The datetime the company was created.
      #
      #   @param description [String, nil] A promotional pitch written by the company creator, displayed to potential custo
      #
      #   @param industry_type [Symbol, WhopSDK::Models::IndustryTypes, nil] The different industry types a company can be in.
      #
      #   @param logo [WhopSDK::Models::Company::Logo, nil] The company's logo.
      #
      #   @param member_count [Integer] The total number of users who currently hold active memberships across all of th
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] A key-value JSON object of custom metadata for this company, managed by the plat
      #
      #   @param owner_user [WhopSDK::Models::Company::OwnerUser] The user who owns and has full administrative control over this company.
      #
      #   @param published_reviews_count [Integer] The total number of published customer reviews across all products for this comp
      #
      #   @param route [String] The URL slug for the company's store page (e.g., 'pickaxe' in whop.com/pickaxe).
      #
      #   @param send_customer_emails [Boolean] Whether Whop sends transactional emails (receipts, updates) to customers on beha
      #
      #   @param social_links [Array<WhopSDK::Models::Company::SocialLink>] The list of social media accounts and external links associated with this compan
      #
      #   @param title [String] The display name of the company shown to customers.
      #
      #   @param updated_at [Time] The datetime the company was last updated.
      #
      #   @param verified [Boolean] Whether this company has been verified by Whop's trust and safety team.

      # @see WhopSDK::Models::Company#logo
      class Logo < WhopSDK::Internal::Type::BaseModel
        # @!attribute url
        #   A pre-optimized URL for rendering this attachment on the client. This should be
        #   used for displaying attachments in apps.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Company::Logo} for more details.
        #
        #   The company's logo.
        #
        #   @param url [String, nil] A pre-optimized URL for rendering this attachment on the client. This should be
      end

      # @see WhopSDK::Models::Company#owner_user
      class OwnerUser < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The user's display name shown on their public profile.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The user's unique username shown on their public profile.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, username:)
        #   The user who owns and has full administrative control over this company.
        #
        #   @param id [String] The unique identifier for the user.
        #
        #   @param name [String, nil] The user's display name shown on their public profile.
        #
        #   @param username [String] The user's unique username shown on their public profile.
      end

      class SocialLink < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the social link.
        #
        #   @return [String]
        required :id, String

        # @!attribute url
        #   The URL of the social media profile or external link.
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
        #   @param id [String] The unique identifier for the social link.
        #
        #   @param url [String] The URL of the social media profile or external link.
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
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
