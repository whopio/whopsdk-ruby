# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      class UpdateAccountsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :affiliate_application_required, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :affiliate_instructions, -> { String }, optional: true, nullable: false

        field :banner_image, -> { Whop_sdk::Accounts::Types::UpdateAccountsRequestBannerImage }, optional: true, nullable: false

        field :business_address, -> { Whop_sdk::Accounts::Types::UpdateAccountsRequestBusinessAddress }, optional: true, nullable: false

        field :business_name, -> { String }, optional: true, nullable: false

        field :business_type, -> { Whop_sdk::Accounts::Types::UpdateAccountsRequestBusinessType }, optional: true, nullable: false

        field :collect_vat_id, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :featured_affiliate_product_id, -> { String }, optional: true, nullable: false

        field :home_preferences, -> { Internal::Types::Array[Whop_sdk::Accounts::Types::UpdateAccountsRequestHomePreferencesItem] }, optional: true, nullable: false

        field :industry_group, -> { Whop_sdk::Accounts::Types::UpdateAccountsRequestIndustryGroup }, optional: true, nullable: false

        field :industry_type, -> { String }, optional: true, nullable: false

        field :invoice_prefix, -> { String }, optional: true, nullable: false

        field :logo, -> { Whop_sdk::Accounts::Types::UpdateAccountsRequestLogo }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :onboarding_type, -> { Whop_sdk::Accounts::Types::UpdateAccountsRequestOnboardingType }, optional: true, nullable: false

        field :opengraph_image, -> { Whop_sdk::Accounts::Types::UpdateAccountsRequestOpengraphImage }, optional: true, nullable: false

        field :opengraph_image_variant, -> { Whop_sdk::Accounts::Types::UpdateAccountsRequestOpengraphImageVariant }, optional: true, nullable: false

        field :other_business_description, -> { String }, optional: true, nullable: false

        field :other_industry_description, -> { String }, optional: true, nullable: false

        field :product_tax_code_id, -> { String }, optional: true, nullable: false

        field :require2fa, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "require_2fa"

        field :route, -> { String }, optional: true, nullable: false

        field :send_customer_emails, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :show_joined_whops, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :show_reviews_dtc, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :show_user_directory, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :social_links, -> { Internal::Types::Array[Internal::Types::Hash[String, Object]] }, optional: true, nullable: false

        field :store_page_config, -> { Whop_sdk::Accounts::Types::UpdateAccountsRequestStorePageConfig }, optional: true, nullable: false

        field :target_audience, -> { String }, optional: true, nullable: false

        field :tax_collection_enabled_states, -> { Internal::Types::Array[Whop_sdk::Accounts::Types::UpdateAccountsRequestTaxCollectionEnabledStatesItem] }, optional: true, nullable: false

        field :tax_identifiers, -> { Internal::Types::Array[Whop_sdk::Accounts::Types::UpdateAccountsRequestTaxIdentifiersItem] }, optional: true, nullable: false

        field :tax_remitted_by, -> { Whop_sdk::Accounts::Types::UpdateAccountsRequestTaxRemittedBy }, optional: true, nullable: false

        field :tax_type, -> { Whop_sdk::Accounts::Types::UpdateAccountsRequestTaxType }, optional: true, nullable: false

        field :three_ds_level, -> { Whop_sdk::Accounts::Types::UpdateAccountsRequestThreeDsLevel }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :use_logo_as_opengraph_image_fallback, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
