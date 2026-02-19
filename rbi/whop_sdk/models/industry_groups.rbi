# typed: strong

module WhopSDK
  module Models
    # The different industry groups a company can be in.
    module IndustryGroups
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::IndustryGroups) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACADEMIC_AND_TEST_PREP =
        T.let(:academic_and_test_prep, WhopSDK::IndustryGroups::TaggedSymbol)
      ACCESSORIES = T.let(:accessories, WhopSDK::IndustryGroups::TaggedSymbol)
      AGRICULTURE_AND_FARMING =
        T.let(:agriculture_and_farming, WhopSDK::IndustryGroups::TaggedSymbol)
      AI_AND_AUTOMATION_AGENCIES =
        T.let(
          :ai_and_automation_agencies,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      AI_AND_AUTOMATION_SOFTWARE =
        T.let(
          :ai_and_automation_software,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      ARTS_AND_CRAFTS =
        T.let(:arts_and_crafts, WhopSDK::IndustryGroups::TaggedSymbol)
      AUTOMOTIVE = T.let(:automotive, WhopSDK::IndustryGroups::TaggedSymbol)
      B2B_AND_PROFESSIONAL_MARKETPLACES =
        T.let(
          :b2b_and_professional_marketplaces,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      BABY_AND_KIDS =
        T.let(:baby_and_kids, WhopSDK::IndustryGroups::TaggedSymbol)
      BEAUTY_AND_PERSONAL_CARE =
        T.let(:beauty_and_personal_care, WhopSDK::IndustryGroups::TaggedSymbol)
      BEAUTY_AND_WELLNESS =
        T.let(:beauty_and_wellness, WhopSDK::IndustryGroups::TaggedSymbol)
      BUSINESS_AND_ENTREPRENEURSHIP =
        T.let(
          :business_and_entrepreneurship,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      BUSINESS_AND_MONEY_GROUPS =
        T.let(:business_and_money_groups, WhopSDK::IndustryGroups::TaggedSymbol)
      CAREER_AND_PROFESSIONAL =
        T.let(:career_and_professional, WhopSDK::IndustryGroups::TaggedSymbol)
      CHARITY_AND_CAUSE_EVENTS =
        T.let(:charity_and_cause_events, WhopSDK::IndustryGroups::TaggedSymbol)
      CLASS_ACTION_SETTLEMENT =
        T.let(:class_action_settlement, WhopSDK::IndustryGroups::TaggedSymbol)
      CLOTHING_AND_APPAREL =
        T.let(:clothing_and_apparel, WhopSDK::IndustryGroups::TaggedSymbol)
      COMMUNICATION_AND_MESSAGING_SOFTWARE =
        T.let(
          :communication_and_messaging_software,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      COMMUNITY_AND_EDUCATION_SOFTWARE =
        T.let(
          :community_and_education_software,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      CONSULTING = T.let(:consulting, WhopSDK::IndustryGroups::TaggedSymbol)
      CONTENT_AND_CLIPPING_AGENCIES =
        T.let(
          :content_and_clipping_agencies,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      CREATIVE_AND_CONTENT_CREATION =
        T.let(
          :creative_and_content_creation,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      CREATIVE_AND_CONTENT_GROUPS =
        T.let(
          :creative_and_content_groups,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      CREATIVE_AND_EDUCATION =
        T.let(:creative_and_education, WhopSDK::IndustryGroups::TaggedSymbol)
      CREATIVE_GIGS =
        T.let(:creative_gigs, WhopSDK::IndustryGroups::TaggedSymbol)
      CREATIVE_SERVICES =
        T.let(:creative_services, WhopSDK::IndustryGroups::TaggedSymbol)
      CUSTOMER_SUPPORT_AGENCIES =
        T.let(:customer_support_agencies, WhopSDK::IndustryGroups::TaggedSymbol)
      DATING_AND_RELATIONSHIPS =
        T.let(:dating_and_relationships, WhopSDK::IndustryGroups::TaggedSymbol)
      DELIVERY_AND_LOGISTICS =
        T.let(:delivery_and_logistics, WhopSDK::IndustryGroups::TaggedSymbol)
      DENTAL_AND_VISION =
        T.let(:dental_and_vision, WhopSDK::IndustryGroups::TaggedSymbol)
      DERMATOLOGY_AND_SKIN =
        T.let(:dermatology_and_skin, WhopSDK::IndustryGroups::TaggedSymbol)
      DESIGN_AND_CREATIVE_AGENCIES =
        T.let(
          :design_and_creative_agencies,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      DEVELOPER_AND_TECHNICAL_TOOLS =
        T.let(
          :developer_and_technical_tools,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      DEVELOPMENT_AGENCIES =
        T.let(:development_agencies, WhopSDK::IndustryGroups::TaggedSymbol)
      DIGITAL_AND_EDUCATION_MARKETPLACES =
        T.let(
          :digital_and_education_marketplaces,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      DIGITAL_GOODS_AND_ACCOUNTS =
        T.let(
          :digital_goods_and_accounts,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      E_COMMERCE_SOFTWARE =
        T.let(:e_commerce_software, WhopSDK::IndustryGroups::TaggedSymbol)
      EDUCATION_AND_BUSINESS_EVENTS =
        T.let(
          :education_and_business_events,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      EDUCATION_AND_CHILDCARE =
        T.let(:education_and_childcare, WhopSDK::IndustryGroups::TaggedSymbol)
      ELECTRONICS_AND_GADGETS =
        T.let(:electronics_and_gadgets, WhopSDK::IndustryGroups::TaggedSymbol)
      ENTERTAINMENT_AND_LEISURE =
        T.let(:entertainment_and_leisure, WhopSDK::IndustryGroups::TaggedSymbol)
      ENTERTAINMENT_EVENTS =
        T.let(:entertainment_events, WhopSDK::IndustryGroups::TaggedSymbol)
      FAMILY_AND_COMMUNITY_EVENTS =
        T.let(
          :family_and_community_events,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      FINANCE_AND_INVESTING =
        T.let(:finance_and_investing, WhopSDK::IndustryGroups::TaggedSymbol)
      FITNESS_AND_ATHLETICS =
        T.let(:fitness_and_athletics, WhopSDK::IndustryGroups::TaggedSymbol)
      FITNESS_AND_HEALTH_GROUPS =
        T.let(:fitness_and_health_groups, WhopSDK::IndustryGroups::TaggedSymbol)
      FITNESS_AND_RECREATION =
        T.let(:fitness_and_recreation, WhopSDK::IndustryGroups::TaggedSymbol)
      FITNESS_EQUIPMENT_AND_GEAR =
        T.let(
          :fitness_equipment_and_gear,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      FOOD_AND_BEVERAGE =
        T.let(:food_and_beverage, WhopSDK::IndustryGroups::TaggedSymbol)
      FOOD_AND_BEVERAGES =
        T.let(:food_and_beverages, WhopSDK::IndustryGroups::TaggedSymbol)
      FOOD_AND_HOSPITALITY_MARKETPLACES =
        T.let(
          :food_and_hospitality_marketplaces,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      FUNERAL_AND_DEATH_CARE =
        T.let(:funeral_and_death_care, WhopSDK::IndustryGroups::TaggedSymbol)
      GAMING_AND_ENTERTAINMENT_SOFTWARE =
        T.let(
          :gaming_and_entertainment_software,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      GAMING_GROUPS =
        T.let(:gaming_groups, WhopSDK::IndustryGroups::TaggedSymbol)
      GENETIC_AND_SPECIALIZED =
        T.let(:genetic_and_specialized, WhopSDK::IndustryGroups::TaggedSymbol)
      GOVERNMENT_AND_PUBLIC =
        T.let(:government_and_public, WhopSDK::IndustryGroups::TaggedSymbol)
      HEALTH_AND_WELLNESS =
        T.let(:health_and_wellness, WhopSDK::IndustryGroups::TaggedSymbol)
      HEALTH_AND_WELLNESS_SERVICES =
        T.let(
          :health_and_wellness_services,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      HEALTHCARE = T.let(:healthcare, WhopSDK::IndustryGroups::TaggedSymbol)
      HEALTHCARE_AND_WELLNESS_SOFTWARE =
        T.let(
          :healthcare_and_wellness_software,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      HOBBIES_AND_LIFESTYLE =
        T.let(:hobbies_and_lifestyle, WhopSDK::IndustryGroups::TaggedSymbol)
      HOBBY_AND_INTEREST_GROUPS =
        T.let(:hobby_and_interest_groups, WhopSDK::IndustryGroups::TaggedSymbol)
      HOME_AND_LIVING =
        T.let(:home_and_living, WhopSDK::IndustryGroups::TaggedSymbol)
      HOME_AND_TRADE_SERVICES =
        T.let(:home_and_trade_services, WhopSDK::IndustryGroups::TaggedSymbol)
      HOME_AND_TRADE_STOREFRONTS =
        T.let(
          :home_and_trade_storefronts,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      HOME_IMPROVEMENT_AND_TOOLS =
        T.let(
          :home_improvement_and_tools,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      HOME_SERVICES_GIGS =
        T.let(:home_services_gigs, WhopSDK::IndustryGroups::TaggedSymbol)
      HOSPITALITY_AND_LODGING =
        T.let(:hospitality_and_lodging, WhopSDK::IndustryGroups::TaggedSymbol)
      INDUSTRIAL_AND_MANUFACTURING =
        T.let(
          :industrial_and_manufacturing,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      INDUSTRY_SPECIFIC_SOFTWARE =
        T.let(
          :industry_specific_software,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      LANGUAGE_AND_COMMUNICATION =
        T.let(
          :language_and_communication,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      LEGAL_AND_COMPLIANCE =
        T.let(:legal_and_compliance, WhopSDK::IndustryGroups::TaggedSymbol)
      LIFESTYLE_AND_CULTURE =
        T.let(:lifestyle_and_culture, WhopSDK::IndustryGroups::TaggedSymbol)
      LIFESTYLE_AND_PERSONAL_GROWTH_GROUPS =
        T.let(
          :lifestyle_and_personal_growth_groups,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      LIFESTYLE_AND_WELLNESS_EVENTS =
        T.let(
          :lifestyle_and_wellness_events,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      LOGISTICS_AND_TRANSPORTATION_SERVICES =
        T.let(
          :logistics_and_transportation_services,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      MARKETING_AGENCIES =
        T.let(:marketing_agencies, WhopSDK::IndustryGroups::TaggedSymbol)
      MARKETING_AND_ADVERTISING =
        T.let(:marketing_and_advertising, WhopSDK::IndustryGroups::TaggedSymbol)
      MARKETING_AND_SALES_SOFTWARE =
        T.let(
          :marketing_and_sales_software,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      MEDIA_AND_PUBLISHING_COMPANIES =
        T.let(
          :media_and_publishing_companies,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      MENTAL_HEALTH_AND_BEHAVIORAL =
        T.let(
          :mental_health_and_behavioral,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      MISCELLANEOUS =
        T.let(:miscellaneous, WhopSDK::IndustryGroups::TaggedSymbol)
      MUSIC_AND_PERFORMING_ARTS =
        T.let(:music_and_performing_arts, WhopSDK::IndustryGroups::TaggedSymbol)
      NEWS_AND_POLITICS =
        T.let(:news_and_politics, WhopSDK::IndustryGroups::TaggedSymbol)
      NONPROFIT_AND_CHARITY =
        T.let(:nonprofit_and_charity, WhopSDK::IndustryGroups::TaggedSymbol)
      OFFICE_AND_BUSINESS_SUPPLIES =
        T.let(
          :office_and_business_supplies,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      OUTDOOR_AND_SPORTS =
        T.let(:outdoor_and_sports, WhopSDK::IndustryGroups::TaggedSymbol)
      PERSONAL_DEVELOPMENT =
        T.let(:personal_development, WhopSDK::IndustryGroups::TaggedSymbol)
      PERSONAL_FINANCE =
        T.let(:personal_finance, WhopSDK::IndustryGroups::TaggedSymbol)
      PERSONAL_SERVICES =
        T.let(:personal_services, WhopSDK::IndustryGroups::TaggedSymbol)
      PET_SERVICES = T.let(:pet_services, WhopSDK::IndustryGroups::TaggedSymbol)
      PETS_AND_ANIMALS =
        T.let(:pets_and_animals, WhopSDK::IndustryGroups::TaggedSymbol)
      PRIMARY_AND_GENERAL_CARE =
        T.let(:primary_and_general_care, WhopSDK::IndustryGroups::TaggedSymbol)
      PRODUCT_MARKETPLACES =
        T.let(:product_marketplaces, WhopSDK::IndustryGroups::TaggedSymbol)
      PRODUCTIVITY_AND_BUSINESS_OPS =
        T.let(
          :productivity_and_business_ops,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      PROFESSIONAL_GIGS =
        T.let(:professional_gigs, WhopSDK::IndustryGroups::TaggedSymbol)
      PROFESSIONAL_SERVICES =
        T.let(:professional_services, WhopSDK::IndustryGroups::TaggedSymbol)
      PROFESSIONAL_SERVICES_STOREFRONT =
        T.let(
          :professional_services_storefront,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      PUBLISHING_AND_INFO_PRODUCTS =
        T.let(
          :publishing_and_info_products,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      REAL_ESTATE = T.let(:real_estate, WhopSDK::IndustryGroups::TaggedSymbol)
      REAL_ESTATE_SOFTWARE =
        T.let(:real_estate_software, WhopSDK::IndustryGroups::TaggedSymbol)
      RECRUITING_AND_STAFFING =
        T.let(:recruiting_and_staffing, WhopSDK::IndustryGroups::TaggedSymbol)
      REHABILITATION_AND_THERAPY =
        T.let(
          :rehabilitation_and_therapy,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      RENTAL_MARKETPLACES =
        T.let(:rental_marketplaces, WhopSDK::IndustryGroups::TaggedSymbol)
      RETAIL = T.let(:retail, WhopSDK::IndustryGroups::TaggedSymbol)
      SALES_AGENCIES =
        T.let(:sales_agencies, WhopSDK::IndustryGroups::TaggedSymbol)
      SALES_AND_REVENUE =
        T.let(:sales_and_revenue, WhopSDK::IndustryGroups::TaggedSymbol)
      SECURITY_AND_INVESTIGATIONS =
        T.let(
          :security_and_investigations,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      SECURITY_AND_PRIVACY_SOFTWARE =
        T.let(
          :security_and_privacy_software,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      SERVICE_MARKETPLACES =
        T.let(:service_marketplaces, WhopSDK::IndustryGroups::TaggedSymbol)
      SLEEP_AND_CHRONIC_CONDITIONS =
        T.let(
          :sleep_and_chronic_conditions,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      SOCIAL_AND_NETWORKING_EVENTS =
        T.let(
          :social_and_networking_events,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      SPECIALIZED_GIGS =
        T.let(:specialized_gigs, WhopSDK::IndustryGroups::TaggedSymbol)
      SPECIALTY_MEDICAL_CARE =
        T.let(:specialty_medical_care, WhopSDK::IndustryGroups::TaggedSymbol)
      SPIRITUALITY_AND_MINDFULNESS =
        T.let(
          :spirituality_and_mindfulness,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      SPIRITUALITY_AND_PERSONAL_GROWTH =
        T.let(
          :spirituality_and_personal_growth,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      SPORTS_AND_FITNESS_EVENTS =
        T.let(:sports_and_fitness_events, WhopSDK::IndustryGroups::TaggedSymbol)
      SPORTS_BETTING_AND_GAMBLING =
        T.let(
          :sports_betting_and_gambling,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      SPORTS_BETTING_GROUPS =
        T.let(:sports_betting_groups, WhopSDK::IndustryGroups::TaggedSymbol)
      SUPPLEMENTS_AND_NUTRITION =
        T.let(:supplements_and_nutrition, WhopSDK::IndustryGroups::TaggedSymbol)
      SUSTAINABILITY_AND_ECO_PRODUCTS =
        T.let(
          :sustainability_and_eco_products,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      TASK_AND_ERRANDS =
        T.let(:task_and_errands, WhopSDK::IndustryGroups::TaggedSymbol)
      TECH_AND_AI = T.let(:tech_and_ai, WhopSDK::IndustryGroups::TaggedSymbol)
      TECH_AND_DEV_GROUPS =
        T.let(:tech_and_dev_groups, WhopSDK::IndustryGroups::TaggedSymbol)
      TECH_AND_DEVELOPMENT =
        T.let(:tech_and_development, WhopSDK::IndustryGroups::TaggedSymbol)
      TRADING_AND_FINANCE_SOFTWARE =
        T.let(
          :trading_and_finance_software,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      TRADING_AND_INVESTING =
        T.let(:trading_and_investing, WhopSDK::IndustryGroups::TaggedSymbol)
      TRADING_AND_INVESTING_GROUPS =
        T.let(
          :trading_and_investing_groups,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      TRANSPORTATION =
        T.let(:transportation, WhopSDK::IndustryGroups::TaggedSymbol)
      VETERINARY = T.let(:veterinary, WhopSDK::IndustryGroups::TaggedSymbol)
      VIDEO_GAMES_AND_ESPORTS =
        T.let(:video_games_and_esports, WhopSDK::IndustryGroups::TaggedSymbol)
      WEIGHT_AND_METABOLIC_HEALTH =
        T.let(
          :weight_and_metabolic_health,
          WhopSDK::IndustryGroups::TaggedSymbol
        )
      WELLNESS_AND_ALTERNATIVE =
        T.let(:wellness_and_alternative, WhopSDK::IndustryGroups::TaggedSymbol)
      WOMENS_AND_MENS_HEALTH =
        T.let(:womens_and_mens_health, WhopSDK::IndustryGroups::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::IndustryGroups::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
