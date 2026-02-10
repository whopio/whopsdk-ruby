# typed: strong

module WhopSDK
  module Models
    class ProductCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ProductCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier of the company to create this product for.
      sig { returns(String) }
      attr_accessor :company_id

      # The display name of the product. Maximum 40 characters.
      sig { returns(String) }
      attr_accessor :title

      # The different business types a company can be.
      sig { returns(T.nilable(WhopSDK::BusinessTypes::OrSymbol)) }
      attr_accessor :business_type

      # Whether the checkout flow collects a shipping address from the customer.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :collect_shipping_address

      # The different types of custom CTAs that can be selected.
      sig { returns(T.nilable(WhopSDK::CustomCta::OrSymbol)) }
      attr_accessor :custom_cta

      # A URL that the call-to-action button links to instead of the default checkout
      # flow.
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_cta_url

      # A custom text label that appears on the customer's bank statement. Must be 5-22
      # characters, contain at least one letter, and not contain <, >, \, ', or "
      # characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_statement_descriptor

      # A written description of the product displayed on its product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The unique identifiers of experiences to connect to this product.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :experience_ids

      # The commission rate as a percentage that affiliates earn through the global
      # affiliate program.
      sig { returns(T.nilable(Float)) }
      attr_accessor :global_affiliate_percentage

      # The different statuses of the global affiliate program for a product.
      sig { returns(T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol)) }
      attr_accessor :global_affiliate_status

      # A short marketing headline displayed prominently on the product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :headline

      # The different industry groups a company can be in.
      sig do
        returns(
          T.nilable(WhopSDK::ProductCreateParams::IndustryGroup::OrSymbol)
        )
      end
      attr_accessor :industry_group

      # The different industry types a company can be in.
      sig { returns(T.nilable(WhopSDK::IndustryTypes::OrSymbol)) }
      attr_accessor :industry_type

      # The commission rate as a percentage that members earn through the member
      # affiliate program.
      sig { returns(T.nilable(Float)) }
      attr_accessor :member_affiliate_percentage

      # The different statuses of the global affiliate program for a product.
      sig { returns(T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol)) }
      attr_accessor :member_affiliate_status

      # Configuration for an automatically generated plan to attach to this product.
      sig { returns(T.nilable(WhopSDK::ProductCreateParams::PlanOptions)) }
      attr_reader :plan_options

      sig do
        params(
          plan_options:
            T.nilable(WhopSDK::ProductCreateParams::PlanOptions::OrHash)
        ).void
      end
      attr_writer :plan_options

      # Key features and benefits to display on the product page.
      sig do
        returns(
          T.nilable(T::Array[WhopSDK::ProductCreateParams::ProductHighlight])
        )
      end
      attr_accessor :product_highlights

      # The unique identifier of the tax classification code to apply to this product.
      sig { returns(T.nilable(String)) }
      attr_accessor :product_tax_code_id

      # A URL to redirect the customer to after completing a purchase.
      sig { returns(T.nilable(String)) }
      attr_accessor :redirect_purchase_url

      # The URL slug for the product's public link.
      sig { returns(T.nilable(String)) }
      attr_accessor :route

      # Visibility of a resource
      sig { returns(T.nilable(WhopSDK::Visibility::OrSymbol)) }
      attr_accessor :visibility

      sig do
        params(
          company_id: String,
          title: String,
          business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
          collect_shipping_address: T.nilable(T::Boolean),
          custom_cta: T.nilable(WhopSDK::CustomCta::OrSymbol),
          custom_cta_url: T.nilable(String),
          custom_statement_descriptor: T.nilable(String),
          description: T.nilable(String),
          experience_ids: T.nilable(T::Array[String]),
          global_affiliate_percentage: T.nilable(Float),
          global_affiliate_status:
            T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
          headline: T.nilable(String),
          industry_group:
            T.nilable(WhopSDK::ProductCreateParams::IndustryGroup::OrSymbol),
          industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
          member_affiliate_percentage: T.nilable(Float),
          member_affiliate_status:
            T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
          plan_options:
            T.nilable(WhopSDK::ProductCreateParams::PlanOptions::OrHash),
          product_highlights:
            T.nilable(
              T::Array[WhopSDK::ProductCreateParams::ProductHighlight::OrHash]
            ),
          product_tax_code_id: T.nilable(String),
          redirect_purchase_url: T.nilable(String),
          route: T.nilable(String),
          visibility: T.nilable(WhopSDK::Visibility::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the company to create this product for.
        company_id:,
        # The display name of the product. Maximum 40 characters.
        title:,
        # The different business types a company can be.
        business_type: nil,
        # Whether the checkout flow collects a shipping address from the customer.
        collect_shipping_address: nil,
        # The different types of custom CTAs that can be selected.
        custom_cta: nil,
        # A URL that the call-to-action button links to instead of the default checkout
        # flow.
        custom_cta_url: nil,
        # A custom text label that appears on the customer's bank statement. Must be 5-22
        # characters, contain at least one letter, and not contain <, >, \, ', or "
        # characters.
        custom_statement_descriptor: nil,
        # A written description of the product displayed on its product page.
        description: nil,
        # The unique identifiers of experiences to connect to this product.
        experience_ids: nil,
        # The commission rate as a percentage that affiliates earn through the global
        # affiliate program.
        global_affiliate_percentage: nil,
        # The different statuses of the global affiliate program for a product.
        global_affiliate_status: nil,
        # A short marketing headline displayed prominently on the product page.
        headline: nil,
        # The different industry groups a company can be in.
        industry_group: nil,
        # The different industry types a company can be in.
        industry_type: nil,
        # The commission rate as a percentage that members earn through the member
        # affiliate program.
        member_affiliate_percentage: nil,
        # The different statuses of the global affiliate program for a product.
        member_affiliate_status: nil,
        # Configuration for an automatically generated plan to attach to this product.
        plan_options: nil,
        # Key features and benefits to display on the product page.
        product_highlights: nil,
        # The unique identifier of the tax classification code to apply to this product.
        product_tax_code_id: nil,
        # A URL to redirect the customer to after completing a purchase.
        redirect_purchase_url: nil,
        # The URL slug for the product's public link.
        route: nil,
        # Visibility of a resource
        visibility: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            title: String,
            business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
            collect_shipping_address: T.nilable(T::Boolean),
            custom_cta: T.nilable(WhopSDK::CustomCta::OrSymbol),
            custom_cta_url: T.nilable(String),
            custom_statement_descriptor: T.nilable(String),
            description: T.nilable(String),
            experience_ids: T.nilable(T::Array[String]),
            global_affiliate_percentage: T.nilable(Float),
            global_affiliate_status:
              T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
            headline: T.nilable(String),
            industry_group:
              T.nilable(WhopSDK::ProductCreateParams::IndustryGroup::OrSymbol),
            industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
            member_affiliate_percentage: T.nilable(Float),
            member_affiliate_status:
              T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
            plan_options: T.nilable(WhopSDK::ProductCreateParams::PlanOptions),
            product_highlights:
              T.nilable(
                T::Array[WhopSDK::ProductCreateParams::ProductHighlight]
              ),
            product_tax_code_id: T.nilable(String),
            redirect_purchase_url: T.nilable(String),
            route: T.nilable(String),
            visibility: T.nilable(WhopSDK::Visibility::OrSymbol),
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
            T.all(Symbol, WhopSDK::ProductCreateParams::IndustryGroup)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACADEMIC_AND_TEST_PREP =
          T.let(
            :academic_and_test_prep,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        ACCESSORIES =
          T.let(
            :accessories,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        AI_AND_AUTOMATION_AGENCIES =
          T.let(
            :ai_and_automation_agencies,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        AI_AND_AUTOMATION_SOFTWARE =
          T.let(
            :ai_and_automation_software,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        ARTS_AND_CRAFTS =
          T.let(
            :arts_and_crafts,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        AUTOMOTIVE =
          T.let(
            :automotive,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        B2B_AND_PROFESSIONAL_MARKETPLACES =
          T.let(
            :b2b_and_professional_marketplaces,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        BABY_AND_KIDS =
          T.let(
            :baby_and_kids,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        BEAUTY_AND_PERSONAL_CARE =
          T.let(
            :beauty_and_personal_care,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        BEAUTY_AND_WELLNESS =
          T.let(
            :beauty_and_wellness,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        BUSINESS_AND_ENTREPRENEURSHIP =
          T.let(
            :business_and_entrepreneurship,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        BUSINESS_AND_MONEY_GROUPS =
          T.let(
            :business_and_money_groups,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        CAREER_AND_PROFESSIONAL =
          T.let(
            :career_and_professional,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        CHARITY_AND_CAUSE_EVENTS =
          T.let(
            :charity_and_cause_events,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        CLOTHING_AND_APPAREL =
          T.let(
            :clothing_and_apparel,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        COMMUNICATION_AND_MESSAGING_SOFTWARE =
          T.let(
            :communication_and_messaging_software,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        COMMUNITY_AND_EDUCATION_SOFTWARE =
          T.let(
            :community_and_education_software,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        CONSULTING =
          T.let(
            :consulting,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        CONTENT_AND_CLIPPING_AGENCIES =
          T.let(
            :content_and_clipping_agencies,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        CREATIVE_AND_CONTENT_CREATION =
          T.let(
            :creative_and_content_creation,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        CREATIVE_AND_CONTENT_GROUPS =
          T.let(
            :creative_and_content_groups,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        CREATIVE_AND_EDUCATION =
          T.let(
            :creative_and_education,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        CREATIVE_GIGS =
          T.let(
            :creative_gigs,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        CREATIVE_SERVICES =
          T.let(
            :creative_services,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        CUSTOMER_SUPPORT_AGENCIES =
          T.let(
            :customer_support_agencies,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        DATING_AND_RELATIONSHIPS =
          T.let(
            :dating_and_relationships,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        DELIVERY_AND_LOGISTICS =
          T.let(
            :delivery_and_logistics,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        DENTAL_AND_VISION =
          T.let(
            :dental_and_vision,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        DERMATOLOGY_AND_SKIN =
          T.let(
            :dermatology_and_skin,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        DESIGN_AND_CREATIVE_AGENCIES =
          T.let(
            :design_and_creative_agencies,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        DEVELOPER_AND_TECHNICAL_TOOLS =
          T.let(
            :developer_and_technical_tools,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        DEVELOPMENT_AGENCIES =
          T.let(
            :development_agencies,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        DIGITAL_AND_EDUCATION_MARKETPLACES =
          T.let(
            :digital_and_education_marketplaces,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        E_COMMERCE_SOFTWARE =
          T.let(
            :e_commerce_software,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        EDUCATION_AND_BUSINESS_EVENTS =
          T.let(
            :education_and_business_events,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        EDUCATION_AND_CHILDCARE =
          T.let(
            :education_and_childcare,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        ELECTRONICS_AND_GADGETS =
          T.let(
            :electronics_and_gadgets,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        ENTERTAINMENT_AND_LEISURE =
          T.let(
            :entertainment_and_leisure,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        ENTERTAINMENT_EVENTS =
          T.let(
            :entertainment_events,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        FAMILY_AND_COMMUNITY_EVENTS =
          T.let(
            :family_and_community_events,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        FINANCE_AND_INVESTING =
          T.let(
            :finance_and_investing,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        FITNESS_AND_ATHLETICS =
          T.let(
            :fitness_and_athletics,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        FITNESS_AND_HEALTH_GROUPS =
          T.let(
            :fitness_and_health_groups,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        FITNESS_AND_RECREATION =
          T.let(
            :fitness_and_recreation,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        FITNESS_EQUIPMENT_AND_GEAR =
          T.let(
            :fitness_equipment_and_gear,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        FOOD_AND_BEVERAGE =
          T.let(
            :food_and_beverage,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        FOOD_AND_BEVERAGES =
          T.let(
            :food_and_beverages,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        FOOD_AND_HOSPITALITY_MARKETPLACES =
          T.let(
            :food_and_hospitality_marketplaces,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        GAMING_AND_ENTERTAINMENT_SOFTWARE =
          T.let(
            :gaming_and_entertainment_software,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        GAMING_GROUPS =
          T.let(
            :gaming_groups,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        GENETIC_AND_SPECIALIZED =
          T.let(
            :genetic_and_specialized,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        GOVERNMENT_AND_PUBLIC =
          T.let(
            :government_and_public,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        HEALTH_AND_WELLNESS =
          T.let(
            :health_and_wellness,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        HEALTH_AND_WELLNESS_SERVICES =
          T.let(
            :health_and_wellness_services,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        HEALTHCARE =
          T.let(
            :healthcare,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        HEALTHCARE_AND_WELLNESS_SOFTWARE =
          T.let(
            :healthcare_and_wellness_software,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        HOBBIES_AND_LIFESTYLE =
          T.let(
            :hobbies_and_lifestyle,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        HOBBY_AND_INTEREST_GROUPS =
          T.let(
            :hobby_and_interest_groups,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        HOME_AND_LIVING =
          T.let(
            :home_and_living,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        HOME_AND_TRADE_SERVICES =
          T.let(
            :home_and_trade_services,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        HOME_AND_TRADE_STOREFRONTS =
          T.let(
            :home_and_trade_storefronts,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        HOME_SERVICES_GIGS =
          T.let(
            :home_services_gigs,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        HOSPITALITY_AND_LODGING =
          T.let(
            :hospitality_and_lodging,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        INDUSTRY_SPECIFIC_SOFTWARE =
          T.let(
            :industry_specific_software,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        LANGUAGE_AND_COMMUNICATION =
          T.let(
            :language_and_communication,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        LEGAL_AND_COMPLIANCE =
          T.let(
            :legal_and_compliance,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        LIFESTYLE_AND_CULTURE =
          T.let(
            :lifestyle_and_culture,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        LIFESTYLE_AND_PERSONAL_GROWTH_GROUPS =
          T.let(
            :lifestyle_and_personal_growth_groups,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        LIFESTYLE_AND_WELLNESS_EVENTS =
          T.let(
            :lifestyle_and_wellness_events,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        LOGISTICS_AND_TRANSPORTATION_SERVICES =
          T.let(
            :logistics_and_transportation_services,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        MARKETING_AGENCIES =
          T.let(
            :marketing_agencies,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        MARKETING_AND_ADVERTISING =
          T.let(
            :marketing_and_advertising,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        MARKETING_AND_SALES_SOFTWARE =
          T.let(
            :marketing_and_sales_software,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        MENTAL_HEALTH_AND_BEHAVIORAL =
          T.let(
            :mental_health_and_behavioral,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        MISCELLANEOUS =
          T.let(
            :miscellaneous,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        MUSIC_AND_PERFORMING_ARTS =
          T.let(
            :music_and_performing_arts,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        NEWS_AND_POLITICS =
          T.let(
            :news_and_politics,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        NONPROFIT_AND_CHARITY =
          T.let(
            :nonprofit_and_charity,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        OFFICE_AND_BUSINESS_SUPPLIES =
          T.let(
            :office_and_business_supplies,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        OUTDOOR_AND_SPORTS =
          T.let(
            :outdoor_and_sports,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        PERSONAL_DEVELOPMENT =
          T.let(
            :personal_development,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        PERSONAL_FINANCE =
          T.let(
            :personal_finance,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        PERSONAL_SERVICES =
          T.let(
            :personal_services,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        PET_SERVICES =
          T.let(
            :pet_services,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        PETS_AND_ANIMALS =
          T.let(
            :pets_and_animals,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        PRIMARY_AND_GENERAL_CARE =
          T.let(
            :primary_and_general_care,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        PRODUCT_MARKETPLACES =
          T.let(
            :product_marketplaces,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        PRODUCTIVITY_AND_BUSINESS_OPS =
          T.let(
            :productivity_and_business_ops,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        PROFESSIONAL_GIGS =
          T.let(
            :professional_gigs,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        PROFESSIONAL_SERVICES =
          T.let(
            :professional_services,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        PROFESSIONAL_SERVICES_STOREFRONT =
          T.let(
            :professional_services_storefront,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        PUBLISHING_AND_INFO_PRODUCTS =
          T.let(
            :publishing_and_info_products,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        REAL_ESTATE =
          T.let(
            :real_estate,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        REAL_ESTATE_SOFTWARE =
          T.let(
            :real_estate_software,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        RECRUITING_AND_STAFFING =
          T.let(
            :recruiting_and_staffing,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        REHABILITATION_AND_THERAPY =
          T.let(
            :rehabilitation_and_therapy,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        RENTAL_MARKETPLACES =
          T.let(
            :rental_marketplaces,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        RETAIL =
          T.let(
            :retail,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        SALES_AGENCIES =
          T.let(
            :sales_agencies,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        SALES_AND_REVENUE =
          T.let(
            :sales_and_revenue,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        SECURITY_AND_PRIVACY_SOFTWARE =
          T.let(
            :security_and_privacy_software,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        SERVICE_MARKETPLACES =
          T.let(
            :service_marketplaces,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        SLEEP_AND_CHRONIC_CONDITIONS =
          T.let(
            :sleep_and_chronic_conditions,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        SOCIAL_AND_NETWORKING_EVENTS =
          T.let(
            :social_and_networking_events,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        SPECIALIZED_GIGS =
          T.let(
            :specialized_gigs,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        SPECIALTY_MEDICAL_CARE =
          T.let(
            :specialty_medical_care,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        SPIRITUALITY_AND_MINDFULNESS =
          T.let(
            :spirituality_and_mindfulness,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        SPIRITUALITY_AND_PERSONAL_GROWTH =
          T.let(
            :spirituality_and_personal_growth,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        SPORTS_AND_FITNESS_EVENTS =
          T.let(
            :sports_and_fitness_events,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        SPORTS_BETTING_AND_GAMBLING =
          T.let(
            :sports_betting_and_gambling,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        SPORTS_BETTING_GROUPS =
          T.let(
            :sports_betting_groups,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        SUPPLEMENTS_AND_NUTRITION =
          T.let(
            :supplements_and_nutrition,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        SUSTAINABILITY_AND_ECO_PRODUCTS =
          T.let(
            :sustainability_and_eco_products,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        TASK_AND_ERRANDS =
          T.let(
            :task_and_errands,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        TECH_AND_AI =
          T.let(
            :tech_and_ai,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        TECH_AND_DEV_GROUPS =
          T.let(
            :tech_and_dev_groups,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        TECH_AND_DEVELOPMENT =
          T.let(
            :tech_and_development,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        TRADING_AND_FINANCE_SOFTWARE =
          T.let(
            :trading_and_finance_software,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        TRADING_AND_INVESTING =
          T.let(
            :trading_and_investing,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        TRADING_AND_INVESTING_GROUPS =
          T.let(
            :trading_and_investing_groups,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        TRANSPORTATION =
          T.let(
            :transportation,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        VETERINARY =
          T.let(
            :veterinary,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        VIDEO_GAMES_AND_ESPORTS =
          T.let(
            :video_games_and_esports,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        WEIGHT_AND_METABOLIC_HEALTH =
          T.let(
            :weight_and_metabolic_health,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        WELLNESS_AND_ALTERNATIVE =
          T.let(
            :wellness_and_alternative,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )
        WOMENS_AND_MENS_HEALTH =
          T.let(
            :womens_and_mens_health,
            WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::ProductCreateParams::IndustryGroup::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class PlanOptions < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::ProductCreateParams::PlanOptions,
              WhopSDK::Internal::AnyHash
            )
          end

        # The available currencies on the platform
        sig { returns(T.nilable(WhopSDK::Currency::OrSymbol)) }
        attr_accessor :base_currency

        # The interval at which the plan charges (renewal plans).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :billing_period

        # An array of custom field objects.
        sig do
          returns(
            T.nilable(
              T::Array[WhopSDK::ProductCreateParams::PlanOptions::CustomField]
            )
          )
        end
        attr_accessor :custom_fields

        # An additional amount charged upon first purchase. Provided as a number in the
        # specified currency. Eg: 10.43 for $10.43 USD.
        sig { returns(T.nilable(Float)) }
        attr_accessor :initial_price

        # The type of plan that can be attached to a product
        sig { returns(T.nilable(WhopSDK::PlanType::OrSymbol)) }
        attr_accessor :plan_type

        # The methods of how a plan can be released.
        sig { returns(T.nilable(WhopSDK::ReleaseMethod::OrSymbol)) }
        attr_accessor :release_method

        # The amount the customer is charged every billing period. Provided as a number in
        # the specified currency. Eg: 10.43 for $10.43 USD.
        sig { returns(T.nilable(Float)) }
        attr_accessor :renewal_price

        # Visibility of a resource
        sig { returns(T.nilable(WhopSDK::Visibility::OrSymbol)) }
        attr_accessor :visibility

        # Configuration for an automatically generated plan to attach to this product.
        sig do
          params(
            base_currency: T.nilable(WhopSDK::Currency::OrSymbol),
            billing_period: T.nilable(Integer),
            custom_fields:
              T.nilable(
                T::Array[
                  WhopSDK::ProductCreateParams::PlanOptions::CustomField::OrHash
                ]
              ),
            initial_price: T.nilable(Float),
            plan_type: T.nilable(WhopSDK::PlanType::OrSymbol),
            release_method: T.nilable(WhopSDK::ReleaseMethod::OrSymbol),
            renewal_price: T.nilable(Float),
            visibility: T.nilable(WhopSDK::Visibility::OrSymbol)
          ).returns(T.attached_class)
        end
        def self.new(
          # The available currencies on the platform
          base_currency: nil,
          # The interval at which the plan charges (renewal plans).
          billing_period: nil,
          # An array of custom field objects.
          custom_fields: nil,
          # An additional amount charged upon first purchase. Provided as a number in the
          # specified currency. Eg: 10.43 for $10.43 USD.
          initial_price: nil,
          # The type of plan that can be attached to a product
          plan_type: nil,
          # The methods of how a plan can be released.
          release_method: nil,
          # The amount the customer is charged every billing period. Provided as a number in
          # the specified currency. Eg: 10.43 for $10.43 USD.
          renewal_price: nil,
          # Visibility of a resource
          visibility: nil
        )
        end

        sig do
          override.returns(
            {
              base_currency: T.nilable(WhopSDK::Currency::OrSymbol),
              billing_period: T.nilable(Integer),
              custom_fields:
                T.nilable(
                  T::Array[
                    WhopSDK::ProductCreateParams::PlanOptions::CustomField
                  ]
                ),
              initial_price: T.nilable(Float),
              plan_type: T.nilable(WhopSDK::PlanType::OrSymbol),
              release_method: T.nilable(WhopSDK::ReleaseMethod::OrSymbol),
              renewal_price: T.nilable(Float),
              visibility: T.nilable(WhopSDK::Visibility::OrSymbol)
            }
          )
        end
        def to_hash
        end

        class CustomField < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::ProductCreateParams::PlanOptions::CustomField,
                WhopSDK::Internal::AnyHash
              )
            end

          # The type of the custom field.
          sig { returns(Symbol) }
          attr_accessor :field_type

          # The name of the custom field.
          sig { returns(String) }
          attr_accessor :name

          # The ID of the custom field (if being updated)
          sig { returns(T.nilable(String)) }
          attr_accessor :id

          # The order of the field.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :order

          # The placeholder value of the field.
          sig { returns(T.nilable(String)) }
          attr_accessor :placeholder

          # Whether or not the field is required.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :required

          sig do
            params(
              name: String,
              id: T.nilable(String),
              order: T.nilable(Integer),
              placeholder: T.nilable(String),
              required: T.nilable(T::Boolean),
              field_type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The name of the custom field.
            name:,
            # The ID of the custom field (if being updated)
            id: nil,
            # The order of the field.
            order: nil,
            # The placeholder value of the field.
            placeholder: nil,
            # Whether or not the field is required.
            required: nil,
            # The type of the custom field.
            field_type: :text
          )
          end

          sig do
            override.returns(
              {
                field_type: Symbol,
                name: String,
                id: T.nilable(String),
                order: T.nilable(Integer),
                placeholder: T.nilable(String),
                required: T.nilable(T::Boolean)
              }
            )
          end
          def to_hash
          end
        end
      end

      class ProductHighlight < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::ProductCreateParams::ProductHighlight,
              WhopSDK::Internal::AnyHash
            )
          end

        # Text to display to describe the product highlight (max length 250 for
        # qualification or benefits, 170 for who this is for, 140 for pricing features).
        sig { returns(String) }
        attr_accessor :content

        # The type of this highlight.
        sig do
          returns(
            WhopSDK::ProductCreateParams::ProductHighlight::HighlightType::OrSymbol
          )
        end
        attr_accessor :highlight_type

        # The title of the product highlight, if applicable.
        sig { returns(T.nilable(String)) }
        attr_accessor :title

        # Input for creating a product highlight
        sig do
          params(
            content: String,
            highlight_type:
              WhopSDK::ProductCreateParams::ProductHighlight::HighlightType::OrSymbol,
            title: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Text to display to describe the product highlight (max length 250 for
          # qualification or benefits, 170 for who this is for, 140 for pricing features).
          content:,
          # The type of this highlight.
          highlight_type:,
          # The title of the product highlight, if applicable.
          title: nil
        )
        end

        sig do
          override.returns(
            {
              content: String,
              highlight_type:
                WhopSDK::ProductCreateParams::ProductHighlight::HighlightType::OrSymbol,
              title: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # The type of this highlight.
        module HighlightType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::ProductCreateParams::ProductHighlight::HighlightType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          QUALIFICATION =
            T.let(
              :qualification,
              WhopSDK::ProductCreateParams::ProductHighlight::HighlightType::TaggedSymbol
            )
          BENEFIT =
            T.let(
              :benefit,
              WhopSDK::ProductCreateParams::ProductHighlight::HighlightType::TaggedSymbol
            )
          WHO_THIS_IS_FOR =
            T.let(
              :who_this_is_for,
              WhopSDK::ProductCreateParams::ProductHighlight::HighlightType::TaggedSymbol
            )
          PRICING_FEATURE =
            T.let(
              :pricing_feature,
              WhopSDK::ProductCreateParams::ProductHighlight::HighlightType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::ProductCreateParams::ProductHighlight::HighlightType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
