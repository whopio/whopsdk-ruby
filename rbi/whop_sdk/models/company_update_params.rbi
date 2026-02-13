# typed: strong

module WhopSDK
  module Models
    class CompanyUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CompanyUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # The company's banner image. Accepts PNG or JPEG format.
      sig { returns(T.nilable(WhopSDK::CompanyUpdateParams::BannerImage)) }
      attr_reader :banner_image

      sig do
        params(
          banner_image:
            T.nilable(WhopSDK::CompanyUpdateParams::BannerImage::OrHash)
        ).void
      end
      attr_writer :banner_image

      # The different business types a company can be.
      sig { returns(T.nilable(WhopSDK::BusinessTypes::OrSymbol)) }
      attr_accessor :business_type

      # A promotional pitch displayed to potential customers on the company's store
      # page.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The different industry groups a company can be in.
      sig do
        returns(
          T.nilable(WhopSDK::CompanyUpdateParams::IndustryGroup::OrSymbol)
        )
      end
      attr_accessor :industry_group

      # The different industry types a company can be in.
      sig { returns(T.nilable(WhopSDK::IndustryTypes::OrSymbol)) }
      attr_accessor :industry_type

      # The company's logo image. Accepts PNG, JPEG, or GIF format.
      sig { returns(T.nilable(WhopSDK::CompanyUpdateParams::Logo)) }
      attr_reader :logo

      sig do
        params(logo: T.nilable(WhopSDK::CompanyUpdateParams::Logo::OrHash)).void
      end
      attr_writer :logo

      # Whether Whop sends transactional emails (receipts, renewals, cancelations) to
      # customers on behalf of this company.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :send_customer_emails

      # The display name of the company shown to customers.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          banner_image:
            T.nilable(WhopSDK::CompanyUpdateParams::BannerImage::OrHash),
          business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
          description: T.nilable(String),
          industry_group:
            T.nilable(WhopSDK::CompanyUpdateParams::IndustryGroup::OrSymbol),
          industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
          logo: T.nilable(WhopSDK::CompanyUpdateParams::Logo::OrHash),
          send_customer_emails: T.nilable(T::Boolean),
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The company's banner image. Accepts PNG or JPEG format.
        banner_image: nil,
        # The different business types a company can be.
        business_type: nil,
        # A promotional pitch displayed to potential customers on the company's store
        # page.
        description: nil,
        # The different industry groups a company can be in.
        industry_group: nil,
        # The different industry types a company can be in.
        industry_type: nil,
        # The company's logo image. Accepts PNG, JPEG, or GIF format.
        logo: nil,
        # Whether Whop sends transactional emails (receipts, renewals, cancelations) to
        # customers on behalf of this company.
        send_customer_emails: nil,
        # The display name of the company shown to customers.
        title: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            banner_image: T.nilable(WhopSDK::CompanyUpdateParams::BannerImage),
            business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
            description: T.nilable(String),
            industry_group:
              T.nilable(WhopSDK::CompanyUpdateParams::IndustryGroup::OrSymbol),
            industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
            logo: T.nilable(WhopSDK::CompanyUpdateParams::Logo),
            send_customer_emails: T.nilable(T::Boolean),
            title: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class BannerImage < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CompanyUpdateParams::BannerImage,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of an existing file object.
        sig { returns(String) }
        attr_accessor :id

        # The company's banner image. Accepts PNG or JPEG format.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The ID of an existing file object.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      # The different industry groups a company can be in.
      module IndustryGroup
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::CompanyUpdateParams::IndustryGroup)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACADEMIC_AND_TEST_PREP =
          T.let(
            :academic_and_test_prep,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        ACCESSORIES =
          T.let(
            :accessories,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        AI_AND_AUTOMATION_AGENCIES =
          T.let(
            :ai_and_automation_agencies,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        AI_AND_AUTOMATION_SOFTWARE =
          T.let(
            :ai_and_automation_software,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        ARTS_AND_CRAFTS =
          T.let(
            :arts_and_crafts,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        AUTOMOTIVE =
          T.let(
            :automotive,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        B2B_AND_PROFESSIONAL_MARKETPLACES =
          T.let(
            :b2b_and_professional_marketplaces,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        BABY_AND_KIDS =
          T.let(
            :baby_and_kids,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        BEAUTY_AND_PERSONAL_CARE =
          T.let(
            :beauty_and_personal_care,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        BEAUTY_AND_WELLNESS =
          T.let(
            :beauty_and_wellness,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        BUSINESS_AND_ENTREPRENEURSHIP =
          T.let(
            :business_and_entrepreneurship,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        BUSINESS_AND_MONEY_GROUPS =
          T.let(
            :business_and_money_groups,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        CAREER_AND_PROFESSIONAL =
          T.let(
            :career_and_professional,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        CHARITY_AND_CAUSE_EVENTS =
          T.let(
            :charity_and_cause_events,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        CLOTHING_AND_APPAREL =
          T.let(
            :clothing_and_apparel,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        COMMUNICATION_AND_MESSAGING_SOFTWARE =
          T.let(
            :communication_and_messaging_software,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        COMMUNITY_AND_EDUCATION_SOFTWARE =
          T.let(
            :community_and_education_software,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        CONSULTING =
          T.let(
            :consulting,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        CONTENT_AND_CLIPPING_AGENCIES =
          T.let(
            :content_and_clipping_agencies,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        CREATIVE_AND_CONTENT_CREATION =
          T.let(
            :creative_and_content_creation,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        CREATIVE_AND_CONTENT_GROUPS =
          T.let(
            :creative_and_content_groups,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        CREATIVE_AND_EDUCATION =
          T.let(
            :creative_and_education,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        CREATIVE_GIGS =
          T.let(
            :creative_gigs,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        CREATIVE_SERVICES =
          T.let(
            :creative_services,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        CUSTOMER_SUPPORT_AGENCIES =
          T.let(
            :customer_support_agencies,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        DATING_AND_RELATIONSHIPS =
          T.let(
            :dating_and_relationships,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        DELIVERY_AND_LOGISTICS =
          T.let(
            :delivery_and_logistics,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        DENTAL_AND_VISION =
          T.let(
            :dental_and_vision,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        DERMATOLOGY_AND_SKIN =
          T.let(
            :dermatology_and_skin,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        DESIGN_AND_CREATIVE_AGENCIES =
          T.let(
            :design_and_creative_agencies,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        DEVELOPER_AND_TECHNICAL_TOOLS =
          T.let(
            :developer_and_technical_tools,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        DEVELOPMENT_AGENCIES =
          T.let(
            :development_agencies,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        DIGITAL_AND_EDUCATION_MARKETPLACES =
          T.let(
            :digital_and_education_marketplaces,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        E_COMMERCE_SOFTWARE =
          T.let(
            :e_commerce_software,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        EDUCATION_AND_BUSINESS_EVENTS =
          T.let(
            :education_and_business_events,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        EDUCATION_AND_CHILDCARE =
          T.let(
            :education_and_childcare,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        ELECTRONICS_AND_GADGETS =
          T.let(
            :electronics_and_gadgets,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        ENTERTAINMENT_AND_LEISURE =
          T.let(
            :entertainment_and_leisure,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        ENTERTAINMENT_EVENTS =
          T.let(
            :entertainment_events,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        FAMILY_AND_COMMUNITY_EVENTS =
          T.let(
            :family_and_community_events,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        FINANCE_AND_INVESTING =
          T.let(
            :finance_and_investing,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        FITNESS_AND_ATHLETICS =
          T.let(
            :fitness_and_athletics,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        FITNESS_AND_HEALTH_GROUPS =
          T.let(
            :fitness_and_health_groups,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        FITNESS_AND_RECREATION =
          T.let(
            :fitness_and_recreation,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        FITNESS_EQUIPMENT_AND_GEAR =
          T.let(
            :fitness_equipment_and_gear,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        FOOD_AND_BEVERAGE =
          T.let(
            :food_and_beverage,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        FOOD_AND_BEVERAGES =
          T.let(
            :food_and_beverages,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        FOOD_AND_HOSPITALITY_MARKETPLACES =
          T.let(
            :food_and_hospitality_marketplaces,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        GAMING_AND_ENTERTAINMENT_SOFTWARE =
          T.let(
            :gaming_and_entertainment_software,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        GAMING_GROUPS =
          T.let(
            :gaming_groups,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        GENETIC_AND_SPECIALIZED =
          T.let(
            :genetic_and_specialized,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        GOVERNMENT_AND_PUBLIC =
          T.let(
            :government_and_public,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        HEALTH_AND_WELLNESS =
          T.let(
            :health_and_wellness,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        HEALTH_AND_WELLNESS_SERVICES =
          T.let(
            :health_and_wellness_services,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        HEALTHCARE =
          T.let(
            :healthcare,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        HEALTHCARE_AND_WELLNESS_SOFTWARE =
          T.let(
            :healthcare_and_wellness_software,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        HOBBIES_AND_LIFESTYLE =
          T.let(
            :hobbies_and_lifestyle,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        HOBBY_AND_INTEREST_GROUPS =
          T.let(
            :hobby_and_interest_groups,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        HOME_AND_LIVING =
          T.let(
            :home_and_living,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        HOME_AND_TRADE_SERVICES =
          T.let(
            :home_and_trade_services,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        HOME_AND_TRADE_STOREFRONTS =
          T.let(
            :home_and_trade_storefronts,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        HOME_SERVICES_GIGS =
          T.let(
            :home_services_gigs,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        HOSPITALITY_AND_LODGING =
          T.let(
            :hospitality_and_lodging,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        INDUSTRY_SPECIFIC_SOFTWARE =
          T.let(
            :industry_specific_software,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        LANGUAGE_AND_COMMUNICATION =
          T.let(
            :language_and_communication,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        LEGAL_AND_COMPLIANCE =
          T.let(
            :legal_and_compliance,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        LIFESTYLE_AND_CULTURE =
          T.let(
            :lifestyle_and_culture,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        LIFESTYLE_AND_PERSONAL_GROWTH_GROUPS =
          T.let(
            :lifestyle_and_personal_growth_groups,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        LIFESTYLE_AND_WELLNESS_EVENTS =
          T.let(
            :lifestyle_and_wellness_events,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        LOGISTICS_AND_TRANSPORTATION_SERVICES =
          T.let(
            :logistics_and_transportation_services,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        MARKETING_AGENCIES =
          T.let(
            :marketing_agencies,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        MARKETING_AND_ADVERTISING =
          T.let(
            :marketing_and_advertising,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        MARKETING_AND_SALES_SOFTWARE =
          T.let(
            :marketing_and_sales_software,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        MENTAL_HEALTH_AND_BEHAVIORAL =
          T.let(
            :mental_health_and_behavioral,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        MISCELLANEOUS =
          T.let(
            :miscellaneous,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        MUSIC_AND_PERFORMING_ARTS =
          T.let(
            :music_and_performing_arts,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        NEWS_AND_POLITICS =
          T.let(
            :news_and_politics,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        NONPROFIT_AND_CHARITY =
          T.let(
            :nonprofit_and_charity,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        OFFICE_AND_BUSINESS_SUPPLIES =
          T.let(
            :office_and_business_supplies,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        OUTDOOR_AND_SPORTS =
          T.let(
            :outdoor_and_sports,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        PERSONAL_DEVELOPMENT =
          T.let(
            :personal_development,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        PERSONAL_FINANCE =
          T.let(
            :personal_finance,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        PERSONAL_SERVICES =
          T.let(
            :personal_services,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        PET_SERVICES =
          T.let(
            :pet_services,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        PETS_AND_ANIMALS =
          T.let(
            :pets_and_animals,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        PRIMARY_AND_GENERAL_CARE =
          T.let(
            :primary_and_general_care,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        PRODUCT_MARKETPLACES =
          T.let(
            :product_marketplaces,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        PRODUCTIVITY_AND_BUSINESS_OPS =
          T.let(
            :productivity_and_business_ops,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        PROFESSIONAL_GIGS =
          T.let(
            :professional_gigs,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        PROFESSIONAL_SERVICES =
          T.let(
            :professional_services,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        PROFESSIONAL_SERVICES_STOREFRONT =
          T.let(
            :professional_services_storefront,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        PUBLISHING_AND_INFO_PRODUCTS =
          T.let(
            :publishing_and_info_products,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        REAL_ESTATE =
          T.let(
            :real_estate,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        REAL_ESTATE_SOFTWARE =
          T.let(
            :real_estate_software,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        RECRUITING_AND_STAFFING =
          T.let(
            :recruiting_and_staffing,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        REHABILITATION_AND_THERAPY =
          T.let(
            :rehabilitation_and_therapy,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        RENTAL_MARKETPLACES =
          T.let(
            :rental_marketplaces,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        RETAIL =
          T.let(
            :retail,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        SALES_AGENCIES =
          T.let(
            :sales_agencies,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        SALES_AND_REVENUE =
          T.let(
            :sales_and_revenue,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        SECURITY_AND_PRIVACY_SOFTWARE =
          T.let(
            :security_and_privacy_software,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        SERVICE_MARKETPLACES =
          T.let(
            :service_marketplaces,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        SLEEP_AND_CHRONIC_CONDITIONS =
          T.let(
            :sleep_and_chronic_conditions,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        SOCIAL_AND_NETWORKING_EVENTS =
          T.let(
            :social_and_networking_events,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        SPECIALIZED_GIGS =
          T.let(
            :specialized_gigs,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        SPECIALTY_MEDICAL_CARE =
          T.let(
            :specialty_medical_care,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        SPIRITUALITY_AND_MINDFULNESS =
          T.let(
            :spirituality_and_mindfulness,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        SPIRITUALITY_AND_PERSONAL_GROWTH =
          T.let(
            :spirituality_and_personal_growth,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        SPORTS_AND_FITNESS_EVENTS =
          T.let(
            :sports_and_fitness_events,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        SPORTS_BETTING_AND_GAMBLING =
          T.let(
            :sports_betting_and_gambling,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        SPORTS_BETTING_GROUPS =
          T.let(
            :sports_betting_groups,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        SUPPLEMENTS_AND_NUTRITION =
          T.let(
            :supplements_and_nutrition,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        SUSTAINABILITY_AND_ECO_PRODUCTS =
          T.let(
            :sustainability_and_eco_products,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        TASK_AND_ERRANDS =
          T.let(
            :task_and_errands,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        TECH_AND_AI =
          T.let(
            :tech_and_ai,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        TECH_AND_DEV_GROUPS =
          T.let(
            :tech_and_dev_groups,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        TECH_AND_DEVELOPMENT =
          T.let(
            :tech_and_development,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        TRADING_AND_FINANCE_SOFTWARE =
          T.let(
            :trading_and_finance_software,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        TRADING_AND_INVESTING =
          T.let(
            :trading_and_investing,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        TRADING_AND_INVESTING_GROUPS =
          T.let(
            :trading_and_investing_groups,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        TRANSPORTATION =
          T.let(
            :transportation,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        VETERINARY =
          T.let(
            :veterinary,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        VIDEO_GAMES_AND_ESPORTS =
          T.let(
            :video_games_and_esports,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        WEIGHT_AND_METABOLIC_HEALTH =
          T.let(
            :weight_and_metabolic_health,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        WELLNESS_AND_ALTERNATIVE =
          T.let(
            :wellness_and_alternative,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )
        WOMENS_AND_MENS_HEALTH =
          T.let(
            :womens_and_mens_health,
            WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::CompanyUpdateParams::IndustryGroup::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Logo < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CompanyUpdateParams::Logo,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of an existing file object.
        sig { returns(String) }
        attr_accessor :id

        # The company's logo image. Accepts PNG, JPEG, or GIF format.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The ID of an existing file object.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end
    end
  end
end
