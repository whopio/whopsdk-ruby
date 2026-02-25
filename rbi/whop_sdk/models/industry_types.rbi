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
      FOREX_TRADING =
        T.let(:forex_trading, WhopSDK::IndustryTypes::TaggedSymbol)
      STOCK_TRADING =
        T.let(:stock_trading, WhopSDK::IndustryTypes::TaggedSymbol)
      OPTIONS_TRADING =
        T.let(:options_trading, WhopSDK::IndustryTypes::TaggedSymbol)
      CRYPTO_TRADING =
        T.let(:crypto_trading, WhopSDK::IndustryTypes::TaggedSymbol)
      FUTURES_TRADING =
        T.let(:futures_trading, WhopSDK::IndustryTypes::TaggedSymbol)
      DAY_TRADING = T.let(:day_trading, WhopSDK::IndustryTypes::TaggedSymbol)
      SWING_TRADING =
        T.let(:swing_trading, WhopSDK::IndustryTypes::TaggedSymbol)
      ALGORITHMIC_TRADING =
        T.let(:algorithmic_trading, WhopSDK::IndustryTypes::TaggedSymbol)
      PROP_FIRM_TRADING =
        T.let(:prop_firm_trading, WhopSDK::IndustryTypes::TaggedSymbol)
      VALUE_INVESTING =
        T.let(:value_investing, WhopSDK::IndustryTypes::TaggedSymbol)
      REAL_ESTATE_INVESTING =
        T.let(:real_estate_investing, WhopSDK::IndustryTypes::TaggedSymbol)
      ALTERNATIVE_INVESTMENTS =
        T.let(:alternative_investments, WhopSDK::IndustryTypes::TaggedSymbol)
      PENNY_STOCK_TRADING =
        T.let(:penny_stock_trading, WhopSDK::IndustryTypes::TaggedSymbol)
      DIVIDEND_INVESTING =
        T.let(:dividend_investing, WhopSDK::IndustryTypes::TaggedSymbol)
      INDEX_FUND_INVESTING =
        T.let(:index_fund_investing, WhopSDK::IndustryTypes::TaggedSymbol)
      GOLD_PRECIOUS_METALS =
        T.let(:gold_precious_metals, WhopSDK::IndustryTypes::TaggedSymbol)
      VENTURE_CAPITAL_EDUCATION =
        T.let(:venture_capital_education, WhopSDK::IndustryTypes::TaggedSymbol)
      PRIVATE_EQUITY_EDUCATION =
        T.let(:private_equity_education, WhopSDK::IndustryTypes::TaggedSymbol)
      TECHNICAL_ANALYSIS =
        T.let(:technical_analysis, WhopSDK::IndustryTypes::TaggedSymbol)
      FOREX_SCALPING =
        T.let(:forex_scalping, WhopSDK::IndustryTypes::TaggedSymbol)
      ICT_SMC_TRADING =
        T.let(:ict_smc_trading, WhopSDK::IndustryTypes::TaggedSymbol)
      PERSONALIZED_INVESTMENT_ADVICE =
        T.let(
          :personalized_investment_advice,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      SPORTS_BETTING_PICKS =
        T.let(:sports_betting_picks, WhopSDK::IndustryTypes::TaggedSymbol)
      FANTASY_SPORTS =
        T.let(:fantasy_sports, WhopSDK::IndustryTypes::TaggedSymbol)
      HORSE_RACING = T.let(:horse_racing, WhopSDK::IndustryTypes::TaggedSymbol)
      POKER_COACHING =
        T.let(:poker_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      ESPORTS_BETTING =
        T.let(:esports_betting, WhopSDK::IndustryTypes::TaggedSymbol)
      SPORTS_ANALYTICS =
        T.let(:sports_analytics, WhopSDK::IndustryTypes::TaggedSymbol)
      NFL_BETTING = T.let(:nfl_betting, WhopSDK::IndustryTypes::TaggedSymbol)
      NBA_BETTING = T.let(:nba_betting, WhopSDK::IndustryTypes::TaggedSymbol)
      MLB_BETTING = T.let(:mlb_betting, WhopSDK::IndustryTypes::TaggedSymbol)
      SOCCER_BETTING =
        T.let(:soccer_betting, WhopSDK::IndustryTypes::TaggedSymbol)
      MMA_UFC_BETTING =
        T.let(:mma_ufc_betting, WhopSDK::IndustryTypes::TaggedSymbol)
      BODYBUILDING_COACHING =
        T.let(:bodybuilding_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      STRENGTH_TRAINING =
        T.let(:strength_training, WhopSDK::IndustryTypes::TaggedSymbol)
      WEIGHT_LOSS_COACHING =
        T.let(:weight_loss_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      ATHLETIC_PERFORMANCE =
        T.let(:athletic_performance, WhopSDK::IndustryTypes::TaggedSymbol)
      YOGA_INSTRUCTION =
        T.let(:yoga_instruction, WhopSDK::IndustryTypes::TaggedSymbol)
      MARTIAL_ARTS_INSTRUCTION =
        T.let(:martial_arts_instruction, WhopSDK::IndustryTypes::TaggedSymbol)
      RUNNING_COACHING =
        T.let(:running_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      CALISTHENICS = T.let(:calisthenics, WhopSDK::IndustryTypes::TaggedSymbol)
      FLEXIBILITY_MOBILITY =
        T.let(:flexibility_mobility, WhopSDK::IndustryTypes::TaggedSymbol)
      NUTRITION_COACHING =
        T.let(:nutrition_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      SWIMMING_COACHING =
        T.let(:swimming_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      CYCLING_COACHING =
        T.let(:cycling_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      BOXING_COACHING =
        T.let(:boxing_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      MMA_COACHING = T.let(:mma_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      JIU_JITSU_COACHING =
        T.let(:jiu_jitsu_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      WRESTLING_COACHING =
        T.let(:wrestling_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      GYMNASTICS_COACHING =
        T.let(:gymnastics_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      PILATES_INSTRUCTION =
        T.let(:pilates_instruction, WhopSDK::IndustryTypes::TaggedSymbol)
      SPORTS_NUTRITION =
        T.let(:sports_nutrition, WhopSDK::IndustryTypes::TaggedSymbol)
      BODY_RECOMPOSITION =
        T.let(:body_recomposition, WhopSDK::IndustryTypes::TaggedSymbol)
      GOLF_COACHING =
        T.let(:golf_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      TENNIS_COACHING =
        T.let(:tennis_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      BASKETBALL_TRAINING =
        T.let(:basketball_training, WhopSDK::IndustryTypes::TaggedSymbol)
      SOCCER_TRAINING =
        T.let(:soccer_training, WhopSDK::IndustryTypes::TaggedSymbol)
      RACKET_SPORTS_COACHING =
        T.let(:racket_sports_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      MENTAL_HEALTH_COACHING =
        T.let(:mental_health_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      LIFE_COACHING =
        T.let(:life_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      BIOHACKING = T.let(:biohacking, WhopSDK::IndustryTypes::TaggedSymbol)
      HOLISTIC_HEALTH =
        T.let(:holistic_health, WhopSDK::IndustryTypes::TaggedSymbol)
      ADDICTION_RECOVERY_COACHING =
        T.let(
          :addiction_recovery_coaching,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      BREATHWORK = T.let(:breathwork, WhopSDK::IndustryTypes::TaggedSymbol)
      MEDITATION_MINDFULNESS =
        T.let(:meditation_mindfulness, WhopSDK::IndustryTypes::TaggedSymbol)
      GUT_HEALTH_COACHING =
        T.let(:gut_health_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      LONGEVITY_COACHING =
        T.let(:longevity_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      WOMENS_HEALTH_COACHING =
        T.let(:womens_health_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      MENS_HEALTH_COACHING =
        T.let(:mens_health_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      FERTILITY_WELLNESS =
        T.let(:fertility_wellness, WhopSDK::IndustryTypes::TaggedSymbol)
      STRESS_MANAGEMENT =
        T.let(:stress_management, WhopSDK::IndustryTypes::TaggedSymbol)
      GRIEF_COACHING =
        T.let(:grief_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      TRAUMA_RECOVERY_COACHING =
        T.let(:trauma_recovery_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      ADHD_COACHING =
        T.let(:adhd_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      BIOMARKER_HEALTH_COACHING =
        T.let(:biomarker_health_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      FITNESS_NEWSLETTER =
        T.let(:fitness_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      MENTAL_HEALTH_NEWSLETTER =
        T.let(:mental_health_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      LONGEVITY_NEWSLETTER =
        T.let(:longevity_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      MEDICAL_NEWSLETTER =
        T.let(:medical_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      BIOHACKING_NEWSLETTER =
        T.let(:biohacking_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      WOMENS_HEALTH_NEWSLETTER =
        T.let(:womens_health_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      MENS_HEALTH_NEWSLETTER =
        T.let(:mens_health_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      PHARMA_BIOTECH_NEWSLETTER =
        T.let(:pharma_biotech_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      ECOMMERCE_EDUCATION =
        T.let(:ecommerce_education, WhopSDK::IndustryTypes::TaggedSymbol)
      AMAZON_FBA_COACHING =
        T.let(:amazon_fba_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      DROPSHIPPING_COACHING =
        T.let(:dropshipping_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      PRINT_ON_DEMAND_COACHING =
        T.let(:print_on_demand_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      RETAIL_ARBITRAGE =
        T.let(:retail_arbitrage, WhopSDK::IndustryTypes::TaggedSymbol)
      WHOLESALE_COACHING =
        T.let(:wholesale_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      STARTUP_COACHING =
        T.let(:startup_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      BUSINESS_STRATEGY =
        T.let(:business_strategy, WhopSDK::IndustryTypes::TaggedSymbol)
      AGENCY_BUILDING =
        T.let(:agency_building, WhopSDK::IndustryTypes::TaggedSymbol)
      SMMA_COACHING =
        T.let(:smma_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      CONSULTING_BUSINESS =
        T.let(:consulting_business, WhopSDK::IndustryTypes::TaggedSymbol)
      SAAS_ENTREPRENEURSHIP =
        T.let(:saas_entrepreneurship, WhopSDK::IndustryTypes::TaggedSymbol)
      LOCAL_BUSINESS_COACHING =
        T.let(:local_business_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      CLEANING_BUSINESS_COACHING =
        T.let(:cleaning_business_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      TRUCKING_BUSINESS_COACHING =
        T.let(:trucking_business_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      VENDING_MACHINE_BUSINESS =
        T.let(:vending_machine_business, WhopSDK::IndustryTypes::TaggedSymbol)
      ATM_BUSINESS_COACHING =
        T.let(:atm_business_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      CAR_WASH_BUSINESS =
        T.let(:car_wash_business, WhopSDK::IndustryTypes::TaggedSymbol)
      AIRBNB_BUSINESS_COACHING =
        T.let(:airbnb_business_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      PRIVATE_LABEL_COACHING =
        T.let(:private_label_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      ETSY_COACHING =
        T.let(:etsy_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      MERCH_BUSINESS_COACHING =
        T.let(:merch_business_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      LICENSING_BUSINESS =
        T.let(:licensing_business, WhopSDK::IndustryTypes::TaggedSymbol)
      BUSINESS_ACQUISITION =
        T.let(:business_acquisition, WhopSDK::IndustryTypes::TaggedSymbol)
      WOMEN_ENTREPRENEURSHIP =
        T.let(:women_entrepreneurship, WhopSDK::IndustryTypes::TaggedSymbol)
      AFFILIATE_MARKETING_EDUCATION =
        T.let(
          :affiliate_marketing_education,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      COACHING_BUSINESS_COACHING =
        T.let(:coaching_business_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      STARTUP_NEWSLETTER =
        T.let(:startup_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      ECOMMERCE_NEWSLETTER =
        T.let(:ecommerce_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      MARKETING_NEWSLETTER =
        T.let(:marketing_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      SALES_NEWSLETTER =
        T.let(:sales_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      SMALL_BUSINESS_NEWSLETTER =
        T.let(:small_business_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      LEADERSHIP_NEWSLETTER =
        T.let(:leadership_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      AGENCY_NEWSLETTER =
        T.let(:agency_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      SAAS_NEWSLETTER =
        T.let(:saas_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      HR_PEOPLE_NEWSLETTER =
        T.let(:hr_people_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      LEGAL_BUSINESS_NEWSLETTER =
        T.let(:legal_business_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      REAL_ESTATE_BUSINESS_NEWSLETTER =
        T.let(
          :real_estate_business_newsletter,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      SOLOPRENEUR_NEWSLETTER =
        T.let(:solopreneur_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      HIGH_TICKET_SALES =
        T.let(:high_ticket_sales, WhopSDK::IndustryTypes::TaggedSymbol)
      B2B_SALES_COACHING =
        T.let(:b2b_sales_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      DOOR_TO_DOOR_SALES =
        T.let(:door_to_door_sales, WhopSDK::IndustryTypes::TaggedSymbol)
      SALES_FUNNEL_COACHING =
        T.let(:sales_funnel_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      APPOINTMENT_SETTING_COACHING =
        T.let(
          :appointment_setting_coaching,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      INSURANCE_SALES_COACHING =
        T.let(:insurance_sales_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      CAR_SALES_COACHING =
        T.let(:car_sales_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      RETAIL_SALES_COACHING =
        T.let(:retail_sales_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      SOLAR_SALES_COACHING =
        T.let(:solar_sales_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      FACEBOOK_ADS = T.let(:facebook_ads, WhopSDK::IndustryTypes::TaggedSymbol)
      GOOGLE_ADS = T.let(:google_ads, WhopSDK::IndustryTypes::TaggedSymbol)
      TIKTOK_MARKETING =
        T.let(:tiktok_marketing, WhopSDK::IndustryTypes::TaggedSymbol)
      YOUTUBE_MARKETING =
        T.let(:youtube_marketing, WhopSDK::IndustryTypes::TaggedSymbol)
      INSTAGRAM_GROWTH =
        T.let(:instagram_growth, WhopSDK::IndustryTypes::TaggedSymbol)
      SEO_COACHING = T.let(:seo_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      EMAIL_MARKETING_COACHING =
        T.let(:email_marketing_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      COPYWRITING_COACHING =
        T.let(:copywriting_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      AFFILIATE_MARKETING =
        T.let(:affiliate_marketing, WhopSDK::IndustryTypes::TaggedSymbol)
      LOCAL_SEO = T.let(:local_seo, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_MARKETING = T.let(:ai_marketing, WhopSDK::IndustryTypes::TaggedSymbol)
      WEBINAR_MARKETING =
        T.let(:webinar_marketing, WhopSDK::IndustryTypes::TaggedSymbol)
      EVENT_MARKETING =
        T.let(:event_marketing, WhopSDK::IndustryTypes::TaggedSymbol)
      SAAS_MARKETING_COACHING =
        T.let(:saas_marketing_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      DIGITAL_MARKETING =
        T.let(:digital_marketing, WhopSDK::IndustryTypes::TaggedSymbol)
      VIDEO_EDITING_EDUCATION =
        T.let(:video_editing_education, WhopSDK::IndustryTypes::TaggedSymbol)
      PHOTOGRAPHY_COACHING =
        T.let(:photography_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      MUSIC_PRODUCTION =
        T.let(:music_production, WhopSDK::IndustryTypes::TaggedSymbol)
      UI_UX_DESIGN_EDUCATION =
        T.let(:ui_ux_design_education, WhopSDK::IndustryTypes::TaggedSymbol)
      CLIPPING_EDUCATION =
        T.let(:clipping_education, WhopSDK::IndustryTypes::TaggedSymbol)
      UGC_CREATION = T.let(:ugc_creation, WhopSDK::IndustryTypes::TaggedSymbol)
      INDUSTRY_TYPES_3D_MODELING_EDUCATION =
        T.let(:"3d_modeling_education", WhopSDK::IndustryTypes::TaggedSymbol)
      DJ_EDUCATION = T.let(:dj_education, WhopSDK::IndustryTypes::TaggedSymbol)
      YOUTUBE_AUTOMATION =
        T.let(:youtube_automation, WhopSDK::IndustryTypes::TaggedSymbol)
      BLOG_MONETIZATION =
        T.let(:blog_monetization, WhopSDK::IndustryTypes::TaggedSymbol)
      WEDDING_PHOTOGRAPHY_EDUCATION =
        T.let(
          :wedding_photography_education,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      CALLIGRAPHY_LETTERING =
        T.let(:calligraphy_lettering, WhopSDK::IndustryTypes::TaggedSymbol)
      ILLUSTRATION_EDUCATION =
        T.let(:illustration_education, WhopSDK::IndustryTypes::TaggedSymbol)
      FASHION_DESIGN_EDUCATION =
        T.let(:fashion_design_education, WhopSDK::IndustryTypes::TaggedSymbol)
      INTERIOR_DESIGN_EDUCATION =
        T.let(:interior_design_education, WhopSDK::IndustryTypes::TaggedSymbol)
      INFLUENCER_EDUCATION =
        T.let(:influencer_education, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_CONTENT_CREATOR_EDUCATION =
        T.let(
          :ai_content_creator_education,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      WEB_DEVELOPMENT_EDUCATION =
        T.let(:web_development_education, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_ML_EDUCATION =
        T.let(:ai_ml_education, WhopSDK::IndustryTypes::TaggedSymbol)
      DATA_SCIENCE_EDUCATION =
        T.let(:data_science_education, WhopSDK::IndustryTypes::TaggedSymbol)
      CYBERSECURITY_EDUCATION =
        T.let(:cybersecurity_education, WhopSDK::IndustryTypes::TaggedSymbol)
      CLOUD_COMPUTING_EDUCATION =
        T.let(:cloud_computing_education, WhopSDK::IndustryTypes::TaggedSymbol)
      BLOCKCHAIN_EDUCATION =
        T.let(:blockchain_education, WhopSDK::IndustryTypes::TaggedSymbol)
      NO_CODE_EDUCATION =
        T.let(:no_code_education, WhopSDK::IndustryTypes::TaggedSymbol)
      AUTOMATION_EDUCATION =
        T.let(:automation_education, WhopSDK::IndustryTypes::TaggedSymbol)
      GAME_DEVELOPMENT_EDUCATION =
        T.let(:game_development_education, WhopSDK::IndustryTypes::TaggedSymbol)
      PROMPT_ENGINEERING =
        T.let(:prompt_engineering, WhopSDK::IndustryTypes::TaggedSymbol)
      PYTHON_PROGRAMMING =
        T.let(:python_programming, WhopSDK::IndustryTypes::TaggedSymbol)
      JAVASCRIPT_PROGRAMMING =
        T.let(:javascript_programming, WhopSDK::IndustryTypes::TaggedSymbol)
      REACT_DEVELOPMENT =
        T.let(:react_development, WhopSDK::IndustryTypes::TaggedSymbol)
      DATABASE_ENGINEERING =
        T.let(:database_engineering, WhopSDK::IndustryTypes::TaggedSymbol)
      AWS_CERTIFICATION =
        T.let(:aws_certification, WhopSDK::IndustryTypes::TaggedSymbol)
      DATA_ENGINEERING =
        T.let(:data_engineering, WhopSDK::IndustryTypes::TaggedSymbol)
      ROBOTICS_EDUCATION =
        T.let(:robotics_education, WhopSDK::IndustryTypes::TaggedSymbol)
      VR_AR_DEVELOPMENT =
        T.let(:vr_ar_development, WhopSDK::IndustryTypes::TaggedSymbol)
      LINUX_SYSADMIN =
        T.let(:linux_sysadmin, WhopSDK::IndustryTypes::TaggedSymbol)
      WORDPRESS_DEVELOPMENT =
        T.let(:wordpress_development, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_AGENT_BUILDING =
        T.let(:ai_agent_building, WhopSDK::IndustryTypes::TaggedSymbol)
      REAL_ESTATE_WHOLESALING =
        T.let(:real_estate_wholesaling, WhopSDK::IndustryTypes::TaggedSymbol)
      HOUSE_FLIPPING =
        T.let(:house_flipping, WhopSDK::IndustryTypes::TaggedSymbol)
      PROPERTY_DEVELOPMENT =
        T.let(:property_development, WhopSDK::IndustryTypes::TaggedSymbol)
      RENTAL_PROPERTY =
        T.let(:rental_property, WhopSDK::IndustryTypes::TaggedSymbol)
      AIRBNB_STR = T.let(:airbnb_str, WhopSDK::IndustryTypes::TaggedSymbol)
      COMMERCIAL_REAL_ESTATE =
        T.let(:commercial_real_estate, WhopSDK::IndustryTypes::TaggedSymbol)
      LAND_INVESTING =
        T.let(:land_investing, WhopSDK::IndustryTypes::TaggedSymbol)
      SECTION_8_HOUSING =
        T.let(:section_8_housing, WhopSDK::IndustryTypes::TaggedSymbol)
      MOBILE_HOME_INVESTING =
        T.let(:mobile_home_investing, WhopSDK::IndustryTypes::TaggedSymbol)
      MULTIFAMILY_INVESTING =
        T.let(:multifamily_investing, WhopSDK::IndustryTypes::TaggedSymbol)
      SELF_STORAGE_INVESTING =
        T.let(:self_storage_investing, WhopSDK::IndustryTypes::TaggedSymbol)
      PROPERTY_MANAGEMENT_EDUCATION =
        T.let(
          :property_management_education,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      VACATION_RENTAL_MANAGEMENT =
        T.let(:vacation_rental_management, WhopSDK::IndustryTypes::TaggedSymbol)
      CREDIT_REPAIR_EDUCATION =
        T.let(:credit_repair_education, WhopSDK::IndustryTypes::TaggedSymbol)
      BUDGETING_COACHING =
        T.let(:budgeting_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      TAX_STRATEGY_EDUCATION =
        T.let(:tax_strategy_education, WhopSDK::IndustryTypes::TaggedSymbol)
      WEALTH_BUILDING =
        T.let(:wealth_building, WhopSDK::IndustryTypes::TaggedSymbol)
      STUDENT_LOAN_STRATEGY =
        T.let(:student_loan_strategy, WhopSDK::IndustryTypes::TaggedSymbol)
      CREDIT_CARD_OPTIMIZATION =
        T.let(:credit_card_optimization, WhopSDK::IndustryTypes::TaggedSymbol)
      CAREER_COACHING =
        T.let(:career_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      EXECUTIVE_COACHING =
        T.let(:executive_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      MANAGEMENT_COACHING =
        T.let(:management_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      TECH_CAREER_COACHING =
        T.let(:tech_career_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      MEDICAL_CAREER_COACHING =
        T.let(:medical_career_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      TRADE_SKILLS_EDUCATION =
        T.let(:trade_skills_education, WhopSDK::IndustryTypes::TaggedSymbol)
      VA_TRAINING = T.let(:va_training, WhopSDK::IndustryTypes::TaggedSymbol)
      BOOKKEEPING_EDUCATION =
        T.let(:bookkeeping_education, WhopSDK::IndustryTypes::TaggedSymbol)
      DATA_CAREER_COACHING =
        T.let(:data_career_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      CYBERSECURITY_CAREER =
        T.let(:cybersecurity_career, WhopSDK::IndustryTypes::TaggedSymbol)
      CONSULTING_CAREER =
        T.let(:consulting_career, WhopSDK::IndustryTypes::TaggedSymbol)
      INVESTMENT_BANKING_CAREER =
        T.let(:investment_banking_career, WhopSDK::IndustryTypes::TaggedSymbol)
      LAW_CAREER_COACHING =
        T.let(:law_career_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      NURSING_CAREER_COACHING =
        T.let(:nursing_career_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      TEACHING_CAREER_COACHING =
        T.let(:teaching_career_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      PERSONAL_BRANDING_CAREER =
        T.let(:personal_branding_career, WhopSDK::IndustryTypes::TaggedSymbol)
      MENS_DATING_COACHING =
        T.let(:mens_dating_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      WOMENS_DATING_COACHING =
        T.let(:womens_dating_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      RELATIONSHIP_COACHING =
        T.let(:relationship_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      MARRIAGE_COACHING =
        T.let(:marriage_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      COMMUNICATION_COACHING =
        T.let(:communication_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      MASCULINITY_COACHING =
        T.let(:masculinity_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      FEMININITY_COACHING =
        T.let(:femininity_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      BREAKUP_RECOVERY =
        T.let(:breakup_recovery, WhopSDK::IndustryTypes::TaggedSymbol)
      MANIFESTATION_COACHING =
        T.let(:manifestation_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      ASTROLOGY_COACHING =
        T.let(:astrology_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      ENERGY_HEALING =
        T.let(:energy_healing, WhopSDK::IndustryTypes::TaggedSymbol)
      SPIRITUAL_COACHING =
        T.let(:spiritual_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      FAITH_BASED_COACHING =
        T.let(:faith_based_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      PSYCHIC_DEVELOPMENT =
        T.let(:psychic_development, WhopSDK::IndustryTypes::TaggedSymbol)
      NUMEROLOGY_COACHING =
        T.let(:numerology_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      CHAKRA_HEALING =
        T.let(:chakra_healing, WhopSDK::IndustryTypes::TaggedSymbol)
      SHAMANIC_HEALING =
        T.let(:shamanic_healing, WhopSDK::IndustryTypes::TaggedSymbol)
      BIBLICAL_COACHING =
        T.let(:biblical_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      ISLAMIC_COACHING =
        T.let(:islamic_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      PRODUCTIVITY_COACHING =
        T.let(:productivity_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      PUBLIC_SPEAKING_COACHING =
        T.let(:public_speaking_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      MINDSET_COACHING =
        T.let(:mindset_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      STOICISM_PHILOSOPHY =
        T.let(:stoicism_philosophy, WhopSDK::IndustryTypes::TaggedSymbol)
      MENS_SELF_IMPROVEMENT =
        T.let(:mens_self_improvement, WhopSDK::IndustryTypes::TaggedSymbol)
      WOMENS_SELF_IMPROVEMENT =
        T.let(:womens_self_improvement, WhopSDK::IndustryTypes::TaggedSymbol)
      LEADERSHIP_DEVELOPMENT =
        T.let(:leadership_development, WhopSDK::IndustryTypes::TaggedSymbol)
      ANGER_MANAGEMENT =
        T.let(:anger_management, WhopSDK::IndustryTypes::TaggedSymbol)
      NEUROLINGUISTIC_PROGRAMMING =
        T.let(
          :neurolinguistic_programming,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      APPEARANCE_AND_GROOMING_COACHING =
        T.let(
          :appearance_and_grooming_coaching,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      AMAZON_KDP = T.let(:amazon_kdp, WhopSDK::IndustryTypes::TaggedSymbol)
      SELF_PUBLISHING =
        T.let(:self_publishing, WhopSDK::IndustryTypes::TaggedSymbol)
      AUDIOBOOK_PUBLISHING =
        T.let(:audiobook_publishing, WhopSDK::IndustryTypes::TaggedSymbol)
      COURSE_CREATION =
        T.let(:course_creation, WhopSDK::IndustryTypes::TaggedSymbol)
      DIGITAL_PRODUCT_CREATION =
        T.let(:digital_product_creation, WhopSDK::IndustryTypes::TaggedSymbol)
      GHOSTWRITING_BUSINESS =
        T.let(:ghostwriting_business, WhopSDK::IndustryTypes::TaggedSymbol)
      TEMPLATE_CREATION =
        T.let(:template_creation, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_BOOK_PUBLISHING =
        T.let(:ai_book_publishing, WhopSDK::IndustryTypes::TaggedSymbol)
      LANGUAGE_LEARNING =
        T.let(:language_learning, WhopSDK::IndustryTypes::TaggedSymbol)
      TUTORING = T.let(:tutoring, WhopSDK::IndustryTypes::TaggedSymbol)
      COLLEGE_ADMISSIONS_COACHING =
        T.let(
          :college_admissions_coaching,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      CPA_EXAM_PREP =
        T.let(:cpa_exam_prep, WhopSDK::IndustryTypes::TaggedSymbol)
      BAR_EXAM_PREP =
        T.let(:bar_exam_prep, WhopSDK::IndustryTypes::TaggedSymbol)
      REAL_ESTATE_EXAM_PREP =
        T.let(:real_estate_exam_prep, WhopSDK::IndustryTypes::TaggedSymbol)
      MEDICAL_BOARD_PREP =
        T.let(:medical_board_prep, WhopSDK::IndustryTypes::TaggedSymbol)
      PMP_CERTIFICATION_PREP =
        T.let(:pmp_certification_prep, WhopSDK::IndustryTypes::TaggedSymbol)
      AWS_CERTIFICATION_PREP =
        T.let(:aws_certification_prep, WhopSDK::IndustryTypes::TaggedSymbol)
      COMPTIA_CERTIFICATION =
        T.let(:comptia_certification, WhopSDK::IndustryTypes::TaggedSymbol)
      AP_EXAM_PREP = T.let(:ap_exam_prep, WhopSDK::IndustryTypes::TaggedSymbol)
      GRADUATE_SCHOOL_PREP =
        T.let(:graduate_school_prep, WhopSDK::IndustryTypes::TaggedSymbol)
      SCHOLARSHIP_COACHING =
        T.let(:scholarship_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      HOMESCHOOL_EDUCATION =
        T.let(:homeschool_education, WhopSDK::IndustryTypes::TaggedSymbol)
      STEM_EDUCATION =
        T.let(:stem_education, WhopSDK::IndustryTypes::TaggedSymbol)
      FINANCIAL_CERTIFICATION =
        T.let(:financial_certification, WhopSDK::IndustryTypes::TaggedSymbol)
      CODING_BOOTCAMP_PREP =
        T.let(:coding_bootcamp_prep, WhopSDK::IndustryTypes::TaggedSymbol)
      COOKING_CULINARY =
        T.let(:cooking_culinary, WhopSDK::IndustryTypes::TaggedSymbol)
      TRAVEL_COACHING =
        T.let(:travel_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      PARENTING_COACHING =
        T.let(:parenting_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      PET_TRAINING = T.let(:pet_training, WhopSDK::IndustryTypes::TaggedSymbol)
      GARDENING_EDUCATION =
        T.let(:gardening_education, WhopSDK::IndustryTypes::TaggedSymbol)
      DIY_CRAFTS = T.let(:diy_crafts, WhopSDK::IndustryTypes::TaggedSymbol)
      SURVIVAL_PREPPING =
        T.let(:survival_prepping, WhopSDK::IndustryTypes::TaggedSymbol)
      BAKING_PASTRY =
        T.let(:baking_pastry, WhopSDK::IndustryTypes::TaggedSymbol)
      WINE_SOMMELIER =
        T.let(:wine_sommelier, WhopSDK::IndustryTypes::TaggedSymbol)
      BEER_BREWING = T.let(:beer_brewing, WhopSDK::IndustryTypes::TaggedSymbol)
      MIXOLOGY_BARTENDING =
        T.let(:mixology_bartending, WhopSDK::IndustryTypes::TaggedSymbol)
      WOODWORKING = T.let(:woodworking, WhopSDK::IndustryTypes::TaggedSymbol)
      POTTERY_CERAMICS =
        T.let(:pottery_ceramics, WhopSDK::IndustryTypes::TaggedSymbol)
      KNITTING_CROCHETING =
        T.let(:knitting_crocheting, WhopSDK::IndustryTypes::TaggedSymbol)
      JEWELRY_MAKING =
        T.let(:jewelry_making, WhopSDK::IndustryTypes::TaggedSymbol)
      AQUARIUM_FISHKEEPING =
        T.let(:aquarium_fishkeeping, WhopSDK::IndustryTypes::TaggedSymbol)
      BIRD_WATCHING =
        T.let(:bird_watching, WhopSDK::IndustryTypes::TaggedSymbol)
      ASTRONOMY_EDUCATION =
        T.let(:astronomy_education, WhopSDK::IndustryTypes::TaggedSymbol)
      MAGIC_ILLUSION =
        T.let(:magic_illusion, WhopSDK::IndustryTypes::TaggedSymbol)
      CAR_RESTORATION =
        T.let(:car_restoration, WhopSDK::IndustryTypes::TaggedSymbol)
      MOTORCYCLE_RIDING =
        T.let(:motorcycle_riding, WhopSDK::IndustryTypes::TaggedSymbol)
      SAILING_BOATING =
        T.let(:sailing_boating, WhopSDK::IndustryTypes::TaggedSymbol)
      SCUBA_DIVING = T.let(:scuba_diving, WhopSDK::IndustryTypes::TaggedSymbol)
      ROCK_CLIMBING =
        T.let(:rock_climbing, WhopSDK::IndustryTypes::TaggedSymbol)
      SKIING_SNOWBOARDING =
        T.let(:skiing_snowboarding, WhopSDK::IndustryTypes::TaggedSymbol)
      SURFING_EDUCATION =
        T.let(:surfing_education, WhopSDK::IndustryTypes::TaggedSymbol)
      HOMESTEADING = T.let(:homesteading, WhopSDK::IndustryTypes::TaggedSymbol)
      TINY_HOUSE_LIVING =
        T.let(:tiny_house_living, WhopSDK::IndustryTypes::TaggedSymbol)
      VAN_LIFE = T.let(:van_life, WhopSDK::IndustryTypes::TaggedSymbol)
      FASHION_STYLING =
        T.let(:fashion_styling, WhopSDK::IndustryTypes::TaggedSymbol)
      FLORAL_DESIGN =
        T.let(:floral_design, WhopSDK::IndustryTypes::TaggedSymbol)
      TRAVEL_PLANNING_SERVICE =
        T.let(:travel_planning_service, WhopSDK::IndustryTypes::TaggedSymbol)
      COLLECTIBLES_COACHING =
        T.let(:collectibles_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      ESPORTS_COACHING =
        T.let(:esports_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      GAME_SPECIFIC_COACHING =
        T.let(:game_specific_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      LEGAL_EDUCATION =
        T.let(:legal_education, WhopSDK::IndustryTypes::TaggedSymbol)
      MUSIC_THEORY = T.let(:music_theory, WhopSDK::IndustryTypes::TaggedSymbol)
      MUSIC_BUSINESS =
        T.let(:music_business, WhopSDK::IndustryTypes::TaggedSymbol)
      ACTING_COACHING =
        T.let(:acting_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      DANCE_INSTRUCTION =
        T.let(:dance_instruction, WhopSDK::IndustryTypes::TaggedSymbol)
      VOICE_ACTING = T.let(:voice_acting, WhopSDK::IndustryTypes::TaggedSymbol)
      ENGLISH_COACHING =
        T.let(:english_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      SPANISH_COACHING =
        T.let(:spanish_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      MANDARIN_COACHING =
        T.let(:mandarin_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      FRENCH_COACHING =
        T.let(:french_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      GERMAN_COACHING =
        T.let(:german_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      JAPANESE_COACHING =
        T.let(:japanese_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      KOREAN_COACHING =
        T.let(:korean_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      ARABIC_COACHING =
        T.let(:arabic_coaching, WhopSDK::IndustryTypes::TaggedSymbol)
      SIGN_LANGUAGE_EDUCATION =
        T.let(:sign_language_education, WhopSDK::IndustryTypes::TaggedSymbol)
      ACCENT_REDUCTION =
        T.let(:accent_reduction, WhopSDK::IndustryTypes::TaggedSymbol)
      BUSINESS_ENGLISH =
        T.let(:business_english, WhopSDK::IndustryTypes::TaggedSymbol)
      SMMA = T.let(:smma, WhopSDK::IndustryTypes::TaggedSymbol)
      PERFORMANCE_MARKETING_AGENCY =
        T.let(
          :performance_marketing_agency,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      SEO_AGENCY = T.let(:seo_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      CONTENT_MARKETING_AGENCY =
        T.let(:content_marketing_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      EMAIL_MARKETING_AGENCY =
        T.let(:email_marketing_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      INFLUENCER_MARKETING_AGENCY =
        T.let(
          :influencer_marketing_agency,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      PR_AGENCY = T.let(:pr_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      BRANDING_AGENCY =
        T.let(:branding_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      VIDEO_MARKETING_AGENCY =
        T.let(:video_marketing_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      AMAZON_MARKETING_AGENCY =
        T.let(:amazon_marketing_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      PODCAST_MARKETING_AGENCY =
        T.let(:podcast_marketing_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      TIKTOK_AGENCY =
        T.let(:tiktok_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      LINKEDIN_AGENCY =
        T.let(:linkedin_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      LOCAL_MARKETING_AGENCY =
        T.let(:local_marketing_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      DENTAL_MARKETING_AGENCY =
        T.let(:dental_marketing_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      REAL_ESTATE_MARKETING_AGENCY =
        T.let(
          :real_estate_marketing_agency,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      RESTAURANT_MARKETING_AGENCY =
        T.let(
          :restaurant_marketing_agency,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      ECOMMERCE_MARKETING_AGENCY =
        T.let(:ecommerce_marketing_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      B2B_MARKETING_AGENCY =
        T.let(:b2b_marketing_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      GROWTH_MARKETING_AGENCY =
        T.let(:growth_marketing_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      AFFILIATE_MANAGEMENT_AGENCY =
        T.let(
          :affiliate_management_agency,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      CONVERSION_OPTIMIZATION_AGENCY =
        T.let(
          :conversion_optimization_agency,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      EVENT_MARKETING_AGENCY =
        T.let(:event_marketing_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      CLICK_FARM_SERVICE =
        T.let(:click_farm_service, WhopSDK::IndustryTypes::TaggedSymbol)
      DATA_SCRAPING_SERVICE =
        T.let(:data_scraping_service, WhopSDK::IndustryTypes::TaggedSymbol)
      LEAD_LIST_SALES =
        T.let(:lead_list_sales, WhopSDK::IndustryTypes::TaggedSymbol)
      SOCIAL_MEDIA_BOT_FARM =
        T.let(:social_media_bot_farm, WhopSDK::IndustryTypes::TaggedSymbol)
      LEAD_GENERATION_AGENCY =
        T.let(:lead_generation_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      COLD_EMAIL_AGENCY =
        T.let(:cold_email_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      COLD_CALLING_AGENCY =
        T.let(:cold_calling_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      SALES_OUTSOURCING =
        T.let(:sales_outsourcing, WhopSDK::IndustryTypes::TaggedSymbol)
      CRM_IMPLEMENTATION =
        T.let(:crm_implementation, WhopSDK::IndustryTypes::TaggedSymbol)
      APPOINTMENT_SETTING_AGENCY =
        T.let(:appointment_setting_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      SALES_TRAINING_AGENCY =
        T.let(:sales_training_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      REVENUE_OPERATIONS_AGENCY =
        T.let(:revenue_operations_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      INBOUND_TELESERVICES =
        T.let(:inbound_teleservices, WhopSDK::IndustryTypes::TaggedSymbol)
      OUTBOUND_TELEMARKETING =
        T.let(:outbound_telemarketing, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_CHATBOT_AGENCY =
        T.let(:ai_chatbot_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_AUTOMATION_AGENCY =
        T.let(:ai_automation_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_CONSULTING =
        T.let(:ai_consulting, WhopSDK::IndustryTypes::TaggedSymbol)
      WORKFLOW_AUTOMATION_AGENCY =
        T.let(:workflow_automation_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      DATA_ANALYTICS_AGENCY =
        T.let(:data_analytics_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_VOICE_AGENT_AGENCY =
        T.let(:ai_voice_agent_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_CONTENT_AGENCY =
        T.let(:ai_content_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      MACHINE_LEARNING_AGENCY =
        T.let(:machine_learning_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      COMPUTER_VISION_AGENCY =
        T.let(:computer_vision_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      WEB_DESIGN_AGENCY =
        T.let(:web_design_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      GRAPHIC_DESIGN_AGENCY =
        T.let(:graphic_design_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      UI_UX_AGENCY = T.let(:ui_ux_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      MOTION_DESIGN_AGENCY =
        T.let(:motion_design_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      PRODUCT_DESIGN_AGENCY =
        T.let(:product_design_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      LOGO_DESIGN_AGENCY =
        T.let(:logo_design_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      PRESENTATION_DESIGN_AGENCY =
        T.let(:presentation_design_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      INDUSTRY_TYPES_3D_VISUALIZATION_AGENCY =
        T.let(:"3d_visualization_agency", WhopSDK::IndustryTypes::TaggedSymbol)
      FASHION_DESIGN_AGENCY =
        T.let(:fashion_design_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      WEB_DEVELOPMENT_AGENCY =
        T.let(:web_development_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      MOBILE_APP_AGENCY =
        T.let(:mobile_app_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      SAAS_DEVELOPMENT_AGENCY =
        T.let(:saas_development_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      ECOMMERCE_DEVELOPMENT =
        T.let(:ecommerce_development, WhopSDK::IndustryTypes::TaggedSymbol)
      BLOCKCHAIN_DEVELOPMENT_AGENCY =
        T.let(
          :blockchain_development_agency,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      GAME_DEVELOPMENT_AGENCY =
        T.let(:game_development_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      DEVOPS_AGENCY =
        T.let(:devops_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_DEVELOPMENT_AGENCY =
        T.let(:ai_development_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      WORDPRESS_AGENCY =
        T.let(:wordpress_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      SHOPIFY_AGENCY =
        T.let(:shopify_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      API_INTEGRATION_AGENCY =
        T.let(:api_integration_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      CYBERSECURITY_AGENCY =
        T.let(:cybersecurity_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      DATA_ENGINEERING_AGENCY =
        T.let(:data_engineering_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      VR_AR_DEVELOPMENT_AGENCY =
        T.let(:vr_ar_development_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      HACKING_TOOLS_MALWARE =
        T.let(:hacking_tools_malware, WhopSDK::IndustryTypes::TaggedSymbol)
      STALKERWARE_MONITORING =
        T.let(:stalkerware_monitoring, WhopSDK::IndustryTypes::TaggedSymbol)
      TECH_RECRUITING_AGENCY =
        T.let(:tech_recruiting_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      EXECUTIVE_RECRUITING =
        T.let(:executive_recruiting, WhopSDK::IndustryTypes::TaggedSymbol)
      STAFFING_AGENCY =
        T.let(:staffing_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      REMOTE_STAFFING =
        T.let(:remote_staffing, WhopSDK::IndustryTypes::TaggedSymbol)
      HEALTHCARE_RECRUITING =
        T.let(:healthcare_recruiting, WhopSDK::IndustryTypes::TaggedSymbol)
      VA_PLACEMENT_AGENCY =
        T.let(:va_placement_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      SALES_RECRUITING =
        T.let(:sales_recruiting, WhopSDK::IndustryTypes::TaggedSymbol)
      CREATIVE_RECRUITING =
        T.let(:creative_recruiting, WhopSDK::IndustryTypes::TaggedSymbol)
      FINANCE_RECRUITING =
        T.let(:finance_recruiting, WhopSDK::IndustryTypes::TaggedSymbol)
      LEGAL_RECRUITING =
        T.let(:legal_recruiting, WhopSDK::IndustryTypes::TaggedSymbol)
      CONSTRUCTION_STAFFING =
        T.let(:construction_staffing, WhopSDK::IndustryTypes::TaggedSymbol)
      HOSPITALITY_STAFFING =
        T.let(:hospitality_staffing, WhopSDK::IndustryTypes::TaggedSymbol)
      CUSTOMER_SUPPORT_OUTSOURCING =
        T.let(
          :customer_support_outsourcing,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      LIVE_CHAT_AGENCY =
        T.let(:live_chat_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      TECHNICAL_SUPPORT_AGENCY =
        T.let(:technical_support_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      CALL_CENTER_AGENCY =
        T.let(:call_center_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      MULTILINGUAL_SUPPORT_AGENCY =
        T.let(
          :multilingual_support_agency,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      COMMUNITY_MANAGEMENT_AGENCY =
        T.let(
          :community_management_agency,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      VIDEO_CLIPPING_AGENCY =
        T.let(:video_clipping_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      VIDEO_PRODUCTION_AGENCY =
        T.let(:video_production_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      UGC_AGENCY = T.let(:ugc_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      CONTENT_WRITING_AGENCY =
        T.let(:content_writing_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      TRANSLATION_AGENCY =
        T.let(:translation_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      SOCIAL_MEDIA_MANAGEMENT =
        T.let(:social_media_management, WhopSDK::IndustryTypes::TaggedSymbol)
      GHOSTWRITING_AGENCY =
        T.let(:ghostwriting_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      PODCAST_EDITING_AGENCY =
        T.let(:podcast_editing_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      THUMBNAIL_DESIGN_AGENCY =
        T.let(:thumbnail_design_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      SCRIPTWRITING_AGENCY =
        T.let(:scriptwriting_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      SEO_CONTENT_AGENCY =
        T.let(:seo_content_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      TECHNICAL_WRITING_AGENCY =
        T.let(:technical_writing_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      MANAGEMENT_CONSULTING =
        T.let(:management_consulting, WhopSDK::IndustryTypes::TaggedSymbol)
      FINANCIAL_CONSULTING =
        T.let(:financial_consulting, WhopSDK::IndustryTypes::TaggedSymbol)
      HR_CONSULTING =
        T.let(:hr_consulting, WhopSDK::IndustryTypes::TaggedSymbol)
      OPERATIONS_CONSULTING =
        T.let(:operations_consulting, WhopSDK::IndustryTypes::TaggedSymbol)
      IT_CONSULTING =
        T.let(:it_consulting, WhopSDK::IndustryTypes::TaggedSymbol)
      SUSTAINABILITY_CONSULTING =
        T.let(:sustainability_consulting, WhopSDK::IndustryTypes::TaggedSymbol)
      LEGAL_CONSULTING =
        T.let(:legal_consulting, WhopSDK::IndustryTypes::TaggedSymbol)
      COMPLIANCE_CONSULTING =
        T.let(:compliance_consulting, WhopSDK::IndustryTypes::TaggedSymbol)
      SUPPLY_CHAIN_CONSULTING =
        T.let(:supply_chain_consulting, WhopSDK::IndustryTypes::TaggedSymbol)
      CHANGE_MANAGEMENT_CONSULTING =
        T.let(
          :change_management_consulting,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      DIGITAL_TRANSFORMATION_CONSULTING =
        T.let(
          :digital_transformation_consulting,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      HEALTHCARE_CONSULTING =
        T.let(:healthcare_consulting, WhopSDK::IndustryTypes::TaggedSymbol)
      REAL_ESTATE_CONSULTING =
        T.let(:real_estate_consulting, WhopSDK::IndustryTypes::TaggedSymbol)
      FRANCHISE_CONSULTING =
        T.let(:franchise_consulting, WhopSDK::IndustryTypes::TaggedSymbol)
      EXPORT_TRADE_CONSULTING =
        T.let(:export_trade_consulting, WhopSDK::IndustryTypes::TaggedSymbol)
      NONPROFIT_CONSULTING =
        T.let(:nonprofit_consulting, WhopSDK::IndustryTypes::TaggedSymbol)
      EDUCATION_CONSULTING =
        T.let(:education_consulting, WhopSDK::IndustryTypes::TaggedSymbol)
      CANNABIS_CONSULTING =
        T.let(:cannabis_consulting, WhopSDK::IndustryTypes::TaggedSymbol)
      RESTAURANT_CONSULTING =
        T.let(:restaurant_consulting, WhopSDK::IndustryTypes::TaggedSymbol)
      M_AND_A_CONSULTING =
        T.let(:m_and_a_consulting, WhopSDK::IndustryTypes::TaggedSymbol)
      PRICING_STRATEGY_CONSULTING =
        T.let(
          :pricing_strategy_consulting,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      BRAND_STRATEGY_CONSULTING =
        T.let(:brand_strategy_consulting, WhopSDK::IndustryTypes::TaggedSymbol)
      SAAS_MARKETING_CONSULTING =
        T.let(:saas_marketing_consulting, WhopSDK::IndustryTypes::TaggedSymbol)
      DONE_FOR_YOU_SERVICES =
        T.let(:done_for_you_services, WhopSDK::IndustryTypes::TaggedSymbol)
      PROP_FIRM_PASSING_SERVICE =
        T.let(:prop_firm_passing_service, WhopSDK::IndustryTypes::TaggedSymbol)
      TRADING_ACCOUNT_MANAGEMENT =
        T.let(:trading_account_management, WhopSDK::IndustryTypes::TaggedSymbol)
      DONE_FOR_YOU_TRADING =
        T.let(:done_for_you_trading, WhopSDK::IndustryTypes::TaggedSymbol)
      ACCOUNTING_BOOKKEEPING =
        T.let(:accounting_bookkeeping, WhopSDK::IndustryTypes::TaggedSymbol)
      TAX_PREPARATION =
        T.let(:tax_preparation, WhopSDK::IndustryTypes::TaggedSymbol)
      LEGAL_SERVICES =
        T.let(:legal_services, WhopSDK::IndustryTypes::TaggedSymbol)
      NOTARY_SERVICES =
        T.let(:notary_services, WhopSDK::IndustryTypes::TaggedSymbol)
      INSURANCE_BROKERAGE =
        T.let(:insurance_brokerage, WhopSDK::IndustryTypes::TaggedSymbol)
      FINANCIAL_PLANNING_SERVICE =
        T.let(:financial_planning_service, WhopSDK::IndustryTypes::TaggedSymbol)
      REAL_ESTATE_SERVICES =
        T.let(:real_estate_services, WhopSDK::IndustryTypes::TaggedSymbol)
      PROPERTY_MANAGEMENT =
        T.let(:property_management, WhopSDK::IndustryTypes::TaggedSymbol)
      MORTGAGE_BROKERAGE =
        T.let(:mortgage_brokerage, WhopSDK::IndustryTypes::TaggedSymbol)
      IMMIGRATION_SERVICES =
        T.let(:immigration_services, WhopSDK::IndustryTypes::TaggedSymbol)
      PATENT_TRADEMARK_SERVICES =
        T.let(:patent_trademark_services, WhopSDK::IndustryTypes::TaggedSymbol)
      BUSINESS_FORMATION_SERVICES =
        T.let(
          :business_formation_services,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      SHELL_COMPANY_FORMATION =
        T.let(:shell_company_formation, WhopSDK::IndustryTypes::TaggedSymbol)
      PAYROLL_SERVICES =
        T.let(:payroll_services, WhopSDK::IndustryTypes::TaggedSymbol)
      AUDIT_SERVICES =
        T.let(:audit_services, WhopSDK::IndustryTypes::TaggedSymbol)
      FORENSIC_ACCOUNTING =
        T.let(:forensic_accounting, WhopSDK::IndustryTypes::TaggedSymbol)
      ACTUARIAL_SERVICES =
        T.let(:actuarial_services, WhopSDK::IndustryTypes::TaggedSymbol)
      APPRAISAL_SERVICES =
        T.let(:appraisal_services, WhopSDK::IndustryTypes::TaggedSymbol)
      MEDIATION_ARBITRATION =
        T.let(:mediation_arbitration, WhopSDK::IndustryTypes::TaggedSymbol)
      BACKGROUND_CHECK_SERVICES =
        T.let(:background_check_services, WhopSDK::IndustryTypes::TaggedSymbol)
      BAIL_BOND_SERVICES =
        T.let(:bail_bond_services, WhopSDK::IndustryTypes::TaggedSymbol)
      BNPL_SERVICE = T.let(:bnpl_service, WhopSDK::IndustryTypes::TaggedSymbol)
      CHECK_CASHING_SERVICE =
        T.let(:check_cashing_service, WhopSDK::IndustryTypes::TaggedSymbol)
      CLOUD_MINING_SCHEMES =
        T.let(:cloud_mining_schemes, WhopSDK::IndustryTypes::TaggedSymbol)
      CONSUMER_LENDING =
        T.let(:consumer_lending, WhopSDK::IndustryTypes::TaggedSymbol)
      CREDIT_REPAIR_SERVICE =
        T.let(:credit_repair_service, WhopSDK::IndustryTypes::TaggedSymbol)
      CROWDFUNDING_PLATFORM =
        T.let(:crowdfunding_platform, WhopSDK::IndustryTypes::TaggedSymbol)
      CRYPTO_EXCHANGE_BROKERAGE =
        T.let(:crypto_exchange_brokerage, WhopSDK::IndustryTypes::TaggedSymbol)
      DEBT_COLLECTION_AGENCY =
        T.let(:debt_collection_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      DEBT_RELIEF_SETTLEMENT =
        T.let(:debt_relief_settlement, WhopSDK::IndustryTypes::TaggedSymbol)
      DOCUMENT_FALSIFICATION =
        T.let(:document_falsification, WhopSDK::IndustryTypes::TaggedSymbol)
      ESCROW_SERVICE =
        T.let(:escrow_service, WhopSDK::IndustryTypes::TaggedSymbol)
      ESSAY_MILL_PAPER_MILL =
        T.let(:essay_mill_paper_mill, WhopSDK::IndustryTypes::TaggedSymbol)
      FAKE_ID_SERVICES =
        T.let(:fake_id_services, WhopSDK::IndustryTypes::TaggedSymbol)
      FAKE_REFERENCE_SERVICES =
        T.let(:fake_reference_services, WhopSDK::IndustryTypes::TaggedSymbol)
      FOREIGN_EXCHANGE_SERVICE =
        T.let(:foreign_exchange_service, WhopSDK::IndustryTypes::TaggedSymbol)
      GOVERNMENT_SERVICE_FACILITATION =
        T.let(
          :government_service_facilitation,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      IMMIGRATION_SERVICES_UNLICENSED =
        T.let(
          :immigration_services_unlicensed,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      LICENSED_LEGAL_SERVICES =
        T.let(:licensed_legal_services, WhopSDK::IndustryTypes::TaggedSymbol)
      PAYMENT_FACILITATION =
        T.let(:payment_facilitation, WhopSDK::IndustryTypes::TaggedSymbol)
      PERSONALIZED_TAX_SERVICES =
        T.let(:personalized_tax_services, WhopSDK::IndustryTypes::TaggedSymbol)
      PREDICTION_MARKET_EXCHANGE =
        T.let(:prediction_market_exchange, WhopSDK::IndustryTypes::TaggedSymbol)
      PRIVATE_INVESTIGATION =
        T.let(:private_investigation, WhopSDK::IndustryTypes::TaggedSymbol)
      REPOSSESSION_SERVICES =
        T.let(:repossession_services, WhopSDK::IndustryTypes::TaggedSymbol)
      STABLECOIN_ISSUANCE =
        T.let(:stablecoin_issuance, WhopSDK::IndustryTypes::TaggedSymbol)
      STANDALONE_TIPPING =
        T.let(:standalone_tipping, WhopSDK::IndustryTypes::TaggedSymbol)
      TOKEN_SALES_ICO =
        T.let(:token_sales_ico, WhopSDK::IndustryTypes::TaggedSymbol)
      TOKENIZED_RWA =
        T.let(:tokenized_rwa, WhopSDK::IndustryTypes::TaggedSymbol)
      UNLICENSED_LEGAL_SERVICES =
        T.let(:unlicensed_legal_services, WhopSDK::IndustryTypes::TaggedSymbol)
      YIELD_STAKING_PRODUCTS =
        T.let(:yield_staking_products, WhopSDK::IndustryTypes::TaggedSymbol)
      PHOTOGRAPHY_SERVICE =
        T.let(:photography_service, WhopSDK::IndustryTypes::TaggedSymbol)
      VIDEOGRAPHY_SERVICE =
        T.let(:videography_service, WhopSDK::IndustryTypes::TaggedSymbol)
      MUSIC_PRODUCTION_SERVICE =
        T.let(:music_production_service, WhopSDK::IndustryTypes::TaggedSymbol)
      VOICE_OVER_SERVICE =
        T.let(:voice_over_service, WhopSDK::IndustryTypes::TaggedSymbol)
      EVENT_PHOTOGRAPHY =
        T.let(:event_photography, WhopSDK::IndustryTypes::TaggedSymbol)
      DRONE_SERVICES =
        T.let(:drone_services, WhopSDK::IndustryTypes::TaggedSymbol)
      COMMERCIAL_PHOTOGRAPHY =
        T.let(:commercial_photography, WhopSDK::IndustryTypes::TaggedSymbol)
      PORTRAIT_PHOTOGRAPHY_SERVICE =
        T.let(
          :portrait_photography_service,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      REAL_ESTATE_PHOTOGRAPHY =
        T.let(:real_estate_photography, WhopSDK::IndustryTypes::TaggedSymbol)
      FOOD_PHOTOGRAPHY_SERVICE =
        T.let(:food_photography_service, WhopSDK::IndustryTypes::TaggedSymbol)
      LIVE_EVENT_PRODUCTION =
        T.let(:live_event_production, WhopSDK::IndustryTypes::TaggedSymbol)
      PODCAST_PRODUCTION_SERVICE =
        T.let(:podcast_production_service, WhopSDK::IndustryTypes::TaggedSymbol)
      RECORD_LABEL = T.let(:record_label, WhopSDK::IndustryTypes::TaggedSymbol)
      BOOK_PUBLISHING_HOUSE =
        T.let(:book_publishing_house, WhopSDK::IndustryTypes::TaggedSymbol)
      NEWS_MEDIA_OUTLET =
        T.let(:news_media_outlet, WhopSDK::IndustryTypes::TaggedSymbol)
      RADIO_BROADCASTING =
        T.let(:radio_broadcasting, WhopSDK::IndustryTypes::TaggedSymbol)
      TV_PRODUCTION_COMPANY =
        T.let(:tv_production_company, WhopSDK::IndustryTypes::TaggedSymbol)
      FILM_STUDIO = T.let(:film_studio, WhopSDK::IndustryTypes::TaggedSymbol)
      MAGAZINE_PUBLISHER =
        T.let(:magazine_publisher, WhopSDK::IndustryTypes::TaggedSymbol)
      MUSIC_LICENSING_AGENCY =
        T.let(:music_licensing_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      TALENT_MANAGEMENT_AGENCY =
        T.let(:talent_management_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      ADVERTISING_NETWORK =
        T.let(:advertising_network, WhopSDK::IndustryTypes::TaggedSymbol)
      AD_TECH_PLATFORM =
        T.let(:ad_tech_platform, WhopSDK::IndustryTypes::TaggedSymbol)
      CLEANING_SERVICE =
        T.let(:cleaning_service, WhopSDK::IndustryTypes::TaggedSymbol)
      LANDSCAPING_SERVICE =
        T.let(:landscaping_service, WhopSDK::IndustryTypes::TaggedSymbol)
      PLUMBING_SERVICE =
        T.let(:plumbing_service, WhopSDK::IndustryTypes::TaggedSymbol)
      ELECTRICAL_SERVICE =
        T.let(:electrical_service, WhopSDK::IndustryTypes::TaggedSymbol)
      HVAC_SERVICE = T.let(:hvac_service, WhopSDK::IndustryTypes::TaggedSymbol)
      ROOFING_SERVICE =
        T.let(:roofing_service, WhopSDK::IndustryTypes::TaggedSymbol)
      PAINTING_SERVICE =
        T.let(:painting_service, WhopSDK::IndustryTypes::TaggedSymbol)
      MOVING_SERVICE =
        T.let(:moving_service, WhopSDK::IndustryTypes::TaggedSymbol)
      HANDYMAN_SERVICE =
        T.let(:handyman_service, WhopSDK::IndustryTypes::TaggedSymbol)
      PEST_CONTROL = T.let(:pest_control, WhopSDK::IndustryTypes::TaggedSymbol)
      POOL_SERVICE = T.let(:pool_service, WhopSDK::IndustryTypes::TaggedSymbol)
      SOLAR_INSTALLATION =
        T.let(:solar_installation, WhopSDK::IndustryTypes::TaggedSymbol)
      HOME_RENOVATION =
        T.let(:home_renovation, WhopSDK::IndustryTypes::TaggedSymbol)
      PRESSURE_WASHING =
        T.let(:pressure_washing, WhopSDK::IndustryTypes::TaggedSymbol)
      JUNK_REMOVAL = T.let(:junk_removal, WhopSDK::IndustryTypes::TaggedSymbol)
      GARAGE_DOOR_SERVICE =
        T.let(:garage_door_service, WhopSDK::IndustryTypes::TaggedSymbol)
      FENCING_SERVICE =
        T.let(:fencing_service, WhopSDK::IndustryTypes::TaggedSymbol)
      CONCRETE_MASONRY =
        T.let(:concrete_masonry, WhopSDK::IndustryTypes::TaggedSymbol)
      TREE_SERVICE = T.let(:tree_service, WhopSDK::IndustryTypes::TaggedSymbol)
      WINDOW_CLEANING =
        T.let(:window_cleaning, WhopSDK::IndustryTypes::TaggedSymbol)
      GUTTER_SERVICE =
        T.let(:gutter_service, WhopSDK::IndustryTypes::TaggedSymbol)
      FLOORING_SERVICE =
        T.let(:flooring_service, WhopSDK::IndustryTypes::TaggedSymbol)
      CABINET_COUNTERTOP =
        T.let(:cabinet_countertop, WhopSDK::IndustryTypes::TaggedSymbol)
      HOME_INSPECTION =
        T.let(:home_inspection, WhopSDK::IndustryTypes::TaggedSymbol)
      SEPTIC_SERVICE =
        T.let(:septic_service, WhopSDK::IndustryTypes::TaggedSymbol)
      WATERPROOFING_SERVICE =
        T.let(:waterproofing_service, WhopSDK::IndustryTypes::TaggedSymbol)
      INSULATION_SERVICE =
        T.let(:insulation_service, WhopSDK::IndustryTypes::TaggedSymbol)
      CHIMNEY_SERVICE =
        T.let(:chimney_service, WhopSDK::IndustryTypes::TaggedSymbol)
      LOCKSMITH_SERVICE =
        T.let(:locksmith_service, WhopSDK::IndustryTypes::TaggedSymbol)
      GLASS_WINDOW_SERVICE =
        T.let(:glass_window_service, WhopSDK::IndustryTypes::TaggedSymbol)
      EPOXY_COATING =
        T.let(:epoxy_coating, WhopSDK::IndustryTypes::TaggedSymbol)
      PRIVATE_SECURITY_GUARD_SERVICE =
        T.let(
          :private_security_guard_service,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      ARMORED_CAR_TRANSPORT =
        T.let(:armored_car_transport, WhopSDK::IndustryTypes::TaggedSymbol)
      EXECUTIVE_PROTECTION_BODYGUARD =
        T.let(
          :executive_protection_bodyguard,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      EVENT_SECURITY_SERVICE =
        T.let(:event_security_service, WhopSDK::IndustryTypes::TaggedSymbol)
      ALARM_SYSTEM_INSTALLATION =
        T.let(:alarm_system_installation, WhopSDK::IndustryTypes::TaggedSymbol)
      CCTV_INSTALLATION =
        T.let(:cctv_installation, WhopSDK::IndustryTypes::TaggedSymbol)
      PRIVATE_INVESTIGATION_AGENCY =
        T.let(
          :private_investigation_agency,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      BACKGROUND_CHECK_PROVIDER =
        T.let(:background_check_provider, WhopSDK::IndustryTypes::TaggedSymbol)
      LOCKSMITH_COMMERCIAL =
        T.let(:locksmith_commercial, WhopSDK::IndustryTypes::TaggedSymbol)
      BOUNTY_HUNTER_BAIL_ENFORCEMENT =
        T.let(
          :bounty_hunter_bail_enforcement,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      PERSONAL_STYLING =
        T.let(:personal_styling, WhopSDK::IndustryTypes::TaggedSymbol)
      PERSONAL_CHEF =
        T.let(:personal_chef, WhopSDK::IndustryTypes::TaggedSymbol)
      PERSONAL_ASSISTANT_SERVICE =
        T.let(:personal_assistant_service, WhopSDK::IndustryTypes::TaggedSymbol)
      TUTORING_SERVICE =
        T.let(:tutoring_service, WhopSDK::IndustryTypes::TaggedSymbol)
      PET_SERVICES = T.let(:pet_services, WhopSDK::IndustryTypes::TaggedSymbol)
      WEDDING_PLANNING =
        T.let(:wedding_planning, WhopSDK::IndustryTypes::TaggedSymbol)
      CONCIERGE_SERVICE =
        T.let(:concierge_service, WhopSDK::IndustryTypes::TaggedSymbol)
      PERSONAL_TRAINING_SERVICE =
        T.let(:personal_training_service, WhopSDK::IndustryTypes::TaggedSymbol)
      NANNY_SERVICE =
        T.let(:nanny_service, WhopSDK::IndustryTypes::TaggedSymbol)
      ELDER_CARE_SERVICE =
        T.let(:elder_care_service, WhopSDK::IndustryTypes::TaggedSymbol)
      ERRAND_SERVICE =
        T.let(:errand_service, WhopSDK::IndustryTypes::TaggedSymbol)
      LIFE_ORGANIZATION =
        T.let(:life_organization, WhopSDK::IndustryTypes::TaggedSymbol)
      RELOCATION_SERVICE =
        T.let(:relocation_service, WhopSDK::IndustryTypes::TaggedSymbol)
      ADULT_DATING_SERVICES =
        T.let(:adult_dating_services, WhopSDK::IndustryTypes::TaggedSymbol)
      ESCORT_SERVICES =
        T.let(:escort_services, WhopSDK::IndustryTypes::TaggedSymbol)
      HOTEL_ACCOMMODATION_BOOKINGS =
        T.let(
          :hotel_accommodation_bookings,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      MAIL_ORDER_SPOUSE =
        T.let(:mail_order_spouse, WhopSDK::IndustryTypes::TaggedSymbol)
      PSYCHIC_FORTUNE_TELLING =
        T.let(:psychic_fortune_telling, WhopSDK::IndustryTypes::TaggedSymbol)
      TIMESHARE_SALES =
        T.let(:timeshare_sales, WhopSDK::IndustryTypes::TaggedSymbol)
      FREIGHT_BROKERAGE =
        T.let(:freight_brokerage, WhopSDK::IndustryTypes::TaggedSymbol)
      COURIER_SERVICE =
        T.let(:courier_service, WhopSDK::IndustryTypes::TaggedSymbol)
      WAREHOUSING_SERVICE =
        T.let(:warehousing_service, WhopSDK::IndustryTypes::TaggedSymbol)
      LAST_MILE_DELIVERY =
        T.let(:last_mile_delivery, WhopSDK::IndustryTypes::TaggedSymbol)
      AUTO_TRANSPORT =
        T.let(:auto_transport, WhopSDK::IndustryTypes::TaggedSymbol)
      INTERNATIONAL_SHIPPING =
        T.let(:international_shipping, WhopSDK::IndustryTypes::TaggedSymbol)
      COLD_CHAIN_LOGISTICS =
        T.let(:cold_chain_logistics, WhopSDK::IndustryTypes::TaggedSymbol)
      COMMERCIAL_AIRLINE_TICKETS =
        T.let(:commercial_airline_tickets, WhopSDK::IndustryTypes::TaggedSymbol)
      CRUISE_LINE_BOOKINGS =
        T.let(:cruise_line_bookings, WhopSDK::IndustryTypes::TaggedSymbol)
      CONTRACT_MANUFACTURING =
        T.let(:contract_manufacturing, WhopSDK::IndustryTypes::TaggedSymbol)
      CNC_MACHINING_SERVICE =
        T.let(:cnc_machining_service, WhopSDK::IndustryTypes::TaggedSymbol)
      INDUSTRY_TYPES_3D_PRINTING_SERVICE_COMMERCIAL =
        T.let(
          :"3d_printing_service_commercial",
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      PLASTIC_INJECTION_MOLDING =
        T.let(:plastic_injection_molding, WhopSDK::IndustryTypes::TaggedSymbol)
      METAL_FABRICATION =
        T.let(:metal_fabrication, WhopSDK::IndustryTypes::TaggedSymbol)
      PCBA_ASSEMBLY =
        T.let(:pcba_assembly, WhopSDK::IndustryTypes::TaggedSymbol)
      CHEMICAL_MANUFACTURING =
        T.let(:chemical_manufacturing, WhopSDK::IndustryTypes::TaggedSymbol)
      TEXTILE_MANUFACTURING =
        T.let(:textile_manufacturing, WhopSDK::IndustryTypes::TaggedSymbol)
      FOOD_PROCESSING_FACILITY =
        T.let(:food_processing_facility, WhopSDK::IndustryTypes::TaggedSymbol)
      PACKAGING_MANUFACTURING =
        T.let(:packaging_manufacturing, WhopSDK::IndustryTypes::TaggedSymbol)
      INDUSTRIAL_AUTOMATION_INTEGRATOR =
        T.let(
          :industrial_automation_integrator,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      MINING_AND_EXTRACTION =
        T.let(:mining_and_extraction, WhopSDK::IndustryTypes::TaggedSymbol)
      OIL_AND_GAS_SERVICES =
        T.let(:oil_and_gas_services, WhopSDK::IndustryTypes::TaggedSymbol)
      RENEWABLE_ENERGY_GENERATION =
        T.let(
          :renewable_energy_generation,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      WASTE_MANAGEMENT_RECYCLING =
        T.let(:waste_management_recycling, WhopSDK::IndustryTypes::TaggedSymbol)
      HAZARDOUS_WASTE_DISPOSAL =
        T.let(:hazardous_waste_disposal, WhopSDK::IndustryTypes::TaggedSymbol)
      AEROSPACE_DEFENSE_CONTRACTING =
        T.let(
          :aerospace_defense_contracting,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      PERSONAL_TRAINING_STUDIO =
        T.let(:personal_training_studio, WhopSDK::IndustryTypes::TaggedSymbol)
      NUTRITION_CONSULTING =
        T.let(:nutrition_consulting, WhopSDK::IndustryTypes::TaggedSymbol)
      MENTAL_HEALTH_COUNSELING =
        T.let(:mental_health_counseling, WhopSDK::IndustryTypes::TaggedSymbol)
      PHYSICAL_THERAPY_SERVICE =
        T.let(:physical_therapy_service, WhopSDK::IndustryTypes::TaggedSymbol)
      OCCUPATIONAL_THERAPY_SERVICE =
        T.let(
          :occupational_therapy_service,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      SPEECH_THERAPY_SERVICE =
        T.let(:speech_therapy_service, WhopSDK::IndustryTypes::TaggedSymbol)
      CHIROPRACTIC_SERVICE =
        T.let(:chiropractic_service, WhopSDK::IndustryTypes::TaggedSymbol)
      ACUPUNCTURE_SERVICE =
        T.let(:acupuncture_service, WhopSDK::IndustryTypes::TaggedSymbol)
      MASSAGE_THERAPY_SERVICE =
        T.let(:massage_therapy_service, WhopSDK::IndustryTypes::TaggedSymbol)
      MIDWIFERY_DOULA =
        T.let(:midwifery_doula, WhopSDK::IndustryTypes::TaggedSymbol)
      LACTATION_CONSULTING =
        T.let(:lactation_consulting, WhopSDK::IndustryTypes::TaggedSymbol)
      DIETITIAN_SERVICE =
        T.let(:dietitian_service, WhopSDK::IndustryTypes::TaggedSymbol)
      ADDICTION_RECOVERY_SERVICES =
        T.let(
          :addiction_recovery_services,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      DTC_LAB_TESTING =
        T.let(:dtc_lab_testing, WhopSDK::IndustryTypes::TaggedSymbol)
      IV_THERAPY_INFUSION =
        T.let(:iv_therapy_infusion, WhopSDK::IndustryTypes::TaggedSymbol)
      MEDSPA_AESTHETIC_SERVICES =
        T.let(:medspa_aesthetic_services, WhopSDK::IndustryTypes::TaggedSymbol)
      PRESCRIPTION_DELIVERY_SERVICES =
        T.let(
          :prescription_delivery_services,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      REGISTERED_DIETITIAN_SERVICES =
        T.let(
          :registered_dietitian_services,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      UNLICENSED_THERAPY_COUNSELING =
        T.let(
          :unlicensed_therapy_counseling,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      STREETWEAR = T.let(:streetwear, WhopSDK::IndustryTypes::TaggedSymbol)
      ATHLEISURE = T.let(:athleisure, WhopSDK::IndustryTypes::TaggedSymbol)
      LUXURY_FASHION =
        T.let(:luxury_fashion, WhopSDK::IndustryTypes::TaggedSymbol)
      KIDS_CLOTHING =
        T.let(:kids_clothing, WhopSDK::IndustryTypes::TaggedSymbol)
      CUSTOM_APPAREL =
        T.let(:custom_apparel, WhopSDK::IndustryTypes::TaggedSymbol)
      WORKWEAR = T.let(:workwear, WhopSDK::IndustryTypes::TaggedSymbol)
      SWIMWEAR = T.let(:swimwear, WhopSDK::IndustryTypes::TaggedSymbol)
      LINGERIE_INTIMATES =
        T.let(:lingerie_intimates, WhopSDK::IndustryTypes::TaggedSymbol)
      VINTAGE_CLOTHING =
        T.let(:vintage_clothing, WhopSDK::IndustryTypes::TaggedSymbol)
      PLUS_SIZE_FASHION =
        T.let(:plus_size_fashion, WhopSDK::IndustryTypes::TaggedSymbol)
      MATERNITY_CLOTHING =
        T.let(:maternity_clothing, WhopSDK::IndustryTypes::TaggedSymbol)
      SLEEPWEAR_LOUNGEWEAR =
        T.let(:sleepwear_loungewear, WhopSDK::IndustryTypes::TaggedSymbol)
      DENIM_BRAND = T.let(:denim_brand, WhopSDK::IndustryTypes::TaggedSymbol)
      OUTERWEAR_JACKETS =
        T.let(:outerwear_jackets, WhopSDK::IndustryTypes::TaggedSymbol)
      SOCKS_HOSIERY =
        T.let(:socks_hosiery, WhopSDK::IndustryTypes::TaggedSymbol)
      COSTUMES_COSPLAY =
        T.let(:costumes_cosplay, WhopSDK::IndustryTypes::TaggedSymbol)
      SCRUBS_MEDICAL_APPAREL =
        T.let(:scrubs_medical_apparel, WhopSDK::IndustryTypes::TaggedSymbol)
      DANCE_PERFORMANCE_WEAR =
        T.let(:dance_performance_wear, WhopSDK::IndustryTypes::TaggedSymbol)
      HUNTING_CAMO_APPAREL =
        T.let(:hunting_camo_apparel, WhopSDK::IndustryTypes::TaggedSymbol)
      CASUAL_EVERYDAY_CLOTHING =
        T.let(:casual_everyday_clothing, WhopSDK::IndustryTypes::TaggedSymbol)
      PROTEIN_SUPPLEMENTS =
        T.let(:protein_supplements, WhopSDK::IndustryTypes::TaggedSymbol)
      VITAMINS_MINERALS =
        T.let(:vitamins_minerals, WhopSDK::IndustryTypes::TaggedSymbol)
      PRE_WORKOUT = T.let(:pre_workout, WhopSDK::IndustryTypes::TaggedSymbol)
      NOOTROPICS = T.let(:nootropics, WhopSDK::IndustryTypes::TaggedSymbol)
      HERBAL_SUPPLEMENTS =
        T.let(:herbal_supplements, WhopSDK::IndustryTypes::TaggedSymbol)
      WEIGHT_MANAGEMENT_SUPPLEMENTS =
        T.let(
          :weight_management_supplements,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      GUT_HEALTH = T.let(:gut_health, WhopSDK::IndustryTypes::TaggedSymbol)
      CBD_PRODUCTS = T.let(:cbd_products, WhopSDK::IndustryTypes::TaggedSymbol)
      MUSHROOM_SUPPLEMENTS =
        T.let(:mushroom_supplements, WhopSDK::IndustryTypes::TaggedSymbol)
      COLLAGEN_SUPPLEMENTS =
        T.let(:collagen_supplements, WhopSDK::IndustryTypes::TaggedSymbol)
      TESTOSTERONE_BOOSTERS =
        T.let(:testosterone_boosters, WhopSDK::IndustryTypes::TaggedSymbol)
      SLEEP_SUPPLEMENTS =
        T.let(:sleep_supplements, WhopSDK::IndustryTypes::TaggedSymbol)
      IMMUNE_SUPPORT =
        T.let(:immune_support, WhopSDK::IndustryTypes::TaggedSymbol)
      JOINT_BONE_HEALTH =
        T.let(:joint_bone_health, WhopSDK::IndustryTypes::TaggedSymbol)
      GREENS_POWDER =
        T.let(:greens_powder, WhopSDK::IndustryTypes::TaggedSymbol)
      CREATINE_SUPPLEMENTS =
        T.let(:creatine_supplements, WhopSDK::IndustryTypes::TaggedSymbol)
      ELECTROLYTE_HYDRATION =
        T.let(:electrolyte_hydration, WhopSDK::IndustryTypes::TaggedSymbol)
      PRENATAL_SUPPLEMENTS =
        T.let(:prenatal_supplements, WhopSDK::IndustryTypes::TaggedSymbol)
      KIDS_SUPPLEMENTS =
        T.let(:kids_supplements, WhopSDK::IndustryTypes::TaggedSymbol)
      PET_SUPPLEMENTS =
        T.let(:pet_supplements, WhopSDK::IndustryTypes::TaggedSymbol)
      AYURVEDIC_SUPPLEMENTS =
        T.let(:ayurvedic_supplements, WhopSDK::IndustryTypes::TaggedSymbol)
      KETO_SUPPLEMENTS =
        T.let(:keto_supplements, WhopSDK::IndustryTypes::TaggedSymbol)
      CANNABIS_THC_PRODUCTS =
        T.let(:cannabis_thc_products, WhopSDK::IndustryTypes::TaggedSymbol)
      CBD_HEMP_PRODUCTS_COMPLIANT =
        T.let(
          :cbd_hemp_products_compliant,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      DELTA8_THC_PRODUCTS =
        T.let(:delta8_thc_products, WhopSDK::IndustryTypes::TaggedSymbol)
      DIETARY_SUPPLEMENTS =
        T.let(:dietary_supplements, WhopSDK::IndustryTypes::TaggedSymbol)
      DRUG_PRECURSOR_CHEMICALS =
        T.let(:drug_precursor_chemicals, WhopSDK::IndustryTypes::TaggedSymbol)
      ILLEGAL_DRUGS =
        T.let(:illegal_drugs, WhopSDK::IndustryTypes::TaggedSymbol)
      KRATOM_KAVA_PRODUCTS =
        T.let(:kratom_kava_products, WhopSDK::IndustryTypes::TaggedSymbol)
      MEDICAL_TREATMENT_CLAIMS_PRODUCT =
        T.let(
          :medical_treatment_claims_product,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      NUTRACEUTICAL_PRODUCTS =
        T.let(:nutraceutical_products, WhopSDK::IndustryTypes::TaggedSymbol)
      OTC_MEDICATION_SALES =
        T.let(:otc_medication_sales, WhopSDK::IndustryTypes::TaggedSymbol)
      PERFORMANCE_ENHANCING_DRUGS =
        T.let(
          :performance_enhancing_drugs,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      RESEARCH_CHEMICALS_DANGEROUS =
        T.let(
          :research_chemicals_dangerous,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      RESEARCH_PEPTIDES =
        T.let(:research_peptides, WhopSDK::IndustryTypes::TaggedSymbol)
      SEXUAL_ENHANCEMENT_PRODUCTS =
        T.let(
          :sexual_enhancement_products,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      TOBACCO_PRODUCTS =
        T.let(:tobacco_products, WhopSDK::IndustryTypes::TaggedSymbol)
      UNLICENSED_RX_SALES =
        T.let(:unlicensed_rx_sales, WhopSDK::IndustryTypes::TaggedSymbol)
      SKINCARE = T.let(:skincare, WhopSDK::IndustryTypes::TaggedSymbol)
      HAIRCARE = T.let(:haircare, WhopSDK::IndustryTypes::TaggedSymbol)
      COSMETICS_MAKEUP =
        T.let(:cosmetics_makeup, WhopSDK::IndustryTypes::TaggedSymbol)
      MENS_GROOMING =
        T.let(:mens_grooming, WhopSDK::IndustryTypes::TaggedSymbol)
      FRAGRANCE = T.let(:fragrance, WhopSDK::IndustryTypes::TaggedSymbol)
      ORAL_CARE = T.let(:oral_care, WhopSDK::IndustryTypes::TaggedSymbol)
      SUNSCREEN_SPF =
        T.let(:sunscreen_spf, WhopSDK::IndustryTypes::TaggedSymbol)
      HAIR_GROWTH_PRODUCTS =
        T.let(:hair_growth_products, WhopSDK::IndustryTypes::TaggedSymbol)
      BODY_CARE = T.let(:body_care, WhopSDK::IndustryTypes::TaggedSymbol)
      DEODORANT = T.let(:deodorant, WhopSDK::IndustryTypes::TaggedSymbol)
      LIP_CARE = T.let(:lip_care, WhopSDK::IndustryTypes::TaggedSymbol)
      ACNE_TREATMENT =
        T.let(:acne_treatment, WhopSDK::IndustryTypes::TaggedSymbol)
      MEN_SKINCARE = T.let(:men_skincare, WhopSDK::IndustryTypes::TaggedSymbol)
      BABY_SKINCARE =
        T.let(:baby_skincare, WhopSDK::IndustryTypes::TaggedSymbol)
      TATTOO_AFTERCARE =
        T.let(:tattoo_aftercare, WhopSDK::IndustryTypes::TaggedSymbol)
      INTIMATE_CARE =
        T.let(:intimate_care, WhopSDK::IndustryTypes::TaggedSymbol)
      HOME_GYM_EQUIPMENT =
        T.let(:home_gym_equipment, WhopSDK::IndustryTypes::TaggedSymbol)
      YOGA_EQUIPMENT =
        T.let(:yoga_equipment, WhopSDK::IndustryTypes::TaggedSymbol)
      COMBAT_SPORTS_GEAR =
        T.let(:combat_sports_gear, WhopSDK::IndustryTypes::TaggedSymbol)
      OUTDOOR_FITNESS_GEAR =
        T.let(:outdoor_fitness_gear, WhopSDK::IndustryTypes::TaggedSymbol)
      WEARABLE_FITNESS =
        T.let(:wearable_fitness, WhopSDK::IndustryTypes::TaggedSymbol)
      RECOVERY_EQUIPMENT =
        T.let(:recovery_equipment, WhopSDK::IndustryTypes::TaggedSymbol)
      WEIGHTLIFTING_EQUIPMENT =
        T.let(:weightlifting_equipment, WhopSDK::IndustryTypes::TaggedSymbol)
      CARDIO_EQUIPMENT =
        T.let(:cardio_equipment, WhopSDK::IndustryTypes::TaggedSymbol)
      GYMNASTICS_EQUIPMENT =
        T.let(:gymnastics_equipment, WhopSDK::IndustryTypes::TaggedSymbol)
      SWIMMING_GEAR =
        T.let(:swimming_gear, WhopSDK::IndustryTypes::TaggedSymbol)
      JUMP_ROPE_EQUIPMENT =
        T.let(:jump_rope_equipment, WhopSDK::IndustryTypes::TaggedSymbol)
      GRIP_STRENGTH_TOOLS =
        T.let(:grip_strength_tools, WhopSDK::IndustryTypes::TaggedSymbol)
      SAUNA_COLD_PLUNGE =
        T.let(:sauna_cold_plunge, WhopSDK::IndustryTypes::TaggedSymbol)
      POSTURE_CORRECTORS =
        T.let(:posture_correctors, WhopSDK::IndustryTypes::TaggedSymbol)
      JEWELRY = T.let(:jewelry, WhopSDK::IndustryTypes::TaggedSymbol)
      SUNGLASSES_EYEWEAR =
        T.let(:sunglasses_eyewear, WhopSDK::IndustryTypes::TaggedSymbol)
      BAGS_WALLETS = T.let(:bags_wallets, WhopSDK::IndustryTypes::TaggedSymbol)
      HATS_HEADWEAR =
        T.let(:hats_headwear, WhopSDK::IndustryTypes::TaggedSymbol)
      PHONE_ACCESSORIES =
        T.let(:phone_accessories, WhopSDK::IndustryTypes::TaggedSymbol)
      TRAVEL_ACCESSORIES =
        T.let(:travel_accessories, WhopSDK::IndustryTypes::TaggedSymbol)
      SCARVES_WRAPS =
        T.let(:scarves_wraps, WhopSDK::IndustryTypes::TaggedSymbol)
      BELTS = T.let(:belts, WhopSDK::IndustryTypes::TaggedSymbol)
      HAIR_ACCESSORIES =
        T.let(:hair_accessories, WhopSDK::IndustryTypes::TaggedSymbol)
      TECH_ACCESSORIES =
        T.let(:tech_accessories, WhopSDK::IndustryTypes::TaggedSymbol)
      KEYCHAINS_CHARMS =
        T.let(:keychains_charms, WhopSDK::IndustryTypes::TaggedSymbol)
      CUSTOM_ENGRAVED_ACCESSORIES =
        T.let(
          :custom_engraved_accessories,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      CANNABIS_ACCESSORIES_NON_DRUG =
        T.let(
          :cannabis_accessories_non_drug,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      DRUG_PARAPHERNALIA =
        T.let(:drug_paraphernalia, WhopSDK::IndustryTypes::TaggedSymbol)
      HIGH_VALUE_GOODS_OVER_500 =
        T.let(:high_value_goods_over_500, WhopSDK::IndustryTypes::TaggedSymbol)
      PRECIOUS_METALS_STONES =
        T.let(:precious_metals_stones, WhopSDK::IndustryTypes::TaggedSymbol)
      REPLICA_COUNTERFEIT_GOODS =
        T.let(:replica_counterfeit_goods, WhopSDK::IndustryTypes::TaggedSymbol)
      HOME_DECOR = T.let(:home_decor, WhopSDK::IndustryTypes::TaggedSymbol)
      CANDLES_SCENTS =
        T.let(:candles_scents, WhopSDK::IndustryTypes::TaggedSymbol)
      KITCHENWARE = T.let(:kitchenware, WhopSDK::IndustryTypes::TaggedSymbol)
      BEDDING_LINENS =
        T.let(:bedding_linens, WhopSDK::IndustryTypes::TaggedSymbol)
      SMART_HOME = T.let(:smart_home, WhopSDK::IndustryTypes::TaggedSymbol)
      CLEANING_PRODUCTS =
        T.let(:cleaning_products, WhopSDK::IndustryTypes::TaggedSymbol)
      OUTDOOR_FURNITURE =
        T.let(:outdoor_furniture, WhopSDK::IndustryTypes::TaggedSymbol)
      ORGANIZATION_STORAGE =
        T.let(:organization_storage, WhopSDK::IndustryTypes::TaggedSymbol)
      WALL_ART_PRINTS =
        T.let(:wall_art_prints, WhopSDK::IndustryTypes::TaggedSymbol)
      RUGS_CARPETS = T.let(:rugs_carpets, WhopSDK::IndustryTypes::TaggedSymbol)
      LIGHTING_FIXTURES =
        T.let(:lighting_fixtures, WhopSDK::IndustryTypes::TaggedSymbol)
      PLANTERS_GARDEN_DECOR =
        T.let(:planters_garden_decor, WhopSDK::IndustryTypes::TaggedSymbol)
      BATHROOM_ACCESSORIES =
        T.let(:bathroom_accessories, WhopSDK::IndustryTypes::TaggedSymbol)
      LUXURY_HOME_GOODS =
        T.let(:luxury_home_goods, WhopSDK::IndustryTypes::TaggedSymbol)
      SEASONAL_HOLIDAY_DECOR =
        T.let(:seasonal_holiday_decor, WhopSDK::IndustryTypes::TaggedSymbol)
      PET_HOME_PRODUCTS =
        T.let(:pet_home_products, WhopSDK::IndustryTypes::TaggedSymbol)
      HOME_FRAGRANCE_DIFFUSERS =
        T.let(:home_fragrance_diffusers, WhopSDK::IndustryTypes::TaggedSymbol)
      HAZARDOUS_CHEMICALS_B2C =
        T.let(:hazardous_chemicals_b2c, WhopSDK::IndustryTypes::TaggedSymbol)
      PRE_ORDERS_DELAYED_DELIVERY =
        T.let(
          :pre_orders_delayed_delivery,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      AUDIO_EQUIPMENT =
        T.let(:audio_equipment, WhopSDK::IndustryTypes::TaggedSymbol)
      CAMERA_EQUIPMENT =
        T.let(:camera_equipment, WhopSDK::IndustryTypes::TaggedSymbol)
      GAMING_HARDWARE =
        T.let(:gaming_hardware, WhopSDK::IndustryTypes::TaggedSymbol)
      DRONES_ROBOTICS =
        T.let(:drones_robotics, WhopSDK::IndustryTypes::TaggedSymbol)
      EV_ACCESSORIES =
        T.let(:ev_accessories, WhopSDK::IndustryTypes::TaggedSymbol)
      CHARGING_POWER =
        T.let(:charging_power, WhopSDK::IndustryTypes::TaggedSymbol)
      SMART_WEARABLES =
        T.let(:smart_wearables, WhopSDK::IndustryTypes::TaggedSymbol)
      HOME_SECURITY_DEVICES =
        T.let(:home_security_devices, WhopSDK::IndustryTypes::TaggedSymbol)
      INDUSTRY_TYPES_3D_PRINTERS =
        T.let(:"3d_printers", WhopSDK::IndustryTypes::TaggedSymbol)
      PROJECTORS_DISPLAYS =
        T.let(:projectors_displays, WhopSDK::IndustryTypes::TaggedSymbol)
      STREAMING_DEVICES =
        T.let(:streaming_devices, WhopSDK::IndustryTypes::TaggedSymbol)
      VR_HEADSETS = T.let(:vr_headsets, WhopSDK::IndustryTypes::TaggedSymbol)
      E_READERS = T.let(:e_readers, WhopSDK::IndustryTypes::TaggedSymbol)
      PORTABLE_TECH =
        T.let(:portable_tech, WhopSDK::IndustryTypes::TaggedSymbol)
      HARDWARE_WALLETS =
        T.let(:hardware_wallets, WhopSDK::IndustryTypes::TaggedSymbol)
      REGULATED_MEDICAL_DEVICES =
        T.let(:regulated_medical_devices, WhopSDK::IndustryTypes::TaggedSymbol)
      SIGNAL_JAMMING_DEVICES =
        T.let(:signal_jamming_devices, WhopSDK::IndustryTypes::TaggedSymbol)
      SPY_CAMERAS_HIDDEN_RECORDING =
        T.let(
          :spy_cameras_hidden_recording,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      SPECIALTY_COFFEE_TEA =
        T.let(:specialty_coffee_tea, WhopSDK::IndustryTypes::TaggedSymbol)
      HEALTH_FOOD = T.let(:health_food, WhopSDK::IndustryTypes::TaggedSymbol)
      SNACKS_TREATS =
        T.let(:snacks_treats, WhopSDK::IndustryTypes::TaggedSymbol)
      SAUCES_CONDIMENTS =
        T.let(:sauces_condiments, WhopSDK::IndustryTypes::TaggedSymbol)
      ALCOHOL_SPIRITS =
        T.let(:alcohol_spirits, WhopSDK::IndustryTypes::TaggedSymbol)
      MEAL_KITS = T.let(:meal_kits, WhopSDK::IndustryTypes::TaggedSymbol)
      BAKED_GOODS = T.let(:baked_goods, WhopSDK::IndustryTypes::TaggedSymbol)
      BEVERAGES = T.let(:beverages, WhopSDK::IndustryTypes::TaggedSymbol)
      PET_FOOD_TREATS =
        T.let(:pet_food_treats, WhopSDK::IndustryTypes::TaggedSymbol)
      PROTEIN_BARS_SNACKS =
        T.let(:protein_bars_snacks, WhopSDK::IndustryTypes::TaggedSymbol)
      JERKY_MEAT_SNACKS =
        T.let(:jerky_meat_snacks, WhopSDK::IndustryTypes::TaggedSymbol)
      CHOCOLATE_CONFECTIONS =
        T.let(:chocolate_confections, WhopSDK::IndustryTypes::TaggedSymbol)
      HONEY_SWEETENERS =
        T.let(:honey_sweeteners, WhopSDK::IndustryTypes::TaggedSymbol)
      OLIVE_OIL_VINEGAR =
        T.let(:olive_oil_vinegar, WhopSDK::IndustryTypes::TaggedSymbol)
      HOT_SAUCE = T.let(:hot_sauce, WhopSDK::IndustryTypes::TaggedSymbol)
      DRIED_FRUIT_NUTS =
        T.let(:dried_fruit_nuts, WhopSDK::IndustryTypes::TaggedSymbol)
      BABY_FOOD = T.let(:baby_food, WhopSDK::IndustryTypes::TaggedSymbol)
      PLANT_BASED_FOOD =
        T.let(:plant_based_food, WhopSDK::IndustryTypes::TaggedSymbol)
      GLUTEN_FREE_FOOD =
        T.let(:gluten_free_food, WhopSDK::IndustryTypes::TaggedSymbol)
      KETO_FOOD_PRODUCTS =
        T.let(:keto_food_products, WhopSDK::IndustryTypes::TaggedSymbol)
      SUBSCRIPTION_FOOD_BOX =
        T.let(:subscription_food_box, WhopSDK::IndustryTypes::TaggedSymbol)
      KOMBUCHA_FERMENTED =
        T.let(:kombucha_fermented, WhopSDK::IndustryTypes::TaggedSymbol)
      ALCOHOL_SALES =
        T.let(:alcohol_sales, WhopSDK::IndustryTypes::TaggedSymbol)
      BABY_PRODUCTS =
        T.let(:baby_products, WhopSDK::IndustryTypes::TaggedSymbol)
      KIDS_TOYS = T.let(:kids_toys, WhopSDK::IndustryTypes::TaggedSymbol)
      KIDS_EDUCATIONAL =
        T.let(:kids_educational, WhopSDK::IndustryTypes::TaggedSymbol)
      BABY_CLOTHING_ACCESSORIES =
        T.let(:baby_clothing_accessories, WhopSDK::IndustryTypes::TaggedSymbol)
      NURSERY_DECOR =
        T.let(:nursery_decor, WhopSDK::IndustryTypes::TaggedSymbol)
      KIDS_OUTDOOR_PLAY =
        T.let(:kids_outdoor_play, WhopSDK::IndustryTypes::TaggedSymbol)
      KIDS_BOOKS = T.let(:kids_books, WhopSDK::IndustryTypes::TaggedSymbol)
      BABY_SAFETY_PRODUCTS =
        T.let(:baby_safety_products, WhopSDK::IndustryTypes::TaggedSymbol)
      KIDS_ARTS_CRAFTS =
        T.let(:kids_arts_crafts, WhopSDK::IndustryTypes::TaggedSymbol)
      CAMPING_HIKING =
        T.let(:camping_hiking, WhopSDK::IndustryTypes::TaggedSymbol)
      FISHING_GEAR = T.let(:fishing_gear, WhopSDK::IndustryTypes::TaggedSymbol)
      HUNTING_GEAR = T.let(:hunting_gear, WhopSDK::IndustryTypes::TaggedSymbol)
      CYCLING_GEAR = T.let(:cycling_gear, WhopSDK::IndustryTypes::TaggedSymbol)
      WATER_SPORTS_GEAR =
        T.let(:water_sports_gear, WhopSDK::IndustryTypes::TaggedSymbol)
      GOLF_EQUIPMENT =
        T.let(:golf_equipment, WhopSDK::IndustryTypes::TaggedSymbol)
      SNOW_SPORTS_GEAR =
        T.let(:snow_sports_gear, WhopSDK::IndustryTypes::TaggedSymbol)
      CLIMBING_GEAR =
        T.let(:climbing_gear, WhopSDK::IndustryTypes::TaggedSymbol)
      ARCHERY_EQUIPMENT =
        T.let(:archery_equipment, WhopSDK::IndustryTypes::TaggedSymbol)
      SKATEBOARDING_GEAR =
        T.let(:skateboarding_gear, WhopSDK::IndustryTypes::TaggedSymbol)
      PICKLEBALL_EQUIPMENT =
        T.let(:pickleball_equipment, WhopSDK::IndustryTypes::TaggedSymbol)
      TENNIS_EQUIPMENT =
        T.let(:tennis_equipment, WhopSDK::IndustryTypes::TaggedSymbol)
      EQUESTRIAN_GEAR =
        T.let(:equestrian_gear, WhopSDK::IndustryTypes::TaggedSymbol)
      TACTICAL_GEAR =
        T.let(:tactical_gear, WhopSDK::IndustryTypes::TaggedSymbol)
      OVERLANDING_GEAR =
        T.let(:overlanding_gear, WhopSDK::IndustryTypes::TaggedSymbol)
      EXPLOSIVES_FIREWORKS =
        T.let(:explosives_fireworks, WhopSDK::IndustryTypes::TaggedSymbol)
      FIREARMS_SALES =
        T.let(:firearms_sales, WhopSDK::IndustryTypes::TaggedSymbol)
      SELF_DEFENSE_PRODUCTS =
        T.let(:self_defense_products, WhopSDK::IndustryTypes::TaggedSymbol)
      WEAPON_COMPONENTS =
        T.let(:weapon_components, WhopSDK::IndustryTypes::TaggedSymbol)
      CRAFT_KITS = T.let(:craft_kits, WhopSDK::IndustryTypes::TaggedSymbol)
      SEWING_TEXTILES =
        T.let(:sewing_textiles, WhopSDK::IndustryTypes::TaggedSymbol)
      STATIONERY = T.let(:stationery, WhopSDK::IndustryTypes::TaggedSymbol)
      SCRAPBOOKING_SUPPLIES =
        T.let(:scrapbooking_supplies, WhopSDK::IndustryTypes::TaggedSymbol)
      BEADING_JEWELRY_SUPPLIES =
        T.let(:beading_jewelry_supplies, WhopSDK::IndustryTypes::TaggedSymbol)
      POTTERY_SUPPLIES =
        T.let(:pottery_supplies, WhopSDK::IndustryTypes::TaggedSymbol)
      PRINTMAKING_SUPPLIES =
        T.let(:printmaking_supplies, WhopSDK::IndustryTypes::TaggedSymbol)
      CAR_ACCESSORIES =
        T.let(:car_accessories, WhopSDK::IndustryTypes::TaggedSymbol)
      DETAILING_PRODUCTS =
        T.let(:detailing_products, WhopSDK::IndustryTypes::TaggedSymbol)
      MOTORCYCLE_GEAR =
        T.let(:motorcycle_gear, WhopSDK::IndustryTypes::TaggedSymbol)
      TRUCK_ACCESSORIES =
        T.let(:truck_accessories, WhopSDK::IndustryTypes::TaggedSymbol)
      OFF_ROAD_PARTS =
        T.let(:off_road_parts, WhopSDK::IndustryTypes::TaggedSymbol)
      CAR_AUDIO_ELECTRONICS =
        T.let(:car_audio_electronics, WhopSDK::IndustryTypes::TaggedSymbol)
      PERFORMANCE_PARTS =
        T.let(:performance_parts, WhopSDK::IndustryTypes::TaggedSymbol)
      CAR_CARE_PRODUCTS =
        T.let(:car_care_products, WhopSDK::IndustryTypes::TaggedSymbol)
      EV_CHARGING_ACCESSORIES =
        T.let(:ev_charging_accessories, WhopSDK::IndustryTypes::TaggedSymbol)
      AUTO_REPAIR_SERVICE =
        T.let(:auto_repair_service, WhopSDK::IndustryTypes::TaggedSymbol)
      AUTO_BODY_SHOP =
        T.let(:auto_body_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      CAR_DEALERSHIP =
        T.let(:car_dealership, WhopSDK::IndustryTypes::TaggedSymbol)
      CAR_WASH = T.let(:car_wash, WhopSDK::IndustryTypes::TaggedSymbol)
      TIRE_SHOP = T.let(:tire_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      OIL_CHANGE_SHOP =
        T.let(:oil_change_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      AUTO_PARTS_STORE =
        T.let(:auto_parts_store, WhopSDK::IndustryTypes::TaggedSymbol)
      MOTORCYCLE_SHOP =
        T.let(:motorcycle_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      EV_CHARGING_STATION =
        T.let(:ev_charging_station, WhopSDK::IndustryTypes::TaggedSymbol)
      TRANSMISSION_SHOP =
        T.let(:transmission_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      MUFFLER_EXHAUST_SHOP =
        T.let(:muffler_exhaust_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      AUTO_GLASS_SHOP =
        T.let(:auto_glass_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      AUTO_UPHOLSTERY_SHOP =
        T.let(:auto_upholstery_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      CAR_AUDIO_SHOP =
        T.let(:car_audio_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      SMOG_EMISSIONS_SHOP =
        T.let(:smog_emissions_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      TRUCK_REPAIR_SHOP =
        T.let(:truck_repair_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      RV_REPAIR_SHOP =
        T.let(:rv_repair_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      BOAT_REPAIR_SHOP =
        T.let(:boat_repair_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      USED_CAR_LOT = T.let(:used_car_lot, WhopSDK::IndustryTypes::TaggedSymbol)
      AUTO_AUCTION = T.let(:auto_auction, WhopSDK::IndustryTypes::TaggedSymbol)
      DOG_PRODUCTS = T.let(:dog_products, WhopSDK::IndustryTypes::TaggedSymbol)
      CAT_PRODUCTS = T.let(:cat_products, WhopSDK::IndustryTypes::TaggedSymbol)
      AQUARIUM_SUPPLIES =
        T.let(:aquarium_supplies, WhopSDK::IndustryTypes::TaggedSymbol)
      BIRD_SUPPLIES =
        T.let(:bird_supplies, WhopSDK::IndustryTypes::TaggedSymbol)
      REPTILE_SUPPLIES =
        T.let(:reptile_supplies, WhopSDK::IndustryTypes::TaggedSymbol)
      HORSE_SUPPLIES =
        T.let(:horse_supplies, WhopSDK::IndustryTypes::TaggedSymbol)
      PET_APPAREL = T.let(:pet_apparel, WhopSDK::IndustryTypes::TaggedSymbol)
      PET_TECH = T.let(:pet_tech, WhopSDK::IndustryTypes::TaggedSymbol)
      PET_GROOMING_PRODUCTS =
        T.let(:pet_grooming_products, WhopSDK::IndustryTypes::TaggedSymbol)
      HAND_TOOLS = T.let(:hand_tools, WhopSDK::IndustryTypes::TaggedSymbol)
      POWER_TOOLS_AND_ACCESSORIES =
        T.let(
          :power_tools_and_accessories,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      HARDWARE_AND_FASTENERS =
        T.let(:hardware_and_fasteners, WhopSDK::IndustryTypes::TaggedSymbol)
      WORKSHOP_EQUIPMENT_AND_STORAGE =
        T.let(
          :workshop_equipment_and_storage,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      SAFETY_AND_WORK_GEAR =
        T.let(:safety_and_work_gear, WhopSDK::IndustryTypes::TaggedSymbol)
      PAINTING_AND_BUILDING_SUPPLIES =
        T.let(
          :painting_and_building_supplies,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      OFFICE_SUPPLIES =
        T.let(:office_supplies, WhopSDK::IndustryTypes::TaggedSymbol)
      DESK_ACCESSORIES =
        T.let(:desk_accessories, WhopSDK::IndustryTypes::TaggedSymbol)
      PRINTING_SUPPLIES =
        T.let(:printing_supplies, WhopSDK::IndustryTypes::TaggedSymbol)
      SHIPPING_PACKAGING =
        T.let(:shipping_packaging, WhopSDK::IndustryTypes::TaggedSymbol)
      REUSABLE_PRODUCTS =
        T.let(:reusable_products, WhopSDK::IndustryTypes::TaggedSymbol)
      SOLAR_POWERED_PRODUCTS =
        T.let(:solar_powered_products, WhopSDK::IndustryTypes::TaggedSymbol)
      HANDMADE_GOODS_MARKETPLACE =
        T.let(:handmade_goods_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      VINTAGE_RESALE_MARKETPLACE =
        T.let(:vintage_resale_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      ELECTRONICS_MARKETPLACE =
        T.let(:electronics_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      AUTO_PARTS_MARKETPLACE =
        T.let(:auto_parts_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      LUXURY_GOODS_MARKETPLACE =
        T.let(:luxury_goods_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      COLLECTIBLES_MARKETPLACE =
        T.let(:collectibles_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      WHOLESALE_MARKETPLACE =
        T.let(:wholesale_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      LOCAL_GOODS_MARKETPLACE =
        T.let(:local_goods_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      SNEAKER_MARKETPLACE =
        T.let(:sneaker_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      BOOK_MARKETPLACE =
        T.let(:book_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      FURNITURE_MARKETPLACE =
        T.let(:furniture_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      MUSICAL_INSTRUMENT_MARKETPLACE =
        T.let(
          :musical_instrument_marketplace,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      ART_MARKETPLACE =
        T.let(:art_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      TICKET_MARKETPLACE =
        T.let(:ticket_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      INDUSTRIAL_EQUIPMENT_MARKETPLACE =
        T.let(
          :industrial_equipment_marketplace,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      CRAFT_SUPPLY_MARKETPLACE =
        T.let(:craft_supply_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      BABY_KIDS_MARKETPLACE =
        T.let(:baby_kids_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      OUTDOOR_GEAR_MARKETPLACE =
        T.let(:outdoor_gear_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      PET_MARKETPLACE =
        T.let(:pet_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      SUSTAINABLE_GOODS_MARKETPLACE =
        T.let(
          :sustainable_goods_marketplace,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      INDUSTRY_TYPES_3D_WEAPON_FILES =
        T.let(:"3d_weapon_files", WhopSDK::IndustryTypes::TaggedSymbol)
      CULTURAL_ARTIFACTS_LOOTED =
        T.let(:cultural_artifacts_looted, WhopSDK::IndustryTypes::TaggedSymbol)
      DROPSHIPPING_OPERATIONS =
        T.let(:dropshipping_operations, WhopSDK::IndustryTypes::TaggedSymbol)
      ENDANGERED_ANIMAL_PRODUCTS =
        T.let(:endangered_animal_products, WhopSDK::IndustryTypes::TaggedSymbol)
      HUMAN_BODY_PARTS_TISSUE =
        T.let(:human_body_parts_tissue, WhopSDK::IndustryTypes::TaggedSymbol)
      NFT_MARKETPLACE =
        T.let(:nft_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      PENNY_AUCTION =
        T.let(:penny_auction, WhopSDK::IndustryTypes::TaggedSymbol)
      PRIMARY_EVENT_TICKETING =
        T.let(:primary_event_ticketing, WhopSDK::IndustryTypes::TaggedSymbol)
      FREELANCER_MARKETPLACE =
        T.let(:freelancer_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      HOME_SERVICES_MARKETPLACE =
        T.let(:home_services_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      TUTORING_MARKETPLACE =
        T.let(:tutoring_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      LEGAL_SERVICES_MARKETPLACE =
        T.let(:legal_services_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      HEALTHCARE_MARKETPLACE =
        T.let(:healthcare_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      WEDDING_SERVICES_MARKETPLACE =
        T.let(
          :wedding_services_marketplace,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      CREATIVE_SERVICES_MARKETPLACE =
        T.let(
          :creative_services_marketplace,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      BEAUTY_SERVICES_MARKETPLACE =
        T.let(
          :beauty_services_marketplace,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      FITNESS_TRAINER_MARKETPLACE =
        T.let(
          :fitness_trainer_marketplace,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      PET_SERVICES_MARKETPLACE =
        T.let(:pet_services_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      CHILDCARE_MARKETPLACE =
        T.let(:childcare_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      ELDER_CARE_MARKETPLACE =
        T.let(:elder_care_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      TRANSLATION_MARKETPLACE =
        T.let(:translation_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      COACHING_MARKETPLACE =
        T.let(:coaching_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      THERAPY_MARKETPLACE =
        T.let(:therapy_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      PHOTOGRAPHY_MARKETPLACE =
        T.let(:photography_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      DJ_ENTERTAINMENT_MARKETPLACE =
        T.let(
          :dj_entertainment_marketplace,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      AUTO_SERVICES_MARKETPLACE =
        T.let(:auto_services_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      FREELANCE_MARKETPLACE_OPERATOR =
        T.let(
          :freelance_marketplace_operator,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      EQUIPMENT_RENTAL_MARKETPLACE =
        T.let(
          :equipment_rental_marketplace,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      VEHICLE_RENTAL_MARKETPLACE =
        T.let(:vehicle_rental_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      SPACE_RENTAL_MARKETPLACE =
        T.let(:space_rental_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      VACATION_RENTAL_MARKETPLACE =
        T.let(
          :vacation_rental_marketplace,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      CLOTHING_RENTAL_MARKETPLACE =
        T.let(
          :clothing_rental_marketplace,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      CAMERA_GEAR_RENTAL =
        T.let(:camera_gear_rental, WhopSDK::IndustryTypes::TaggedSymbol)
      RV_CAMPER_RENTAL =
        T.let(:rv_camper_rental, WhopSDK::IndustryTypes::TaggedSymbol)
      BOAT_RENTAL_MARKETPLACE =
        T.let(:boat_rental_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      STORAGE_RENTAL_MARKETPLACE =
        T.let(:storage_rental_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      OFFICE_COWORKING_RENTAL =
        T.let(:office_coworking_rental, WhopSDK::IndustryTypes::TaggedSymbol)
      PARKING_RENTAL_MARKETPLACE =
        T.let(:parking_rental_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      RESTAURANT_MARKETPLACE =
        T.let(:restaurant_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      GROCERY_MARKETPLACE =
        T.let(:grocery_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      CATERING_MARKETPLACE =
        T.let(:catering_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      HOMEMADE_FOOD_MARKETPLACE =
        T.let(:homemade_food_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      MEAL_PREP_MARKETPLACE =
        T.let(:meal_prep_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      BAKERY_MARKETPLACE =
        T.let(:bakery_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      FARM_PRODUCE_MARKETPLACE =
        T.let(:farm_produce_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      CHEF_BOOKING_MARKETPLACE =
        T.let(:chef_booking_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      COURSE_MARKETPLACE =
        T.let(:course_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      TEMPLATE_MARKETPLACE =
        T.let(:template_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      STOCK_MEDIA_MARKETPLACE =
        T.let(:stock_media_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      MUSIC_BEATS_MARKETPLACE =
        T.let(:music_beats_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      EBOOK_MARKETPLACE =
        T.let(:ebook_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      PLUGIN_THEME_MARKETPLACE =
        T.let(:plugin_theme_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      INDUSTRY_TYPES_3D_MODEL_MARKETPLACE =
        T.let(:"3d_model_marketplace", WhopSDK::IndustryTypes::TaggedSymbol)
      PROMPT_MARKETPLACE =
        T.let(:prompt_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      CODE_SNIPPET_MARKETPLACE =
        T.let(:code_snippet_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      AFFILIATE_MARKETING_PLATFORM =
        T.let(
          :affiliate_marketing_platform,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      GAME_ACCOUNT_SELLING =
        T.let(:game_account_selling, WhopSDK::IndustryTypes::TaggedSymbol)
      GAME_CHEATS_HACKS =
        T.let(:game_cheats_hacks, WhopSDK::IndustryTypes::TaggedSymbol)
      PIRATED_DIGITAL_CONTENT =
        T.let(:pirated_digital_content, WhopSDK::IndustryTypes::TaggedSymbol)
      UNAUTHORIZED_INGAME_CURRENCY =
        T.let(
          :unauthorized_ingame_currency,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      WEAPON_BLUEPRINT_DISTRIBUTION =
        T.let(
          :weapon_blueprint_distribution,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      SAAS_MARKETPLACE =
        T.let(:saas_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      AGENCY_MARKETPLACE =
        T.let(:agency_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      MANUFACTURING_MARKETPLACE =
        T.let(:manufacturing_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      LOGISTICS_MARKETPLACE =
        T.let(:logistics_marketplace, WhopSDK::IndustryTypes::TaggedSymbol)
      COMMERCIAL_REAL_ESTATE_MARKETPLACE =
        T.let(
          :commercial_real_estate_marketplace,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      BUSINESS_FOR_SALE_MARKETPLACE =
        T.let(
          :business_for_sale_marketplace,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      FOOD_DELIVERY =
        T.let(:food_delivery, WhopSDK::IndustryTypes::TaggedSymbol)
      GROCERY_DELIVERY =
        T.let(:grocery_delivery, WhopSDK::IndustryTypes::TaggedSymbol)
      PACKAGE_DELIVERY =
        T.let(:package_delivery, WhopSDK::IndustryTypes::TaggedSymbol)
      MOVING_LABOR = T.let(:moving_labor, WhopSDK::IndustryTypes::TaggedSymbol)
      ALCOHOL_DELIVERY =
        T.let(:alcohol_delivery, WhopSDK::IndustryTypes::TaggedSymbol)
      PHARMACY_DELIVERY =
        T.let(:pharmacy_delivery, WhopSDK::IndustryTypes::TaggedSymbol)
      FLOWER_DELIVERY_GIG =
        T.let(:flower_delivery_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      FURNITURE_DELIVERY_GIG =
        T.let(:furniture_delivery_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      CATERING_DELIVERY =
        T.let(:catering_delivery, WhopSDK::IndustryTypes::TaggedSymbol)
      RIDESHARE = T.let(:rideshare, WhopSDK::IndustryTypes::TaggedSymbol)
      CHAUFFEUR_SERVICE =
        T.let(:chauffeur_service, WhopSDK::IndustryTypes::TaggedSymbol)
      BIKE_SCOOTER_RENTAL =
        T.let(:bike_scooter_rental, WhopSDK::IndustryTypes::TaggedSymbol)
      BOAT_CHARTER_GIG =
        T.let(:boat_charter_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      MOVING_TRUCK_RENTAL_GIG =
        T.let(:moving_truck_rental_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      ASSEMBLY_INSTALLATION =
        T.let(:assembly_installation, WhopSDK::IndustryTypes::TaggedSymbol)
      WAITING_LINE_SERVICE =
        T.let(:waiting_line_service, WhopSDK::IndustryTypes::TaggedSymbol)
      PERSONAL_SHOPPING =
        T.let(:personal_shopping, WhopSDK::IndustryTypes::TaggedSymbol)
      GROCERY_SHOPPING_GIG =
        T.let(:grocery_shopping_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      GIFT_WRAPPING_GIG =
        T.let(:gift_wrapping_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      NOTARY_GIG = T.let(:notary_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      LAUNDRY_GIG = T.let(:laundry_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      CAR_WASH_GIG = T.let(:car_wash_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      CLEANING_GIG = T.let(:cleaning_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      LAWN_CARE_GIG =
        T.let(:lawn_care_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      HANDYMAN_GIG = T.let(:handyman_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      PET_CARE_GIG = T.let(:pet_care_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      CHILDCARE_GIG =
        T.let(:childcare_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      ELDER_CARE_GIG =
        T.let(:elder_care_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      PAINTING_GIG = T.let(:painting_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      SNOW_REMOVAL_GIG =
        T.let(:snow_removal_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      POOL_CLEANING_GIG =
        T.let(:pool_cleaning_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      ORGANIZING_GIG =
        T.let(:organizing_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      PRESSURE_WASHING_GIG =
        T.let(:pressure_washing_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      JUNK_REMOVAL_GIG =
        T.let(:junk_removal_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      FREELANCE_DESIGN_GIG =
        T.let(:freelance_design_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      FREELANCE_WRITING_GIG =
        T.let(:freelance_writing_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      FREELANCE_DEV_GIG =
        T.let(:freelance_dev_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      MUSIC_PERFORMANCE_GIG =
        T.let(:music_performance_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      EVENT_STAFFING_GIG =
        T.let(:event_staffing_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      MODEL_TALENT_GIG =
        T.let(:model_talent_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      PHOTOGRAPHY_GIG =
        T.let(:photography_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      VIDEOGRAPHY_GIG =
        T.let(:videography_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      VOICEOVER_GIG =
        T.let(:voiceover_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      ILLUSTRATION_GIG =
        T.let(:illustration_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      SOCIAL_MEDIA_GIG =
        T.let(:social_media_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      DJ_GIG = T.let(:dj_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      FACE_PAINTING_GIG =
        T.let(:face_painting_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      CLIPPING_GIG = T.let(:clipping_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      CONSULTING_GIG =
        T.let(:consulting_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      ACCOUNTING_GIG =
        T.let(:accounting_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      LEGAL_GIG = T.let(:legal_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      HEALTHCARE_GIG =
        T.let(:healthcare_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      TEACHING_GIG = T.let(:teaching_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      TRANSLATION_GIG =
        T.let(:translation_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      DATA_ENTRY_GIG =
        T.let(:data_entry_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      RESEARCH_GIG = T.let(:research_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      VIRTUAL_ASSISTANT_GIG =
        T.let(:virtual_assistant_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      SALES_GIG = T.let(:sales_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      RECRUITING_GIG =
        T.let(:recruiting_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      MYSTERY_SHOPPING =
        T.let(:mystery_shopping, WhopSDK::IndustryTypes::TaggedSymbol)
      FOCUS_GROUP_GIG =
        T.let(:focus_group_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      PRODUCT_TESTING_GIG =
        T.let(:product_testing_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      DRONE_PILOT_GIG =
        T.let(:drone_pilot_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      FITNESS_INSTRUCTION_GIG =
        T.let(:fitness_instruction_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      TOUR_GUIDE_GIG =
        T.let(:tour_guide_gig, WhopSDK::IndustryTypes::TaggedSymbol)
      FOREX_SIGNALS_GROUP =
        T.let(:forex_signals_group, WhopSDK::IndustryTypes::TaggedSymbol)
      STOCK_SIGNALS_GROUP =
        T.let(:stock_signals_group, WhopSDK::IndustryTypes::TaggedSymbol)
      CRYPTO_SIGNALS_GROUP =
        T.let(:crypto_signals_group, WhopSDK::IndustryTypes::TaggedSymbol)
      OPTIONS_ALERTS_GROUP =
        T.let(:options_alerts_group, WhopSDK::IndustryTypes::TaggedSymbol)
      FUTURES_SIGNALS_GROUP =
        T.let(:futures_signals_group, WhopSDK::IndustryTypes::TaggedSymbol)
      TRADING_EDUCATION_GROUP =
        T.let(:trading_education_group, WhopSDK::IndustryTypes::TaggedSymbol)
      INVESTING_COMMUNITY =
        T.let(:investing_community, WhopSDK::IndustryTypes::TaggedSymbol)
      PREDICTION_MARKETS_GROUP =
        T.let(:prediction_markets_group, WhopSDK::IndustryTypes::TaggedSymbol)
      NFT_ALPHA_GROUP =
        T.let(:nft_alpha_group, WhopSDK::IndustryTypes::TaggedSymbol)
      PENNY_STOCK_GROUP =
        T.let(:penny_stock_group, WhopSDK::IndustryTypes::TaggedSymbol)
      DIVIDEND_INVESTING_GROUP =
        T.let(:dividend_investing_group, WhopSDK::IndustryTypes::TaggedSymbol)
      REAL_ESTATE_INVESTING_GROUP =
        T.let(
          :real_estate_investing_group,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      PROP_FIRM_GROUP =
        T.let(:prop_firm_group, WhopSDK::IndustryTypes::TaggedSymbol)
      SPORTS_PICKS_GROUP =
        T.let(:sports_picks_group, WhopSDK::IndustryTypes::TaggedSymbol)
      DFS_GROUP = T.let(:dfs_group, WhopSDK::IndustryTypes::TaggedSymbol)
      HORSE_RACING_GROUP =
        T.let(:horse_racing_group, WhopSDK::IndustryTypes::TaggedSymbol)
      ESPORTS_PICKS_GROUP =
        T.let(:esports_picks_group, WhopSDK::IndustryTypes::TaggedSymbol)
      NFL_PICKS_GROUP =
        T.let(:nfl_picks_group, WhopSDK::IndustryTypes::TaggedSymbol)
      NBA_PICKS_GROUP =
        T.let(:nba_picks_group, WhopSDK::IndustryTypes::TaggedSymbol)
      SOCCER_PICKS_GROUP =
        T.let(:soccer_picks_group, WhopSDK::IndustryTypes::TaggedSymbol)
      MLB_PICKS_GROUP =
        T.let(:mlb_picks_group, WhopSDK::IndustryTypes::TaggedSymbol)
      MMA_PICKS_GROUP =
        T.let(:mma_picks_group, WhopSDK::IndustryTypes::TaggedSymbol)
      PROP_BETS_GROUP =
        T.let(:prop_bets_group, WhopSDK::IndustryTypes::TaggedSymbol)
      FANTASY_SPORTS_FREE_TO_PLAY =
        T.let(
          :fantasy_sports_free_to_play,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      LICENSED_GAMBLING_OPERATIONS =
        T.let(
          :licensed_gambling_operations,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      UNLICENSED_GAMBLING =
        T.let(:unlicensed_gambling, WhopSDK::IndustryTypes::TaggedSymbol)
      ECOMMERCE_COMMUNITY =
        T.let(:ecommerce_community, WhopSDK::IndustryTypes::TaggedSymbol)
      AGENCY_COMMUNITY =
        T.let(:agency_community, WhopSDK::IndustryTypes::TaggedSymbol)
      SAAS_COMMUNITY =
        T.let(:saas_community, WhopSDK::IndustryTypes::TaggedSymbol)
      SAAS_MARKETING_COMMUNITY =
        T.let(:saas_marketing_community, WhopSDK::IndustryTypes::TaggedSymbol)
      REAL_ESTATE_COMMUNITY =
        T.let(:real_estate_community, WhopSDK::IndustryTypes::TaggedSymbol)
      SALES_COMMUNITY =
        T.let(:sales_community, WhopSDK::IndustryTypes::TaggedSymbol)
      AFFILIATE_COMMUNITY =
        T.let(:affiliate_community, WhopSDK::IndustryTypes::TaggedSymbol)
      RESELLING_COMMUNITY =
        T.let(:reselling_community, WhopSDK::IndustryTypes::TaggedSymbol)
      AMAZON_SELLER_COMMUNITY =
        T.let(:amazon_seller_community, WhopSDK::IndustryTypes::TaggedSymbol)
      DROPSHIPPING_COMMUNITY =
        T.let(:dropshipping_community, WhopSDK::IndustryTypes::TaggedSymbol)
      FREELANCER_COMMUNITY =
        T.let(:freelancer_community, WhopSDK::IndustryTypes::TaggedSymbol)
      STARTUP_FOUNDER_COMMUNITY =
        T.let(:startup_founder_community, WhopSDK::IndustryTypes::TaggedSymbol)
      CEO_EXECUTIVE_COMMUNITY =
        T.let(:ceo_executive_community, WhopSDK::IndustryTypes::TaggedSymbol)
      WOMEN_BUSINESS_COMMUNITY =
        T.let(:women_business_community, WhopSDK::IndustryTypes::TaggedSymbol)
      MARKETING_COMMUNITY =
        T.let(:marketing_community, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_BUSINESS_COMMUNITY =
        T.let(:ai_business_community, WhopSDK::IndustryTypes::TaggedSymbol)
      CONTENT_BUSINESS_COMMUNITY =
        T.let(:content_business_community, WhopSDK::IndustryTypes::TaggedSymbol)
      LOCAL_BUSINESS_COMMUNITY =
        T.let(:local_business_community, WhopSDK::IndustryTypes::TaggedSymbol)
      PRIVATE_EQUITY_COMMUNITY =
        T.let(:private_equity_community, WhopSDK::IndustryTypes::TaggedSymbol)
      WHOLESALING_COMMUNITY =
        T.let(:wholesaling_community, WhopSDK::IndustryTypes::TaggedSymbol)
      COACHING_BUSINESS_COMMUNITY =
        T.let(
          :coaching_business_community,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      MAKE_MONEY_ONLINE_COMMUNITY =
        T.let(
          :make_money_online_community,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      FITNESS_ACCOUNTABILITY =
        T.let(:fitness_accountability, WhopSDK::IndustryTypes::TaggedSymbol)
      NUTRITION_COMMUNITY =
        T.let(:nutrition_community, WhopSDK::IndustryTypes::TaggedSymbol)
      WEIGHT_LOSS_GROUP =
        T.let(:weight_loss_group, WhopSDK::IndustryTypes::TaggedSymbol)
      BODYBUILDING_COMMUNITY =
        T.let(:bodybuilding_community, WhopSDK::IndustryTypes::TaggedSymbol)
      RUNNING_COMMUNITY =
        T.let(:running_community, WhopSDK::IndustryTypes::TaggedSymbol)
      MARTIAL_ARTS_COMMUNITY =
        T.let(:martial_arts_community, WhopSDK::IndustryTypes::TaggedSymbol)
      MENTAL_HEALTH_GROUP =
        T.let(:mental_health_group, WhopSDK::IndustryTypes::TaggedSymbol)
      BIOHACKING_COMMUNITY =
        T.let(:biohacking_community, WhopSDK::IndustryTypes::TaggedSymbol)
      ADDICTION_SUPPORT_GROUP =
        T.let(:addiction_support_group, WhopSDK::IndustryTypes::TaggedSymbol)
      YOGA_COMMUNITY =
        T.let(:yoga_community, WhopSDK::IndustryTypes::TaggedSymbol)
      CROSSFIT_COMMUNITY =
        T.let(:crossfit_community, WhopSDK::IndustryTypes::TaggedSymbol)
      LONGEVITY_COMMUNITY =
        T.let(:longevity_community, WhopSDK::IndustryTypes::TaggedSymbol)
      WOMENS_FITNESS_COMMUNITY =
        T.let(:womens_fitness_community, WhopSDK::IndustryTypes::TaggedSymbol)
      POSTPARTUM_FITNESS_GROUP =
        T.let(:postpartum_fitness_group, WhopSDK::IndustryTypes::TaggedSymbol)
      CHRONIC_ILLNESS_SUPPORT =
        T.let(:chronic_illness_support, WhopSDK::IndustryTypes::TaggedSymbol)
      SKINCARE_COMMUNITY =
        T.let(:skincare_community, WhopSDK::IndustryTypes::TaggedSymbol)
      CONTENT_CREATOR_COMMUNITY =
        T.let(:content_creator_community, WhopSDK::IndustryTypes::TaggedSymbol)
      VIDEO_EDITING_COMMUNITY =
        T.let(:video_editing_community, WhopSDK::IndustryTypes::TaggedSymbol)
      MUSIC_PRODUCER_COMMUNITY =
        T.let(:music_producer_community, WhopSDK::IndustryTypes::TaggedSymbol)
      PHOTOGRAPHY_COMMUNITY =
        T.let(:photography_community, WhopSDK::IndustryTypes::TaggedSymbol)
      WRITING_COMMUNITY =
        T.let(:writing_community, WhopSDK::IndustryTypes::TaggedSymbol)
      DESIGN_COMMUNITY =
        T.let(:design_community, WhopSDK::IndustryTypes::TaggedSymbol)
      YOUTUBE_CREATOR_COMMUNITY =
        T.let(:youtube_creator_community, WhopSDK::IndustryTypes::TaggedSymbol)
      TIKTOK_CREATOR_COMMUNITY =
        T.let(:tiktok_creator_community, WhopSDK::IndustryTypes::TaggedSymbol)
      PODCAST_COMMUNITY =
        T.let(:podcast_community, WhopSDK::IndustryTypes::TaggedSymbol)
      FILMMAKER_COMMUNITY =
        T.let(:filmmaker_community, WhopSDK::IndustryTypes::TaggedSymbol)
      CLIPPING_COMMUNITY =
        T.let(:clipping_community, WhopSDK::IndustryTypes::TaggedSymbol)
      YOUTUBE_AUTOMATION_COMMUNITY =
        T.let(
          :youtube_automation_community,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      DEVELOPER_COMMUNITY =
        T.let(:developer_community, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_COMMUNITY = T.let(:ai_community, WhopSDK::IndustryTypes::TaggedSymbol)
      CYBERSECURITY_COMMUNITY =
        T.let(:cybersecurity_community, WhopSDK::IndustryTypes::TaggedSymbol)
      NO_CODE_COMMUNITY =
        T.let(:no_code_community, WhopSDK::IndustryTypes::TaggedSymbol)
      INDIE_HACKER_COMMUNITY =
        T.let(:indie_hacker_community, WhopSDK::IndustryTypes::TaggedSymbol)
      DEVOPS_COMMUNITY =
        T.let(:devops_community, WhopSDK::IndustryTypes::TaggedSymbol)
      DATA_SCIENCE_COMMUNITY =
        T.let(:data_science_community, WhopSDK::IndustryTypes::TaggedSymbol)
      PRODUCT_COMMUNITY =
        T.let(:product_community, WhopSDK::IndustryTypes::TaggedSymbol)
      OPEN_SOURCE_COMMUNITY =
        T.let(:open_source_community, WhopSDK::IndustryTypes::TaggedSymbol)
      DATING_COMMUNITY =
        T.let(:dating_community, WhopSDK::IndustryTypes::TaggedSymbol)
      PERSONAL_DEVELOPMENT_COMMUNITY =
        T.let(
          :personal_development_community,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      SPIRITUALITY_COMMUNITY =
        T.let(:spirituality_community, WhopSDK::IndustryTypes::TaggedSymbol)
      PARENTING_COMMUNITY =
        T.let(:parenting_community, WhopSDK::IndustryTypes::TaggedSymbol)
      TRAVEL_COMMUNITY =
        T.let(:travel_community, WhopSDK::IndustryTypes::TaggedSymbol)
      NETWORKING_COMMUNITY =
        T.let(:networking_community, WhopSDK::IndustryTypes::TaggedSymbol)
      FAITH_COMMUNITY =
        T.let(:faith_community, WhopSDK::IndustryTypes::TaggedSymbol)
      MENS_COMMUNITY =
        T.let(:mens_community, WhopSDK::IndustryTypes::TaggedSymbol)
      WOMENS_COMMUNITY =
        T.let(:womens_community, WhopSDK::IndustryTypes::TaggedSymbol)
      EXPAT_COMMUNITY =
        T.let(:expat_community, WhopSDK::IndustryTypes::TaggedSymbol)
      ADULT_COMMUNITY_NSFW =
        T.let(:adult_community_nsfw, WhopSDK::IndustryTypes::TaggedSymbol)
      HATE_VIOLENCE_COMMUNITIES =
        T.let(:hate_violence_communities, WhopSDK::IndustryTypes::TaggedSymbol)
      PERSONAL_FUNDRAISING =
        T.let(:personal_fundraising, WhopSDK::IndustryTypes::TaggedSymbol)
      POLITICAL_FUNDRAISING =
        T.let(:political_fundraising, WhopSDK::IndustryTypes::TaggedSymbol)
      POLITICAL_ORGANIZATIONS =
        T.let(:political_organizations, WhopSDK::IndustryTypes::TaggedSymbol)
      PORNOGRAPHIC_CONTENT =
        T.let(:pornographic_content, WhopSDK::IndustryTypes::TaggedSymbol)
      REGISTERED_501C3 =
        T.let(:registered_501c3, WhopSDK::IndustryTypes::TaggedSymbol)
      RELIGIOUS_ORGANIZATION =
        T.let(:religious_organization, WhopSDK::IndustryTypes::TaggedSymbol)
      UNREGISTERED_CHARITIES =
        T.let(:unregistered_charities, WhopSDK::IndustryTypes::TaggedSymbol)
      GAMING_COMMUNITY =
        T.let(:gaming_community, WhopSDK::IndustryTypes::TaggedSymbol)
      CAR_ENTHUSIAST_COMMUNITY =
        T.let(:car_enthusiast_community, WhopSDK::IndustryTypes::TaggedSymbol)
      SNEAKERHEAD_COMMUNITY =
        T.let(:sneakerhead_community, WhopSDK::IndustryTypes::TaggedSymbol)
      WATCH_COLLECTOR_COMMUNITY =
        T.let(:watch_collector_community, WhopSDK::IndustryTypes::TaggedSymbol)
      WINE_ENTHUSIAST_COMMUNITY =
        T.let(:wine_enthusiast_community, WhopSDK::IndustryTypes::TaggedSymbol)
      CIGAR_COMMUNITY =
        T.let(:cigar_community, WhopSDK::IndustryTypes::TaggedSymbol)
      COOKING_COMMUNITY =
        T.let(:cooking_community, WhopSDK::IndustryTypes::TaggedSymbol)
      GARDENING_COMMUNITY =
        T.let(:gardening_community, WhopSDK::IndustryTypes::TaggedSymbol)
      FISHING_COMMUNITY =
        T.let(:fishing_community, WhopSDK::IndustryTypes::TaggedSymbol)
      HUNTING_COMMUNITY =
        T.let(:hunting_community, WhopSDK::IndustryTypes::TaggedSymbol)
      DIY_MAKER_COMMUNITY =
        T.let(:diy_maker_community, WhopSDK::IndustryTypes::TaggedSymbol)
      GOLF_COMMUNITY =
        T.let(:golf_community, WhopSDK::IndustryTypes::TaggedSymbol)
      COLLECTIBLES_COMMUNITY =
        T.let(:collectibles_community, WhopSDK::IndustryTypes::TaggedSymbol)
      SWEEPSTAKES_RAFFLES =
        T.let(:sweepstakes_raffles, WhopSDK::IndustryTypes::TaggedSymbol)
      EVENT_TICKET_COMMUNITY =
        T.let(:event_ticket_community, WhopSDK::IndustryTypes::TaggedSymbol)
      FOREX_TRADING_BOT =
        T.let(:forex_trading_bot, WhopSDK::IndustryTypes::TaggedSymbol)
      STOCK_TRADING_PLATFORM =
        T.let(:stock_trading_platform, WhopSDK::IndustryTypes::TaggedSymbol)
      CRYPTO_TRADING_BOT =
        T.let(:crypto_trading_bot, WhopSDK::IndustryTypes::TaggedSymbol)
      FUTURES_TRADING_BOT =
        T.let(:futures_trading_bot, WhopSDK::IndustryTypes::TaggedSymbol)
      OPTIONS_FLOW_TOOL =
        T.let(:options_flow_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      PORTFOLIO_TRACKER =
        T.let(:portfolio_tracker, WhopSDK::IndustryTypes::TaggedSymbol)
      FINANCIAL_MODELING_SOFTWARE =
        T.let(
          :financial_modeling_software,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      ACCOUNTING_SOFTWARE =
        T.let(:accounting_software, WhopSDK::IndustryTypes::TaggedSymbol)
      INVOICING_SOFTWARE =
        T.let(:invoicing_software, WhopSDK::IndustryTypes::TaggedSymbol)
      TAX_SOFTWARE = T.let(:tax_software, WhopSDK::IndustryTypes::TaggedSymbol)
      RISK_MANAGEMENT_SOFTWARE =
        T.let(:risk_management_software, WhopSDK::IndustryTypes::TaggedSymbol)
      PROP_TRADING_PLATFORM =
        T.let(:prop_trading_platform, WhopSDK::IndustryTypes::TaggedSymbol)
      BACKTESTING_SOFTWARE =
        T.let(:backtesting_software, WhopSDK::IndustryTypes::TaggedSymbol)
      TRADING_INDICATORS =
        T.let(:trading_indicators, WhopSDK::IndustryTypes::TaggedSymbol)
      MARKET_DATA_FEED =
        T.let(:market_data_feed, WhopSDK::IndustryTypes::TaggedSymbol)
      STOCK_RESEARCH_TOOL =
        T.let(:stock_research_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      BANKING_SOFTWARE =
        T.let(:banking_software, WhopSDK::IndustryTypes::TaggedSymbol)
      LENDING_PLATFORM =
        T.let(:lending_platform, WhopSDK::IndustryTypes::TaggedSymbol)
      INSURANCE_SOFTWARE =
        T.let(:insurance_software, WhopSDK::IndustryTypes::TaggedSymbol)
      CRYPTO_TRADING_TOOLS_SOFTWARE =
        T.let(
          :crypto_trading_tools_software,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      NON_CUSTODIAL_WALLET_TOOLS =
        T.let(:non_custodial_wallet_tools, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_OUTREACH_TOOL =
        T.let(:ai_outreach_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_CHATBOT_SOFTWARE =
        T.let(:ai_chatbot_software, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_WRITING_TOOL =
        T.let(:ai_writing_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_IMAGE_GENERATOR =
        T.let(:ai_image_generator, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_VIDEO_TOOL =
        T.let(:ai_video_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_VOICE_TOOL =
        T.let(:ai_voice_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_DATA_ANALYSIS =
        T.let(:ai_data_analysis, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_CODE_ASSISTANT =
        T.let(:ai_code_assistant, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_MEETING_ASSISTANT =
        T.let(:ai_meeting_assistant, WhopSDK::IndustryTypes::TaggedSymbol)
      WORKFLOW_AUTOMATION_SOFTWARE =
        T.let(
          :workflow_automation_software,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      AI_SALES_TOOL =
        T.let(:ai_sales_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_CUSTOMER_SUPPORT =
        T.let(:ai_customer_support, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_RECRUITING_TOOL =
        T.let(:ai_recruiting_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_TRANSLATION_TOOL =
        T.let(:ai_translation_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_MUSIC_TOOL =
        T.let(:ai_music_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_PRESENTATION_TOOL =
        T.let(:ai_presentation_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_RESEARCH_TOOL =
        T.let(:ai_research_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_SEO_TOOL = T.let(:ai_seo_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_SOCIAL_MEDIA_TOOL =
        T.let(:ai_social_media_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_PHONE_AGENT =
        T.let(:ai_phone_agent, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_LEGAL_TOOL =
        T.let(:ai_legal_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_HEALTHCARE_TOOL =
        T.let(:ai_healthcare_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      LLM_API_PLATFORM =
        T.let(:llm_api_platform, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_AGENT_PLATFORM =
        T.let(:ai_agent_platform, WhopSDK::IndustryTypes::TaggedSymbol)
      GENERATIVE_AI_PLATFORM =
        T.let(:generative_ai_platform, WhopSDK::IndustryTypes::TaggedSymbol)
      CELEBRITY_IMPERSONATION =
        T.let(:celebrity_impersonation, WhopSDK::IndustryTypes::TaggedSymbol)
      DEEPFAKE_SERVICE =
        T.let(:deepfake_service, WhopSDK::IndustryTypes::TaggedSymbol)
      CRM_SOFTWARE = T.let(:crm_software, WhopSDK::IndustryTypes::TaggedSymbol)
      EMAIL_MARKETING_SOFTWARE =
        T.let(:email_marketing_software, WhopSDK::IndustryTypes::TaggedSymbol)
      SMS_MARKETING_SOFTWARE =
        T.let(:sms_marketing_software, WhopSDK::IndustryTypes::TaggedSymbol)
      SEO_TOOL = T.let(:seo_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      LANDING_PAGE_BUILDER =
        T.let(:landing_page_builder, WhopSDK::IndustryTypes::TaggedSymbol)
      AD_MANAGEMENT_TOOL =
        T.let(:ad_management_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      AFFILIATE_TRACKING =
        T.let(:affiliate_tracking, WhopSDK::IndustryTypes::TaggedSymbol)
      REVIEW_MANAGEMENT =
        T.let(:review_management, WhopSDK::IndustryTypes::TaggedSymbol)
      ANALYTICS_DASHBOARD =
        T.let(:analytics_dashboard, WhopSDK::IndustryTypes::TaggedSymbol)
      LEAD_GEN_SOFTWARE =
        T.let(:lead_gen_software, WhopSDK::IndustryTypes::TaggedSymbol)
      LINK_IN_BIO_TOOL =
        T.let(:link_in_bio_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      INFLUENCER_PLATFORM =
        T.let(:influencer_platform, WhopSDK::IndustryTypes::TaggedSymbol)
      WEBINAR_PLATFORM =
        T.let(:webinar_platform, WhopSDK::IndustryTypes::TaggedSymbol)
      AB_TESTING_TOOL =
        T.let(:ab_testing_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      CHATBOT_MARKETING =
        T.let(:chatbot_marketing, WhopSDK::IndustryTypes::TaggedSymbol)
      VIDEO_SALES_TOOL =
        T.let(:video_sales_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      PROPOSAL_SOFTWARE =
        T.let(:proposal_software, WhopSDK::IndustryTypes::TaggedSymbol)
      COMPETITIVE_INTELLIGENCE =
        T.let(:competitive_intelligence, WhopSDK::IndustryTypes::TaggedSymbol)
      SOCIAL_LISTENING_TOOL =
        T.let(:social_listening_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      WHATSAPP_MARKETING_TOOL =
        T.let(:whatsapp_marketing_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      ECOMMERCE_PLATFORM =
        T.let(:ecommerce_platform, WhopSDK::IndustryTypes::TaggedSymbol)
      PRODUCT_RESEARCH_TOOL =
        T.let(:product_research_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      PRICE_TRACKER =
        T.let(:price_tracker, WhopSDK::IndustryTypes::TaggedSymbol)
      SHIPPING_SOFTWARE =
        T.let(:shipping_software, WhopSDK::IndustryTypes::TaggedSymbol)
      PRINT_ON_DEMAND_SOFTWARE =
        T.let(:print_on_demand_software, WhopSDK::IndustryTypes::TaggedSymbol)
      MARKETPLACE_SELLER_TOOL =
        T.let(:marketplace_seller_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      RESALE_ARBITRAGE_TOOL =
        T.let(:resale_arbitrage_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      RESELLER_MANAGEMENT_TOOL =
        T.let(:reseller_management_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      PRODUCT_REVIEW_SOFTWARE =
        T.let(:product_review_software, WhopSDK::IndustryTypes::TaggedSymbol)
      RETURNS_MANAGEMENT =
        T.let(:returns_management, WhopSDK::IndustryTypes::TaggedSymbol)
      PRODUCT_FEED_MANAGEMENT =
        T.let(:product_feed_management, WhopSDK::IndustryTypes::TaggedSymbol)
      CHECKOUT_OPTIMIZATION =
        T.let(:checkout_optimization, WhopSDK::IndustryTypes::TaggedSymbol)
      WHOLESALE_ORDERING =
        T.let(:wholesale_ordering, WhopSDK::IndustryTypes::TaggedSymbol)
      PROJECT_MANAGEMENT_SOFTWARE =
        T.let(
          :project_management_software,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      TEAM_COMMUNICATION =
        T.let(:team_communication, WhopSDK::IndustryTypes::TaggedSymbol)
      VIDEO_CONFERENCING =
        T.let(:video_conferencing, WhopSDK::IndustryTypes::TaggedSymbol)
      DOCUMENT_COLLABORATION =
        T.let(:document_collaboration, WhopSDK::IndustryTypes::TaggedSymbol)
      TIME_TRACKING_SOFTWARE =
        T.let(:time_tracking_software, WhopSDK::IndustryTypes::TaggedSymbol)
      SCHEDULING_SOFTWARE =
        T.let(:scheduling_software, WhopSDK::IndustryTypes::TaggedSymbol)
      HR_SOFTWARE = T.let(:hr_software, WhopSDK::IndustryTypes::TaggedSymbol)
      KNOWLEDGE_BASE_SOFTWARE =
        T.let(:knowledge_base_software, WhopSDK::IndustryTypes::TaggedSymbol)
      FORM_SURVEY_BUILDER =
        T.let(:form_survey_builder, WhopSDK::IndustryTypes::TaggedSymbol)
      NOTE_TAKING_APP =
        T.let(:note_taking_app, WhopSDK::IndustryTypes::TaggedSymbol)
      TASK_MANAGEMENT =
        T.let(:task_management, WhopSDK::IndustryTypes::TaggedSymbol)
      CONTRACT_MANAGEMENT =
        T.let(:contract_management, WhopSDK::IndustryTypes::TaggedSymbol)
      EXPENSE_MANAGEMENT =
        T.let(:expense_management, WhopSDK::IndustryTypes::TaggedSymbol)
      OKR_GOAL_TRACKING =
        T.let(:okr_goal_tracking, WhopSDK::IndustryTypes::TaggedSymbol)
      EMPLOYEE_ENGAGEMENT =
        T.let(:employee_engagement, WhopSDK::IndustryTypes::TaggedSymbol)
      ONBOARDING_SOFTWARE =
        T.let(:onboarding_software, WhopSDK::IndustryTypes::TaggedSymbol)
      APPLICANT_TRACKING =
        T.let(:applicant_tracking, WhopSDK::IndustryTypes::TaggedSymbol)
      ASSET_MANAGEMENT =
        T.let(:asset_management, WhopSDK::IndustryTypes::TaggedSymbol)
      FACILITY_MANAGEMENT =
        T.let(:facility_management, WhopSDK::IndustryTypes::TaggedSymbol)
      VISITOR_MANAGEMENT =
        T.let(:visitor_management, WhopSDK::IndustryTypes::TaggedSymbol)
      API_MANAGEMENT =
        T.let(:api_management, WhopSDK::IndustryTypes::TaggedSymbol)
      HOSTING_PLATFORM =
        T.let(:hosting_platform, WhopSDK::IndustryTypes::TaggedSymbol)
      DATABASE_TOOL =
        T.let(:database_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      DEVOPS_TOOL = T.let(:devops_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      MONITORING_TOOL =
        T.let(:monitoring_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      TESTING_TOOL = T.let(:testing_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      CODE_EDITOR = T.let(:code_editor, WhopSDK::IndustryTypes::TaggedSymbol)
      NO_CODE_BUILDER =
        T.let(:no_code_builder, WhopSDK::IndustryTypes::TaggedSymbol)
      CDN_PLATFORM = T.let(:cdn_platform, WhopSDK::IndustryTypes::TaggedSymbol)
      ERROR_TRACKING =
        T.let(:error_tracking, WhopSDK::IndustryTypes::TaggedSymbol)
      DOCUMENTATION_TOOL =
        T.let(:documentation_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      WEBHOOK_TOOL = T.let(:webhook_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      COMMUNITY_PLATFORM =
        T.let(:community_platform, WhopSDK::IndustryTypes::TaggedSymbol)
      EVENT_MANAGEMENT_SOFTWARE =
        T.let(:event_management_software, WhopSDK::IndustryTypes::TaggedSymbol)
      WEBINAR_SOFTWARE =
        T.let(:webinar_software, WhopSDK::IndustryTypes::TaggedSymbol)
      SCHOOL_MANAGEMENT =
        T.let(:school_management, WhopSDK::IndustryTypes::TaggedSymbol)
      NEWSLETTER_PLATFORM =
        T.let(:newsletter_platform, WhopSDK::IndustryTypes::TaggedSymbol)
      PODCAST_HOSTING =
        T.let(:podcast_hosting, WhopSDK::IndustryTypes::TaggedSymbol)
      FORUM_SOFTWARE =
        T.let(:forum_software, WhopSDK::IndustryTypes::TaggedSymbol)
      VIRTUAL_CLASSROOM =
        T.let(:virtual_classroom, WhopSDK::IndustryTypes::TaggedSymbol)
      TELEHEALTH_PLATFORM =
        T.let(:telehealth_platform, WhopSDK::IndustryTypes::TaggedSymbol)
      EHR_SOFTWARE = T.let(:ehr_software, WhopSDK::IndustryTypes::TaggedSymbol)
      PRACTICE_MANAGEMENT =
        T.let(:practice_management, WhopSDK::IndustryTypes::TaggedSymbol)
      MENTAL_HEALTH_APP =
        T.let(:mental_health_app, WhopSDK::IndustryTypes::TaggedSymbol)
      FITNESS_APP = T.let(:fitness_app, WhopSDK::IndustryTypes::TaggedSymbol)
      NUTRITION_TRACKING_APP =
        T.let(:nutrition_tracking_app, WhopSDK::IndustryTypes::TaggedSymbol)
      WELLNESS_APP = T.let(:wellness_app, WhopSDK::IndustryTypes::TaggedSymbol)
      PATIENT_ENGAGEMENT =
        T.let(:patient_engagement, WhopSDK::IndustryTypes::TaggedSymbol)
      MEDICAL_BILLING_SOFTWARE =
        T.let(:medical_billing_software, WhopSDK::IndustryTypes::TaggedSymbol)
      PHARMACY_MANAGEMENT =
        T.let(:pharmacy_management, WhopSDK::IndustryTypes::TaggedSymbol)
      LAB_MANAGEMENT =
        T.let(:lab_management, WhopSDK::IndustryTypes::TaggedSymbol)
      CLINICAL_TRIAL_SOFTWARE =
        T.let(:clinical_trial_software, WhopSDK::IndustryTypes::TaggedSymbol)
      DENTAL_SOFTWARE =
        T.let(:dental_software, WhopSDK::IndustryTypes::TaggedSymbol)
      VETERINARY_SOFTWARE =
        T.let(:veterinary_software, WhopSDK::IndustryTypes::TaggedSymbol)
      HEALTH_DATA_PLATFORM =
        T.let(:health_data_platform, WhopSDK::IndustryTypes::TaggedSymbol)
      REAL_ESTATE_CRM =
        T.let(:real_estate_crm, WhopSDK::IndustryTypes::TaggedSymbol)
      PROPERTY_MANAGEMENT_SOFTWARE =
        T.let(
          :property_management_software,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      DEAL_ANALYSIS_TOOL =
        T.let(:deal_analysis_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      MLS_SEARCH_TOOL =
        T.let(:mls_search_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      VIRTUAL_TOUR_SOFTWARE =
        T.let(:virtual_tour_software, WhopSDK::IndustryTypes::TaggedSymbol)
      REAL_ESTATE_MARKETING_SOFTWARE =
        T.let(
          :real_estate_marketing_software,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      CONSTRUCTION_MANAGEMENT =
        T.let(:construction_management, WhopSDK::IndustryTypes::TaggedSymbol)
      HOME_VALUATION_TOOL =
        T.let(:home_valuation_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      RESTAURANT_POS =
        T.let(:restaurant_pos, WhopSDK::IndustryTypes::TaggedSymbol)
      SALON_SOFTWARE =
        T.let(:salon_software, WhopSDK::IndustryTypes::TaggedSymbol)
      GYM_MANAGEMENT_SOFTWARE =
        T.let(:gym_management_software, WhopSDK::IndustryTypes::TaggedSymbol)
      AUTO_SHOP_SOFTWARE =
        T.let(:auto_shop_software, WhopSDK::IndustryTypes::TaggedSymbol)
      LEGAL_PRACTICE_SOFTWARE =
        T.let(:legal_practice_software, WhopSDK::IndustryTypes::TaggedSymbol)
      CHURCH_MANAGEMENT =
        T.let(:church_management, WhopSDK::IndustryTypes::TaggedSymbol)
      NONPROFIT_SOFTWARE =
        T.let(:nonprofit_software, WhopSDK::IndustryTypes::TaggedSymbol)
      LOGISTICS_SOFTWARE =
        T.let(:logistics_software, WhopSDK::IndustryTypes::TaggedSymbol)
      AGRICULTURE_SOFTWARE =
        T.let(:agriculture_software, WhopSDK::IndustryTypes::TaggedSymbol)
      FIELD_SERVICE_SOFTWARE =
        T.let(:field_service_software, WhopSDK::IndustryTypes::TaggedSymbol)
      MARINA_MANAGEMENT =
        T.let(:marina_management, WhopSDK::IndustryTypes::TaggedSymbol)
      HOTEL_PMS = T.let(:hotel_pms, WhopSDK::IndustryTypes::TaggedSymbol)
      CHILDCARE_MANAGEMENT =
        T.let(:childcare_management, WhopSDK::IndustryTypes::TaggedSymbol)
      CLEANING_BUSINESS_SOFTWARE =
        T.let(:cleaning_business_software, WhopSDK::IndustryTypes::TaggedSymbol)
      ROOFING_SOFTWARE =
        T.let(:roofing_software, WhopSDK::IndustryTypes::TaggedSymbol)
      LANDSCAPING_SOFTWARE =
        T.let(:landscaping_software, WhopSDK::IndustryTypes::TaggedSymbol)
      PEST_CONTROL_SOFTWARE =
        T.let(:pest_control_software, WhopSDK::IndustryTypes::TaggedSymbol)
      TATTOO_STUDIO_SOFTWARE =
        T.let(:tattoo_studio_software, WhopSDK::IndustryTypes::TaggedSymbol)
      CANNABIS_SOFTWARE =
        T.let(:cannabis_software, WhopSDK::IndustryTypes::TaggedSymbol)
      PASSWORD_MANAGER =
        T.let(:password_manager, WhopSDK::IndustryTypes::TaggedSymbol)
      CYBERSECURITY_SOFTWARE =
        T.let(:cybersecurity_software, WhopSDK::IndustryTypes::TaggedSymbol)
      IDENTITY_VERIFICATION =
        T.let(:identity_verification, WhopSDK::IndustryTypes::TaggedSymbol)
      BACKUP_RECOVERY =
        T.let(:backup_recovery, WhopSDK::IndustryTypes::TaggedSymbol)
      ENDPOINT_PROTECTION =
        T.let(:endpoint_protection, WhopSDK::IndustryTypes::TaggedSymbol)
      EMAIL_SECURITY =
        T.let(:email_security, WhopSDK::IndustryTypes::TaggedSymbol)
      ACCESS_MANAGEMENT =
        T.let(:access_management, WhopSDK::IndustryTypes::TaggedSymbol)
      COMPLIANCE_SOFTWARE =
        T.let(:compliance_software, WhopSDK::IndustryTypes::TaggedSymbol)
      DATA_PRIVACY_TOOL =
        T.let(:data_privacy_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      VPN_SERVICES = T.let(:vpn_services, WhopSDK::IndustryTypes::TaggedSymbol)
      GAME_MOD_TOOL =
        T.let(:game_mod_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      STREAMING_TOOL =
        T.let(:streaming_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      GAME_SERVER_HOSTING =
        T.let(:game_server_hosting, WhopSDK::IndustryTypes::TaggedSymbol)
      MUSIC_SOFTWARE =
        T.let(:music_software, WhopSDK::IndustryTypes::TaggedSymbol)
      VIDEO_EDITING_SOFTWARE =
        T.let(:video_editing_software, WhopSDK::IndustryTypes::TaggedSymbol)
      PHOTO_EDITING_SOFTWARE =
        T.let(:photo_editing_software, WhopSDK::IndustryTypes::TaggedSymbol)
      ANIMATION_SOFTWARE =
        T.let(:animation_software, WhopSDK::IndustryTypes::TaggedSymbol)
      AUDIO_EDITING_SOFTWARE =
        T.let(:audio_editing_software, WhopSDK::IndustryTypes::TaggedSymbol)
      SCREEN_RECORDING_SOFTWARE =
        T.let(:screen_recording_software, WhopSDK::IndustryTypes::TaggedSymbol)
      SPORTS_BETTING_TOOL =
        T.let(:sports_betting_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      FANTASY_SPORTS_PAID_ENTRY =
        T.let(:fantasy_sports_paid_entry, WhopSDK::IndustryTypes::TaggedSymbol)
      IPTV_PIRATED_STREAMING =
        T.let(:iptv_pirated_streaming, WhopSDK::IndustryTypes::TaggedSymbol)
      LOOT_BOXES_GACHA =
        T.let(:loot_boxes_gacha, WhopSDK::IndustryTypes::TaggedSymbol)
      SKILL_CONTESTS_FREE_ENTRY =
        T.let(:skill_contests_free_entry, WhopSDK::IndustryTypes::TaggedSymbol)
      SKILL_CONTESTS_PAID_ENTRY =
        T.let(:skill_contests_paid_entry, WhopSDK::IndustryTypes::TaggedSymbol)
      BUSINESS_PHONE_SYSTEM =
        T.let(:business_phone_system, WhopSDK::IndustryTypes::TaggedSymbol)
      CUSTOMER_MESSAGING =
        T.let(:customer_messaging, WhopSDK::IndustryTypes::TaggedSymbol)
      DIGITAL_KEY_RESELLING =
        T.let(:digital_key_reselling, WhopSDK::IndustryTypes::TaggedSymbol)
      STREAMING_ACCOUNT_RESELLING =
        T.let(
          :streaming_account_reselling,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      SUBSCRIPTION_ACCOUNT_SHARING =
        T.let(
          :subscription_account_sharing,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      ACCOUNT_GENERATION_TOOL =
        T.let(:account_generation_tool, WhopSDK::IndustryTypes::TaggedSymbol)
      PRIMARY_CARE_TELEHEALTH =
        T.let(:primary_care_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      URGENT_CARE_TELEHEALTH =
        T.let(:urgent_care_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      PEDIATRIC_TELEHEALTH =
        T.let(:pediatric_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      GERIATRIC_TELEHEALTH =
        T.let(:geriatric_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      FAMILY_MEDICINE_TELEHEALTH =
        T.let(:family_medicine_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      INTERNAL_MEDICINE_TELEHEALTH =
        T.let(
          :internal_medicine_telehealth,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      PREVENTIVE_CARE_TELEHEALTH =
        T.let(:preventive_care_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      LICENSED_ONLINE_PHARMACY =
        T.let(:licensed_online_pharmacy, WhopSDK::IndustryTypes::TaggedSymbol)
      TELEMEDICINE_PRACTITIONER_SERVICES =
        T.let(
          :telemedicine_practitioner_services,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      DERMATOLOGY_TELEHEALTH =
        T.let(:dermatology_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      ACNE_TELEHEALTH =
        T.let(:acne_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      PSORIASIS_ECZEMA_TELEHEALTH =
        T.let(
          :psoriasis_eczema_telehealth,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      SKIN_CANCER_SCREENING_TELE =
        T.let(:skin_cancer_screening_tele, WhopSDK::IndustryTypes::TaggedSymbol)
      COSMETIC_DERMATOLOGY_TELE =
        T.let(:cosmetic_dermatology_tele, WhopSDK::IndustryTypes::TaggedSymbol)
      THERAPY_TELEHEALTH =
        T.let(:therapy_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      PSYCHIATRY_TELEHEALTH =
        T.let(:psychiatry_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      ADDICTION_TELEHEALTH =
        T.let(:addiction_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      COUPLES_THERAPY_TELEHEALTH =
        T.let(:couples_therapy_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      CHILD_PSYCHOLOGY_TELEHEALTH =
        T.let(
          :child_psychology_telehealth,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      EATING_DISORDER_TELEHEALTH =
        T.let(:eating_disorder_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      PTSD_TRAUMA_TELEHEALTH =
        T.let(:ptsd_trauma_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      ADHD_TELEHEALTH =
        T.let(:adhd_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      ANXIETY_DEPRESSION_TELEHEALTH =
        T.let(
          :anxiety_depression_telehealth,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      OCD_TELEHEALTH =
        T.let(:ocd_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      GRIEF_COUNSELING_TELEHEALTH =
        T.let(
          :grief_counseling_telehealth,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      ANGER_MANAGEMENT_TELEHEALTH =
        T.let(
          :anger_management_telehealth,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      FAMILY_THERAPY_TELEHEALTH =
        T.let(:family_therapy_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      GROUP_THERAPY_TELEHEALTH =
        T.let(:group_therapy_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      LICENSED_PSYCHEDELIC_THERAPY =
        T.let(
          :licensed_psychedelic_therapy,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      WOMENS_HEALTH_TELEHEALTH =
        T.let(:womens_health_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      MENS_HEALTH_TELEHEALTH =
        T.let(:mens_health_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      SEXUAL_HEALTH_TELEHEALTH =
        T.let(:sexual_health_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      FERTILITY_TELEHEALTH =
        T.let(:fertility_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      HORMONE_THERAPY_TELEHEALTH =
        T.let(:hormone_therapy_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      MENOPAUSE_TELEHEALTH =
        T.let(:menopause_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      PRENATAL_TELEHEALTH =
        T.let(:prenatal_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      POSTPARTUM_TELEHEALTH =
        T.let(:postpartum_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      ERECTILE_DYSFUNCTION_TELE =
        T.let(:erectile_dysfunction_tele, WhopSDK::IndustryTypes::TaggedSymbol)
      HAIR_LOSS_TELEHEALTH =
        T.let(:hair_loss_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      BIRTH_CONTROL_TELEHEALTH =
        T.let(:birth_control_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      STI_TESTING_TELEHEALTH =
        T.let(:sti_testing_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      DENTAL_TELEHEALTH =
        T.let(:dental_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      ORTHODONTICS_TELEHEALTH =
        T.let(:orthodontics_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      OPTOMETRY_TELEHEALTH =
        T.let(:optometry_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      ORAL_SURGERY_CONSULTATION =
        T.let(:oral_surgery_consultation, WhopSDK::IndustryTypes::TaggedSymbol)
      VISION_THERAPY_TELEHEALTH =
        T.let(:vision_therapy_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      CARDIOLOGY_TELEHEALTH =
        T.let(:cardiology_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      ENDOCRINOLOGY_TELEHEALTH =
        T.let(:endocrinology_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      NEUROLOGY_TELEHEALTH =
        T.let(:neurology_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      ORTHOPEDIC_TELEHEALTH =
        T.let(:orthopedic_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      ALLERGY_TELEHEALTH =
        T.let(:allergy_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      ENT_TELEHEALTH =
        T.let(:ent_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      RHEUMATOLOGY_TELEHEALTH =
        T.let(:rheumatology_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      GASTROENTEROLOGY_TELEHEALTH =
        T.let(
          :gastroenterology_telehealth,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      INFECTIOUS_DISEASE_TELEHEALTH =
        T.let(
          :infectious_disease_telehealth,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      PULMONOLOGY_TELEHEALTH =
        T.let(:pulmonology_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      NEPHROLOGY_TELEHEALTH =
        T.let(:nephrology_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      ONCOLOGY_TELEHEALTH =
        T.let(:oncology_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      HEMATOLOGY_TELEHEALTH =
        T.let(:hematology_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      UROLOGY_TELEHEALTH =
        T.let(:urology_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      WEIGHT_MANAGEMENT_TELEHEALTH =
        T.let(
          :weight_management_telehealth,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      GLP1_WEIGHT_LOSS_TELE =
        T.let(:glp1_weight_loss_tele, WhopSDK::IndustryTypes::TaggedSymbol)
      DIABETES_MANAGEMENT_TELE =
        T.let(:diabetes_management_tele, WhopSDK::IndustryTypes::TaggedSymbol)
      METABOLIC_HEALTH_TELE =
        T.let(:metabolic_health_tele, WhopSDK::IndustryTypes::TaggedSymbol)
      BARIATRIC_TELEHEALTH =
        T.let(:bariatric_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      PHYSICAL_THERAPY_TELEHEALTH =
        T.let(
          :physical_therapy_telehealth,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      OCCUPATIONAL_THERAPY_TELE =
        T.let(:occupational_therapy_tele, WhopSDK::IndustryTypes::TaggedSymbol)
      SPEECH_THERAPY_TELEHEALTH =
        T.let(:speech_therapy_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      PAIN_MANAGEMENT_TELEHEALTH =
        T.let(:pain_management_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      CARDIAC_REHAB_TELEHEALTH =
        T.let(:cardiac_rehab_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      PELVIC_FLOOR_TELEHEALTH =
        T.let(:pelvic_floor_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      VESTIBULAR_TELEHEALTH =
        T.let(:vestibular_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      SLEEP_MEDICINE_TELEHEALTH =
        T.let(:sleep_medicine_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      CHRONIC_DISEASE_MANAGEMENT =
        T.let(:chronic_disease_management, WhopSDK::IndustryTypes::TaggedSymbol)
      CHRONIC_PAIN_TELEHEALTH =
        T.let(:chronic_pain_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      MIGRAINE_TELEHEALTH =
        T.let(:migraine_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      ASTHMA_COPD_TELEHEALTH =
        T.let(:asthma_copd_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      NUTRITION_TELEHEALTH =
        T.let(:nutrition_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      NATUROPATHIC_TELEHEALTH =
        T.let(:naturopathic_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      FUNCTIONAL_MEDICINE_TELEHEALTH =
        T.let(
          :functional_medicine_telehealth,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      ACUPUNCTURE_TELEHEALTH =
        T.let(:acupuncture_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      HEALTH_COACHING_TELEHEALTH =
        T.let(:health_coaching_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      INTEGRATIVE_MEDICINE_TELE =
        T.let(:integrative_medicine_tele, WhopSDK::IndustryTypes::TaggedSymbol)
      AYURVEDIC_TELEHEALTH =
        T.let(:ayurvedic_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      GENETIC_COUNSELING_TELEHEALTH =
        T.let(
          :genetic_counseling_telehealth,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      PHARMACOGENOMICS_TELE =
        T.let(:pharmacogenomics_tele, WhopSDK::IndustryTypes::TaggedSymbol)
      RARE_DISEASE_TELEHEALTH =
        T.let(:rare_disease_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      SECOND_OPINION_TELEHEALTH =
        T.let(:second_opinion_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      VET_TELEHEALTH =
        T.let(:vet_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      PET_BEHAVIOR_TELEHEALTH =
        T.let(:pet_behavior_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      EXOTIC_PET_TELEHEALTH =
        T.let(:exotic_pet_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      EQUINE_TELEHEALTH =
        T.let(:equine_telehealth, WhopSDK::IndustryTypes::TaggedSymbol)
      VETERINARY_SERVICES =
        T.let(:veterinary_services, WhopSDK::IndustryTypes::TaggedSymbol)
      CLASS_ACTION_SETTLEMENT =
        T.let(:class_action_settlement, WhopSDK::IndustryTypes::TaggedSymbol)
      MASTERMIND_EVENT =
        T.let(:mastermind_event, WhopSDK::IndustryTypes::TaggedSymbol)
      WEBINAR_EVENT =
        T.let(:webinar_event, WhopSDK::IndustryTypes::TaggedSymbol)
      VIRTUAL_SUMMIT =
        T.let(:virtual_summit, WhopSDK::IndustryTypes::TaggedSymbol)
      BOOTCAMP_EVENT =
        T.let(:bootcamp_event, WhopSDK::IndustryTypes::TaggedSymbol)
      WORKSHOP_SEMINAR =
        T.let(:workshop_seminar, WhopSDK::IndustryTypes::TaggedSymbol)
      HACKATHON = T.let(:hackathon, WhopSDK::IndustryTypes::TaggedSymbol)
      CORPORATE_TRAINING_EVENT =
        T.let(:corporate_training_event, WhopSDK::IndustryTypes::TaggedSymbol)
      TRAINING_CERTIFICATION_EVENT =
        T.let(
          :training_certification_event,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      CONVENTION_EXPO =
        T.let(:convention_expo, WhopSDK::IndustryTypes::TaggedSymbol)
      CONFERENCE_SUMMIT =
        T.let(:conference_summit, WhopSDK::IndustryTypes::TaggedSymbol)
      INDUSTRY_AWARDS_EVENT =
        T.let(:industry_awards_event, WhopSDK::IndustryTypes::TaggedSymbol)
      PRODUCT_LAUNCH_EVENT =
        T.let(:product_launch_event, WhopSDK::IndustryTypes::TaggedSymbol)
      INVESTOR_DEMO_DAY =
        T.let(:investor_demo_day, WhopSDK::IndustryTypes::TaggedSymbol)
      PANEL_DISCUSSION_EVENT =
        T.let(:panel_discussion_event, WhopSDK::IndustryTypes::TaggedSymbol)
      PITCH_COMPETITION =
        T.let(:pitch_competition, WhopSDK::IndustryTypes::TaggedSymbol)
      MEETUP_EVENT = T.let(:meetup_event, WhopSDK::IndustryTypes::TaggedSymbol)
      DINNER_EVENT = T.let(:dinner_event, WhopSDK::IndustryTypes::TaggedSymbol)
      ALUMNI_EVENT = T.let(:alumni_event, WhopSDK::IndustryTypes::TaggedSymbol)
      COMMUNITY_GATHERING =
        T.let(:community_gathering, WhopSDK::IndustryTypes::TaggedSymbol)
      SINGLES_EVENT =
        T.let(:singles_event, WhopSDK::IndustryTypes::TaggedSymbol)
      PROFESSIONAL_HAPPY_HOUR =
        T.let(:professional_happy_hour, WhopSDK::IndustryTypes::TaggedSymbol)
      WOMEN_NETWORKING_EVENT =
        T.let(:women_networking_event, WhopSDK::IndustryTypes::TaggedSymbol)
      FOUNDERS_DINNER =
        T.let(:founders_dinner, WhopSDK::IndustryTypes::TaggedSymbol)
      INDUSTRY_MIXER =
        T.let(:industry_mixer, WhopSDK::IndustryTypes::TaggedSymbol)
      CONCERT_EVENT =
        T.let(:concert_event, WhopSDK::IndustryTypes::TaggedSymbol)
      COMEDY_SHOW = T.let(:comedy_show, WhopSDK::IndustryTypes::TaggedSymbol)
      THEATER_PERFORMANCE =
        T.let(:theater_performance, WhopSDK::IndustryTypes::TaggedSymbol)
      FILM_SCREENING =
        T.let(:film_screening, WhopSDK::IndustryTypes::TaggedSymbol)
      MUSIC_FESTIVAL =
        T.let(:music_festival, WhopSDK::IndustryTypes::TaggedSymbol)
      CULTURAL_FESTIVAL =
        T.let(:cultural_festival, WhopSDK::IndustryTypes::TaggedSymbol)
      FASHION_SHOW = T.let(:fashion_show, WhopSDK::IndustryTypes::TaggedSymbol)
      DRAG_SHOW = T.let(:drag_show, WhopSDK::IndustryTypes::TaggedSymbol)
      MAGIC_SHOW = T.let(:magic_show, WhopSDK::IndustryTypes::TaggedSymbol)
      DANCE_PERFORMANCE =
        T.let(:dance_performance, WhopSDK::IndustryTypes::TaggedSymbol)
      POETRY_SPOKEN_WORD =
        T.let(:poetry_spoken_word, WhopSDK::IndustryTypes::TaggedSymbol)
      ART_EXHIBITION =
        T.let(:art_exhibition, WhopSDK::IndustryTypes::TaggedSymbol)
      PARTY_EVENT = T.let(:party_event, WhopSDK::IndustryTypes::TaggedSymbol)
      TRIVIA_NIGHT = T.let(:trivia_night, WhopSDK::IndustryTypes::TaggedSymbol)
      WINE_TASTING_EVENT =
        T.let(:wine_tasting_event, WhopSDK::IndustryTypes::TaggedSymbol)
      BEER_FESTIVAL =
        T.let(:beer_festival, WhopSDK::IndustryTypes::TaggedSymbol)
      CAR_SHOW = T.let(:car_show, WhopSDK::IndustryTypes::TaggedSymbol)
      FOOD_FESTIVAL =
        T.let(:food_festival, WhopSDK::IndustryTypes::TaggedSymbol)
      FITNESS_CHALLENGE_EVENT =
        T.let(:fitness_challenge_event, WhopSDK::IndustryTypes::TaggedSymbol)
      MARATHON_RACE =
        T.let(:marathon_race, WhopSDK::IndustryTypes::TaggedSymbol)
      TOURNAMENT_EVENT =
        T.let(:tournament_event, WhopSDK::IndustryTypes::TaggedSymbol)
      FIGHT_EVENT = T.let(:fight_event, WhopSDK::IndustryTypes::TaggedSymbol)
      YOGA_RETREAT_EVENT =
        T.let(:yoga_retreat_event, WhopSDK::IndustryTypes::TaggedSymbol)
      OUTDOOR_ADVENTURE_EVENT =
        T.let(:outdoor_adventure_event, WhopSDK::IndustryTypes::TaggedSymbol)
      ESPORTS_TOURNAMENT =
        T.let(:esports_tournament, WhopSDK::IndustryTypes::TaggedSymbol)
      OBSTACLE_COURSE_RACE =
        T.let(:obstacle_course_race, WhopSDK::IndustryTypes::TaggedSymbol)
      CYCLING_EVENT =
        T.let(:cycling_event, WhopSDK::IndustryTypes::TaggedSymbol)
      SWIM_MEET = T.let(:swim_meet, WhopSDK::IndustryTypes::TaggedSymbol)
      GOLF_TOURNAMENT =
        T.let(:golf_tournament, WhopSDK::IndustryTypes::TaggedSymbol)
      PICKLEBALL_TOURNAMENT =
        T.let(:pickleball_tournament, WhopSDK::IndustryTypes::TaggedSymbol)
      CROSSFIT_COMPETITION =
        T.let(:crossfit_competition, WhopSDK::IndustryTypes::TaggedSymbol)
      MARTIAL_ARTS_TOURNAMENT =
        T.let(:martial_arts_tournament, WhopSDK::IndustryTypes::TaggedSymbol)
      SURFING_COMPETITION =
        T.let(:surfing_competition, WhopSDK::IndustryTypes::TaggedSymbol)
      WELLNESS_RETREAT =
        T.let(:wellness_retreat, WhopSDK::IndustryTypes::TaggedSymbol)
      SPIRITUAL_RETREAT =
        T.let(:spiritual_retreat, WhopSDK::IndustryTypes::TaggedSymbol)
      COUPLES_RETREAT =
        T.let(:couples_retreat, WhopSDK::IndustryTypes::TaggedSymbol)
      PLANT_MEDICINE_RETREAT =
        T.let(:plant_medicine_retreat, WhopSDK::IndustryTypes::TaggedSymbol)
      LUXURY_EXPERIENCE_EVENT =
        T.let(:luxury_experience_event, WhopSDK::IndustryTypes::TaggedSymbol)
      DETOX_RETREAT =
        T.let(:detox_retreat, WhopSDK::IndustryTypes::TaggedSymbol)
      SILENT_RETREAT =
        T.let(:silent_retreat, WhopSDK::IndustryTypes::TaggedSymbol)
      CREATIVE_RETREAT =
        T.let(:creative_retreat, WhopSDK::IndustryTypes::TaggedSymbol)
      LEADERSHIP_RETREAT =
        T.let(:leadership_retreat, WhopSDK::IndustryTypes::TaggedSymbol)
      MENS_RETREAT = T.let(:mens_retreat, WhopSDK::IndustryTypes::TaggedSymbol)
      WOMENS_RETREAT =
        T.let(:womens_retreat, WhopSDK::IndustryTypes::TaggedSymbol)
      DIGITAL_DETOX_RETREAT =
        T.let(:digital_detox_retreat, WhopSDK::IndustryTypes::TaggedSymbol)
      FUNDRAISER_EVENT =
        T.let(:fundraiser_event, WhopSDK::IndustryTypes::TaggedSymbol)
      AWARENESS_EVENT =
        T.let(:awareness_event, WhopSDK::IndustryTypes::TaggedSymbol)
      VOLUNTEER_EVENT =
        T.let(:volunteer_event, WhopSDK::IndustryTypes::TaggedSymbol)
      CHARITY_AUCTION =
        T.let(:charity_auction, WhopSDK::IndustryTypes::TaggedSymbol)
      BENEFIT_CONCERT =
        T.let(:benefit_concert, WhopSDK::IndustryTypes::TaggedSymbol)
      CHARITY_RUN_WALK =
        T.let(:charity_run_walk, WhopSDK::IndustryTypes::TaggedSymbol)
      ENVIRONMENTAL_CLEANUP =
        T.let(:environmental_cleanup, WhopSDK::IndustryTypes::TaggedSymbol)
      FAMILY_FESTIVAL =
        T.let(:family_festival, WhopSDK::IndustryTypes::TaggedSymbol)
      KIDS_EVENT = T.let(:kids_event, WhopSDK::IndustryTypes::TaggedSymbol)
      HOLIDAY_EVENT =
        T.let(:holiday_event, WhopSDK::IndustryTypes::TaggedSymbol)
      FARMERS_MARKET_EVENT =
        T.let(:farmers_market_event, WhopSDK::IndustryTypes::TaggedSymbol)
      BLOCK_PARTY = T.let(:block_party, WhopSDK::IndustryTypes::TaggedSymbol)
      GRADUATION_CEREMONY =
        T.let(:graduation_ceremony, WhopSDK::IndustryTypes::TaggedSymbol)
      MEMORIAL_EVENT =
        T.let(:memorial_event, WhopSDK::IndustryTypes::TaggedSymbol)
      STOCK_MARKET_NEWSLETTER =
        T.let(:stock_market_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      CRYPTO_NEWSLETTER =
        T.let(:crypto_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      PERSONAL_FINANCE_NEWSLETTER =
        T.let(
          :personal_finance_newsletter,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      REAL_ESTATE_NEWSLETTER =
        T.let(:real_estate_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      FINTECH_NEWSLETTER =
        T.let(:fintech_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      VENTURE_CAPITAL_NEWSLETTER =
        T.let(:venture_capital_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      OPTIONS_TRADING_NEWSLETTER =
        T.let(:options_trading_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      FOREX_NEWSLETTER =
        T.let(:forex_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      MACRO_ECONOMICS_NEWSLETTER =
        T.let(:macro_economics_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      ALTERNATIVE_INVESTING_NEWSLETTER =
        T.let(
          :alternative_investing_newsletter,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      TAX_STRATEGY_NEWSLETTER =
        T.let(:tax_strategy_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      AI_NEWSLETTER =
        T.let(:ai_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      TECH_INDUSTRY_NEWSLETTER =
        T.let(:tech_industry_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      CYBERSECURITY_NEWSLETTER =
        T.let(:cybersecurity_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      DEVELOPER_NEWSLETTER =
        T.let(:developer_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      PRODUCT_NEWSLETTER =
        T.let(:product_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      DEVOPS_NEWSLETTER =
        T.let(:devops_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      OPEN_SOURCE_NEWSLETTER =
        T.let(:open_source_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      ROBOTICS_NEWSLETTER =
        T.let(:robotics_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      CLIMATE_TECH_NEWSLETTER =
        T.let(:climate_tech_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      TRAVEL_NEWSLETTER =
        T.let(:travel_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      FASHION_NEWSLETTER =
        T.let(:fashion_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      PARENTING_NEWSLETTER =
        T.let(:parenting_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      SPORTS_NEWSLETTER =
        T.let(:sports_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      GAMING_NEWSLETTER =
        T.let(:gaming_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      MUSIC_ENTERTAINMENT_NEWSLETTER =
        T.let(
          :music_entertainment_newsletter,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      BOOK_READING_NEWSLETTER =
        T.let(:book_reading_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      DATING_RELATIONSHIPS_NEWSLETTER =
        T.let(
          :dating_relationships_newsletter,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      HOME_DESIGN_NEWSLETTER =
        T.let(:home_design_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      PET_NEWSLETTER =
        T.let(:pet_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      WINE_SPIRITS_NEWSLETTER =
        T.let(:wine_spirits_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      AUTOMOTIVE_NEWSLETTER =
        T.let(:automotive_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      POLITICAL_NEWSLETTER =
        T.let(:political_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      GEOPOLITICS_NEWSLETTER =
        T.let(:geopolitics_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      MEDIA_JOURNALISM_NEWSLETTER =
        T.let(
          :media_journalism_newsletter,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      DEFENSE_SECURITY_NEWSLETTER =
        T.let(
          :defense_security_newsletter,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      LEGAL_POLICY_NEWSLETTER =
        T.let(:legal_policy_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      DESIGN_NEWSLETTER =
        T.let(:design_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      EDUCATION_NEWSLETTER =
        T.let(:education_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      SCIENCE_NEWSLETTER =
        T.let(:science_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      PHILOSOPHY_NEWSLETTER =
        T.let(:philosophy_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      SUSTAINABILITY_NEWSLETTER =
        T.let(:sustainability_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      ARCHITECTURE_NEWSLETTER =
        T.let(:architecture_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      HISTORY_NEWSLETTER =
        T.let(:history_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      PSYCHOLOGY_NEWSLETTER =
        T.let(:psychology_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      CAREER_NEWSLETTER =
        T.let(:career_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      SPIRITUALITY_NEWSLETTER =
        T.let(:spirituality_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      SELF_IMPROVEMENT_NEWSLETTER =
        T.let(
          :self_improvement_newsletter,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      PRODUCTIVITY_NEWSLETTER =
        T.let(:productivity_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      FAITH_NEWSLETTER =
        T.let(:faith_newsletter, WhopSDK::IndustryTypes::TaggedSymbol)
      GYM_FACILITY = T.let(:gym_facility, WhopSDK::IndustryTypes::TaggedSymbol)
      CROSSFIT_BOX = T.let(:crossfit_box, WhopSDK::IndustryTypes::TaggedSymbol)
      YOGA_STUDIO = T.let(:yoga_studio, WhopSDK::IndustryTypes::TaggedSymbol)
      PILATES_STUDIO =
        T.let(:pilates_studio, WhopSDK::IndustryTypes::TaggedSymbol)
      MARTIAL_ARTS_GYM =
        T.let(:martial_arts_gym, WhopSDK::IndustryTypes::TaggedSymbol)
      BOXING_GYM = T.let(:boxing_gym, WhopSDK::IndustryTypes::TaggedSymbol)
      CLIMBING_GYM = T.let(:climbing_gym, WhopSDK::IndustryTypes::TaggedSymbol)
      DANCE_STUDIO = T.let(:dance_studio, WhopSDK::IndustryTypes::TaggedSymbol)
      SWIMMING_POOL =
        T.let(:swimming_pool, WhopSDK::IndustryTypes::TaggedSymbol)
      SPORTS_FACILITY =
        T.let(:sports_facility, WhopSDK::IndustryTypes::TaggedSymbol)
      GOLF_COURSE = T.let(:golf_course, WhopSDK::IndustryTypes::TaggedSymbol)
      BOWLING_ALLEY =
        T.let(:bowling_alley, WhopSDK::IndustryTypes::TaggedSymbol)
      SKATING_RINK = T.let(:skating_rink, WhopSDK::IndustryTypes::TaggedSymbol)
      TRAMPOLINE_PARK =
        T.let(:trampoline_park, WhopSDK::IndustryTypes::TaggedSymbol)
      TENNIS_CLUB = T.let(:tennis_club, WhopSDK::IndustryTypes::TaggedSymbol)
      PICKLEBALL_FACILITY =
        T.let(:pickleball_facility, WhopSDK::IndustryTypes::TaggedSymbol)
      GYMNASTICS_CENTER =
        T.let(:gymnastics_center, WhopSDK::IndustryTypes::TaggedSymbol)
      SPIN_STUDIO = T.let(:spin_studio, WhopSDK::IndustryTypes::TaggedSymbol)
      BARRE_STUDIO = T.let(:barre_studio, WhopSDK::IndustryTypes::TaggedSymbol)
      PERSONAL_TRAINING_STUDIO_BM =
        T.let(
          :personal_training_studio_bm,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      RECOVERY_STUDIO =
        T.let(:recovery_studio, WhopSDK::IndustryTypes::TaggedSymbol)
      INDOOR_SOCCER =
        T.let(:indoor_soccer, WhopSDK::IndustryTypes::TaggedSymbol)
      BATTING_CAGE = T.let(:batting_cage, WhopSDK::IndustryTypes::TaggedSymbol)
      SHOOTING_RANGE =
        T.let(:shooting_range, WhopSDK::IndustryTypes::TaggedSymbol)
      ARCHERY_RANGE =
        T.let(:archery_range, WhopSDK::IndustryTypes::TaggedSymbol)
      EQUESTRIAN_CENTER =
        T.let(:equestrian_center, WhopSDK::IndustryTypes::TaggedSymbol)
      FINE_DINING = T.let(:fine_dining, WhopSDK::IndustryTypes::TaggedSymbol)
      FAST_CASUAL_RESTAURANT =
        T.let(:fast_casual_restaurant, WhopSDK::IndustryTypes::TaggedSymbol)
      STEAKHOUSE = T.let(:steakhouse, WhopSDK::IndustryTypes::TaggedSymbol)
      SEAFOOD_RESTAURANT =
        T.let(:seafood_restaurant, WhopSDK::IndustryTypes::TaggedSymbol)
      PIZZA_SHOP = T.let(:pizza_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      SUSHI_RESTAURANT =
        T.let(:sushi_restaurant, WhopSDK::IndustryTypes::TaggedSymbol)
      DELI_SANDWICH_SHOP =
        T.let(:deli_sandwich_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      BBQ_RESTAURANT =
        T.let(:bbq_restaurant, WhopSDK::IndustryTypes::TaggedSymbol)
      MEXICAN_RESTAURANT =
        T.let(:mexican_restaurant, WhopSDK::IndustryTypes::TaggedSymbol)
      ITALIAN_RESTAURANT =
        T.let(:italian_restaurant, WhopSDK::IndustryTypes::TaggedSymbol)
      CHINESE_RESTAURANT =
        T.let(:chinese_restaurant, WhopSDK::IndustryTypes::TaggedSymbol)
      INDIAN_RESTAURANT =
        T.let(:indian_restaurant, WhopSDK::IndustryTypes::TaggedSymbol)
      THAI_RESTAURANT =
        T.let(:thai_restaurant, WhopSDK::IndustryTypes::TaggedSymbol)
      KOREAN_RESTAURANT =
        T.let(:korean_restaurant, WhopSDK::IndustryTypes::TaggedSymbol)
      MEDITERRANEAN_RESTAURANT =
        T.let(:mediterranean_restaurant, WhopSDK::IndustryTypes::TaggedSymbol)
      VEGAN_VEGETARIAN_RESTAURANT =
        T.let(
          :vegan_vegetarian_restaurant,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      BRUNCH_RESTAURANT =
        T.let(:brunch_restaurant, WhopSDK::IndustryTypes::TaggedSymbol)
      RAMEN_NOODLE_SHOP =
        T.let(:ramen_noodle_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      POKE_BOWL_SHOP =
        T.let(:poke_bowl_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      ETHNIC_RESTAURANT =
        T.let(:ethnic_restaurant, WhopSDK::IndustryTypes::TaggedSymbol)
      COFFEE_SHOP_CAFE =
        T.let(:coffee_shop_cafe, WhopSDK::IndustryTypes::TaggedSymbol)
      BAKERY = T.let(:bakery, WhopSDK::IndustryTypes::TaggedSymbol)
      JUICE_SMOOTHIE_BAR =
        T.let(:juice_smoothie_bar, WhopSDK::IndustryTypes::TaggedSymbol)
      ICE_CREAM_SHOP =
        T.let(:ice_cream_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      DONUT_SHOP = T.let(:donut_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      BUBBLE_TEA_SHOP =
        T.let(:bubble_tea_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      FOOD_TRUCK = T.let(:food_truck, WhopSDK::IndustryTypes::TaggedSymbol)
      FAST_FOOD = T.let(:fast_food, WhopSDK::IndustryTypes::TaggedSymbol)
      GHOST_KITCHEN =
        T.let(:ghost_kitchen, WhopSDK::IndustryTypes::TaggedSymbol)
      FOOD_HALL_VENDOR =
        T.let(:food_hall_vendor, WhopSDK::IndustryTypes::TaggedSymbol)
      CATERING_KITCHEN =
        T.let(:catering_kitchen, WhopSDK::IndustryTypes::TaggedSymbol)
      BUTCHER_SHOP = T.let(:butcher_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      CHEESE_SHOP = T.let(:cheese_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      FARMERS_MARKET_STALL =
        T.let(:farmers_market_stall, WhopSDK::IndustryTypes::TaggedSymbol)
      BAR_LOUNGE = T.let(:bar_lounge, WhopSDK::IndustryTypes::TaggedSymbol)
      BREWERY_TAPROOM =
        T.let(:brewery_taproom, WhopSDK::IndustryTypes::TaggedSymbol)
      WINERY_TASTING =
        T.let(:winery_tasting, WhopSDK::IndustryTypes::TaggedSymbol)
      WINE_BAR = T.let(:wine_bar, WhopSDK::IndustryTypes::TaggedSymbol)
      COCKTAIL_BAR = T.let(:cocktail_bar, WhopSDK::IndustryTypes::TaggedSymbol)
      SPORTS_BAR = T.let(:sports_bar, WhopSDK::IndustryTypes::TaggedSymbol)
      HOOKAH_LOUNGE =
        T.let(:hookah_lounge, WhopSDK::IndustryTypes::TaggedSymbol)
      DISTILLERY = T.let(:distillery, WhopSDK::IndustryTypes::TaggedSymbol)
      COMMERCIAL_FARMING =
        T.let(:commercial_farming, WhopSDK::IndustryTypes::TaggedSymbol)
      LIVESTOCK_RANCHING =
        T.let(:livestock_ranching, WhopSDK::IndustryTypes::TaggedSymbol)
      HYDROPONIC_VERTICAL_FARMING =
        T.let(
          :hydroponic_vertical_farming,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      FORESTRY_LOGGING =
        T.let(:forestry_logging, WhopSDK::IndustryTypes::TaggedSymbol)
      AQUACULTURE_FISHERIES =
        T.let(:aquaculture_fisheries, WhopSDK::IndustryTypes::TaggedSymbol)
      VINEYARD_WINERY_PRODUCTION =
        T.let(:vineyard_winery_production, WhopSDK::IndustryTypes::TaggedSymbol)
      CANNABIS_CULTIVATION =
        T.let(:cannabis_cultivation, WhopSDK::IndustryTypes::TaggedSymbol)
      HEMP_FARMING = T.let(:hemp_farming, WhopSDK::IndustryTypes::TaggedSymbol)
      GRAIN_PRODUCTION =
        T.let(:grain_production, WhopSDK::IndustryTypes::TaggedSymbol)
      AGRICULTURAL_COOPERATIVE =
        T.let(:agricultural_cooperative, WhopSDK::IndustryTypes::TaggedSymbol)
      FERTILIZER_PESTICIDE_SALES =
        T.let(:fertilizer_pesticide_sales, WhopSDK::IndustryTypes::TaggedSymbol)
      FARM_EQUIPMENT_SALES =
        T.let(:farm_equipment_sales, WhopSDK::IndustryTypes::TaggedSymbol)
      BOUTIQUE_STORE =
        T.let(:boutique_store, WhopSDK::IndustryTypes::TaggedSymbol)
      CLOTHING_STORE =
        T.let(:clothing_store, WhopSDK::IndustryTypes::TaggedSymbol)
      SHOE_STORE = T.let(:shoe_store, WhopSDK::IndustryTypes::TaggedSymbol)
      JEWELRY_STORE =
        T.let(:jewelry_store, WhopSDK::IndustryTypes::TaggedSymbol)
      ELECTRONICS_STORE =
        T.let(:electronics_store, WhopSDK::IndustryTypes::TaggedSymbol)
      BOOKSTORE = T.let(:bookstore, WhopSDK::IndustryTypes::TaggedSymbol)
      PET_STORE = T.let(:pet_store, WhopSDK::IndustryTypes::TaggedSymbol)
      TOY_STORE = T.let(:toy_store, WhopSDK::IndustryTypes::TaggedSymbol)
      SPORTING_GOODS_STORE =
        T.let(:sporting_goods_store, WhopSDK::IndustryTypes::TaggedSymbol)
      THRIFT_STORE = T.let(:thrift_store, WhopSDK::IndustryTypes::TaggedSymbol)
      SMOKE_SHOP = T.let(:smoke_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      CANNABIS_DISPENSARY =
        T.let(:cannabis_dispensary, WhopSDK::IndustryTypes::TaggedSymbol)
      CONVENIENCE_STORE =
        T.let(:convenience_store, WhopSDK::IndustryTypes::TaggedSymbol)
      GROCERY_STORE =
        T.let(:grocery_store, WhopSDK::IndustryTypes::TaggedSymbol)
      LIQUOR_STORE = T.let(:liquor_store, WhopSDK::IndustryTypes::TaggedSymbol)
      FLORIST = T.let(:florist, WhopSDK::IndustryTypes::TaggedSymbol)
      GIFT_SHOP = T.let(:gift_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      FURNITURE_STORE =
        T.let(:furniture_store, WhopSDK::IndustryTypes::TaggedSymbol)
      HOME_IMPROVEMENT_STORE =
        T.let(:home_improvement_store, WhopSDK::IndustryTypes::TaggedSymbol)
      ART_GALLERY_RETAIL =
        T.let(:art_gallery_retail, WhopSDK::IndustryTypes::TaggedSymbol)
      MUSIC_INSTRUMENT_STORE =
        T.let(:music_instrument_store, WhopSDK::IndustryTypes::TaggedSymbol)
      OUTDOOR_RECREATION_STORE =
        T.let(:outdoor_recreation_store, WhopSDK::IndustryTypes::TaggedSymbol)
      PHONE_REPAIR_STORE =
        T.let(:phone_repair_store, WhopSDK::IndustryTypes::TaggedSymbol)
      WATCH_STORE = T.let(:watch_store, WhopSDK::IndustryTypes::TaggedSymbol)
      BRIDAL_SHOP = T.let(:bridal_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      MATERNITY_STORE =
        T.let(:maternity_store, WhopSDK::IndustryTypes::TaggedSymbol)
      KIDS_STORE = T.let(:kids_store, WhopSDK::IndustryTypes::TaggedSymbol)
      SNEAKER_STORE =
        T.let(:sneaker_store, WhopSDK::IndustryTypes::TaggedSymbol)
      VINTAGE_STORE =
        T.let(:vintage_store, WhopSDK::IndustryTypes::TaggedSymbol)
      COMIC_BOOK_STORE =
        T.let(:comic_book_store, WhopSDK::IndustryTypes::TaggedSymbol)
      RECORD_STORE = T.let(:record_store, WhopSDK::IndustryTypes::TaggedSymbol)
      CRAFT_SUPPLY_STORE =
        T.let(:craft_supply_store, WhopSDK::IndustryTypes::TaggedSymbol)
      FABRIC_STORE = T.let(:fabric_store, WhopSDK::IndustryTypes::TaggedSymbol)
      HEALTH_FOOD_STORE =
        T.let(:health_food_store, WhopSDK::IndustryTypes::TaggedSymbol)
      VITAMIN_SUPPLEMENT_STORE =
        T.let(:vitamin_supplement_store, WhopSDK::IndustryTypes::TaggedSymbol)
      OPTICAL_STORE =
        T.let(:optical_store, WhopSDK::IndustryTypes::TaggedSymbol)
      MATTRESS_STORE =
        T.let(:mattress_store, WhopSDK::IndustryTypes::TaggedSymbol)
      APPLIANCE_STORE =
        T.let(:appliance_store, WhopSDK::IndustryTypes::TaggedSymbol)
      KITCHEN_BATH_STORE =
        T.let(:kitchen_bath_store, WhopSDK::IndustryTypes::TaggedSymbol)
      TILE_FLOORING_STORE =
        T.let(:tile_flooring_store, WhopSDK::IndustryTypes::TaggedSymbol)
      PAINT_STORE = T.let(:paint_store, WhopSDK::IndustryTypes::TaggedSymbol)
      GARDEN_CENTER =
        T.let(:garden_center, WhopSDK::IndustryTypes::TaggedSymbol)
      GUN_STORE = T.let(:gun_store, WhopSDK::IndustryTypes::TaggedSymbol)
      PAWN_SHOP = T.let(:pawn_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      DOLLAR_STORE = T.let(:dollar_store, WhopSDK::IndustryTypes::TaggedSymbol)
      HAIR_SALON = T.let(:hair_salon, WhopSDK::IndustryTypes::TaggedSymbol)
      NAIL_SALON = T.let(:nail_salon, WhopSDK::IndustryTypes::TaggedSymbol)
      DAY_SPA = T.let(:day_spa, WhopSDK::IndustryTypes::TaggedSymbol)
      MED_SPA = T.let(:med_spa, WhopSDK::IndustryTypes::TaggedSymbol)
      MASSAGE_STUDIO =
        T.let(:massage_studio, WhopSDK::IndustryTypes::TaggedSymbol)
      TATTOO_PARLOR =
        T.let(:tattoo_parlor, WhopSDK::IndustryTypes::TaggedSymbol)
      TANNING_SALON =
        T.let(:tanning_salon, WhopSDK::IndustryTypes::TaggedSymbol)
      BEAUTY_SUPPLY_STORE =
        T.let(:beauty_supply_store, WhopSDK::IndustryTypes::TaggedSymbol)
      LASH_BROW_STUDIO =
        T.let(:lash_brow_studio, WhopSDK::IndustryTypes::TaggedSymbol)
      WAXING_STUDIO =
        T.let(:waxing_studio, WhopSDK::IndustryTypes::TaggedSymbol)
      SAUNA_BATHHOUSE =
        T.let(:sauna_bathhouse, WhopSDK::IndustryTypes::TaggedSymbol)
      CRYOTHERAPY_STUDIO =
        T.let(:cryotherapy_studio, WhopSDK::IndustryTypes::TaggedSymbol)
      FLOAT_SENSORY_STUDIO =
        T.let(:float_sensory_studio, WhopSDK::IndustryTypes::TaggedSymbol)
      IV_THERAPY_LOUNGE =
        T.let(:iv_therapy_lounge, WhopSDK::IndustryTypes::TaggedSymbol)
      TEETH_WHITENING_STUDIO =
        T.let(:teeth_whitening_studio, WhopSDK::IndustryTypes::TaggedSymbol)
      MICROBLADING_STUDIO =
        T.let(:microblading_studio, WhopSDK::IndustryTypes::TaggedSymbol)
      SPRAY_TAN_STUDIO =
        T.let(:spray_tan_studio, WhopSDK::IndustryTypes::TaggedSymbol)
      BLOWOUT_BAR = T.let(:blowout_bar, WhopSDK::IndustryTypes::TaggedSymbol)
      MENS_BARBERSHOP =
        T.let(:mens_barbershop, WhopSDK::IndustryTypes::TaggedSymbol)
      KIDS_SALON = T.let(:kids_salon, WhopSDK::IndustryTypes::TaggedSymbol)
      MEDICAL_OFFICE =
        T.let(:medical_office, WhopSDK::IndustryTypes::TaggedSymbol)
      DENTAL_OFFICE =
        T.let(:dental_office, WhopSDK::IndustryTypes::TaggedSymbol)
      CHIROPRACTIC_OFFICE =
        T.let(:chiropractic_office, WhopSDK::IndustryTypes::TaggedSymbol)
      PHYSICAL_THERAPY_CLINIC =
        T.let(:physical_therapy_clinic, WhopSDK::IndustryTypes::TaggedSymbol)
      OPTOMETRY_OFFICE =
        T.let(:optometry_office, WhopSDK::IndustryTypes::TaggedSymbol)
      DERMATOLOGY_CLINIC =
        T.let(:dermatology_clinic, WhopSDK::IndustryTypes::TaggedSymbol)
      URGENT_CARE_CLINIC =
        T.let(:urgent_care_clinic, WhopSDK::IndustryTypes::TaggedSymbol)
      PHARMACY = T.let(:pharmacy, WhopSDK::IndustryTypes::TaggedSymbol)
      VETERINARY_CLINIC =
        T.let(:veterinary_clinic, WhopSDK::IndustryTypes::TaggedSymbol)
      MENTAL_HEALTH_CLINIC =
        T.let(:mental_health_clinic, WhopSDK::IndustryTypes::TaggedSymbol)
      FERTILITY_CLINIC =
        T.let(:fertility_clinic, WhopSDK::IndustryTypes::TaggedSymbol)
      ACUPUNCTURE_CLINIC =
        T.let(:acupuncture_clinic, WhopSDK::IndustryTypes::TaggedSymbol)
      HEARING_AID_CENTER =
        T.let(:hearing_aid_center, WhopSDK::IndustryTypes::TaggedSymbol)
      ORTHOPEDIC_CLINIC =
        T.let(:orthopedic_clinic, WhopSDK::IndustryTypes::TaggedSymbol)
      PEDIATRIC_CLINIC =
        T.let(:pediatric_clinic, WhopSDK::IndustryTypes::TaggedSymbol)
      COSMETIC_SURGERY_CENTER =
        T.let(:cosmetic_surgery_center, WhopSDK::IndustryTypes::TaggedSymbol)
      ALLERGY_CLINIC =
        T.let(:allergy_clinic, WhopSDK::IndustryTypes::TaggedSymbol)
      PAIN_MANAGEMENT_CLINIC =
        T.let(:pain_management_clinic, WhopSDK::IndustryTypes::TaggedSymbol)
      DIALYSIS_CENTER =
        T.let(:dialysis_center, WhopSDK::IndustryTypes::TaggedSymbol)
      IMAGING_CENTER =
        T.let(:imaging_center, WhopSDK::IndustryTypes::TaggedSymbol)
      LAB_TESTING_CENTER =
        T.let(:lab_testing_center, WhopSDK::IndustryTypes::TaggedSymbol)
      SLEEP_CLINIC = T.let(:sleep_clinic, WhopSDK::IndustryTypes::TaggedSymbol)
      WEIGHT_LOSS_CLINIC =
        T.let(:weight_loss_clinic, WhopSDK::IndustryTypes::TaggedSymbol)
      HORMONE_THERAPY_CLINIC =
        T.let(:hormone_therapy_clinic, WhopSDK::IndustryTypes::TaggedSymbol)
      ADDICTION_TREATMENT_CENTER =
        T.let(:addiction_treatment_center, WhopSDK::IndustryTypes::TaggedSymbol)
      REHABILITATION_CENTER =
        T.let(:rehabilitation_center, WhopSDK::IndustryTypes::TaggedSymbol)
      OCCUPATIONAL_THERAPY_CLINIC =
        T.let(
          :occupational_therapy_clinic,
          WhopSDK::IndustryTypes::TaggedSymbol
        )
      SPEECH_THERAPY_CLINIC =
        T.let(:speech_therapy_clinic, WhopSDK::IndustryTypes::TaggedSymbol)
      WOUND_CARE_CENTER =
        T.let(:wound_care_center, WhopSDK::IndustryTypes::TaggedSymbol)
      FUNERAL_HOME_MORTUARY =
        T.let(:funeral_home_mortuary, WhopSDK::IndustryTypes::TaggedSymbol)
      CREMATORY_SERVICE =
        T.let(:crematory_service, WhopSDK::IndustryTypes::TaggedSymbol)
      CEMETERY_MEMORIAL_PARK =
        T.let(:cemetery_memorial_park, WhopSDK::IndustryTypes::TaggedSymbol)
      CASKET_URN_RETAILER =
        T.let(:casket_urn_retailer, WhopSDK::IndustryTypes::TaggedSymbol)
      PET_CREMATION_SERVICE =
        T.let(:pet_cremation_service, WhopSDK::IndustryTypes::TaggedSymbol)
      BIOHAZARD_CLEANUP =
        T.let(:biohazard_cleanup, WhopSDK::IndustryTypes::TaggedSymbol)
      ESTATE_LIQUIDATION =
        T.let(:estate_liquidation, WhopSDK::IndustryTypes::TaggedSymbol)
      HOTEL = T.let(:hotel, WhopSDK::IndustryTypes::TaggedSymbol)
      MOTEL = T.let(:motel, WhopSDK::IndustryTypes::TaggedSymbol)
      BOUTIQUE_HOTEL =
        T.let(:boutique_hotel, WhopSDK::IndustryTypes::TaggedSymbol)
      BED_AND_BREAKFAST =
        T.let(:bed_and_breakfast, WhopSDK::IndustryTypes::TaggedSymbol)
      HOSTEL = T.let(:hostel, WhopSDK::IndustryTypes::TaggedSymbol)
      RESORT = T.let(:resort, WhopSDK::IndustryTypes::TaggedSymbol)
      CAMPGROUND_RV =
        T.let(:campground_rv, WhopSDK::IndustryTypes::TaggedSymbol)
      VACATION_RENTAL_PROPERTY =
        T.let(:vacation_rental_property, WhopSDK::IndustryTypes::TaggedSymbol)
      EXTENDED_STAY =
        T.let(:extended_stay, WhopSDK::IndustryTypes::TaggedSymbol)
      GLAMPING_SITE =
        T.let(:glamping_site, WhopSDK::IndustryTypes::TaggedSymbol)
      CABIN_RENTAL = T.let(:cabin_rental, WhopSDK::IndustryTypes::TaggedSymbol)
      ECO_LODGE = T.let(:eco_lodge, WhopSDK::IndustryTypes::TaggedSymbol)
      RETREAT_CENTER =
        T.let(:retreat_center, WhopSDK::IndustryTypes::TaggedSymbol)
      TUTORING_CENTER =
        T.let(:tutoring_center, WhopSDK::IndustryTypes::TaggedSymbol)
      DAYCARE_CENTER =
        T.let(:daycare_center, WhopSDK::IndustryTypes::TaggedSymbol)
      PRESCHOOL = T.let(:preschool, WhopSDK::IndustryTypes::TaggedSymbol)
      LEARNING_CENTER =
        T.let(:learning_center, WhopSDK::IndustryTypes::TaggedSymbol)
      MUSIC_SCHOOL = T.let(:music_school, WhopSDK::IndustryTypes::TaggedSymbol)
      ART_SCHOOL = T.let(:art_school, WhopSDK::IndustryTypes::TaggedSymbol)
      DRIVING_SCHOOL =
        T.let(:driving_school, WhopSDK::IndustryTypes::TaggedSymbol)
      LANGUAGE_SCHOOL =
        T.let(:language_school, WhopSDK::IndustryTypes::TaggedSymbol)
      TRADE_SCHOOL = T.let(:trade_school, WhopSDK::IndustryTypes::TaggedSymbol)
      CODING_BOOTCAMP_LOCATION =
        T.let(:coding_bootcamp_location, WhopSDK::IndustryTypes::TaggedSymbol)
      MONTESSORI_SCHOOL =
        T.let(:montessori_school, WhopSDK::IndustryTypes::TaggedSymbol)
      AFTER_SCHOOL_PROGRAM =
        T.let(:after_school_program, WhopSDK::IndustryTypes::TaggedSymbol)
      SWIM_SCHOOL = T.let(:swim_school, WhopSDK::IndustryTypes::TaggedSymbol)
      COOKING_SCHOOL =
        T.let(:cooking_school, WhopSDK::IndustryTypes::TaggedSymbol)
      TEST_PREP_CENTER =
        T.let(:test_prep_center, WhopSDK::IndustryTypes::TaggedSymbol)
      SPECIAL_NEEDS_CENTER =
        T.let(:special_needs_center, WhopSDK::IndustryTypes::TaggedSymbol)
      ADULT_EDUCATION_CENTER =
        T.let(:adult_education_center, WhopSDK::IndustryTypes::TaggedSymbol)
      FLIGHT_SCHOOL =
        T.let(:flight_school, WhopSDK::IndustryTypes::TaggedSymbol)
      COSMETOLOGY_SCHOOL =
        T.let(:cosmetology_school, WhopSDK::IndustryTypes::TaggedSymbol)
      MOVIE_THEATER =
        T.let(:movie_theater, WhopSDK::IndustryTypes::TaggedSymbol)
      ESCAPE_ROOM = T.let(:escape_room, WhopSDK::IndustryTypes::TaggedSymbol)
      ARCADE = T.let(:arcade, WhopSDK::IndustryTypes::TaggedSymbol)
      MINI_GOLF = T.let(:mini_golf, WhopSDK::IndustryTypes::TaggedSymbol)
      LASER_TAG = T.let(:laser_tag, WhopSDK::IndustryTypes::TaggedSymbol)
      GO_KART = T.let(:go_kart, WhopSDK::IndustryTypes::TaggedSymbol)
      AMUSEMENT_PARK =
        T.let(:amusement_park, WhopSDK::IndustryTypes::TaggedSymbol)
      MUSEUM = T.let(:museum, WhopSDK::IndustryTypes::TaggedSymbol)
      ZOO_AQUARIUM = T.let(:zoo_aquarium, WhopSDK::IndustryTypes::TaggedSymbol)
      THEATER_VENUE =
        T.let(:theater_venue, WhopSDK::IndustryTypes::TaggedSymbol)
      NIGHTCLUB = T.let(:nightclub, WhopSDK::IndustryTypes::TaggedSymbol)
      KARAOKE_BAR = T.let(:karaoke_bar, WhopSDK::IndustryTypes::TaggedSymbol)
      COMEDY_CLUB = T.let(:comedy_club, WhopSDK::IndustryTypes::TaggedSymbol)
      LIVE_MUSIC_VENUE =
        T.let(:live_music_venue, WhopSDK::IndustryTypes::TaggedSymbol)
      AXE_THROWING = T.let(:axe_throwing, WhopSDK::IndustryTypes::TaggedSymbol)
      VIRTUAL_REALITY_ARCADE =
        T.let(:virtual_reality_arcade, WhopSDK::IndustryTypes::TaggedSymbol)
      BOARD_GAME_CAFE =
        T.let(:board_game_cafe, WhopSDK::IndustryTypes::TaggedSymbol)
      CAT_CAFE = T.let(:cat_cafe, WhopSDK::IndustryTypes::TaggedSymbol)
      HAUNTED_HOUSE =
        T.let(:haunted_house, WhopSDK::IndustryTypes::TaggedSymbol)
      WATER_PARK = T.let(:water_park, WhopSDK::IndustryTypes::TaggedSymbol)
      INDOOR_PLAYGROUND =
        T.let(:indoor_playground, WhopSDK::IndustryTypes::TaggedSymbol)
      CONCERT_VENUE =
        T.let(:concert_venue, WhopSDK::IndustryTypes::TaggedSymbol)
      DRIVE_IN_THEATER =
        T.let(:drive_in_theater, WhopSDK::IndustryTypes::TaggedSymbol)
      BILLIARDS_HALL =
        T.let(:billiards_hall, WhopSDK::IndustryTypes::TaggedSymbol)
      DART_BAR = T.let(:dart_bar, WhopSDK::IndustryTypes::TaggedSymbol)
      INDOOR_SKYDIVING =
        T.let(:indoor_skydiving, WhopSDK::IndustryTypes::TaggedSymbol)
      LAW_OFFICE = T.let(:law_office, WhopSDK::IndustryTypes::TaggedSymbol)
      REAL_ESTATE_OFFICE =
        T.let(:real_estate_office, WhopSDK::IndustryTypes::TaggedSymbol)
      INSURANCE_OFFICE =
        T.let(:insurance_office, WhopSDK::IndustryTypes::TaggedSymbol)
      ACCOUNTING_OFFICE =
        T.let(:accounting_office, WhopSDK::IndustryTypes::TaggedSymbol)
      BANK_CREDIT_UNION =
        T.let(:bank_credit_union, WhopSDK::IndustryTypes::TaggedSymbol)
      PRINTING_SHOP =
        T.let(:printing_shop, WhopSDK::IndustryTypes::TaggedSymbol)
      SHIPPING_CENTER =
        T.let(:shipping_center, WhopSDK::IndustryTypes::TaggedSymbol)
      DRY_CLEANER = T.let(:dry_cleaner, WhopSDK::IndustryTypes::TaggedSymbol)
      LAUNDROMAT = T.let(:laundromat, WhopSDK::IndustryTypes::TaggedSymbol)
      STORAGE_FACILITY =
        T.let(:storage_facility, WhopSDK::IndustryTypes::TaggedSymbol)
      COWORKING_SPACE =
        T.let(:coworking_space, WhopSDK::IndustryTypes::TaggedSymbol)
      CHECK_CASHING =
        T.let(:check_cashing, WhopSDK::IndustryTypes::TaggedSymbol)
      TITLE_COMPANY =
        T.let(:title_company, WhopSDK::IndustryTypes::TaggedSymbol)
      TRAVEL_AGENCY_STOREFRONT =
        T.let(:travel_agency_storefront, WhopSDK::IndustryTypes::TaggedSymbol)
      STAFFING_OFFICE =
        T.let(:staffing_office, WhopSDK::IndustryTypes::TaggedSymbol)
      FINANCIAL_ADVISOR_OFFICE =
        T.let(:financial_advisor_office, WhopSDK::IndustryTypes::TaggedSymbol)
      IMMIGRATION_OFFICE =
        T.let(:immigration_office, WhopSDK::IndustryTypes::TaggedSymbol)
      BAIL_BONDS_OFFICE =
        T.let(:bail_bonds_office, WhopSDK::IndustryTypes::TaggedSymbol)
      PET_GROOMING = T.let(:pet_grooming, WhopSDK::IndustryTypes::TaggedSymbol)
      DOG_DAYCARE = T.let(:dog_daycare, WhopSDK::IndustryTypes::TaggedSymbol)
      PET_BOARDING = T.let(:pet_boarding, WhopSDK::IndustryTypes::TaggedSymbol)
      DOG_TRAINING_FACILITY =
        T.let(:dog_training_facility, WhopSDK::IndustryTypes::TaggedSymbol)
      PET_SPA = T.let(:pet_spa, WhopSDK::IndustryTypes::TaggedSymbol)
      AQUATIC_PET_STORE =
        T.let(:aquatic_pet_store, WhopSDK::IndustryTypes::TaggedSymbol)
      PET_BAKERY = T.let(:pet_bakery, WhopSDK::IndustryTypes::TaggedSymbol)
      PET_PHOTOGRAPHY_STUDIO =
        T.let(:pet_photography_studio, WhopSDK::IndustryTypes::TaggedSymbol)
      PLUMBING_SHOWROOM =
        T.let(:plumbing_showroom, WhopSDK::IndustryTypes::TaggedSymbol)
      HVAC_SHOWROOM =
        T.let(:hvac_showroom, WhopSDK::IndustryTypes::TaggedSymbol)
      SOLAR_SHOWROOM =
        T.let(:solar_showroom, WhopSDK::IndustryTypes::TaggedSymbol)
      KITCHEN_DESIGN_SHOWROOM =
        T.let(:kitchen_design_showroom, WhopSDK::IndustryTypes::TaggedSymbol)
      BATH_DESIGN_SHOWROOM =
        T.let(:bath_design_showroom, WhopSDK::IndustryTypes::TaggedSymbol)
      WINDOW_DOOR_SHOWROOM =
        T.let(:window_door_showroom, WhopSDK::IndustryTypes::TaggedSymbol)
      POOL_SPA_SHOWROOM =
        T.let(:pool_spa_showroom, WhopSDK::IndustryTypes::TaggedSymbol)
      FIREPLACE_SHOWROOM =
        T.let(:fireplace_showroom, WhopSDK::IndustryTypes::TaggedSymbol)
      COUNTERTOP_SHOWROOM =
        T.let(:countertop_showroom, WhopSDK::IndustryTypes::TaggedSymbol)
      NONPROFIT_ORGANIZATION =
        T.let(:nonprofit_organization, WhopSDK::IndustryTypes::TaggedSymbol)
      CHARITY_FOUNDATION =
        T.let(:charity_foundation, WhopSDK::IndustryTypes::TaggedSymbol)
      POLITICAL_CAMPAIGN =
        T.let(:political_campaign, WhopSDK::IndustryTypes::TaggedSymbol)
      COMMUNITY_ORGANIZATION =
        T.let(:community_organization, WhopSDK::IndustryTypes::TaggedSymbol)
      ENVIRONMENTAL_NONPROFIT =
        T.let(:environmental_nonprofit, WhopSDK::IndustryTypes::TaggedSymbol)
      EDUCATION_NONPROFIT =
        T.let(:education_nonprofit, WhopSDK::IndustryTypes::TaggedSymbol)
      HEALTH_NONPROFIT =
        T.let(:health_nonprofit, WhopSDK::IndustryTypes::TaggedSymbol)
      ANIMAL_WELFARE_NONPROFIT =
        T.let(:animal_welfare_nonprofit, WhopSDK::IndustryTypes::TaggedSymbol)
      ARTS_CULTURE_NONPROFIT =
        T.let(:arts_culture_nonprofit, WhopSDK::IndustryTypes::TaggedSymbol)
      SOCIAL_JUSTICE_NONPROFIT =
        T.let(:social_justice_nonprofit, WhopSDK::IndustryTypes::TaggedSymbol)
      VETERANS_NONPROFIT =
        T.let(:veterans_nonprofit, WhopSDK::IndustryTypes::TaggedSymbol)
      YOUTH_NONPROFIT =
        T.let(:youth_nonprofit, WhopSDK::IndustryTypes::TaggedSymbol)
      DISASTER_RELIEF_NONPROFIT =
        T.let(:disaster_relief_nonprofit, WhopSDK::IndustryTypes::TaggedSymbol)
      FOOD_BANK = T.let(:food_bank, WhopSDK::IndustryTypes::TaggedSymbol)
      HOUSING_NONPROFIT =
        T.let(:housing_nonprofit, WhopSDK::IndustryTypes::TaggedSymbol)
      GOVERNMENT_AGENCY =
        T.let(:government_agency, WhopSDK::IndustryTypes::TaggedSymbol)
      PUBLIC_UTILITY =
        T.let(:public_utility, WhopSDK::IndustryTypes::TaggedSymbol)
      PUBLIC_LIBRARY =
        T.let(:public_library, WhopSDK::IndustryTypes::TaggedSymbol)
      PUBLIC_SCHOOL =
        T.let(:public_school, WhopSDK::IndustryTypes::TaggedSymbol)
      MUNICIPAL_SERVICE =
        T.let(:municipal_service, WhopSDK::IndustryTypes::TaggedSymbol)
      MILITARY_INSTALLATION =
        T.let(:military_installation, WhopSDK::IndustryTypes::TaggedSymbol)
      EMBASSY_CONSULATE =
        T.let(:embassy_consulate, WhopSDK::IndustryTypes::TaggedSymbol)
      NICHE_SERVICE =
        T.let(:niche_service, WhopSDK::IndustryTypes::TaggedSymbol)
      NICHE_PRODUCT =
        T.let(:niche_product, WhopSDK::IndustryTypes::TaggedSymbol)
      HYBRID_BUSINESS =
        T.let(:hybrid_business, WhopSDK::IndustryTypes::TaggedSymbol)
      OTHER_GENERAL =
        T.let(:other_general, WhopSDK::IndustryTypes::TaggedSymbol)
      HOLDING_COMPANY =
        T.let(:holding_company, WhopSDK::IndustryTypes::TaggedSymbol)
      FAMILY_OFFICE =
        T.let(:family_office, WhopSDK::IndustryTypes::TaggedSymbol)
      COOPERATIVE = T.let(:cooperative, WhopSDK::IndustryTypes::TaggedSymbol)
      SOCIAL_ENTERPRISE =
        T.let(:social_enterprise, WhopSDK::IndustryTypes::TaggedSymbol)
      INCUBATOR_ACCELERATOR =
        T.let(:incubator_accelerator, WhopSDK::IndustryTypes::TaggedSymbol)
      COWORKING_COMMUNITY =
        T.let(:coworking_community, WhopSDK::IndustryTypes::TaggedSymbol)
      MEDIA_COMPANY =
        T.let(:media_company, WhopSDK::IndustryTypes::TaggedSymbol)
      RESEARCH_LAB = T.let(:research_lab, WhopSDK::IndustryTypes::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::IndustryTypes::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
