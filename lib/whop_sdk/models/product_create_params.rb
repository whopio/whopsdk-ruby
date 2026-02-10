# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Products#create
    class ProductCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The unique identifier of the company to create this product for.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute title
      #   The display name of the product. Maximum 40 characters.
      #
      #   @return [String]
      required :title, String

      # @!attribute business_type
      #   The different business types a company can be.
      #
      #   @return [Symbol, WhopSDK::Models::BusinessTypes, nil]
      optional :business_type, enum: -> { WhopSDK::BusinessTypes }, nil?: true

      # @!attribute collect_shipping_address
      #   Whether the checkout flow collects a shipping address from the customer.
      #
      #   @return [Boolean, nil]
      optional :collect_shipping_address, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute custom_cta
      #   The different types of custom CTAs that can be selected.
      #
      #   @return [Symbol, WhopSDK::Models::CustomCta, nil]
      optional :custom_cta, enum: -> { WhopSDK::CustomCta }, nil?: true

      # @!attribute custom_cta_url
      #   A URL that the call-to-action button links to instead of the default checkout
      #   flow.
      #
      #   @return [String, nil]
      optional :custom_cta_url, String, nil?: true

      # @!attribute custom_statement_descriptor
      #   A custom text label that appears on the customer's bank statement. Must be 5-22
      #   characters, contain at least one letter, and not contain <, >, \, ', or "
      #   characters.
      #
      #   @return [String, nil]
      optional :custom_statement_descriptor, String, nil?: true

      # @!attribute description
      #   A written description of the product displayed on its product page.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute experience_ids
      #   The unique identifiers of experiences to connect to this product.
      #
      #   @return [Array<String>, nil]
      optional :experience_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute global_affiliate_percentage
      #   The commission rate as a percentage that affiliates earn through the global
      #   affiliate program.
      #
      #   @return [Float, nil]
      optional :global_affiliate_percentage, Float, nil?: true

      # @!attribute global_affiliate_status
      #   The different statuses of the global affiliate program for a product.
      #
      #   @return [Symbol, WhopSDK::Models::GlobalAffiliateStatus, nil]
      optional :global_affiliate_status, enum: -> { WhopSDK::GlobalAffiliateStatus }, nil?: true

      # @!attribute headline
      #   A short marketing headline displayed prominently on the product page.
      #
      #   @return [String, nil]
      optional :headline, String, nil?: true

      # @!attribute industry_group
      #   The different industry groups a company can be in.
      #
      #   @return [Symbol, WhopSDK::Models::ProductCreateParams::IndustryGroup, nil]
      optional :industry_group, enum: -> { WhopSDK::ProductCreateParams::IndustryGroup }, nil?: true

      # @!attribute industry_type
      #   The different industry types a company can be in.
      #
      #   @return [Symbol, WhopSDK::Models::IndustryTypes, nil]
      optional :industry_type, enum: -> { WhopSDK::IndustryTypes }, nil?: true

      # @!attribute member_affiliate_percentage
      #   The commission rate as a percentage that members earn through the member
      #   affiliate program.
      #
      #   @return [Float, nil]
      optional :member_affiliate_percentage, Float, nil?: true

      # @!attribute member_affiliate_status
      #   The different statuses of the global affiliate program for a product.
      #
      #   @return [Symbol, WhopSDK::Models::GlobalAffiliateStatus, nil]
      optional :member_affiliate_status, enum: -> { WhopSDK::GlobalAffiliateStatus }, nil?: true

      # @!attribute plan_options
      #   Configuration for an automatically generated plan to attach to this product.
      #
      #   @return [WhopSDK::Models::ProductCreateParams::PlanOptions, nil]
      optional :plan_options, -> { WhopSDK::ProductCreateParams::PlanOptions }, nil?: true

      # @!attribute product_highlights
      #   Key features and benefits to display on the product page.
      #
      #   @return [Array<WhopSDK::Models::ProductCreateParams::ProductHighlight>, nil]
      optional :product_highlights,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::ProductCreateParams::ProductHighlight] },
               nil?: true

      # @!attribute product_tax_code_id
      #   The unique identifier of the tax classification code to apply to this product.
      #
      #   @return [String, nil]
      optional :product_tax_code_id, String, nil?: true

      # @!attribute redirect_purchase_url
      #   A URL to redirect the customer to after completing a purchase.
      #
      #   @return [String, nil]
      optional :redirect_purchase_url, String, nil?: true

      # @!attribute route
      #   The URL slug for the product's public link.
      #
      #   @return [String, nil]
      optional :route, String, nil?: true

      # @!attribute visibility
      #   Visibility of a resource
      #
      #   @return [Symbol, WhopSDK::Models::Visibility, nil]
      optional :visibility, enum: -> { WhopSDK::Visibility }, nil?: true

      # @!method initialize(company_id:, title:, business_type: nil, collect_shipping_address: nil, custom_cta: nil, custom_cta_url: nil, custom_statement_descriptor: nil, description: nil, experience_ids: nil, global_affiliate_percentage: nil, global_affiliate_status: nil, headline: nil, industry_group: nil, industry_type: nil, member_affiliate_percentage: nil, member_affiliate_status: nil, plan_options: nil, product_highlights: nil, product_tax_code_id: nil, redirect_purchase_url: nil, route: nil, visibility: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ProductCreateParams} for more details.
      #
      #   @param company_id [String] The unique identifier of the company to create this product for.
      #
      #   @param title [String] The display name of the product. Maximum 40 characters.
      #
      #   @param business_type [Symbol, WhopSDK::Models::BusinessTypes, nil] The different business types a company can be.
      #
      #   @param collect_shipping_address [Boolean, nil] Whether the checkout flow collects a shipping address from the customer.
      #
      #   @param custom_cta [Symbol, WhopSDK::Models::CustomCta, nil] The different types of custom CTAs that can be selected.
      #
      #   @param custom_cta_url [String, nil] A URL that the call-to-action button links to instead of the default checkout fl
      #
      #   @param custom_statement_descriptor [String, nil] A custom text label that appears on the customer's bank statement. Must be 5-22
      #
      #   @param description [String, nil] A written description of the product displayed on its product page.
      #
      #   @param experience_ids [Array<String>, nil] The unique identifiers of experiences to connect to this product.
      #
      #   @param global_affiliate_percentage [Float, nil] The commission rate as a percentage that affiliates earn through the global affi
      #
      #   @param global_affiliate_status [Symbol, WhopSDK::Models::GlobalAffiliateStatus, nil] The different statuses of the global affiliate program for a product.
      #
      #   @param headline [String, nil] A short marketing headline displayed prominently on the product page.
      #
      #   @param industry_group [Symbol, WhopSDK::Models::ProductCreateParams::IndustryGroup, nil] The different industry groups a company can be in.
      #
      #   @param industry_type [Symbol, WhopSDK::Models::IndustryTypes, nil] The different industry types a company can be in.
      #
      #   @param member_affiliate_percentage [Float, nil] The commission rate as a percentage that members earn through the member affilia
      #
      #   @param member_affiliate_status [Symbol, WhopSDK::Models::GlobalAffiliateStatus, nil] The different statuses of the global affiliate program for a product.
      #
      #   @param plan_options [WhopSDK::Models::ProductCreateParams::PlanOptions, nil] Configuration for an automatically generated plan to attach to this product.
      #
      #   @param product_highlights [Array<WhopSDK::Models::ProductCreateParams::ProductHighlight>, nil] Key features and benefits to display on the product page.
      #
      #   @param product_tax_code_id [String, nil] The unique identifier of the tax classification code to apply to this product.
      #
      #   @param redirect_purchase_url [String, nil] A URL to redirect the customer to after completing a purchase.
      #
      #   @param route [String, nil] The URL slug for the product's public link.
      #
      #   @param visibility [Symbol, WhopSDK::Models::Visibility, nil] Visibility of a resource
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The different industry groups a company can be in.
      module IndustryGroup
        extend WhopSDK::Internal::Type::Enum

        ACADEMIC_AND_TEST_PREP = :academic_and_test_prep
        ACCESSORIES = :accessories
        AI_AND_AUTOMATION_AGENCIES = :ai_and_automation_agencies
        AI_AND_AUTOMATION_SOFTWARE = :ai_and_automation_software
        ARTS_AND_CRAFTS = :arts_and_crafts
        AUTOMOTIVE = :automotive
        B2B_AND_PROFESSIONAL_MARKETPLACES = :b2b_and_professional_marketplaces
        BABY_AND_KIDS = :baby_and_kids
        BEAUTY_AND_PERSONAL_CARE = :beauty_and_personal_care
        BEAUTY_AND_WELLNESS = :beauty_and_wellness
        BUSINESS_AND_ENTREPRENEURSHIP = :business_and_entrepreneurship
        BUSINESS_AND_MONEY_GROUPS = :business_and_money_groups
        CAREER_AND_PROFESSIONAL = :career_and_professional
        CHARITY_AND_CAUSE_EVENTS = :charity_and_cause_events
        CLOTHING_AND_APPAREL = :clothing_and_apparel
        COMMUNICATION_AND_MESSAGING_SOFTWARE = :communication_and_messaging_software
        COMMUNITY_AND_EDUCATION_SOFTWARE = :community_and_education_software
        CONSULTING = :consulting
        CONTENT_AND_CLIPPING_AGENCIES = :content_and_clipping_agencies
        CREATIVE_AND_CONTENT_CREATION = :creative_and_content_creation
        CREATIVE_AND_CONTENT_GROUPS = :creative_and_content_groups
        CREATIVE_AND_EDUCATION = :creative_and_education
        CREATIVE_GIGS = :creative_gigs
        CREATIVE_SERVICES = :creative_services
        CUSTOMER_SUPPORT_AGENCIES = :customer_support_agencies
        DATING_AND_RELATIONSHIPS = :dating_and_relationships
        DELIVERY_AND_LOGISTICS = :delivery_and_logistics
        DENTAL_AND_VISION = :dental_and_vision
        DERMATOLOGY_AND_SKIN = :dermatology_and_skin
        DESIGN_AND_CREATIVE_AGENCIES = :design_and_creative_agencies
        DEVELOPER_AND_TECHNICAL_TOOLS = :developer_and_technical_tools
        DEVELOPMENT_AGENCIES = :development_agencies
        DIGITAL_AND_EDUCATION_MARKETPLACES = :digital_and_education_marketplaces
        E_COMMERCE_SOFTWARE = :e_commerce_software
        EDUCATION_AND_BUSINESS_EVENTS = :education_and_business_events
        EDUCATION_AND_CHILDCARE = :education_and_childcare
        ELECTRONICS_AND_GADGETS = :electronics_and_gadgets
        ENTERTAINMENT_AND_LEISURE = :entertainment_and_leisure
        ENTERTAINMENT_EVENTS = :entertainment_events
        FAMILY_AND_COMMUNITY_EVENTS = :family_and_community_events
        FINANCE_AND_INVESTING = :finance_and_investing
        FITNESS_AND_ATHLETICS = :fitness_and_athletics
        FITNESS_AND_HEALTH_GROUPS = :fitness_and_health_groups
        FITNESS_AND_RECREATION = :fitness_and_recreation
        FITNESS_EQUIPMENT_AND_GEAR = :fitness_equipment_and_gear
        FOOD_AND_BEVERAGE = :food_and_beverage
        FOOD_AND_BEVERAGES = :food_and_beverages
        FOOD_AND_HOSPITALITY_MARKETPLACES = :food_and_hospitality_marketplaces
        GAMING_AND_ENTERTAINMENT_SOFTWARE = :gaming_and_entertainment_software
        GAMING_GROUPS = :gaming_groups
        GENETIC_AND_SPECIALIZED = :genetic_and_specialized
        GOVERNMENT_AND_PUBLIC = :government_and_public
        HEALTH_AND_WELLNESS = :health_and_wellness
        HEALTH_AND_WELLNESS_SERVICES = :health_and_wellness_services
        HEALTHCARE = :healthcare
        HEALTHCARE_AND_WELLNESS_SOFTWARE = :healthcare_and_wellness_software
        HOBBIES_AND_LIFESTYLE = :hobbies_and_lifestyle
        HOBBY_AND_INTEREST_GROUPS = :hobby_and_interest_groups
        HOME_AND_LIVING = :home_and_living
        HOME_AND_TRADE_SERVICES = :home_and_trade_services
        HOME_AND_TRADE_STOREFRONTS = :home_and_trade_storefronts
        HOME_SERVICES_GIGS = :home_services_gigs
        HOSPITALITY_AND_LODGING = :hospitality_and_lodging
        INDUSTRY_SPECIFIC_SOFTWARE = :industry_specific_software
        LANGUAGE_AND_COMMUNICATION = :language_and_communication
        LEGAL_AND_COMPLIANCE = :legal_and_compliance
        LIFESTYLE_AND_CULTURE = :lifestyle_and_culture
        LIFESTYLE_AND_PERSONAL_GROWTH_GROUPS = :lifestyle_and_personal_growth_groups
        LIFESTYLE_AND_WELLNESS_EVENTS = :lifestyle_and_wellness_events
        LOGISTICS_AND_TRANSPORTATION_SERVICES = :logistics_and_transportation_services
        MARKETING_AGENCIES = :marketing_agencies
        MARKETING_AND_ADVERTISING = :marketing_and_advertising
        MARKETING_AND_SALES_SOFTWARE = :marketing_and_sales_software
        MENTAL_HEALTH_AND_BEHAVIORAL = :mental_health_and_behavioral
        MISCELLANEOUS = :miscellaneous
        MUSIC_AND_PERFORMING_ARTS = :music_and_performing_arts
        NEWS_AND_POLITICS = :news_and_politics
        NONPROFIT_AND_CHARITY = :nonprofit_and_charity
        OFFICE_AND_BUSINESS_SUPPLIES = :office_and_business_supplies
        OUTDOOR_AND_SPORTS = :outdoor_and_sports
        PERSONAL_DEVELOPMENT = :personal_development
        PERSONAL_FINANCE = :personal_finance
        PERSONAL_SERVICES = :personal_services
        PET_SERVICES = :pet_services
        PETS_AND_ANIMALS = :pets_and_animals
        PRIMARY_AND_GENERAL_CARE = :primary_and_general_care
        PRODUCT_MARKETPLACES = :product_marketplaces
        PRODUCTIVITY_AND_BUSINESS_OPS = :productivity_and_business_ops
        PROFESSIONAL_GIGS = :professional_gigs
        PROFESSIONAL_SERVICES = :professional_services
        PROFESSIONAL_SERVICES_STOREFRONT = :professional_services_storefront
        PUBLISHING_AND_INFO_PRODUCTS = :publishing_and_info_products
        REAL_ESTATE = :real_estate
        REAL_ESTATE_SOFTWARE = :real_estate_software
        RECRUITING_AND_STAFFING = :recruiting_and_staffing
        REHABILITATION_AND_THERAPY = :rehabilitation_and_therapy
        RENTAL_MARKETPLACES = :rental_marketplaces
        RETAIL = :retail
        SALES_AGENCIES = :sales_agencies
        SALES_AND_REVENUE = :sales_and_revenue
        SECURITY_AND_PRIVACY_SOFTWARE = :security_and_privacy_software
        SERVICE_MARKETPLACES = :service_marketplaces
        SLEEP_AND_CHRONIC_CONDITIONS = :sleep_and_chronic_conditions
        SOCIAL_AND_NETWORKING_EVENTS = :social_and_networking_events
        SPECIALIZED_GIGS = :specialized_gigs
        SPECIALTY_MEDICAL_CARE = :specialty_medical_care
        SPIRITUALITY_AND_MINDFULNESS = :spirituality_and_mindfulness
        SPIRITUALITY_AND_PERSONAL_GROWTH = :spirituality_and_personal_growth
        SPORTS_AND_FITNESS_EVENTS = :sports_and_fitness_events
        SPORTS_BETTING_AND_GAMBLING = :sports_betting_and_gambling
        SPORTS_BETTING_GROUPS = :sports_betting_groups
        SUPPLEMENTS_AND_NUTRITION = :supplements_and_nutrition
        SUSTAINABILITY_AND_ECO_PRODUCTS = :sustainability_and_eco_products
        TASK_AND_ERRANDS = :task_and_errands
        TECH_AND_AI = :tech_and_ai
        TECH_AND_DEV_GROUPS = :tech_and_dev_groups
        TECH_AND_DEVELOPMENT = :tech_and_development
        TRADING_AND_FINANCE_SOFTWARE = :trading_and_finance_software
        TRADING_AND_INVESTING = :trading_and_investing
        TRADING_AND_INVESTING_GROUPS = :trading_and_investing_groups
        TRANSPORTATION = :transportation
        VETERINARY = :veterinary
        VIDEO_GAMES_AND_ESPORTS = :video_games_and_esports
        WEIGHT_AND_METABOLIC_HEALTH = :weight_and_metabolic_health
        WELLNESS_AND_ALTERNATIVE = :wellness_and_alternative
        WOMENS_AND_MENS_HEALTH = :womens_and_mens_health

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class PlanOptions < WhopSDK::Internal::Type::BaseModel
        # @!attribute base_currency
        #   The available currencies on the platform
        #
        #   @return [Symbol, WhopSDK::Models::Currency, nil]
        optional :base_currency, enum: -> { WhopSDK::Currency }, nil?: true

        # @!attribute billing_period
        #   The interval at which the plan charges (renewal plans).
        #
        #   @return [Integer, nil]
        optional :billing_period, Integer, nil?: true

        # @!attribute custom_fields
        #   An array of custom field objects.
        #
        #   @return [Array<WhopSDK::Models::ProductCreateParams::PlanOptions::CustomField>, nil]
        optional :custom_fields,
                 -> {
                   WhopSDK::Internal::Type::ArrayOf[WhopSDK::ProductCreateParams::PlanOptions::CustomField]
                 },
                 nil?: true

        # @!attribute initial_price
        #   An additional amount charged upon first purchase. Provided as a number in the
        #   specified currency. Eg: 10.43 for $10.43 USD.
        #
        #   @return [Float, nil]
        optional :initial_price, Float, nil?: true

        # @!attribute plan_type
        #   The type of plan that can be attached to a product
        #
        #   @return [Symbol, WhopSDK::Models::PlanType, nil]
        optional :plan_type, enum: -> { WhopSDK::PlanType }, nil?: true

        # @!attribute release_method
        #   The methods of how a plan can be released.
        #
        #   @return [Symbol, WhopSDK::Models::ReleaseMethod, nil]
        optional :release_method, enum: -> { WhopSDK::ReleaseMethod }, nil?: true

        # @!attribute renewal_price
        #   The amount the customer is charged every billing period. Provided as a number in
        #   the specified currency. Eg: 10.43 for $10.43 USD.
        #
        #   @return [Float, nil]
        optional :renewal_price, Float, nil?: true

        # @!attribute visibility
        #   Visibility of a resource
        #
        #   @return [Symbol, WhopSDK::Models::Visibility, nil]
        optional :visibility, enum: -> { WhopSDK::Visibility }, nil?: true

        # @!method initialize(base_currency: nil, billing_period: nil, custom_fields: nil, initial_price: nil, plan_type: nil, release_method: nil, renewal_price: nil, visibility: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::ProductCreateParams::PlanOptions} for more details.
        #
        #   Configuration for an automatically generated plan to attach to this product.
        #
        #   @param base_currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
        #
        #   @param billing_period [Integer, nil] The interval at which the plan charges (renewal plans).
        #
        #   @param custom_fields [Array<WhopSDK::Models::ProductCreateParams::PlanOptions::CustomField>, nil] An array of custom field objects.
        #
        #   @param initial_price [Float, nil] An additional amount charged upon first purchase. Provided as a number in the sp
        #
        #   @param plan_type [Symbol, WhopSDK::Models::PlanType, nil] The type of plan that can be attached to a product
        #
        #   @param release_method [Symbol, WhopSDK::Models::ReleaseMethod, nil] The methods of how a plan can be released.
        #
        #   @param renewal_price [Float, nil] The amount the customer is charged every billing period. Provided as a number in
        #
        #   @param visibility [Symbol, WhopSDK::Models::Visibility, nil] Visibility of a resource

        class CustomField < WhopSDK::Internal::Type::BaseModel
          # @!attribute field_type
          #   The type of the custom field.
          #
          #   @return [Symbol, :text]
          required :field_type, const: :text

          # @!attribute name
          #   The name of the custom field.
          #
          #   @return [String]
          required :name, String

          # @!attribute id
          #   The ID of the custom field (if being updated)
          #
          #   @return [String, nil]
          optional :id, String, nil?: true

          # @!attribute order
          #   The order of the field.
          #
          #   @return [Integer, nil]
          optional :order, Integer, nil?: true

          # @!attribute placeholder
          #   The placeholder value of the field.
          #
          #   @return [String, nil]
          optional :placeholder, String, nil?: true

          # @!attribute required
          #   Whether or not the field is required.
          #
          #   @return [Boolean, nil]
          optional :required, WhopSDK::Internal::Type::Boolean, nil?: true

          # @!method initialize(name:, id: nil, order: nil, placeholder: nil, required: nil, field_type: :text)
          #   @param name [String] The name of the custom field.
          #
          #   @param id [String, nil] The ID of the custom field (if being updated)
          #
          #   @param order [Integer, nil] The order of the field.
          #
          #   @param placeholder [String, nil] The placeholder value of the field.
          #
          #   @param required [Boolean, nil] Whether or not the field is required.
          #
          #   @param field_type [Symbol, :text] The type of the custom field.
        end
      end

      class ProductHighlight < WhopSDK::Internal::Type::BaseModel
        # @!attribute content
        #   Text to display to describe the product highlight (max length 250 for
        #   qualification or benefits, 170 for who this is for, 140 for pricing features).
        #
        #   @return [String]
        required :content, String

        # @!attribute highlight_type
        #   The type of this highlight.
        #
        #   @return [Symbol, WhopSDK::Models::ProductCreateParams::ProductHighlight::HighlightType]
        required :highlight_type, enum: -> { WhopSDK::ProductCreateParams::ProductHighlight::HighlightType }

        # @!attribute title
        #   The title of the product highlight, if applicable.
        #
        #   @return [String, nil]
        optional :title, String, nil?: true

        # @!method initialize(content:, highlight_type:, title: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::ProductCreateParams::ProductHighlight} for more details.
        #
        #   Input for creating a product highlight
        #
        #   @param content [String] Text to display to describe the product highlight (max length 250 for qualificat
        #
        #   @param highlight_type [Symbol, WhopSDK::Models::ProductCreateParams::ProductHighlight::HighlightType] The type of this highlight.
        #
        #   @param title [String, nil] The title of the product highlight, if applicable.

        # The type of this highlight.
        #
        # @see WhopSDK::Models::ProductCreateParams::ProductHighlight#highlight_type
        module HighlightType
          extend WhopSDK::Internal::Type::Enum

          QUALIFICATION = :qualification
          BENEFIT = :benefit
          WHO_THIS_IS_FOR = :who_this_is_for
          PRICING_FEATURE = :pricing_feature

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
