# frozen_string_literal: true

module Whop_sdk
  module Types
    class Account < Internal::Types::Model
      field :balances, -> { Internal::Types::Array[Whop_sdk::Types::AccountBalanceToken] }, optional: false, nullable: false

      field :banner_image_url, -> { String }, optional: false, nullable: true

      field :business_address, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :business_name, -> { String }, optional: false, nullable: true

      field :business_type, -> { Whop_sdk::Types::AccountBusinessType }, optional: false, nullable: true

      field :can_transfer_pending_balance_to_children, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :capabilities, -> { Whop_sdk::Types::AccountCapabilities }, optional: false, nullable: true

      field :cards, -> { Whop_sdk::Types::AccountCards }, optional: false, nullable: true

      field :collect_vat_id, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :company_formation, -> { Whop_sdk::Types::AccountCompanyFormation }, optional: false, nullable: false

      field :country, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: true

      field :email, -> { String }, optional: false, nullable: true

      field :eula, -> { Whop_sdk::Types::File }, optional: false, nullable: true

      field :home_preferences, -> { Internal::Types::Array[Whop_sdk::Types::AccountHomePreferencesItem] }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :industry_group, -> { Whop_sdk::Types::AccountIndustryGroup }, optional: false, nullable: true

      field :industry_type, -> { String }, optional: false, nullable: true

      field :invoice_prefix, -> { String }, optional: false, nullable: true

      field :logo_url, -> { String }, optional: false, nullable: true

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :onboarding_type, -> { Whop_sdk::Types::AccountOnboardingType }, optional: false, nullable: true

      field :opengraph_image_url, -> { String }, optional: false, nullable: true

      field :opengraph_image_variant, -> { Whop_sdk::Types::AccountOpengraphImageVariant }, optional: false, nullable: true

      field :other_business_description, -> { String }, optional: false, nullable: true

      field :other_industry_description, -> { String }, optional: false, nullable: true

      field :owner, -> { Whop_sdk::Types::UserSummary }, optional: false, nullable: false

      field :parent_account, -> { Whop_sdk::Types::AccountParent }, optional: false, nullable: true

      field :payment_controls, -> { Whop_sdk::Types::AccountPaymentControls }, optional: false, nullable: true

      field :privacy_policy, -> { Whop_sdk::Types::File }, optional: false, nullable: true

      field :product_tax_code, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :recommended_actions, -> { Internal::Types::Array[Whop_sdk::Types::AccountRecommendedAction] }, optional: false, nullable: true

      field :require2fa, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "require_2fa"

      field :required_actions, -> { Internal::Types::Array[Whop_sdk::Types::AccountRequiredAction] }, optional: false, nullable: true

      field :return_policy, -> { Whop_sdk::Types::File }, optional: false, nullable: true

      field :route, -> { String }, optional: false, nullable: false

      field :send_customer_emails, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :show_joined_whops, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :show_reviews_dtc, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :show_user_directory, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :social_links, -> { Internal::Types::Array[Whop_sdk::Types::AccountSocialLink] }, optional: false, nullable: false

      field :stablecoin_rails, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :status, -> { String }, optional: false, nullable: true

      field :status_reason, -> { String }, optional: false, nullable: true

      field :store_page_config, -> { Whop_sdk::Types::AccountStorePageConfig }, optional: false, nullable: false

      field :target_audience, -> { String }, optional: false, nullable: true

      field :tax_collection_enabled_states, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :tax_identifiers, -> { Internal::Types::Array[Whop_sdk::Types::AccountTaxIdentifier] }, optional: false, nullable: false

      field :tax_remitted_by, -> { Whop_sdk::Types::AccountTaxRemittedBy }, optional: false, nullable: true

      field :tax_type, -> { Whop_sdk::Types::AccountTaxType }, optional: false, nullable: true

      field :terms_of_service, -> { Whop_sdk::Types::File }, optional: false, nullable: true

      field :three_ds_level, -> { Whop_sdk::Types::AccountThreeDsLevel }, optional: false, nullable: true

      field :title, -> { String }, optional: false, nullable: false

      field :total_earned_usd, -> { Integer }, optional: false, nullable: true

      field :total_usd, -> { String }, optional: false, nullable: true

      field :use_logo_as_opengraph_image_fallback, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :verification, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :volume_usd, -> { Integer }, optional: false, nullable: true

      field :wallet, -> { Whop_sdk::Types::AccountWallet }, optional: false, nullable: true
    end
  end
end
