# typed: strong

module WhopSDK
  module Models
    class ProductUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ProductUpdateParams, WhopSDK::Internal::AnyHash)
        end

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

      # The gallery images for the product.
      sig do
        returns(T.nilable(T::Array[WhopSDK::ProductUpdateParams::GalleryImage]))
      end
      attr_accessor :gallery_images

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
          T.nilable(WhopSDK::ProductUpdateParams::IndustryGroup::OrSymbol)
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

      # The unique identifier of the tax classification code to apply to this product.
      sig { returns(T.nilable(String)) }
      attr_accessor :product_tax_code_id

      # A URL to redirect the customer to after completing a purchase.
      sig { returns(T.nilable(String)) }
      attr_accessor :redirect_purchase_url

      # The URL slug for the product's public link.
      sig { returns(T.nilable(String)) }
      attr_accessor :route

      # Layout and display configuration for this product on the company's store page.
      sig { returns(T.nilable(WhopSDK::ProductUpdateParams::StorePageConfig)) }
      attr_reader :store_page_config

      sig do
        params(
          store_page_config:
            T.nilable(WhopSDK::ProductUpdateParams::StorePageConfig::OrHash)
        ).void
      end
      attr_writer :store_page_config

      # The display name of the product. Maximum 40 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # Visibility of a resource
      sig { returns(T.nilable(WhopSDK::Visibility::OrSymbol)) }
      attr_accessor :visibility

      sig do
        params(
          business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
          collect_shipping_address: T.nilable(T::Boolean),
          custom_cta: T.nilable(WhopSDK::CustomCta::OrSymbol),
          custom_cta_url: T.nilable(String),
          custom_statement_descriptor: T.nilable(String),
          description: T.nilable(String),
          gallery_images:
            T.nilable(
              T::Array[WhopSDK::ProductUpdateParams::GalleryImage::OrHash]
            ),
          global_affiliate_percentage: T.nilable(Float),
          global_affiliate_status:
            T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
          headline: T.nilable(String),
          industry_group:
            T.nilable(WhopSDK::ProductUpdateParams::IndustryGroup::OrSymbol),
          industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
          member_affiliate_percentage: T.nilable(Float),
          member_affiliate_status:
            T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
          product_tax_code_id: T.nilable(String),
          redirect_purchase_url: T.nilable(String),
          route: T.nilable(String),
          store_page_config:
            T.nilable(WhopSDK::ProductUpdateParams::StorePageConfig::OrHash),
          title: T.nilable(String),
          visibility: T.nilable(WhopSDK::Visibility::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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
        # The gallery images for the product.
        gallery_images: nil,
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
        # The unique identifier of the tax classification code to apply to this product.
        product_tax_code_id: nil,
        # A URL to redirect the customer to after completing a purchase.
        redirect_purchase_url: nil,
        # The URL slug for the product's public link.
        route: nil,
        # Layout and display configuration for this product on the company's store page.
        store_page_config: nil,
        # The display name of the product. Maximum 40 characters.
        title: nil,
        # Visibility of a resource
        visibility: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
            collect_shipping_address: T.nilable(T::Boolean),
            custom_cta: T.nilable(WhopSDK::CustomCta::OrSymbol),
            custom_cta_url: T.nilable(String),
            custom_statement_descriptor: T.nilable(String),
            description: T.nilable(String),
            gallery_images:
              T.nilable(T::Array[WhopSDK::ProductUpdateParams::GalleryImage]),
            global_affiliate_percentage: T.nilable(Float),
            global_affiliate_status:
              T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
            headline: T.nilable(String),
            industry_group:
              T.nilable(WhopSDK::ProductUpdateParams::IndustryGroup::OrSymbol),
            industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
            member_affiliate_percentage: T.nilable(Float),
            member_affiliate_status:
              T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
            product_tax_code_id: T.nilable(String),
            redirect_purchase_url: T.nilable(String),
            route: T.nilable(String),
            store_page_config:
              T.nilable(WhopSDK::ProductUpdateParams::StorePageConfig),
            title: T.nilable(String),
            visibility: T.nilable(WhopSDK::Visibility::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class GalleryImage < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::ProductUpdateParams::GalleryImage,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of an existing file object.
        sig { returns(String) }
        attr_accessor :id

        # Input for an attachment
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
            T.all(Symbol, WhopSDK::ProductUpdateParams::IndustryGroup)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACADEMIC_AND_TEST_PREP =
          T.let(
            :academic_and_test_prep,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        ACCESSORIES =
          T.let(
            :accessories,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        AGRICULTURE_AND_FARMING =
          T.let(
            :agriculture_and_farming,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        AI_AND_AUTOMATION_AGENCIES =
          T.let(
            :ai_and_automation_agencies,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        AI_AND_AUTOMATION_SOFTWARE =
          T.let(
            :ai_and_automation_software,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        ARTS_AND_CRAFTS =
          T.let(
            :arts_and_crafts,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        AUTOMOTIVE =
          T.let(
            :automotive,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        B2B_AND_PROFESSIONAL_MARKETPLACES =
          T.let(
            :b2b_and_professional_marketplaces,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        BABY_AND_KIDS =
          T.let(
            :baby_and_kids,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        BEAUTY_AND_PERSONAL_CARE =
          T.let(
            :beauty_and_personal_care,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        BEAUTY_AND_WELLNESS =
          T.let(
            :beauty_and_wellness,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        BUSINESS_AND_ENTREPRENEURSHIP =
          T.let(
            :business_and_entrepreneurship,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        BUSINESS_AND_MONEY_GROUPS =
          T.let(
            :business_and_money_groups,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        CAREER_AND_PROFESSIONAL =
          T.let(
            :career_and_professional,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        CHARITY_AND_CAUSE_EVENTS =
          T.let(
            :charity_and_cause_events,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        CLASS_ACTION_SETTLEMENT =
          T.let(
            :class_action_settlement,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        CLOTHING_AND_APPAREL =
          T.let(
            :clothing_and_apparel,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        COMMUNICATION_AND_MESSAGING_SOFTWARE =
          T.let(
            :communication_and_messaging_software,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        COMMUNITY_AND_EDUCATION_SOFTWARE =
          T.let(
            :community_and_education_software,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        CONSULTING =
          T.let(
            :consulting,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        CONTENT_AND_CLIPPING_AGENCIES =
          T.let(
            :content_and_clipping_agencies,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        CREATIVE_AND_CONTENT_CREATION =
          T.let(
            :creative_and_content_creation,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        CREATIVE_AND_CONTENT_GROUPS =
          T.let(
            :creative_and_content_groups,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        CREATIVE_AND_EDUCATION =
          T.let(
            :creative_and_education,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        CREATIVE_GIGS =
          T.let(
            :creative_gigs,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        CREATIVE_SERVICES =
          T.let(
            :creative_services,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        CUSTOMER_SUPPORT_AGENCIES =
          T.let(
            :customer_support_agencies,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        DATING_AND_RELATIONSHIPS =
          T.let(
            :dating_and_relationships,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        DELIVERY_AND_LOGISTICS =
          T.let(
            :delivery_and_logistics,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        DENTAL_AND_VISION =
          T.let(
            :dental_and_vision,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        DERMATOLOGY_AND_SKIN =
          T.let(
            :dermatology_and_skin,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        DESIGN_AND_CREATIVE_AGENCIES =
          T.let(
            :design_and_creative_agencies,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        DEVELOPER_AND_TECHNICAL_TOOLS =
          T.let(
            :developer_and_technical_tools,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        DEVELOPMENT_AGENCIES =
          T.let(
            :development_agencies,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        DIGITAL_AND_EDUCATION_MARKETPLACES =
          T.let(
            :digital_and_education_marketplaces,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        DIGITAL_GOODS_AND_ACCOUNTS =
          T.let(
            :digital_goods_and_accounts,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        E_COMMERCE_SOFTWARE =
          T.let(
            :e_commerce_software,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        EDUCATION_AND_BUSINESS_EVENTS =
          T.let(
            :education_and_business_events,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        EDUCATION_AND_CHILDCARE =
          T.let(
            :education_and_childcare,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        ELECTRONICS_AND_GADGETS =
          T.let(
            :electronics_and_gadgets,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        ENTERTAINMENT_AND_LEISURE =
          T.let(
            :entertainment_and_leisure,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        ENTERTAINMENT_EVENTS =
          T.let(
            :entertainment_events,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        FAMILY_AND_COMMUNITY_EVENTS =
          T.let(
            :family_and_community_events,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        FINANCE_AND_INVESTING =
          T.let(
            :finance_and_investing,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        FITNESS_AND_ATHLETICS =
          T.let(
            :fitness_and_athletics,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        FITNESS_AND_HEALTH_GROUPS =
          T.let(
            :fitness_and_health_groups,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        FITNESS_AND_RECREATION =
          T.let(
            :fitness_and_recreation,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        FITNESS_EQUIPMENT_AND_GEAR =
          T.let(
            :fitness_equipment_and_gear,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        FOOD_AND_BEVERAGE =
          T.let(
            :food_and_beverage,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        FOOD_AND_BEVERAGES =
          T.let(
            :food_and_beverages,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        FOOD_AND_HOSPITALITY_MARKETPLACES =
          T.let(
            :food_and_hospitality_marketplaces,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        FUNERAL_AND_DEATH_CARE =
          T.let(
            :funeral_and_death_care,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        GAMING_AND_ENTERTAINMENT_SOFTWARE =
          T.let(
            :gaming_and_entertainment_software,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        GAMING_GROUPS =
          T.let(
            :gaming_groups,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        GENETIC_AND_SPECIALIZED =
          T.let(
            :genetic_and_specialized,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        GOVERNMENT_AND_PUBLIC =
          T.let(
            :government_and_public,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        HEALTH_AND_WELLNESS =
          T.let(
            :health_and_wellness,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        HEALTH_AND_WELLNESS_SERVICES =
          T.let(
            :health_and_wellness_services,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        HEALTHCARE =
          T.let(
            :healthcare,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        HEALTHCARE_AND_WELLNESS_SOFTWARE =
          T.let(
            :healthcare_and_wellness_software,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        HOBBIES_AND_LIFESTYLE =
          T.let(
            :hobbies_and_lifestyle,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        HOBBY_AND_INTEREST_GROUPS =
          T.let(
            :hobby_and_interest_groups,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        HOME_AND_LIVING =
          T.let(
            :home_and_living,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        HOME_AND_TRADE_SERVICES =
          T.let(
            :home_and_trade_services,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        HOME_AND_TRADE_STOREFRONTS =
          T.let(
            :home_and_trade_storefronts,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        HOME_IMPROVEMENT_AND_TOOLS =
          T.let(
            :home_improvement_and_tools,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        HOME_SERVICES_GIGS =
          T.let(
            :home_services_gigs,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        HOSPITALITY_AND_LODGING =
          T.let(
            :hospitality_and_lodging,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        INDUSTRIAL_AND_MANUFACTURING =
          T.let(
            :industrial_and_manufacturing,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        INDUSTRY_SPECIFIC_SOFTWARE =
          T.let(
            :industry_specific_software,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        LANGUAGE_AND_COMMUNICATION =
          T.let(
            :language_and_communication,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        LEGAL_AND_COMPLIANCE =
          T.let(
            :legal_and_compliance,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        LIFESTYLE_AND_CULTURE =
          T.let(
            :lifestyle_and_culture,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        LIFESTYLE_AND_PERSONAL_GROWTH_GROUPS =
          T.let(
            :lifestyle_and_personal_growth_groups,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        LIFESTYLE_AND_WELLNESS_EVENTS =
          T.let(
            :lifestyle_and_wellness_events,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        LOGISTICS_AND_TRANSPORTATION_SERVICES =
          T.let(
            :logistics_and_transportation_services,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        MARKETING_AGENCIES =
          T.let(
            :marketing_agencies,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        MARKETING_AND_ADVERTISING =
          T.let(
            :marketing_and_advertising,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        MARKETING_AND_SALES_SOFTWARE =
          T.let(
            :marketing_and_sales_software,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        MEDIA_AND_PUBLISHING_COMPANIES =
          T.let(
            :media_and_publishing_companies,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        MENTAL_HEALTH_AND_BEHAVIORAL =
          T.let(
            :mental_health_and_behavioral,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        MISCELLANEOUS =
          T.let(
            :miscellaneous,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        MUSIC_AND_PERFORMING_ARTS =
          T.let(
            :music_and_performing_arts,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        NEWS_AND_POLITICS =
          T.let(
            :news_and_politics,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        NONPROFIT_AND_CHARITY =
          T.let(
            :nonprofit_and_charity,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        OFFICE_AND_BUSINESS_SUPPLIES =
          T.let(
            :office_and_business_supplies,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        OUTDOOR_AND_SPORTS =
          T.let(
            :outdoor_and_sports,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        PERSONAL_DEVELOPMENT =
          T.let(
            :personal_development,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        PERSONAL_FINANCE =
          T.let(
            :personal_finance,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        PERSONAL_SERVICES =
          T.let(
            :personal_services,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        PET_SERVICES =
          T.let(
            :pet_services,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        PETS_AND_ANIMALS =
          T.let(
            :pets_and_animals,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        PRIMARY_AND_GENERAL_CARE =
          T.let(
            :primary_and_general_care,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        PRODUCT_MARKETPLACES =
          T.let(
            :product_marketplaces,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        PRODUCTIVITY_AND_BUSINESS_OPS =
          T.let(
            :productivity_and_business_ops,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        PROFESSIONAL_GIGS =
          T.let(
            :professional_gigs,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        PROFESSIONAL_SERVICES =
          T.let(
            :professional_services,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        PROFESSIONAL_SERVICES_STOREFRONT =
          T.let(
            :professional_services_storefront,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        PUBLISHING_AND_INFO_PRODUCTS =
          T.let(
            :publishing_and_info_products,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        REAL_ESTATE =
          T.let(
            :real_estate,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        REAL_ESTATE_SOFTWARE =
          T.let(
            :real_estate_software,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        RECRUITING_AND_STAFFING =
          T.let(
            :recruiting_and_staffing,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        REHABILITATION_AND_THERAPY =
          T.let(
            :rehabilitation_and_therapy,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        RENTAL_MARKETPLACES =
          T.let(
            :rental_marketplaces,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        RETAIL =
          T.let(
            :retail,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        SALES_AGENCIES =
          T.let(
            :sales_agencies,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        SALES_AND_REVENUE =
          T.let(
            :sales_and_revenue,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        SECURITY_AND_INVESTIGATIONS =
          T.let(
            :security_and_investigations,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        SECURITY_AND_PRIVACY_SOFTWARE =
          T.let(
            :security_and_privacy_software,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        SERVICE_MARKETPLACES =
          T.let(
            :service_marketplaces,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        SLEEP_AND_CHRONIC_CONDITIONS =
          T.let(
            :sleep_and_chronic_conditions,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        SOCIAL_AND_NETWORKING_EVENTS =
          T.let(
            :social_and_networking_events,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        SPECIALIZED_GIGS =
          T.let(
            :specialized_gigs,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        SPECIALTY_MEDICAL_CARE =
          T.let(
            :specialty_medical_care,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        SPIRITUALITY_AND_MINDFULNESS =
          T.let(
            :spirituality_and_mindfulness,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        SPIRITUALITY_AND_PERSONAL_GROWTH =
          T.let(
            :spirituality_and_personal_growth,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        SPORTS_AND_FITNESS_EVENTS =
          T.let(
            :sports_and_fitness_events,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        SPORTS_BETTING_AND_GAMBLING =
          T.let(
            :sports_betting_and_gambling,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        SPORTS_BETTING_GROUPS =
          T.let(
            :sports_betting_groups,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        SUPPLEMENTS_AND_NUTRITION =
          T.let(
            :supplements_and_nutrition,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        SUSTAINABILITY_AND_ECO_PRODUCTS =
          T.let(
            :sustainability_and_eco_products,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        TASK_AND_ERRANDS =
          T.let(
            :task_and_errands,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        TECH_AND_AI =
          T.let(
            :tech_and_ai,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        TECH_AND_DEV_GROUPS =
          T.let(
            :tech_and_dev_groups,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        TECH_AND_DEVELOPMENT =
          T.let(
            :tech_and_development,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        TRADING_AND_FINANCE_SOFTWARE =
          T.let(
            :trading_and_finance_software,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        TRADING_AND_INVESTING =
          T.let(
            :trading_and_investing,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        TRADING_AND_INVESTING_GROUPS =
          T.let(
            :trading_and_investing_groups,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        TRANSPORTATION =
          T.let(
            :transportation,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        VETERINARY =
          T.let(
            :veterinary,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        VIDEO_GAMES_AND_ESPORTS =
          T.let(
            :video_games_and_esports,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        WEIGHT_AND_METABOLIC_HEALTH =
          T.let(
            :weight_and_metabolic_health,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        WELLNESS_AND_ALTERNATIVE =
          T.let(
            :wellness_and_alternative,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )
        WOMENS_AND_MENS_HEALTH =
          T.let(
            :womens_and_mens_health,
            WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::ProductUpdateParams::IndustryGroup::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class StorePageConfig < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::ProductUpdateParams::StorePageConfig,
              WhopSDK::Internal::AnyHash
            )
          end

        # Custom call-to-action text for the product's store page.
        sig { returns(T.nilable(String)) }
        attr_accessor :custom_cta

        # Whether or not to show the price on the product's store page.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :show_price

        # Layout and display configuration for this product on the company's store page.
        sig do
          params(
            custom_cta: T.nilable(String),
            show_price: T.nilable(T::Boolean)
          ).returns(T.attached_class)
        end
        def self.new(
          # Custom call-to-action text for the product's store page.
          custom_cta: nil,
          # Whether or not to show the price on the product's store page.
          show_price: nil
        )
        end

        sig do
          override.returns(
            { custom_cta: T.nilable(String), show_price: T.nilable(T::Boolean) }
          )
        end
        def to_hash
        end
      end
    end
  end
end
