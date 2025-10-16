# typed: strong

module WhopSDK
  module Models
    # The different industry types a company can be in.
    module IndustryTypes
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::IndustryTypes) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      TRADING = T.let(:trading, WhopSDK::IndustryTypes::TaggedSymbol)
      SPORTS_BETTING =
        T.let(:sports_betting, WhopSDK::IndustryTypes::TaggedSymbol)
      RESELLING = T.let(:reselling, WhopSDK::IndustryTypes::TaggedSymbol)
      FITNESS = T.let(:fitness, WhopSDK::IndustryTypes::TaggedSymbol)
      AMAZON_FBA = T.let(:amazon_fba, WhopSDK::IndustryTypes::TaggedSymbol)
      REAL_ESTATE = T.let(:real_estate, WhopSDK::IndustryTypes::TaggedSymbol)
      KINDLE_BOOK_PUBLISHING =
        T.let(:kindle_book_publishing, WhopSDK::IndustryTypes::TaggedSymbol)
      DATING = T.let(:dating, WhopSDK::IndustryTypes::TaggedSymbol)
      AGENCIES = T.let(:agencies, WhopSDK::IndustryTypes::TaggedSymbol)
      HEALTH_AND_WELLNESS =
        T.let(:health_and_wellness, WhopSDK::IndustryTypes::TaggedSymbol)
      SOCIAL_MEDIA = T.let(:social_media, WhopSDK::IndustryTypes::TaggedSymbol)
      SALES = T.let(:sales, WhopSDK::IndustryTypes::TaggedSymbol)
      BUSINESS = T.let(:business, WhopSDK::IndustryTypes::TaggedSymbol)
      ECOMMERCE = T.let(:ecommerce, WhopSDK::IndustryTypes::TaggedSymbol)
      VIDEO_GAMES = T.let(:video_games, WhopSDK::IndustryTypes::TaggedSymbol)
      HOME_SERVICES =
        T.let(:home_services, WhopSDK::IndustryTypes::TaggedSymbol)
      AI = T.let(:ai, WhopSDK::IndustryTypes::TaggedSymbol)
      PUBLIC_SPEAKING =
        T.let(:public_speaking, WhopSDK::IndustryTypes::TaggedSymbol)
      PERSONAL_FINANCE =
        T.let(:personal_finance, WhopSDK::IndustryTypes::TaggedSymbol)
      CAREERS = T.let(:careers, WhopSDK::IndustryTypes::TaggedSymbol)
      TRAVEL = T.let(:travel, WhopSDK::IndustryTypes::TaggedSymbol)
      CLIPPING = T.let(:clipping, WhopSDK::IndustryTypes::TaggedSymbol)
      SPIRITUALITY = T.let(:spirituality, WhopSDK::IndustryTypes::TaggedSymbol)
      VAS = T.let(:vas, WhopSDK::IndustryTypes::TaggedSymbol)
      PERSONAL_DEVELOPMENT =
        T.let(:personal_development, WhopSDK::IndustryTypes::TaggedSymbol)
      SOFTWARE = T.let(:software, WhopSDK::IndustryTypes::TaggedSymbol)
      OTHER = T.let(:other, WhopSDK::IndustryTypes::TaggedSymbol)
      MARKETING_AGENCY =
        T.let(:marketing_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      SALES_AGENCY = T.let(:sales_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_AGENCY = T.let(:ai_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      DESIGN_AGENCY =
        T.let(:design_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      COACHING_AGENCY =
        T.let(:coaching_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      DEVELOPMENT_AGENCY =
        T.let(:development_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      RECRUITING_AGENCY =
        T.let(:recruiting_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      CUSTOMER_SUPPORT_AGENCY =
        T.let(:customer_support_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      CLIPPING_AGENCY =
        T.let(:clipping_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      CLOTHING = T.let(:clothing, WhopSDK::IndustryTypes::TaggedSymbol)
      SUPPLEMENTS = T.let(:supplements, WhopSDK::IndustryTypes::TaggedSymbol)
      BEAUTY_AND_PERSONAL_CARE =
        T.let(:beauty_and_personal_care, WhopSDK::IndustryTypes::TaggedSymbol)
      FITNESS_GEAR = T.let(:fitness_gear, WhopSDK::IndustryTypes::TaggedSymbol)
      ACCESSORIES = T.let(:accessories, WhopSDK::IndustryTypes::TaggedSymbol)
      HOME_GOODS = T.let(:home_goods, WhopSDK::IndustryTypes::TaggedSymbol)
      ELECTRONICS_AND_GADGETS =
        T.let(:electronics_and_gadgets, WhopSDK::IndustryTypes::TaggedSymbol)
      FOOD_AND_BEVERAGES =
        T.let(:food_and_beverages, WhopSDK::IndustryTypes::TaggedSymbol)
      GYM = T.let(:gym, WhopSDK::IndustryTypes::TaggedSymbol)
      RESTAURANT = T.let(:restaurant, WhopSDK::IndustryTypes::TaggedSymbol)
      RETAIL_STORE = T.let(:retail_store, WhopSDK::IndustryTypes::TaggedSymbol)
      COFFEE_SHOP = T.let(:coffee_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      SALON_SPA = T.let(:salon_spa, WhopSDK::IndustryTypes::TaggedSymbol)
      MEDICAL_DENTIST_OFFICE =
        T.let(:medical_dentist_office, WhopSDK::IndustryTypes::TaggedSymbol)
      HOTEL_LODGING =
        T.let(:hotel_lodging, WhopSDK::IndustryTypes::TaggedSymbol)
      AUTO_REPAIR_SHOP =
        T.let(:auto_repair_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      MASTERMINDS = T.let(:masterminds, WhopSDK::IndustryTypes::TaggedSymbol)
      WEBINARS = T.let(:webinars, WhopSDK::IndustryTypes::TaggedSymbol)
      BOOTCAMPS = T.let(:bootcamps, WhopSDK::IndustryTypes::TaggedSymbol)
      CONVENTION = T.let(:convention, WhopSDK::IndustryTypes::TaggedSymbol)
      CONCERTS = T.let(:concerts, WhopSDK::IndustryTypes::TaggedSymbol)
      MEETUPS = T.let(:meetups, WhopSDK::IndustryTypes::TaggedSymbol)
      PARTIES = T.let(:parties, WhopSDK::IndustryTypes::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::IndustryTypes::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
