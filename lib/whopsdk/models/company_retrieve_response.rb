# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Companies#retrieve
    class CompanyRetrieveResponse < Whopsdk::Internal::Type::BaseModel
      # @!attribute id
      #   The ID (tag) of the company.
      #
      #   @return [String]
      required :id, String

      # @!attribute business_type
      #   The type of business the company is.
      #
      #   @return [Symbol, Whopsdk::Models::CompanyRetrieveResponse::BusinessType, nil]
      required :business_type, enum: -> { Whopsdk::Models::CompanyRetrieveResponse::BusinessType }, nil?: true

      # @!attribute created_at
      #   When the company was created (signed up)
      #
      #   @return [Integer]
      required :created_at, Integer

      # @!attribute industry_type
      #   The specific industry the company operates in.
      #
      #   @return [Symbol, Whopsdk::Models::CompanyRetrieveResponse::IndustryType, nil]
      required :industry_type, enum: -> { Whopsdk::Models::CompanyRetrieveResponse::IndustryType }, nil?: true

      # @!attribute member_count
      #   The number of members in the company.
      #
      #   @return [Integer]
      required :member_count, Integer

      # @!attribute owner_user
      #   The user who owns this company
      #
      #   @return [Whopsdk::Models::CompanyRetrieveResponse::OwnerUser]
      required :owner_user, -> { Whopsdk::Models::CompanyRetrieveResponse::OwnerUser }

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
      #   @return [Array<Whopsdk::Models::CompanyRetrieveResponse::SocialLink>]
      required :social_links,
               -> { Whopsdk::Internal::Type::ArrayOf[Whopsdk::Models::CompanyRetrieveResponse::SocialLink] }

      # @!attribute title
      #   The title of the company.
      #
      #   @return [String]
      required :title, String

      # @!attribute updated_at
      #   The time the company was last updated.
      #
      #   @return [Integer]
      required :updated_at, Integer

      # @!attribute verified
      #   If the company is Whop Verified
      #
      #   @return [Boolean]
      required :verified, Whopsdk::Internal::Type::Boolean

      # @!method initialize(id:, business_type:, created_at:, industry_type:, member_count:, owner_user:, published_reviews_count:, route:, social_links:, title:, updated_at:, verified:)
      #   An object representing a (sanitized) company.
      #
      #   @param id [String] The ID (tag) of the company.
      #
      #   @param business_type [Symbol, Whopsdk::Models::CompanyRetrieveResponse::BusinessType, nil] The type of business the company is.
      #
      #   @param created_at [Integer] When the company was created (signed up)
      #
      #   @param industry_type [Symbol, Whopsdk::Models::CompanyRetrieveResponse::IndustryType, nil] The specific industry the company operates in.
      #
      #   @param member_count [Integer] The number of members in the company.
      #
      #   @param owner_user [Whopsdk::Models::CompanyRetrieveResponse::OwnerUser] The user who owns this company
      #
      #   @param published_reviews_count [Integer] The number of reviews that have been published for the company.
      #
      #   @param route [String] The slug/route of the company on the Whop site.
      #
      #   @param social_links [Array<Whopsdk::Models::CompanyRetrieveResponse::SocialLink>] The social media accounts of the company
      #
      #   @param title [String] The title of the company.
      #
      #   @param updated_at [Integer] The time the company was last updated.
      #
      #   @param verified [Boolean] If the company is Whop Verified

      # The type of business the company is.
      #
      # @see Whopsdk::Models::CompanyRetrieveResponse#business_type
      module BusinessType
        extend Whopsdk::Internal::Type::Enum

        EDUCATION_PROGRAM = :education_program
        COACHING = :coaching
        SOFTWARE = :software
        PAID_GROUP = :paid_group
        NEWSLETTER = :newsletter
        AGENCY = :agency
        PHYSICAL_PRODUCTS = :physical_products
        BRICK_AND_MORTAR = :brick_and_mortar
        EVENTS = :events
        COACHING_AND_COURSES = :coaching_and_courses
        OTHER = :other
        SAAS = :saas
        COURSE = :course
        COMMUNITY = :community

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The specific industry the company operates in.
      #
      # @see Whopsdk::Models::CompanyRetrieveResponse#industry_type
      module IndustryType
        extend Whopsdk::Internal::Type::Enum

        TRADING = :trading
        SPORTS_BETTING = :sports_betting
        RESELLING = :reselling
        FITNESS = :fitness
        AMAZON_FBA = :amazon_fba
        REAL_ESTATE = :real_estate
        KINDLE_BOOK_PUBLISHING = :kindle_book_publishing
        DATING = :dating
        AGENCIES = :agencies
        HEALTH_AND_WELLNESS = :health_and_wellness
        SOCIAL_MEDIA = :social_media
        SALES = :sales
        BUSINESS = :business
        ECOMMERCE = :ecommerce
        VIDEO_GAMES = :video_games
        HOME_SERVICES = :home_services
        AI = :ai
        PUBLIC_SPEAKING = :public_speaking
        PERSONAL_FINANCE = :personal_finance
        CAREERS = :careers
        TRAVEL = :travel
        CLIPPING = :clipping
        SPIRITUALITY = :spirituality
        VAS = :vas
        PERSONAL_DEVELOPMENT = :personal_development
        SOFTWARE = :software
        OTHER = :other
        MARKETING_AGENCY = :marketing_agency
        SALES_AGENCY = :sales_agency
        AI_AGENCY = :ai_agency
        DESIGN_AGENCY = :design_agency
        COACHING_AGENCY = :coaching_agency
        DEVELOPMENT_AGENCY = :development_agency
        RECRUITING_AGENCY = :recruiting_agency
        CUSTOMER_SUPPORT_AGENCY = :customer_support_agency
        CLIPPING_AGENCY = :clipping_agency
        CLOTHING = :clothing
        SUPPLEMENTS = :supplements
        BEAUTY_AND_PERSONAL_CARE = :beauty_and_personal_care
        FITNESS_GEAR = :fitness_gear
        ACCESSORIES = :accessories
        HOME_GOODS = :home_goods
        ELECTRONICS_AND_GADGETS = :electronics_and_gadgets
        FOOD_AND_BEVERAGES = :food_and_beverages
        GYM = :gym
        RESTAURANT = :restaurant
        RETAIL_STORE = :retail_store
        COFFEE_SHOP = :coffee_shop
        SALON_SPA = :salon_spa
        MEDICAL_DENTIST_OFFICE = :medical_dentist_office
        HOTEL_LODGING = :hotel_lodging
        AUTO_REPAIR_SHOP = :auto_repair_shop
        MASTERMINDS = :masterminds
        WEBINARS = :webinars
        BOOTCAMPS = :bootcamps
        CONVENTION = :convention
        CONCERTS = :concerts
        MEETUPS = :meetups
        PARTIES = :parties

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Whopsdk::Models::CompanyRetrieveResponse#owner_user
      class OwnerUser < Whopsdk::Internal::Type::BaseModel
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

      class SocialLink < Whopsdk::Internal::Type::BaseModel
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
        #   @return [Symbol, Whopsdk::Models::CompanyRetrieveResponse::SocialLink::Website, nil]
        required :website, enum: -> { Whopsdk::Models::CompanyRetrieveResponse::SocialLink::Website }, nil?: true

        # @!method initialize(id:, url:, website:)
        #   A social link attached to a resource on the site.
        #
        #   @param id [String] The ID
        #
        #   @param url [String] The URL
        #
        #   @param website [Symbol, Whopsdk::Models::CompanyRetrieveResponse::SocialLink::Website, nil] The website

        # The website
        #
        # @see Whopsdk::Models::CompanyRetrieveResponse::SocialLink#website
        module Website
          extend Whopsdk::Internal::Type::Enum

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
