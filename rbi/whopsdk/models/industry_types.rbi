# typed: strong

module Whopsdk
  module Models
    # The different industry types a company can be in.
    module IndustryTypes
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::IndustryTypes) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      TRADING = T.let(:trading, Whopsdk::IndustryTypes::TaggedSymbol)
      SPORTS_BETTING =
        T.let(:sports_betting, Whopsdk::IndustryTypes::TaggedSymbol)
      RESELLING = T.let(:reselling, Whopsdk::IndustryTypes::TaggedSymbol)
      FITNESS = T.let(:fitness, Whopsdk::IndustryTypes::TaggedSymbol)
      AMAZON_FBA = T.let(:amazon_fba, Whopsdk::IndustryTypes::TaggedSymbol)
      REAL_ESTATE = T.let(:real_estate, Whopsdk::IndustryTypes::TaggedSymbol)
      KINDLE_BOOK_PUBLISHING =
        T.let(:kindle_book_publishing, Whopsdk::IndustryTypes::TaggedSymbol)
      DATING = T.let(:dating, Whopsdk::IndustryTypes::TaggedSymbol)
      AGENCIES = T.let(:agencies, Whopsdk::IndustryTypes::TaggedSymbol)
      HEALTH_AND_WELLNESS =
        T.let(:health_and_wellness, Whopsdk::IndustryTypes::TaggedSymbol)
      SOCIAL_MEDIA = T.let(:social_media, Whopsdk::IndustryTypes::TaggedSymbol)
      SALES = T.let(:sales, Whopsdk::IndustryTypes::TaggedSymbol)
      BUSINESS = T.let(:business, Whopsdk::IndustryTypes::TaggedSymbol)
      ECOMMERCE = T.let(:ecommerce, Whopsdk::IndustryTypes::TaggedSymbol)
      VIDEO_GAMES = T.let(:video_games, Whopsdk::IndustryTypes::TaggedSymbol)
      HOME_SERVICES =
        T.let(:home_services, Whopsdk::IndustryTypes::TaggedSymbol)
      AI = T.let(:ai, Whopsdk::IndustryTypes::TaggedSymbol)
      PUBLIC_SPEAKING =
        T.let(:public_speaking, Whopsdk::IndustryTypes::TaggedSymbol)
      PERSONAL_FINANCE =
        T.let(:personal_finance, Whopsdk::IndustryTypes::TaggedSymbol)
      CAREERS = T.let(:careers, Whopsdk::IndustryTypes::TaggedSymbol)
      TRAVEL = T.let(:travel, Whopsdk::IndustryTypes::TaggedSymbol)
      CLIPPING = T.let(:clipping, Whopsdk::IndustryTypes::TaggedSymbol)
      SPIRITUALITY = T.let(:spirituality, Whopsdk::IndustryTypes::TaggedSymbol)
      VAS = T.let(:vas, Whopsdk::IndustryTypes::TaggedSymbol)
      PERSONAL_DEVELOPMENT =
        T.let(:personal_development, Whopsdk::IndustryTypes::TaggedSymbol)
      SOFTWARE = T.let(:software, Whopsdk::IndustryTypes::TaggedSymbol)
      OTHER = T.let(:other, Whopsdk::IndustryTypes::TaggedSymbol)
      MARKETING_AGENCY =
        T.let(:marketing_agency, Whopsdk::IndustryTypes::TaggedSymbol)
      SALES_AGENCY = T.let(:sales_agency, Whopsdk::IndustryTypes::TaggedSymbol)
      AI_AGENCY = T.let(:ai_agency, Whopsdk::IndustryTypes::TaggedSymbol)
      DESIGN_AGENCY =
        T.let(:design_agency, Whopsdk::IndustryTypes::TaggedSymbol)
      COACHING_AGENCY =
        T.let(:coaching_agency, Whopsdk::IndustryTypes::TaggedSymbol)
      DEVELOPMENT_AGENCY =
        T.let(:development_agency, Whopsdk::IndustryTypes::TaggedSymbol)
      RECRUITING_AGENCY =
        T.let(:recruiting_agency, Whopsdk::IndustryTypes::TaggedSymbol)
      CUSTOMER_SUPPORT_AGENCY =
        T.let(:customer_support_agency, Whopsdk::IndustryTypes::TaggedSymbol)
      CLIPPING_AGENCY =
        T.let(:clipping_agency, Whopsdk::IndustryTypes::TaggedSymbol)
      CLOTHING = T.let(:clothing, Whopsdk::IndustryTypes::TaggedSymbol)
      SUPPLEMENTS = T.let(:supplements, Whopsdk::IndustryTypes::TaggedSymbol)
      BEAUTY_AND_PERSONAL_CARE =
        T.let(:beauty_and_personal_care, Whopsdk::IndustryTypes::TaggedSymbol)
      FITNESS_GEAR = T.let(:fitness_gear, Whopsdk::IndustryTypes::TaggedSymbol)
      ACCESSORIES = T.let(:accessories, Whopsdk::IndustryTypes::TaggedSymbol)
      HOME_GOODS = T.let(:home_goods, Whopsdk::IndustryTypes::TaggedSymbol)
      ELECTRONICS_AND_GADGETS =
        T.let(:electronics_and_gadgets, Whopsdk::IndustryTypes::TaggedSymbol)
      FOOD_AND_BEVERAGES =
        T.let(:food_and_beverages, Whopsdk::IndustryTypes::TaggedSymbol)
      GYM = T.let(:gym, Whopsdk::IndustryTypes::TaggedSymbol)
      RESTAURANT = T.let(:restaurant, Whopsdk::IndustryTypes::TaggedSymbol)
      RETAIL_STORE = T.let(:retail_store, Whopsdk::IndustryTypes::TaggedSymbol)
      COFFEE_SHOP = T.let(:coffee_shop, Whopsdk::IndustryTypes::TaggedSymbol)
      SALON_SPA = T.let(:salon_spa, Whopsdk::IndustryTypes::TaggedSymbol)
      MEDICAL_DENTIST_OFFICE =
        T.let(:medical_dentist_office, Whopsdk::IndustryTypes::TaggedSymbol)
      HOTEL_LODGING =
        T.let(:hotel_lodging, Whopsdk::IndustryTypes::TaggedSymbol)
      AUTO_REPAIR_SHOP =
        T.let(:auto_repair_shop, Whopsdk::IndustryTypes::TaggedSymbol)
      MASTERMINDS = T.let(:masterminds, Whopsdk::IndustryTypes::TaggedSymbol)
      WEBINARS = T.let(:webinars, Whopsdk::IndustryTypes::TaggedSymbol)
      BOOTCAMPS = T.let(:bootcamps, Whopsdk::IndustryTypes::TaggedSymbol)
      CONVENTION = T.let(:convention, Whopsdk::IndustryTypes::TaggedSymbol)
      CONCERTS = T.let(:concerts, Whopsdk::IndustryTypes::TaggedSymbol)
      MEETUPS = T.let(:meetups, Whopsdk::IndustryTypes::TaggedSymbol)
      PARTIES = T.let(:parties, Whopsdk::IndustryTypes::TaggedSymbol)

      sig { override.returns(T::Array[Whopsdk::IndustryTypes::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
