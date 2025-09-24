# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::AccessPasses#list
    class AccessPassListResponse < Whopsdk::Internal::Type::BaseModel
      # @!attribute data
      #   A list of nodes.
      #
      #   @return [Array<Whopsdk::Models::AccessPassListResponse::Data, nil>, nil]
      required :data,
               -> { Whopsdk::Internal::Type::ArrayOf[Whopsdk::Models::AccessPassListResponse::Data, nil?: true] },
               nil?: true

      # @!attribute page_info
      #   Information to aid in pagination.
      #
      #   @return [Whopsdk::Models::AccessPassListResponse::PageInfo]
      required :page_info, -> { Whopsdk::Models::AccessPassListResponse::PageInfo }

      # @!method initialize(data:, page_info:)
      #   The connection type for PublicAccessPass.
      #
      #   @param data [Array<Whopsdk::Models::AccessPassListResponse::Data, nil>, nil] A list of nodes.
      #
      #   @param page_info [Whopsdk::Models::AccessPassListResponse::PageInfo] Information to aid in pagination.

      class Data < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the public access pass.
        #
        #   @return [String]
        required :id, String

        # @!attribute business_type
        #   The type of business the company is.
        #
        #   @return [Symbol, Whopsdk::Models::AccessPassListResponse::Data::BusinessType, nil]
        required :business_type,
                 enum: -> { Whopsdk::Models::AccessPassListResponse::Data::BusinessType },
                 nil?: true

        # @!attribute created_at
        #   When the access pass was created.
        #
        #   @return [Integer]
        required :created_at, Integer

        # @!attribute industry_type
        #   The specific industry the company operates in.
        #
        #   @return [Symbol, Whopsdk::Models::AccessPassListResponse::Data::IndustryType, nil]
        required :industry_type,
                 enum: -> { Whopsdk::Models::AccessPassListResponse::Data::IndustryType },
                 nil?: true

        # @!attribute member_count
        #   The number of active users for this access pass.
        #
        #   @return [Integer]
        required :member_count, Integer

        # @!attribute published_reviews_count
        #   The number of reviews that have been published for the access pass.
        #
        #   @return [Integer]
        required :published_reviews_count, Integer

        # @!attribute route
        #   The route of the access pass.
        #
        #   @return [String]
        required :route, String

        # @!attribute title
        #   The title of the access pass. Use for Whop 4.0.
        #
        #   @return [String]
        required :title, String

        # @!attribute updated_at
        #   When the access pass was updated.
        #
        #   @return [Integer]
        required :updated_at, Integer

        # @!attribute verified
        #   Whether this product is Whop verified.
        #
        #   @return [Boolean]
        required :verified, Whopsdk::Internal::Type::Boolean

        # @!method initialize(id:, business_type:, created_at:, industry_type:, member_count:, published_reviews_count:, route:, title:, updated_at:, verified:)
        #   An object representing a (sanitized) access pass.
        #
        #   @param id [String] The internal ID of the public access pass.
        #
        #   @param business_type [Symbol, Whopsdk::Models::AccessPassListResponse::Data::BusinessType, nil] The type of business the company is.
        #
        #   @param created_at [Integer] When the access pass was created.
        #
        #   @param industry_type [Symbol, Whopsdk::Models::AccessPassListResponse::Data::IndustryType, nil] The specific industry the company operates in.
        #
        #   @param member_count [Integer] The number of active users for this access pass.
        #
        #   @param published_reviews_count [Integer] The number of reviews that have been published for the access pass.
        #
        #   @param route [String] The route of the access pass.
        #
        #   @param title [String] The title of the access pass. Use for Whop 4.0.
        #
        #   @param updated_at [Integer] When the access pass was updated.
        #
        #   @param verified [Boolean] Whether this product is Whop verified.

        # The type of business the company is.
        #
        # @see Whopsdk::Models::AccessPassListResponse::Data#business_type
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
        # @see Whopsdk::Models::AccessPassListResponse::Data#industry_type
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
      end

      # @see Whopsdk::Models::AccessPassListResponse#page_info
      class PageInfo < Whopsdk::Internal::Type::BaseModel
        # @!attribute end_cursor
        #   When paginating forwards, the cursor to continue.
        #
        #   @return [String, nil]
        required :end_cursor, String, nil?: true

        # @!attribute has_next_page
        #   When paginating forwards, are there more items?
        #
        #   @return [Boolean]
        required :has_next_page, Whopsdk::Internal::Type::Boolean

        # @!attribute has_previous_page
        #   When paginating backwards, are there more items?
        #
        #   @return [Boolean]
        required :has_previous_page, Whopsdk::Internal::Type::Boolean

        # @!attribute start_cursor
        #   When paginating backwards, the cursor to continue.
        #
        #   @return [String, nil]
        required :start_cursor, String, nil?: true

        # @!method initialize(end_cursor:, has_next_page:, has_previous_page:, start_cursor:)
        #   Information to aid in pagination.
        #
        #   @param end_cursor [String, nil] When paginating forwards, the cursor to continue.
        #
        #   @param has_next_page [Boolean] When paginating forwards, are there more items?
        #
        #   @param has_previous_page [Boolean] When paginating backwards, are there more items?
        #
        #   @param start_cursor [String, nil] When paginating backwards, the cursor to continue.
      end
    end
  end
end
