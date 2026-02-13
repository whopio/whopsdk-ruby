# typed: strong

module WhopSDK
  module Models
    class CompanyCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CompanyCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The display name of the company shown to customers.
      sig { returns(String) }
      attr_accessor :title

      # The different business types a company can be.
      sig { returns(T.nilable(WhopSDK::BusinessTypes::OrSymbol)) }
      attr_accessor :business_type

      # A promotional pitch displayed to potential customers on the company's store
      # page.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The email address of the user who will own the connected account. Required when
      # parent_company_id is provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # The different industry groups a company can be in.
      sig do
        returns(
          T.nilable(WhopSDK::CompanyCreateParams::IndustryGroup::OrSymbol)
        )
      end
      attr_accessor :industry_group

      # The different industry types a company can be in.
      sig { returns(T.nilable(WhopSDK::IndustryTypes::OrSymbol)) }
      attr_accessor :industry_type

      # The company's logo image. Accepts PNG, JPEG, or GIF format.
      sig { returns(T.nilable(WhopSDK::CompanyCreateParams::Logo)) }
      attr_reader :logo

      sig do
        params(logo: T.nilable(WhopSDK::CompanyCreateParams::Logo::OrHash)).void
      end
      attr_writer :logo

      # A key-value JSON object of custom metadata to store on the company.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # The unique identifier of the parent platform company. When provided, creates a
      # connected account under that platform. Omit to create a company for the current
      # user.
      sig { returns(T.nilable(String)) }
      attr_accessor :parent_company_id

      # Whether Whop sends transactional emails to customers on behalf of this company.
      # Only applies when creating a connected account.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :send_customer_emails

      sig do
        params(
          title: String,
          business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
          description: T.nilable(String),
          email: T.nilable(String),
          industry_group:
            T.nilable(WhopSDK::CompanyCreateParams::IndustryGroup::OrSymbol),
          industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
          logo: T.nilable(WhopSDK::CompanyCreateParams::Logo::OrHash),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          parent_company_id: T.nilable(String),
          send_customer_emails: T.nilable(T::Boolean),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The display name of the company shown to customers.
        title:,
        # The different business types a company can be.
        business_type: nil,
        # A promotional pitch displayed to potential customers on the company's store
        # page.
        description: nil,
        # The email address of the user who will own the connected account. Required when
        # parent_company_id is provided.
        email: nil,
        # The different industry groups a company can be in.
        industry_group: nil,
        # The different industry types a company can be in.
        industry_type: nil,
        # The company's logo image. Accepts PNG, JPEG, or GIF format.
        logo: nil,
        # A key-value JSON object of custom metadata to store on the company.
        metadata: nil,
        # The unique identifier of the parent platform company. When provided, creates a
        # connected account under that platform. Omit to create a company for the current
        # user.
        parent_company_id: nil,
        # Whether Whop sends transactional emails to customers on behalf of this company.
        # Only applies when creating a connected account.
        send_customer_emails: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            title: String,
            business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
            description: T.nilable(String),
            email: T.nilable(String),
            industry_group:
              T.nilable(WhopSDK::CompanyCreateParams::IndustryGroup::OrSymbol),
            industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
            logo: T.nilable(WhopSDK::CompanyCreateParams::Logo),
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            parent_company_id: T.nilable(String),
            send_customer_emails: T.nilable(T::Boolean),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The different industry groups a company can be in.
      module IndustryGroup
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::CompanyCreateParams::IndustryGroup)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACADEMIC_AND_TEST_PREP =
          T.let(
            :academic_and_test_prep,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        ACCESSORIES =
          T.let(
            :accessories,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        AI_AND_AUTOMATION_AGENCIES =
          T.let(
            :ai_and_automation_agencies,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        AI_AND_AUTOMATION_SOFTWARE =
          T.let(
            :ai_and_automation_software,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        ARTS_AND_CRAFTS =
          T.let(
            :arts_and_crafts,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        AUTOMOTIVE =
          T.let(
            :automotive,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        B2B_AND_PROFESSIONAL_MARKETPLACES =
          T.let(
            :b2b_and_professional_marketplaces,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        BABY_AND_KIDS =
          T.let(
            :baby_and_kids,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        BEAUTY_AND_PERSONAL_CARE =
          T.let(
            :beauty_and_personal_care,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        BEAUTY_AND_WELLNESS =
          T.let(
            :beauty_and_wellness,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        BUSINESS_AND_ENTREPRENEURSHIP =
          T.let(
            :business_and_entrepreneurship,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        BUSINESS_AND_MONEY_GROUPS =
          T.let(
            :business_and_money_groups,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        CAREER_AND_PROFESSIONAL =
          T.let(
            :career_and_professional,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        CHARITY_AND_CAUSE_EVENTS =
          T.let(
            :charity_and_cause_events,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        CLOTHING_AND_APPAREL =
          T.let(
            :clothing_and_apparel,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        COMMUNICATION_AND_MESSAGING_SOFTWARE =
          T.let(
            :communication_and_messaging_software,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        COMMUNITY_AND_EDUCATION_SOFTWARE =
          T.let(
            :community_and_education_software,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        CONSULTING =
          T.let(
            :consulting,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        CONTENT_AND_CLIPPING_AGENCIES =
          T.let(
            :content_and_clipping_agencies,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        CREATIVE_AND_CONTENT_CREATION =
          T.let(
            :creative_and_content_creation,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        CREATIVE_AND_CONTENT_GROUPS =
          T.let(
            :creative_and_content_groups,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        CREATIVE_AND_EDUCATION =
          T.let(
            :creative_and_education,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        CREATIVE_GIGS =
          T.let(
            :creative_gigs,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        CREATIVE_SERVICES =
          T.let(
            :creative_services,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        CUSTOMER_SUPPORT_AGENCIES =
          T.let(
            :customer_support_agencies,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        DATING_AND_RELATIONSHIPS =
          T.let(
            :dating_and_relationships,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        DELIVERY_AND_LOGISTICS =
          T.let(
            :delivery_and_logistics,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        DENTAL_AND_VISION =
          T.let(
            :dental_and_vision,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        DERMATOLOGY_AND_SKIN =
          T.let(
            :dermatology_and_skin,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        DESIGN_AND_CREATIVE_AGENCIES =
          T.let(
            :design_and_creative_agencies,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        DEVELOPER_AND_TECHNICAL_TOOLS =
          T.let(
            :developer_and_technical_tools,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        DEVELOPMENT_AGENCIES =
          T.let(
            :development_agencies,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        DIGITAL_AND_EDUCATION_MARKETPLACES =
          T.let(
            :digital_and_education_marketplaces,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        E_COMMERCE_SOFTWARE =
          T.let(
            :e_commerce_software,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        EDUCATION_AND_BUSINESS_EVENTS =
          T.let(
            :education_and_business_events,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        EDUCATION_AND_CHILDCARE =
          T.let(
            :education_and_childcare,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        ELECTRONICS_AND_GADGETS =
          T.let(
            :electronics_and_gadgets,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        ENTERTAINMENT_AND_LEISURE =
          T.let(
            :entertainment_and_leisure,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        ENTERTAINMENT_EVENTS =
          T.let(
            :entertainment_events,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        FAMILY_AND_COMMUNITY_EVENTS =
          T.let(
            :family_and_community_events,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        FINANCE_AND_INVESTING =
          T.let(
            :finance_and_investing,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        FITNESS_AND_ATHLETICS =
          T.let(
            :fitness_and_athletics,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        FITNESS_AND_HEALTH_GROUPS =
          T.let(
            :fitness_and_health_groups,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        FITNESS_AND_RECREATION =
          T.let(
            :fitness_and_recreation,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        FITNESS_EQUIPMENT_AND_GEAR =
          T.let(
            :fitness_equipment_and_gear,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        FOOD_AND_BEVERAGE =
          T.let(
            :food_and_beverage,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        FOOD_AND_BEVERAGES =
          T.let(
            :food_and_beverages,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        FOOD_AND_HOSPITALITY_MARKETPLACES =
          T.let(
            :food_and_hospitality_marketplaces,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        GAMING_AND_ENTERTAINMENT_SOFTWARE =
          T.let(
            :gaming_and_entertainment_software,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        GAMING_GROUPS =
          T.let(
            :gaming_groups,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        GENETIC_AND_SPECIALIZED =
          T.let(
            :genetic_and_specialized,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        GOVERNMENT_AND_PUBLIC =
          T.let(
            :government_and_public,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        HEALTH_AND_WELLNESS =
          T.let(
            :health_and_wellness,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        HEALTH_AND_WELLNESS_SERVICES =
          T.let(
            :health_and_wellness_services,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        HEALTHCARE =
          T.let(
            :healthcare,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        HEALTHCARE_AND_WELLNESS_SOFTWARE =
          T.let(
            :healthcare_and_wellness_software,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        HOBBIES_AND_LIFESTYLE =
          T.let(
            :hobbies_and_lifestyle,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        HOBBY_AND_INTEREST_GROUPS =
          T.let(
            :hobby_and_interest_groups,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        HOME_AND_LIVING =
          T.let(
            :home_and_living,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        HOME_AND_TRADE_SERVICES =
          T.let(
            :home_and_trade_services,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        HOME_AND_TRADE_STOREFRONTS =
          T.let(
            :home_and_trade_storefronts,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        HOME_SERVICES_GIGS =
          T.let(
            :home_services_gigs,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        HOSPITALITY_AND_LODGING =
          T.let(
            :hospitality_and_lodging,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        INDUSTRY_SPECIFIC_SOFTWARE =
          T.let(
            :industry_specific_software,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        LANGUAGE_AND_COMMUNICATION =
          T.let(
            :language_and_communication,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        LEGAL_AND_COMPLIANCE =
          T.let(
            :legal_and_compliance,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        LIFESTYLE_AND_CULTURE =
          T.let(
            :lifestyle_and_culture,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        LIFESTYLE_AND_PERSONAL_GROWTH_GROUPS =
          T.let(
            :lifestyle_and_personal_growth_groups,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        LIFESTYLE_AND_WELLNESS_EVENTS =
          T.let(
            :lifestyle_and_wellness_events,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        LOGISTICS_AND_TRANSPORTATION_SERVICES =
          T.let(
            :logistics_and_transportation_services,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        MARKETING_AGENCIES =
          T.let(
            :marketing_agencies,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        MARKETING_AND_ADVERTISING =
          T.let(
            :marketing_and_advertising,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        MARKETING_AND_SALES_SOFTWARE =
          T.let(
            :marketing_and_sales_software,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        MENTAL_HEALTH_AND_BEHAVIORAL =
          T.let(
            :mental_health_and_behavioral,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        MISCELLANEOUS =
          T.let(
            :miscellaneous,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        MUSIC_AND_PERFORMING_ARTS =
          T.let(
            :music_and_performing_arts,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        NEWS_AND_POLITICS =
          T.let(
            :news_and_politics,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        NONPROFIT_AND_CHARITY =
          T.let(
            :nonprofit_and_charity,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        OFFICE_AND_BUSINESS_SUPPLIES =
          T.let(
            :office_and_business_supplies,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        OUTDOOR_AND_SPORTS =
          T.let(
            :outdoor_and_sports,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        PERSONAL_DEVELOPMENT =
          T.let(
            :personal_development,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        PERSONAL_FINANCE =
          T.let(
            :personal_finance,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        PERSONAL_SERVICES =
          T.let(
            :personal_services,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        PET_SERVICES =
          T.let(
            :pet_services,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        PETS_AND_ANIMALS =
          T.let(
            :pets_and_animals,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        PRIMARY_AND_GENERAL_CARE =
          T.let(
            :primary_and_general_care,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        PRODUCT_MARKETPLACES =
          T.let(
            :product_marketplaces,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        PRODUCTIVITY_AND_BUSINESS_OPS =
          T.let(
            :productivity_and_business_ops,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        PROFESSIONAL_GIGS =
          T.let(
            :professional_gigs,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        PROFESSIONAL_SERVICES =
          T.let(
            :professional_services,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        PROFESSIONAL_SERVICES_STOREFRONT =
          T.let(
            :professional_services_storefront,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        PUBLISHING_AND_INFO_PRODUCTS =
          T.let(
            :publishing_and_info_products,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        REAL_ESTATE =
          T.let(
            :real_estate,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        REAL_ESTATE_SOFTWARE =
          T.let(
            :real_estate_software,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        RECRUITING_AND_STAFFING =
          T.let(
            :recruiting_and_staffing,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        REHABILITATION_AND_THERAPY =
          T.let(
            :rehabilitation_and_therapy,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        RENTAL_MARKETPLACES =
          T.let(
            :rental_marketplaces,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        RETAIL =
          T.let(
            :retail,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        SALES_AGENCIES =
          T.let(
            :sales_agencies,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        SALES_AND_REVENUE =
          T.let(
            :sales_and_revenue,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        SECURITY_AND_PRIVACY_SOFTWARE =
          T.let(
            :security_and_privacy_software,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        SERVICE_MARKETPLACES =
          T.let(
            :service_marketplaces,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        SLEEP_AND_CHRONIC_CONDITIONS =
          T.let(
            :sleep_and_chronic_conditions,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        SOCIAL_AND_NETWORKING_EVENTS =
          T.let(
            :social_and_networking_events,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        SPECIALIZED_GIGS =
          T.let(
            :specialized_gigs,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        SPECIALTY_MEDICAL_CARE =
          T.let(
            :specialty_medical_care,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        SPIRITUALITY_AND_MINDFULNESS =
          T.let(
            :spirituality_and_mindfulness,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        SPIRITUALITY_AND_PERSONAL_GROWTH =
          T.let(
            :spirituality_and_personal_growth,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        SPORTS_AND_FITNESS_EVENTS =
          T.let(
            :sports_and_fitness_events,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        SPORTS_BETTING_AND_GAMBLING =
          T.let(
            :sports_betting_and_gambling,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        SPORTS_BETTING_GROUPS =
          T.let(
            :sports_betting_groups,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        SUPPLEMENTS_AND_NUTRITION =
          T.let(
            :supplements_and_nutrition,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        SUSTAINABILITY_AND_ECO_PRODUCTS =
          T.let(
            :sustainability_and_eco_products,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        TASK_AND_ERRANDS =
          T.let(
            :task_and_errands,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        TECH_AND_AI =
          T.let(
            :tech_and_ai,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        TECH_AND_DEV_GROUPS =
          T.let(
            :tech_and_dev_groups,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        TECH_AND_DEVELOPMENT =
          T.let(
            :tech_and_development,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        TRADING_AND_FINANCE_SOFTWARE =
          T.let(
            :trading_and_finance_software,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        TRADING_AND_INVESTING =
          T.let(
            :trading_and_investing,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        TRADING_AND_INVESTING_GROUPS =
          T.let(
            :trading_and_investing_groups,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        TRANSPORTATION =
          T.let(
            :transportation,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        VETERINARY =
          T.let(
            :veterinary,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        VIDEO_GAMES_AND_ESPORTS =
          T.let(
            :video_games_and_esports,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        WEIGHT_AND_METABOLIC_HEALTH =
          T.let(
            :weight_and_metabolic_health,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        WELLNESS_AND_ALTERNATIVE =
          T.let(
            :wellness_and_alternative,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )
        WOMENS_AND_MENS_HEALTH =
          T.let(
            :womens_and_mens_health,
            WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::CompanyCreateParams::IndustryGroup::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Logo < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CompanyCreateParams::Logo,
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
