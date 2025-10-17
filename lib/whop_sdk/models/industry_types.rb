# frozen_string_literal: true

module WhopSDK
  module Models
    # The different industry types a company can be in.
    module IndustryTypes
      extend WhopSDK::Internal::Type::Enum

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
end
