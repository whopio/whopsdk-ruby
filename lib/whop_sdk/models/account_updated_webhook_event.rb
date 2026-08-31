# frozen_string_literal: true

module WhopSDK
  module Models
    class AccountUpdatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   A unique ID for every single webhook request
      #
      #   @return [String]
      required :id, String

      # @!attribute api_version
      #   The API version for this webhook
      #
      #   @return [Symbol, :v1]
      required :api_version, const: :v1

      # @!attribute api_version_date
      #   The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @return [String, nil]
      required :api_version_date, String, nil?: true

      # @!attribute data
      #
      #   @return [WhopSDK::Models::AccountUpdatedWebhookEvent::Data]
      required :data, -> { WhopSDK::AccountUpdatedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"account.updated"]
      required :type, const: :"account.updated"

      # @!attribute account_id
      #   The account ID that this webhook event is associated with
      #
      #   @return [String, nil]
      optional :account_id, String, nil?: true

      # @!attribute previous_attributes
      #   For some `.updated` events, the old values of the payload fields that changed,
      #   keyed by field name. Omitted when no capture is available for the event
      #
      #   @return [Object, nil]
      optional :previous_attributes, WhopSDK::Internal::Type::Unknown

      # @!method initialize(id:, api_version_date:, data:, timestamp:, account_id: nil, previous_attributes: nil, api_version: :v1, type: :"account.updated")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AccountUpdatedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param api_version_date [String, nil] The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @param data [WhopSDK::Models::AccountUpdatedWebhookEvent::Data]
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param account_id [String, nil] The account ID that this webhook event is associated with
      #
      #   @param previous_attributes [Object] For some `.updated` events, the old values of the payload fields that changed, k
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"account.updated"] The webhook event type

      # @see WhopSDK::Models::AccountUpdatedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Account ID, prefixed `biz_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute balances
        #
        #   @return [Array<WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Balance>]
        required :balances,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountUpdatedWebhookEvent::Data::Balance] }

        # @!attribute banner_image_url
        #   Account banner image URL.
        #
        #   @return [String, nil]
        required :banner_image_url, String, nil?: true

        # @!attribute business_address
        #   Account business address used to calculate tax, with `line1`, `line2`, `city`,
        #   `state`, `postal_code`, and `country`. `null` when no address is set.
        #
        #   @return [Object, nil]
        required :business_address, WhopSDK::Internal::Type::Unknown, nil?: true

        # @!attribute business_name
        #   The account's legal business name used with its tax address.
        #
        #   @return [String, nil]
        required :business_name, String, nil?: true

        # @!attribute business_type
        #   High-level business category for the account. See the
        #   [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary)
        #   for valid values.
        #
        #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::BusinessType, nil]
        required :business_type,
                 enum: -> {
                   WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType
                 },
                 nil?: true

        # @!attribute can_transfer_pending_balance_to_children
        #   Whether pending funds may be transferred from this platform account to its
        #   connected accounts.
        #
        #   @return [Boolean]
        required :can_transfer_pending_balance_to_children, WhopSDK::Internal::Type::Boolean

        # @!attribute capabilities
        #   Payment rails enabled for this account, each `active`, `inactive`, or `pending`
        #   (onboarding or review in progress). Computed only on `retrieve` and `me` for
        #   callers with `company:balance:read` scope; `null` otherwise.
        #
        #   @return [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities, nil]
        required :capabilities, -> { WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities }, nil?: true

        # @!attribute cards
        #   Whop Cards application details for the account. Computed only on `retrieve` and
        #   `me` for callers with `company:balance:read` scope; `null` otherwise, or when
        #   the account has no card application.
        #
        #   @return [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Cards, nil]
        required :cards, -> { WhopSDK::AccountUpdatedWebhookEvent::Data::Cards }, nil?: true

        # @!attribute collect_vat_id
        #   Whether checkout shows a VAT/tax ID field for buyers to optionally enter. Does
        #   not require a VAT ID to purchase.
        #
        #   @return [Boolean]
        required :collect_vat_id, WhopSDK::Internal::Type::Boolean

        # @!attribute company_formation
        #   Company formation state for the account, managed through
        #   [Form Company](/api-reference/beta/accounts/form-company). A `draft` `status`
        #   until the formation checkout is paid, then filing progress with downloadable
        #   documents and signatures awaiting action. Empty when the formation state is
        #   temporarily unavailable.
        #
        #   @return [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation]
        required :company_formation, -> { WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation }

        # @!attribute country
        #   Country where the account is located.
        #
        #   @return [String, nil]
        required :country, String, nil?: true

        # @!attribute created_at
        #   When the account was created, as an ISO 8601 timestamp.
        #
        #   @return [String]
        required :created_at, String

        # @!attribute description
        #   Account promotional description.
        #
        #   @return [String, nil]
        required :description, String, nil?: true

        # @!attribute email
        #   Account owner email address.
        #
        #   @return [String, nil]
        required :email, String, nil?: true

        # @!attribute eula
        #   The account's end-user license agreement document, or `null` if they have not
        #   published one.
        #
        #   @return [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Eula, nil]
        required :eula, -> { WhopSDK::AccountUpdatedWebhookEvent::Data::Eula }, nil?: true

        # @!attribute home_preferences
        #
        #   @return [Array<Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::HomePreference>]
        required :home_preferences,
                 -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AccountUpdatedWebhookEvent::Data::HomePreference] }

        # @!attribute industry_group
        #   Account industry group. See the
        #   [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary)
        #   for valid values.
        #
        #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::IndustryGroup, nil]
        required :industry_group,
                 enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup },
                 nil?: true

        # @!attribute industry_type
        #   Specific industry vertical for the account. See the
        #   [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary)
        #   for valid values.
        #
        #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::IndustryType, nil]
        required :industry_type,
                 enum: -> {
                   WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType
                 },
                 nil?: true

        # @!attribute invoice_prefix
        #   Prefix used for account invoices.
        #
        #   @return [String, nil]
        required :invoice_prefix, String, nil?: true

        # @!attribute logo_url
        #   Account logo image URL.
        #
        #   @return [String, nil]
        required :logo_url, String, nil?: true

        # @!attribute metadata
        #   Arbitrary key/value metadata supplied at account creation.
        #
        #   @return [Object]
        required :metadata, WhopSDK::Internal::Type::Unknown

        # @!attribute onboarding_type
        #   Type of onboarding the account has completed.
        #
        #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::OnboardingType, nil]
        required :onboarding_type,
                 enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::OnboardingType },
                 nil?: true

        # @!attribute opengraph_image_url
        #   Account Open Graph image URL.
        #
        #   @return [String, nil]
        required :opengraph_image_url, String, nil?: true

        # @!attribute opengraph_image_variant
        #   Account Open Graph image variant.
        #
        #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::OpengraphImageVariant, nil]
        required :opengraph_image_variant,
                 enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::OpengraphImageVariant },
                 nil?: true

        # @!attribute other_business_description
        #   Business type details when business_type is `other`.
        #
        #   @return [String, nil]
        required :other_business_description, String, nil?: true

        # @!attribute other_industry_description
        #   Industry details when industry_type is `other`.
        #
        #   @return [String, nil]
        required :other_industry_description, String, nil?: true

        # @!attribute owner
        #   The single user who owns the account, whose email is the `email` above. Distinct
        #   from the `owner` role on team members, which any number of them can hold.
        #
        #   @return [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Owner]
        required :owner, -> { WhopSDK::AccountUpdatedWebhookEvent::Data::Owner }

        # @!attribute parent_account
        #   Parent account for connected accounts, or `null` for standalone accounts.
        #
        #   @return [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::ParentAccount, nil]
        required :parent_account, -> { WhopSDK::AccountUpdatedWebhookEvent::Data::ParentAccount }, nil?: true

        # @!attribute payment_controls
        #   Payment health controls currently applied to the account. Computed only on
        #   `retrieve` and `me` for callers with `company:balance:read` scope; `null`
        #   otherwise.
        #
        #   @return [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls, nil]
        required :payment_controls,
                 -> {
                   WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls
                 },
                 nil?: true

        # @!attribute privacy_policy
        #   The account's privacy policy document, or `null` if they have not published one.
        #
        #   @return [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PrivacyPolicy, nil]
        required :privacy_policy, -> { WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy }, nil?: true

        # @!attribute product_tax_code
        #   Tax classification code applied by default to the account's products, with `id`,
        #   `name`, and `product_type`. `null` when no default is set.
        #
        #   @return [Object, nil]
        required :product_tax_code, WhopSDK::Internal::Type::Unknown, nil?: true

        # @!attribute recommended_actions
        #   @deprecated
        #
        #   DEPRECATED: Use the `GET /recommended_actions?account_id={account_id}` endpoint
        #   instead.
        #
        #   @return [Array<WhopSDK::Models::AccountUpdatedWebhookEvent::Data::RecommendedAction>, nil]
        required :recommended_actions,
                 -> {
                   WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction]
                 },
                 nil?: true

        # @!attribute require_2fa
        #   Whether authorized users must enable two-factor authentication.
        #
        #   @return [Boolean]
        required :require_2fa, WhopSDK::Internal::Type::Boolean

        # @!attribute required_actions
        #
        #   @return [Array<WhopSDK::Models::AccountUpdatedWebhookEvent::Data::RequiredAction>, nil]
        required :required_actions,
                 -> {
                   WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction]
                 },
                 nil?: true

        # @!attribute return_policy
        #   The account's return policy document, or `null` if they have not published one.
        #
        #   @return [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::ReturnPolicy, nil]
        required :return_policy, -> { WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy }, nil?: true

        # @!attribute route
        #   Account public route identifier.
        #
        #   @return [String]
        required :route, String

        # @!attribute send_customer_emails
        #   Whether Whop sends transactional emails to customers on behalf of this account.
        #
        #   @return [Boolean]
        required :send_customer_emails, WhopSDK::Internal::Type::Boolean

        # @!attribute show_joined_whops
        #   Whether the account appears in joined whops on other accounts.
        #
        #   @return [Boolean]
        required :show_joined_whops, WhopSDK::Internal::Type::Boolean

        # @!attribute show_reviews_dtc
        #   Whether reviews are displayed on direct-to-consumer product pages.
        #
        #   @return [Boolean]
        required :show_reviews_dtc, WhopSDK::Internal::Type::Boolean

        # @!attribute show_user_directory
        #   Whether the account shows users in the user directory.
        #
        #   @return [Boolean]
        required :show_user_directory, WhopSDK::Internal::Type::Boolean

        # @!attribute social_links
        #
        #   @return [Array<WhopSDK::Models::AccountUpdatedWebhookEvent::Data::SocialLink>]
        required :social_links,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountUpdatedWebhookEvent::Data::SocialLink] }

        # @!attribute stablecoin_rails
        #   Whether the account settles on stablecoin rails — its balance is held on-chain
        #   as USDT and paid out over crypto, rather than as fiat cash.
        #
        #   @return [Boolean]
        required :stablecoin_rails, WhopSDK::Internal::Type::Boolean

        # @!attribute status
        #   Whether the account can operate on Whop: `active` or `suspended`. Computed on
        #   `list`, `retrieve`, `me`, and `suspend`; `null` otherwise.
        #
        #   @return [String, nil]
        required :status, String, nil?: true

        # @!attribute status_reason
        #   Why the account was suspended, in language safe to show the account owner.
        #   Computed on `retrieve`, `me`, and `suspend`; `null` otherwise, when `status` is
        #   not `suspended`, and when the suspension was recorded without a reason.
        #
        #   @return [String, nil]
        required :status_reason, String, nil?: true

        # @!attribute store_page_config
        #   Account store page display configuration.
        #
        #   @return [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::StorePageConfig]
        required :store_page_config, -> { WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig }

        # @!attribute target_audience
        #   Target audience for this account.
        #
        #   @return [String, nil]
        required :target_audience, String, nil?: true

        # @!attribute tax_collection_enabled_states
        #
        #   @return [Array<String>]
        required :tax_collection_enabled_states, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute tax_identifiers
        #
        #   @return [Array<WhopSDK::Models::AccountUpdatedWebhookEvent::Data::TaxIdentifier>]
        required :tax_identifiers,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier] }

        # @!attribute tax_remitted_by
        #   Who calculates and remits tax for the account: `whop` (Whop calculates and
        #   remits), `self` (Whop calculates; the account collects and remits), or `none`
        #   (neither; the account is responsible). `null` until the account enrolls in the
        #   Whop tax service.
        #
        #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::TaxRemittedBy, nil]
        required :tax_remitted_by,
                 enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::TaxRemittedBy },
                 nil?: true

        # @!attribute tax_type
        #   How tax is applied to the account's prices: `inclusive` (tax included in the
        #   listed price) or `exclusive` (tax added on top). Defaults to `exclusive` when
        #   unset; `null` only when the account has no payment connection.
        #
        #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::TaxType, nil]
        required :tax_type, enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::TaxType }, nil?: true

        # @!attribute terms_of_service
        #   The account's terms of service document, or `null` if they have not published
        #   one.
        #
        #   @return [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::TermsOfService, nil]
        required :terms_of_service,
                 -> {
                   WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService
                 },
                 nil?: true

        # @!attribute three_ds_level
        #   Account-level 3D Secure behavior. `mandate_challenge` requires cardholder
        #   verification on supported card payments; `null` uses the standard checkout flow.
        #
        #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::ThreeDSLevel, nil]
        required :three_ds_level,
                 enum: -> {
                   WhopSDK::AccountUpdatedWebhookEvent::Data::ThreeDSLevel
                 },
                 nil?: true

        # @!attribute title
        #   Account display name.
        #
        #   @return [String]
        required :title, String

        # @!attribute total_earned_usd
        #   Account lifetime sales, normalized to USD. Computed only on `retrieve` and `me`
        #   for callers with `stats:read` scope; `null` otherwise.
        #
        #   @return [Float, nil]
        required :total_earned_usd, Float, nil?: true

        # @!attribute total_usd
        #   Total USD value across balances with known exchange rates. Computed only on
        #   single-account reads (`retrieve` and `me`); `null` on list responses, writes,
        #   missing balance-read permission, or unavailable balance source.
        #
        #   @return [String, nil]
        required :total_usd, String, nil?: true

        # @!attribute use_logo_as_opengraph_image_fallback
        #   Whether the account uses its logo as the fallback Open Graph image.
        #
        #   @return [Boolean]
        required :use_logo_as_opengraph_image_fallback, WhopSDK::Internal::Type::Boolean

        # @!attribute verification
        #   Account identity verification status for the `individual` (KYC) and `business`
        #   (KYB) profiles. Each is `null` until created, otherwise a `status` of
        #   `not_started`, `pending`, `manual_review`, `approved`, or `rejected`.
        #
        #   @return [Object]
        required :verification, WhopSDK::Internal::Type::Unknown

        # @!attribute volume_usd
        #   Lifetime volume through the account — sales plus transfers received — normalized
        #   to USD. Computed only on `list` for callers with `stats:read` on the account;
        #   `null` otherwise.
        #
        #   @return [Float, nil]
        required :volume_usd, Float, nil?: true

        # @!attribute wallet
        #   Account primary crypto wallet, or `null` if none has been provisioned.
        #
        #   @return [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Wallet, nil]
        required :wallet, -> { WhopSDK::AccountUpdatedWebhookEvent::Data::Wallet }, nil?: true

        # @!method initialize(id:, balances:, banner_image_url:, business_address:, business_name:, business_type:, can_transfer_pending_balance_to_children:, capabilities:, cards:, collect_vat_id:, company_formation:, country:, created_at:, description:, email:, eula:, home_preferences:, industry_group:, industry_type:, invoice_prefix:, logo_url:, metadata:, onboarding_type:, opengraph_image_url:, opengraph_image_variant:, other_business_description:, other_industry_description:, owner:, parent_account:, payment_controls:, privacy_policy:, product_tax_code:, recommended_actions:, require_2fa:, required_actions:, return_policy:, route:, send_customer_emails:, show_joined_whops:, show_reviews_dtc:, show_user_directory:, social_links:, stablecoin_rails:, status:, status_reason:, store_page_config:, target_audience:, tax_collection_enabled_states:, tax_identifiers:, tax_remitted_by:, tax_type:, terms_of_service:, three_ds_level:, title:, total_earned_usd:, total_usd:, use_logo_as_opengraph_image_fallback:, verification:, volume_usd:, wallet:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AccountUpdatedWebhookEvent::Data} for more details.
        #
        #   @param id [String] Account ID, prefixed `biz_`.
        #
        #   @param balances [Array<WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Balance>]
        #
        #   @param banner_image_url [String, nil] Account banner image URL.
        #
        #   @param business_address [Object, nil] Account business address used to calculate tax, with `line1`, `line2`, `city`, `
        #
        #   @param business_name [String, nil] The account's legal business name used with its tax address.
        #
        #   @param business_type [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::BusinessType, nil] High-level business category for the account. See the [business types and indust
        #
        #   @param can_transfer_pending_balance_to_children [Boolean] Whether pending funds may be transferred from this platform account to its conne
        #
        #   @param capabilities [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities, nil] Payment rails enabled for this account, each `active`, `inactive`, or `pending`
        #
        #   @param cards [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Cards, nil] Whop Cards application details for the account. Computed only on `retrieve` and
        #
        #   @param collect_vat_id [Boolean] Whether checkout shows a VAT/tax ID field for buyers to optionally enter. Does n
        #
        #   @param company_formation [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation] Company formation state for the account, managed through [Form Company](/api-ref
        #
        #   @param country [String, nil] Country where the account is located.
        #
        #   @param created_at [String] When the account was created, as an ISO 8601 timestamp.
        #
        #   @param description [String, nil] Account promotional description.
        #
        #   @param email [String, nil] Account owner email address.
        #
        #   @param eula [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Eula, nil] The account's end-user license agreement document, or `null` if they have not pu
        #
        #   @param home_preferences [Array<Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::HomePreference>]
        #
        #   @param industry_group [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::IndustryGroup, nil] Account industry group. See the [business types and industries glossary](/api-re
        #
        #   @param industry_type [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::IndustryType, nil] Specific industry vertical for the account. See the [business types and industri
        #
        #   @param invoice_prefix [String, nil] Prefix used for account invoices.
        #
        #   @param logo_url [String, nil] Account logo image URL.
        #
        #   @param metadata [Object] Arbitrary key/value metadata supplied at account creation.
        #
        #   @param onboarding_type [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::OnboardingType, nil] Type of onboarding the account has completed.
        #
        #   @param opengraph_image_url [String, nil] Account Open Graph image URL.
        #
        #   @param opengraph_image_variant [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::OpengraphImageVariant, nil] Account Open Graph image variant.
        #
        #   @param other_business_description [String, nil] Business type details when business_type is `other`.
        #
        #   @param other_industry_description [String, nil] Industry details when industry_type is `other`.
        #
        #   @param owner [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Owner] The single user who owns the account, whose email is the `email` above. Distinct
        #
        #   @param parent_account [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::ParentAccount, nil] Parent account for connected accounts, or `null` for standalone accounts.
        #
        #   @param payment_controls [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls, nil] Payment health controls currently applied to the account. Computed only on `retr
        #
        #   @param privacy_policy [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PrivacyPolicy, nil] The account's privacy policy document, or `null` if they have not published one.
        #
        #   @param product_tax_code [Object, nil] Tax classification code applied by default to the account's products, with `id`,
        #
        #   @param recommended_actions [Array<WhopSDK::Models::AccountUpdatedWebhookEvent::Data::RecommendedAction>, nil] DEPRECATED: Use the `GET /recommended_actions?account_id={account_id}` endpoint
        #
        #   @param require_2fa [Boolean] Whether authorized users must enable two-factor authentication.
        #
        #   @param required_actions [Array<WhopSDK::Models::AccountUpdatedWebhookEvent::Data::RequiredAction>, nil]
        #
        #   @param return_policy [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::ReturnPolicy, nil] The account's return policy document, or `null` if they have not published one.
        #
        #   @param route [String] Account public route identifier.
        #
        #   @param send_customer_emails [Boolean] Whether Whop sends transactional emails to customers on behalf of this account.
        #
        #   @param show_joined_whops [Boolean] Whether the account appears in joined whops on other accounts.
        #
        #   @param show_reviews_dtc [Boolean] Whether reviews are displayed on direct-to-consumer product pages.
        #
        #   @param show_user_directory [Boolean] Whether the account shows users in the user directory.
        #
        #   @param social_links [Array<WhopSDK::Models::AccountUpdatedWebhookEvent::Data::SocialLink>]
        #
        #   @param stablecoin_rails [Boolean] Whether the account settles on stablecoin rails — its balance is held on-chain a
        #
        #   @param status [String, nil] Whether the account can operate on Whop: `active` or `suspended`. Computed on `l
        #
        #   @param status_reason [String, nil] Why the account was suspended, in language safe to show the account owner. Compu
        #
        #   @param store_page_config [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::StorePageConfig] Account store page display configuration.
        #
        #   @param target_audience [String, nil] Target audience for this account.
        #
        #   @param tax_collection_enabled_states [Array<String>]
        #
        #   @param tax_identifiers [Array<WhopSDK::Models::AccountUpdatedWebhookEvent::Data::TaxIdentifier>]
        #
        #   @param tax_remitted_by [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::TaxRemittedBy, nil] Who calculates and remits tax for the account: `whop` (Whop calculates and remit
        #
        #   @param tax_type [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::TaxType, nil] How tax is applied to the account's prices: `inclusive` (tax included in the lis
        #
        #   @param terms_of_service [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::TermsOfService, nil] The account's terms of service document, or `null` if they have not published on
        #
        #   @param three_ds_level [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::ThreeDSLevel, nil] Account-level 3D Secure behavior. `mandate_challenge` requires cardholder verifi
        #
        #   @param title [String] Account display name.
        #
        #   @param total_earned_usd [Float, nil] Account lifetime sales, normalized to USD. Computed only on `retrieve` and `me`
        #
        #   @param total_usd [String, nil] Total USD value across balances with known exchange rates. Computed only on sing
        #
        #   @param use_logo_as_opengraph_image_fallback [Boolean] Whether the account uses its logo as the fallback Open Graph image.
        #
        #   @param verification [Object] Account identity verification status for the `individual` (KYC) and `business` (
        #
        #   @param volume_usd [Float, nil] Lifetime volume through the account — sales plus transfers received — normalized
        #
        #   @param wallet [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Wallet, nil] Account primary crypto wallet, or `null` if none has been provisioned.

        class Balance < WhopSDK::Internal::Type::BaseModel
          # @!attribute balance
          #   Total amount held in native units, as a decimal string.
          #
          #   @return [String]
          required :balance, String

          # @!attribute breakdown
          #   Balance split into available, pending, and reserve amounts, as native-unit
          #   decimal strings, with the days the pending amount is expected to settle.
          #   On-chain crypto is entirely available; good_funds and fiat cash can have pending
          #   or reserve portions.
          #
          #   @return [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Balance::Breakdown]
          required :breakdown, -> { WhopSDK::AccountUpdatedWebhookEvent::Data::Balance::Breakdown }

          # @!attribute icon_url
          #   Holding icon URL.
          #
          #   @return [String, nil]
          required :icon_url, String, nil?: true

          # @!attribute name
          #   The holding's display name
          #
          #   @return [String]
          required :name, String

          # @!attribute price_usd
          #   USD price per unit, or `null` when no exchange rate is available.
          #
          #   @return [Float, nil]
          required :price_usd, Float, nil?: true

          # @!attribute symbol
          #   Holding display symbol, such as `USDT`, `cbBTC`, or `EUR`.
          #
          #   @return [String]
          required :symbol, String

          # @!attribute value_usd
          #   Holding USD value, or `null` when no exchange rate is available.
          #
          #   @return [String, nil]
          required :value_usd, String, nil?: true

          # @!method initialize(balance:, breakdown:, icon_url:, name:, price_usd:, symbol:, value_usd:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Balance} for more details.
          #
          #   Account holdings, each with USD value. Empty when `total_usd` is `null`.
          #
          #   @param balance [String] Total amount held in native units, as a decimal string.
          #
          #   @param breakdown [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Balance::Breakdown] Balance split into available, pending, and reserve amounts, as native-unit decim
          #
          #   @param icon_url [String, nil] Holding icon URL.
          #
          #   @param name [String] The holding's display name
          #
          #   @param price_usd [Float, nil] USD price per unit, or `null` when no exchange rate is available.
          #
          #   @param symbol [String] Holding display symbol, such as `USDT`, `cbBTC`, or `EUR`.
          #
          #   @param value_usd [String, nil] Holding USD value, or `null` when no exchange rate is available.

          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Balance#breakdown
          class Breakdown < WhopSDK::Internal::Type::BaseModel
            # @!attribute available
            #   Amount you can spend, send, or withdraw now, in native units, as a decimal
            #   string.
            #
            #   @return [String]
            required :available, String

            # @!attribute in_transit
            #   Amount moving between the account's own destinations, such as a treasury sweep
            #   to its crypto wallet or a card top-up. In native units, as a decimal string.
            #
            #   @return [String]
            required :in_transit, String

            # @!attribute pending
            #   Amount from recent payments still settling, in native units, as a decimal
            #   string.
            #
            #   @return [String]
            required :pending, String

            # @!attribute pending_settlements
            #
            #   @return [Array<WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Balance::Breakdown::PendingSettlement>]
            required :pending_settlements,
                     -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountUpdatedWebhookEvent::Data::Balance::Breakdown::PendingSettlement] }

            # @!attribute reserve
            #   Amount held back, in native units, as a decimal string. Retrieve the account's
            #   reserves for why it is held and when it unlocks.
            #
            #   @return [String]
            required :reserve, String

            # @!method initialize(available:, in_transit:, pending:, pending_settlements:, reserve:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Balance::Breakdown} for more
            #   details.
            #
            #   Balance split into available, pending, and reserve amounts, as native-unit
            #   decimal strings, with the days the pending amount is expected to settle.
            #   On-chain crypto is entirely available; good_funds and fiat cash can have pending
            #   or reserve portions.
            #
            #   @param available [String] Amount you can spend, send, or withdraw now, in native units, as a decimal strin
            #
            #   @param in_transit [String] Amount moving between the account's own destinations, such as a treasury sweep t
            #
            #   @param pending [String] Amount from recent payments still settling, in native units, as a decimal string
            #
            #   @param pending_settlements [Array<WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Balance::Breakdown::PendingSettlement>]
            #
            #   @param reserve [String] Amount held back, in native units, as a decimal string. Retrieve the account's r

            class PendingSettlement < WhopSDK::Internal::Type::BaseModel
              # @!attribute amount
              #   Amount expected that day, in native units, as a decimal string.
              #
              #   @return [String]
              required :amount, String

              # @!attribute date
              #   The day this money is expected to finish settling, as an ISO 8601 date.
              #
              #   @return [String]
              required :date, String

              # @!method initialize(amount:, date:)
              #   When the pending amount is expected to settle, one entry per day, earliest
              #   first. Money with no scheduled settlement day, such as a transfer in flight, is
              #   left out — so these can sum to less than `pending`, never more.
              #
              #   @param amount [String] Amount expected that day, in native units, as a decimal string.
              #
              #   @param date [String] The day this money is expected to finish settling, as an ISO 8601 date.
            end
          end
        end

        # High-level business category for the account. See the
        # [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary)
        # for valid values.
        #
        # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data#business_type
        module BusinessType
          extend WhopSDK::Internal::Type::Enum

          EDUCATION_PROGRAM = :education_program
          COACHING = :coaching
          SOFTWARE = :software
          PAID_GROUP = :paid_group
          NEWSLETTER = :newsletter
          AGENCY = :agency
          PHYSICAL_PRODUCTS = :physical_products
          BRICK_AND_MORTAR = :brick_and_mortar
          EVENTS = :events
          COACHING_AND_COURSES = :coaching_and_courses
          OTHER = :other
          SERVICES = :services
          GIG_ECONOMY = :gig_economy
          MARKETPLACE = :marketplace
          TELEHEALTH = :telehealth
          CLASS_ACTION_SETTLEMENT = :class_action_settlement
          PHYSICAL_PRODUCT = :physical_product
          SAAS = :saas
          COURSE = :course
          COMMUNITY = :community

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data#capabilities
        class Capabilities < WhopSDK::Internal::Type::BaseModel
          # @!attribute accept_bank_payments
          #   Bank payins: debits, transfers, and local bank rails
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptBankPayments]
          required :accept_bank_payments,
                   enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptBankPayments }

          # @!attribute accept_bnpl_payments
          #   Buy-now-pay-later payins; requires approval
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptBnplPayments]
          required :accept_bnpl_payments,
                   enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptBnplPayments }

          # @!attribute accept_card_payments
          #   Card payins, including Apple Pay and Google Pay
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptCardPayments]
          required :accept_card_payments,
                   enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptCardPayments }

          # @!attribute bank_deposit
          #   Deposits by bank wire or ACH to the account's virtual bank account
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities::BankDeposit]
          required :bank_deposit, enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::BankDeposit }

          # @!attribute card_deposit
          #   Balance top-ups by charging a stored payment method
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities::CardDeposit]
          required :card_deposit, enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CardDeposit }

          # @!attribute card_issuing
          #   Issuing Whop cards; requires card application approval
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities::CardIssuing]
          required :card_issuing, enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CardIssuing }

          # @!attribute crypto_deposit
          #   On-chain deposits to the account's crypto wallet
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities::CryptoDeposit]
          required :crypto_deposit,
                   enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CryptoDeposit }

          # @!attribute crypto_payout
          #   On-chain payouts to a crypto wallet
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities::CryptoPayout]
          required :crypto_payout,
                   enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CryptoPayout }

          # @!attribute instant_payout
          #   Instant payouts to an eligible payout destination
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities::InstantPayout]
          required :instant_payout,
                   enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::InstantPayout }

          # @!attribute run_ads
          #   Launching ad campaigns through Whop Ads. `inactive` while a requested ads
          #   services agreement is awaiting the account's signature.
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities::RunAds]
          required :run_ads, enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::RunAds }

          # @!attribute standard_payout
          #   Standard payouts to an external payout destination
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities::StandardPayout]
          required :standard_payout,
                   enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::StandardPayout }

          # @!attribute transfer
          #   Transfers to other accounts
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities::Transfer]
          required :transfer, enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::Transfer }

          # @!method initialize(accept_bank_payments:, accept_bnpl_payments:, accept_card_payments:, bank_deposit:, card_deposit:, card_issuing:, crypto_deposit:, crypto_payout:, instant_payout:, run_ads:, standard_payout:, transfer:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities} for more
          #   details.
          #
          #   Payment rails enabled for this account, each `active`, `inactive`, or `pending`
          #   (onboarding or review in progress). Computed only on `retrieve` and `me` for
          #   callers with `company:balance:read` scope; `null` otherwise.
          #
          #   @param accept_bank_payments [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptBankPayments] Bank payins: debits, transfers, and local bank rails
          #
          #   @param accept_bnpl_payments [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptBnplPayments] Buy-now-pay-later payins; requires approval
          #
          #   @param accept_card_payments [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptCardPayments] Card payins, including Apple Pay and Google Pay
          #
          #   @param bank_deposit [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities::BankDeposit] Deposits by bank wire or ACH to the account's virtual bank account
          #
          #   @param card_deposit [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities::CardDeposit] Balance top-ups by charging a stored payment method
          #
          #   @param card_issuing [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities::CardIssuing] Issuing Whop cards; requires card application approval
          #
          #   @param crypto_deposit [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities::CryptoDeposit] On-chain deposits to the account's crypto wallet
          #
          #   @param crypto_payout [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities::CryptoPayout] On-chain payouts to a crypto wallet
          #
          #   @param instant_payout [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities::InstantPayout] Instant payouts to an eligible payout destination
          #
          #   @param run_ads [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities::RunAds] Launching ad campaigns through Whop Ads. `inactive` while a requested ads servic
          #
          #   @param standard_payout [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities::StandardPayout] Standard payouts to an external payout destination
          #
          #   @param transfer [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities::Transfer] Transfers to other accounts

          # Bank payins: debits, transfers, and local bank rails
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities#accept_bank_payments
          module AcceptBankPayments
            extend WhopSDK::Internal::Type::Enum

            ACTIVE = :active
            INACTIVE = :inactive
            PENDING = :pending

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Buy-now-pay-later payins; requires approval
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities#accept_bnpl_payments
          module AcceptBnplPayments
            extend WhopSDK::Internal::Type::Enum

            ACTIVE = :active
            INACTIVE = :inactive
            PENDING = :pending

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Card payins, including Apple Pay and Google Pay
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities#accept_card_payments
          module AcceptCardPayments
            extend WhopSDK::Internal::Type::Enum

            ACTIVE = :active
            INACTIVE = :inactive
            PENDING = :pending

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Deposits by bank wire or ACH to the account's virtual bank account
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities#bank_deposit
          module BankDeposit
            extend WhopSDK::Internal::Type::Enum

            ACTIVE = :active
            INACTIVE = :inactive
            PENDING = :pending

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Balance top-ups by charging a stored payment method
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities#card_deposit
          module CardDeposit
            extend WhopSDK::Internal::Type::Enum

            ACTIVE = :active
            INACTIVE = :inactive
            PENDING = :pending

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Issuing Whop cards; requires card application approval
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities#card_issuing
          module CardIssuing
            extend WhopSDK::Internal::Type::Enum

            ACTIVE = :active
            INACTIVE = :inactive
            PENDING = :pending

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # On-chain deposits to the account's crypto wallet
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities#crypto_deposit
          module CryptoDeposit
            extend WhopSDK::Internal::Type::Enum

            ACTIVE = :active
            INACTIVE = :inactive
            PENDING = :pending

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # On-chain payouts to a crypto wallet
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities#crypto_payout
          module CryptoPayout
            extend WhopSDK::Internal::Type::Enum

            ACTIVE = :active
            INACTIVE = :inactive
            PENDING = :pending

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Instant payouts to an eligible payout destination
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities#instant_payout
          module InstantPayout
            extend WhopSDK::Internal::Type::Enum

            ACTIVE = :active
            INACTIVE = :inactive
            PENDING = :pending

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Launching ad campaigns through Whop Ads. `inactive` while a requested ads
          # services agreement is awaiting the account's signature.
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities#run_ads
          module RunAds
            extend WhopSDK::Internal::Type::Enum

            ACTIVE = :active
            INACTIVE = :inactive
            PENDING = :pending

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Standard payouts to an external payout destination
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities#standard_payout
          module StandardPayout
            extend WhopSDK::Internal::Type::Enum

            ACTIVE = :active
            INACTIVE = :inactive
            PENDING = :pending

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Transfers to other accounts
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Capabilities#transfer
          module Transfer
            extend WhopSDK::Internal::Type::Enum

            ACTIVE = :active
            INACTIVE = :inactive
            PENDING = :pending

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data#cards
        class Cards < WhopSDK::Internal::Type::BaseModel
          # @!attribute kind
          #   Whether the card application verifies a business (`business`, KYB) or a person
          #   (`individual`, consumer identity). `null` when the application is not yet linked
          #   to a verification.
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Cards::Kind, nil]
          required :kind, enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::Cards::Kind }, nil?: true

          # @!attribute status
          #   Where the card application stands. `approved` means cards can be issued.
          #   `needs_verification` means the applicant has not completed identity verification
          #   yet; `needs_information` means they did, but the documents were rejected for a
          #   fixable reason and must be resubmitted. `pending` and `manual_review` are in
          #   flight. `denied`, `locked`, and `canceled` are terminal.
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Cards::Status]
          required :status, enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::Cards::Status }

          # @!method initialize(kind:, status:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Cards} for more details.
          #
          #   Whop Cards application details for the account. Computed only on `retrieve` and
          #   `me` for callers with `company:balance:read` scope; `null` otherwise, or when
          #   the account has no card application.
          #
          #   @param kind [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Cards::Kind, nil] Whether the card application verifies a business (`business`, KYB) or a person (
          #
          #   @param status [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Cards::Status] Where the card application stands. `approved` means cards can be issued.
          #   `needs\_

          # Whether the card application verifies a business (`business`, KYB) or a person
          # (`individual`, consumer identity). `null` when the application is not yet linked
          # to a verification.
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Cards#kind
          module Kind
            extend WhopSDK::Internal::Type::Enum

            INDIVIDUAL = :individual
            BUSINESS = :business

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Where the card application stands. `approved` means cards can be issued.
          # `needs_verification` means the applicant has not completed identity verification
          # yet; `needs_information` means they did, but the documents were rejected for a
          # fixable reason and must be resubmitted. `pending` and `manual_review` are in
          # flight. `denied`, `locked`, and `canceled` are terminal.
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Cards#status
          module Status
            extend WhopSDK::Internal::Type::Enum

            APPROVED = :approved
            PENDING = :pending
            MANUAL_REVIEW = :manual_review
            DENIED = :denied
            LOCKED = :locked
            CANCELED = :canceled
            NEEDS_VERIFICATION = :needs_verification
            NEEDS_INFORMATION = :needs_information

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data#company_formation
        class CompanyFormation < WhopSDK::Internal::Type::BaseModel
          # @!attribute documents
          #
          #   @return [Array<WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation::Document>, nil]
          optional :documents,
                   -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Document] }

          # @!attribute ein_registered
          #   Whether the company's EIN has been issued by the IRS. Present once `status`
          #   leaves `draft`.
          #
          #   @return [Boolean, nil]
          optional :ein_registered, WhopSDK::Internal::Type::Boolean

          # @!attribute legal_name
          #   Registered company name including the entity ending, for example `Acme, LLC`.
          #   Present once `status` leaves `draft`.
          #
          #   @return [String, nil]
          optional :legal_name, String, nil?: true

          # @!attribute signatures
          #   IRS forms still awaiting a founder's signature, each with a hosted signing URL.
          #   Present once `status` leaves `draft`; empty when nothing needs signing.
          #
          #   @return [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures, nil]
          optional :signatures, -> { WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures }

          # @!attribute state_registered
          #   Whether the state formation filing is complete. Present once `status` leaves
          #   `draft`.
          #
          #   @return [Boolean, nil]
          optional :state_registered, WhopSDK::Internal::Type::Boolean

          # @!attribute status
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation::Status, nil]
          optional :status, enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Status }

          # @!method initialize(documents: nil, ein_registered: nil, legal_name: nil, signatures: nil, state_registered: nil, status: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation} for more
          #   details.
          #
          #   Company formation state for the account, managed through
          #   [Form Company](/api-reference/beta/accounts/form-company). A `draft` `status`
          #   until the formation checkout is paid, then filing progress with downloadable
          #   documents and signatures awaiting action. Empty when the formation state is
          #   temporarily unavailable.
          #
          #   @param documents [Array<WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation::Document>]
          #
          #   @param ein_registered [Boolean] Whether the company's EIN has been issued by the IRS. Present once `status` leav
          #
          #   @param legal_name [String, nil] Registered company name including the entity ending, for example `Acme, LLC`. Pr
          #
          #   @param signatures [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures] IRS forms still awaiting a founder's signature, each with a hosted signing URL.
          #
          #   @param state_registered [Boolean] Whether the state formation filing is complete. Present once `status` leaves `dr
          #
          #   @param status [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation::Status]

          class Document < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   Document ID, prefixed `file_`.
            #
            #   @return [String]
            required :id, String

            # @!attribute name
            #   Human-readable document name, such as `Articles of Organization`.
            #
            #   @return [String]
            required :name, String

            # @!attribute type
            #   Document category: `articles_of_organization`, `operating_agreement`,
            #   `ein_letter`, `signed_ss4`, `signed_form8821`, or `mail` for postal
            #   correspondence received on the company's behalf.
            #
            #   @return [String]
            required :type, String

            # @!attribute url
            #   CDN URL for downloading the document.
            #
            #   @return [String]
            required :url, String

            # @!method initialize(id:, name:, type:, url:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation::Document}
            #   for more details.
            #
            #   Formation documents available for download, such as the Articles of Organization
            #   and the EIN confirmation letter. Present once `status` leaves `draft`.
            #
            #   @param id [String] Document ID, prefixed `file_`.
            #
            #   @param name [String] Human-readable document name, such as `Articles of Organization`.
            #
            #   @param type [String] Document category: `articles_of_organization`, `operating_agreement`, `ein_lette
            #
            #   @param url [String] CDN URL for downloading the document.
          end

          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation#signatures
          class Signatures < WhopSDK::Internal::Type::BaseModel
            # @!attribute form8821
            #   Signature state for IRS Form 8821, the tax information authorization. Present
            #   only while the form still needs the founder's action.
            #
            #   @return [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Form8821, nil]
            optional :form8821,
                     -> { WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Form8821 }

            # @!attribute ss4
            #   Signature state for IRS Form SS-4, the EIN application. Present only while the
            #   form still needs the founder's action.
            #
            #   @return [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Ss4, nil]
            optional :ss4, -> { WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Ss4 }

            # @!method initialize(form8821: nil, ss4: nil)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures}
            #   for more details.
            #
            #   IRS forms still awaiting a founder's signature, each with a hosted signing URL.
            #   Present once `status` leaves `draft`; empty when nothing needs signing.
            #
            #   @param form8821 [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Form8821] Signature state for IRS Form 8821, the tax information authorization. Present on
            #
            #   @param ss4 [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Ss4] Signature state for IRS Form SS-4, the EIN application. Present only while the f

            # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures#form8821
            class Form8821 < WhopSDK::Internal::Type::BaseModel
              # @!attribute status
              #   `pending` when a signing session is ready for the founder; `unknown` when the
              #   signature state could not be determined.
              #
              #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Form8821::Status]
              required :status,
                       enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Form8821::Status }

              # @!attribute expires_at
              #   When the signing URL expires, as an ISO 8601 timestamp. Present while `status`
              #   is `pending`.
              #
              #   @return [String, nil]
              optional :expires_at, String

              # @!attribute url
              #   Hosted signing URL where the founder completes the form. Present while `status`
              #   is `pending`.
              #
              #   @return [String, nil]
              optional :url, String

              # @!method initialize(status:, expires_at: nil, url: nil)
              #   Some parameter documentations has been truncated, see
              #   {WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Form8821}
              #   for more details.
              #
              #   Signature state for IRS Form 8821, the tax information authorization. Present
              #   only while the form still needs the founder's action.
              #
              #   @param status [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Form8821::Status] `pending` when a signing session is ready for the founder; `unknown` when the si
              #
              #   @param expires_at [String] When the signing URL expires, as an ISO 8601 timestamp. Present while `status` i
              #
              #   @param url [String] Hosted signing URL where the founder completes the form. Present while `status`

              # `pending` when a signing session is ready for the founder; `unknown` when the
              # signature state could not be determined.
              #
              # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Form8821#status
              module Status
                extend WhopSDK::Internal::Type::Enum

                PENDING = :pending
                UNKNOWN = :unknown

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures#ss4
            class Ss4 < WhopSDK::Internal::Type::BaseModel
              # @!attribute status
              #   `pending` when a signing session is ready for the founder; `unknown` when the
              #   signature state could not be determined.
              #
              #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Ss4::Status]
              required :status,
                       enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Ss4::Status }

              # @!attribute expires_at
              #   When the signing URL expires, as an ISO 8601 timestamp. Present while `status`
              #   is `pending`.
              #
              #   @return [String, nil]
              optional :expires_at, String

              # @!attribute url
              #   Hosted signing URL where the founder completes the form. Present while `status`
              #   is `pending`.
              #
              #   @return [String, nil]
              optional :url, String

              # @!method initialize(status:, expires_at: nil, url: nil)
              #   Some parameter documentations has been truncated, see
              #   {WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Ss4}
              #   for more details.
              #
              #   Signature state for IRS Form SS-4, the EIN application. Present only while the
              #   form still needs the founder's action.
              #
              #   @param status [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Ss4::Status] `pending` when a signing session is ready for the founder; `unknown` when the si
              #
              #   @param expires_at [String] When the signing URL expires, as an ISO 8601 timestamp. Present while `status` i
              #
              #   @param url [String] Hosted signing URL where the founder completes the form. Present while `status`

              # `pending` when a signing session is ready for the founder; `unknown` when the
              # signature state could not be determined.
              #
              # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Ss4#status
              module Status
                extend WhopSDK::Internal::Type::Enum

                PENDING = :pending
                UNKNOWN = :unknown

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::CompanyFormation#status
          module Status
            extend WhopSDK::Internal::Type::Enum

            DRAFT = :draft
            PROCESSING = :processing
            FILED = :filed
            REJECTED = :rejected
            COMPLETED = :completed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data#eula
        class Eula < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The file's ID, prefixed `file_`.
          #
          #   @return [String]
          required :id, String

          # @!attribute content_type
          #   The file's MIME type, e.g. `application/pdf`.
          #
          #   @return [String, nil]
          required :content_type, String, nil?: true

          # @!attribute created_at
          #   When the file was created, as an ISO 8601 timestamp.
          #
          #   @return [String]
          required :created_at, String

          # @!attribute filename
          #   The original filename, including its extension.
          #
          #   @return [String, nil]
          required :filename, String, nil?: true

          # @!attribute object
          #   The type of this object, always `file`.
          #
          #   @return [String]
          required :object, String

          # @!attribute size
          #   The file size in bytes. `null` until the upload has finished.
          #
          #   @return [Integer, nil]
          required :size, Integer, nil?: true

          # @!attribute upload_status
          #   Where the file is in its upload lifecycle.
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Eula::UploadStatus]
          required :upload_status, enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::UploadStatus }

          # @!attribute url
          #   A URL to download the file: a permanent CDN URL for public files, a signed
          #   expiring URL for private ones. `null` until the upload has finished.
          #
          #   @return [String, nil]
          required :url, String, nil?: true

          # @!attribute visibility
          #   `public` files are served via an unsigned CDN URL; `private` files via a signed,
          #   expiring URL.
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Eula::Visibility]
          required :visibility, enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::Visibility }

          # @!attribute multipart_chunk_size
          #   The byte size each part (except the last) must be. Present only on create, and
          #   only for multipart uploads.
          #
          #   @return [Integer, nil]
          optional :multipart_chunk_size, Integer, nil?: true

          # @!attribute multipart_upload_id
          #   The ID of the multipart upload, passed back to `complete`. Present only on
          #   create, and only for multipart uploads.
          #
          #   @return [String, nil]
          optional :multipart_upload_id, String, nil?: true

          # @!attribute multipart_upload_urls
          #
          #   @return [Array<WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Eula::MultipartUploadURL>, nil]
          optional :multipart_upload_urls,
                   -> {
                     WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::MultipartUploadURL]
                   },
                   nil?: true

          # @!attribute upload_headers
          #   Headers to send with the upload PUT. Present only on create.
          #
          #   @return [Object, nil]
          optional :upload_headers, WhopSDK::Internal::Type::Unknown

          # @!attribute upload_url
          #   Presigned URL to PUT the file's bytes to. Present only on create, and only for
          #   single-part uploads.
          #
          #   @return [String, nil]
          optional :upload_url, String, nil?: true

          # @!method initialize(id:, content_type:, created_at:, filename:, object:, size:, upload_status:, url:, visibility:, multipart_chunk_size: nil, multipart_upload_id: nil, multipart_upload_urls: nil, upload_headers: nil, upload_url: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Eula} for more details.
          #
          #   The account's end-user license agreement document, or `null` if they have not
          #   published one.
          #
          #   @param id [String] The file's ID, prefixed `file_`.
          #
          #   @param content_type [String, nil] The file's MIME type, e.g. `application/pdf`.
          #
          #   @param created_at [String] When the file was created, as an ISO 8601 timestamp.
          #
          #   @param filename [String, nil] The original filename, including its extension.
          #
          #   @param object [String] The type of this object, always `file`.
          #
          #   @param size [Integer, nil] The file size in bytes. `null` until the upload has finished.
          #
          #   @param upload_status [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Eula::UploadStatus] Where the file is in its upload lifecycle.
          #
          #   @param url [String, nil] A URL to download the file: a permanent CDN URL for public files, a signed expir
          #
          #   @param visibility [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Eula::Visibility] `public` files are served via an unsigned CDN URL; `private` files via a signed,
          #
          #   @param multipart_chunk_size [Integer, nil] The byte size each part (except the last) must be. Present only on create, and o
          #
          #   @param multipart_upload_id [String, nil] The ID of the multipart upload, passed back to `complete`. Present only on creat
          #
          #   @param multipart_upload_urls [Array<WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Eula::MultipartUploadURL>, nil]
          #
          #   @param upload_headers [Object] Headers to send with the upload PUT. Present only on create.
          #
          #   @param upload_url [String, nil] Presigned URL to PUT the file's bytes to. Present only on create, and only for s

          # Where the file is in its upload lifecycle.
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Eula#upload_status
          module UploadStatus
            extend WhopSDK::Internal::Type::Enum

            PENDING = :pending
            PROCESSING = :processing
            READY = :ready
            FAILED = :failed

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # `public` files are served via an unsigned CDN URL; `private` files via a signed,
          # expiring URL.
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Eula#visibility
          module Visibility
            extend WhopSDK::Internal::Type::Enum

            PUBLIC = :public
            PRIVATE = :private

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class MultipartUploadURL < WhopSDK::Internal::Type::BaseModel
            # @!attribute part_number
            #   The 1-based index of this part within the multipart upload.
            #
            #   @return [Integer]
            required :part_number, Integer

            # @!attribute url
            #   The presigned URL to PUT this part's bytes to.
            #
            #   @return [String]
            required :url, String

            # @!method initialize(part_number:, url:)
            #   The presigned URL for each part. Present only on create, and only for multipart
            #   uploads.
            #
            #   @param part_number [Integer] The 1-based index of this part within the multipart upload.
            #
            #   @param url [String] The presigned URL to PUT this part's bytes to.
          end
        end

        # Public account home page preferences.
        module HomePreference
          extend WhopSDK::Internal::Type::Enum

          HIDE_MEMBER_COUNT = :hide_member_count
          HIDE_MEMBERS_CARD = :hide_members_card

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Account industry group. See the
        # [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary)
        # for valid values.
        #
        # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data#industry_group
        module IndustryGroup
          extend WhopSDK::Internal::Type::Enum

          ACADEMIC_AND_TEST_PREP = :academic_and_test_prep
          ACCESSORIES = :accessories
          AGRICULTURE_AND_FARMING = :agriculture_and_farming
          AI_AND_AUTOMATION_AGENCIES = :ai_and_automation_agencies
          AI_AND_AUTOMATION_SOFTWARE = :ai_and_automation_software
          ARTS_AND_CRAFTS = :arts_and_crafts
          AUTOMOTIVE = :automotive
          B2B_AND_PROFESSIONAL_MARKETPLACES = :b2b_and_professional_marketplaces
          BABY_AND_KIDS = :baby_and_kids
          BARS_AND_BREWERIES = :bars_and_breweries
          BEAUTY_AND_PERSONAL_CARE = :beauty_and_personal_care
          BEAUTY_AND_WELLNESS = :beauty_and_wellness
          BUSINESS_AND_ENTREPRENEURSHIP = :business_and_entrepreneurship
          BUSINESS_AND_MONEY_GROUPS = :business_and_money_groups
          CAFES_AND_QUICK_SERVICE = :cafes_and_quick_service
          CAREER_AND_PROFESSIONAL = :career_and_professional
          CHARITY_AND_CAUSE_EVENTS = :charity_and_cause_events
          CLASS_ACTION_SETTLEMENT = :class_action_settlement
          CLOTHING_AND_APPAREL = :clothing_and_apparel
          COMMUNICATION_AND_MESSAGING_SOFTWARE = :communication_and_messaging_software
          COMMUNITY_AND_EDUCATION_SOFTWARE = :community_and_education_software
          CONFERENCE_AND_EXPO_EVENTS = :conference_and_expo_events
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
          DIGITAL_GOODS_AND_ACCOUNTS = :digital_goods_and_accounts
          E_COMMERCE_SOFTWARE = :e_commerce_software
          EDUCATION_AND_CHILDCARE = :education_and_childcare
          EDUCATIONAL_TRAINING_EVENTS = :educational_training_events
          ELECTRONICS_AND_GADGETS = :electronics_and_gadgets
          ENTERTAINMENT_AND_LEISURE = :entertainment_and_leisure
          FAMILY_AND_COMMUNITY_EVENTS = :family_and_community_events
          FINANCE_AND_INVESTING = :finance_and_investing
          FITNESS_AND_ATHLETICS = :fitness_and_athletics
          FITNESS_AND_HEALTH_GROUPS = :fitness_and_health_groups
          FITNESS_AND_RECREATION = :fitness_and_recreation
          FITNESS_EQUIPMENT_AND_GEAR = :fitness_equipment_and_gear
          FOOD_AND_BEVERAGES = :food_and_beverages
          FOOD_AND_HOSPITALITY_MARKETPLACES = :food_and_hospitality_marketplaces
          FUNERAL_AND_DEATH_CARE = :funeral_and_death_care
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
          HOME_IMPROVEMENT_AND_TOOLS = :home_improvement_and_tools
          HOME_SERVICES_GIGS = :home_services_gigs
          HOSPITALITY_AND_LODGING = :hospitality_and_lodging
          INDUSTRIAL_AND_MANUFACTURING = :industrial_and_manufacturing
          INDUSTRY_SPECIFIC_SOFTWARE = :industry_specific_software
          LANGUAGE_AND_COMMUNICATION = :language_and_communication
          LEGAL_AND_COMPLIANCE = :legal_and_compliance
          LIFESTYLE_AND_CULTURE = :lifestyle_and_culture
          LIFESTYLE_AND_PERSONAL_GROWTH = :lifestyle_and_personal_growth
          LIFESTYLE_AND_PERSONAL_GROWTH_GROUPS = :lifestyle_and_personal_growth_groups
          LIFESTYLE_AND_WELLNESS_EVENTS = :lifestyle_and_wellness_events
          LOGISTICS_AND_TRANSPORTATION_SERVICES = :logistics_and_transportation_services
          MARKETING_AGENCIES = :marketing_agencies
          MARKETING_AND_ADVERTISING = :marketing_and_advertising
          MARKETING_AND_SALES_SOFTWARE = :marketing_and_sales_software
          MEDIA_AND_PUBLISHING_COMPANIES = :media_and_publishing_companies
          MENTAL_HEALTH_AND_BEHAVIORAL = :mental_health_and_behavioral
          MISCELLANEOUS = :miscellaneous
          MUSIC_AND_PERFORMING_ARTS = :music_and_performing_arts
          NEWS_AND_POLITICS = :news_and_politics
          NONPROFIT_AND_CHARITY = :nonprofit_and_charity
          OFFICE_AND_BUSINESS_SUPPLIES = :office_and_business_supplies
          OUTDOOR_AND_SPORTS = :outdoor_and_sports
          PERFORMANCE_AND_SHOW_EVENTS = :performance_and_show_events
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
          RELIGION_AND_FAITH = :religion_and_faith
          RENTAL_MARKETPLACES = :rental_marketplaces
          RESTAURANTS = :restaurants
          RETAIL = :retail
          SALES_AGENCIES = :sales_agencies
          SALES_AND_REVENUE = :sales_and_revenue
          SECURITY_AND_INVESTIGATIONS = :security_and_investigations
          SECURITY_AND_PRIVACY_SOFTWARE = :security_and_privacy_software
          SERVICE_MARKETPLACES = :service_marketplaces
          SLEEP_AND_CHRONIC_CONDITIONS = :sleep_and_chronic_conditions
          SOCIAL_AND_NETWORKING_EVENTS = :social_and_networking_events
          SOCIAL_ENTERTAINMENT_EVENTS = :social_entertainment_events
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

        # Specific industry vertical for the account. See the
        # [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary)
        # for valid values.
        #
        # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data#industry_type
        module IndustryType
          extend WhopSDK::Internal::Type::Enum

          TRADING = :trading
          SPORTS_BETTING = :sports_betting
          RESELLING = :reselling
          FITNESS = :fitness
          AMAZON_FBA = :amazon_fba
          REAL_ESTATE = :real_estate
          KINDLE_BOOK_PUBLISHING = :kindle_book_publishing
          DATING = :dating
          AGENCIES = :agencies
          HEALTH_AND_WELLNESS = :health_and_wellness
          SOCIAL_MEDIA = :social_media
          SALES = :sales
          BUSINESS = :business
          ECOMMERCE = :ecommerce
          VIDEO_GAMES = :video_games
          HOME_SERVICES = :home_services
          AI = :ai
          PUBLIC_SPEAKING = :public_speaking
          PERSONAL_FINANCE = :personal_finance
          CAREERS = :careers
          TRAVEL = :travel
          CLIPPING = :clipping
          SPIRITUALITY = :spirituality
          VAS = :vas
          PERSONAL_DEVELOPMENT = :personal_development
          SOFTWARE = :software
          OTHER = :other
          MARKETING_AGENCY = :marketing_agency
          SALES_AGENCY = :sales_agency
          AI_AGENCY = :ai_agency
          DESIGN_AGENCY = :design_agency
          COACHING_AGENCY = :coaching_agency
          DEVELOPMENT_AGENCY = :development_agency
          RECRUITING_AGENCY = :recruiting_agency
          CUSTOMER_SUPPORT_AGENCY = :customer_support_agency
          CLIPPING_AGENCY = :clipping_agency
          CLOTHING = :clothing
          SUPPLEMENTS = :supplements
          BEAUTY_AND_PERSONAL_CARE = :beauty_and_personal_care
          FITNESS_GEAR = :fitness_gear
          ACCESSORIES = :accessories
          HOME_GOODS = :home_goods
          ELECTRONICS_AND_GADGETS = :electronics_and_gadgets
          FOOD_AND_BEVERAGES = :food_and_beverages
          GYM = :gym
          RESTAURANT = :restaurant
          RETAIL_STORE = :retail_store
          COFFEE_SHOP = :coffee_shop
          SALON_SPA = :salon_spa
          MEDICAL_DENTIST_OFFICE = :medical_dentist_office
          HOTEL_LODGING = :hotel_lodging
          AUTO_REPAIR_SHOP = :auto_repair_shop
          MASTERMINDS = :masterminds
          WEBINARS = :webinars
          BOOTCAMPS = :bootcamps
          CONVENTION = :convention
          CONCERTS = :concerts
          MEETUPS = :meetups
          PARTIES = :parties
          FOREX_TRADING = :forex_trading
          STOCK_TRADING = :stock_trading
          OPTIONS_TRADING = :options_trading
          CRYPTO_TRADING = :crypto_trading
          FUTURES_TRADING = :futures_trading
          DAY_TRADING = :day_trading
          SWING_TRADING = :swing_trading
          ALGORITHMIC_TRADING = :algorithmic_trading
          PROP_FIRM_TRADING = :prop_firm_trading
          VALUE_INVESTING = :value_investing
          REAL_ESTATE_INVESTING = :real_estate_investing
          ALTERNATIVE_INVESTMENTS = :alternative_investments
          PENNY_STOCK_TRADING = :penny_stock_trading
          DIVIDEND_INVESTING = :dividend_investing
          INDEX_FUND_INVESTING = :index_fund_investing
          GOLD_PRECIOUS_METALS = :gold_precious_metals
          VENTURE_CAPITAL_EDUCATION = :venture_capital_education
          PRIVATE_EQUITY_EDUCATION = :private_equity_education
          TECHNICAL_ANALYSIS = :technical_analysis
          FOREX_SCALPING = :forex_scalping
          ICT_SMC_TRADING = :ict_smc_trading
          PERSONALIZED_INVESTMENT_ADVICE = :personalized_investment_advice
          FOREX_SIGNALS_GROUP = :forex_signals_group
          STOCK_SIGNALS_GROUP = :stock_signals_group
          CRYPTO_SIGNALS_GROUP = :crypto_signals_group
          OPTIONS_ALERTS_GROUP = :options_alerts_group
          FUTURES_SIGNALS_GROUP = :futures_signals_group
          TRADING_EDUCATION_GROUP = :trading_education_group
          INVESTING_COMMUNITY = :investing_community
          PREDICTION_MARKETS_GROUP = :prediction_markets_group
          NFT_ALPHA_GROUP = :nft_alpha_group
          PENNY_STOCK_GROUP = :penny_stock_group
          DIVIDEND_INVESTING_GROUP = :dividend_investing_group
          REAL_ESTATE_INVESTING_GROUP = :real_estate_investing_group
          PROP_FIRM_GROUP = :prop_firm_group
          FOREX_TRADING_BOT = :forex_trading_bot
          STOCK_TRADING_PLATFORM = :stock_trading_platform
          CRYPTO_TRADING_BOT = :crypto_trading_bot
          FUTURES_TRADING_BOT = :futures_trading_bot
          OPTIONS_FLOW_TOOL = :options_flow_tool
          PORTFOLIO_TRACKER = :portfolio_tracker
          FINANCIAL_MODELING_SOFTWARE = :financial_modeling_software
          ACCOUNTING_SOFTWARE = :accounting_software
          INVOICING_SOFTWARE = :invoicing_software
          TAX_SOFTWARE = :tax_software
          RISK_MANAGEMENT_SOFTWARE = :risk_management_software
          PROP_TRADING_PLATFORM = :prop_trading_platform
          BACKTESTING_SOFTWARE = :backtesting_software
          TRADING_INDICATORS = :trading_indicators
          MARKET_DATA_FEED = :market_data_feed
          STOCK_RESEARCH_TOOL = :stock_research_tool
          BANKING_SOFTWARE = :banking_software
          LENDING_PLATFORM = :lending_platform
          INSURANCE_SOFTWARE = :insurance_software
          BNPL_SERVICE = :bnpl_service
          CHECK_CASHING_SERVICE = :check_cashing_service
          CLOUD_MINING_SCHEMES = :cloud_mining_schemes
          CONSUMER_LENDING = :consumer_lending
          CREDIT_REPAIR_SERVICE = :credit_repair_service
          CRYPTO_EXCHANGE_BROKERAGE = :crypto_exchange_brokerage
          CRYPTO_TRADING_TOOLS_SOFTWARE = :crypto_trading_tools_software
          DEBT_COLLECTION_AGENCY = :debt_collection_agency
          DEBT_RELIEF_SETTLEMENT = :debt_relief_settlement
          ESCROW_SERVICE = :escrow_service
          FOREIGN_EXCHANGE_SERVICE = :foreign_exchange_service
          NON_CUSTODIAL_WALLET_TOOLS = :non_custodial_wallet_tools
          PAYMENT_FACILITATION = :payment_facilitation
          PREDICTION_MARKET_EXCHANGE = :prediction_market_exchange
          STABLECOIN_ISSUANCE = :stablecoin_issuance
          TOKEN_SALES_ICO = :token_sales_ico
          TOKENIZED_RWA = :tokenized_rwa
          YIELD_STAKING_PRODUCTS = :yield_staking_products
          SPORTS_BETTING_PICKS = :sports_betting_picks
          FANTASY_SPORTS = :fantasy_sports
          HORSE_RACING = :horse_racing
          POKER_COACHING = :poker_coaching
          ESPORTS_BETTING = :esports_betting
          SPORTS_ANALYTICS = :sports_analytics
          NFL_BETTING = :nfl_betting
          NBA_BETTING = :nba_betting
          MLB_BETTING = :mlb_betting
          SOCCER_BETTING = :soccer_betting
          MMA_UFC_BETTING = :mma_ufc_betting
          SPORTS_PICKS_GROUP = :sports_picks_group
          DFS_GROUP = :dfs_group
          HORSE_RACING_GROUP = :horse_racing_group
          ESPORTS_PICKS_GROUP = :esports_picks_group
          NFL_PICKS_GROUP = :nfl_picks_group
          NBA_PICKS_GROUP = :nba_picks_group
          SOCCER_PICKS_GROUP = :soccer_picks_group
          MLB_PICKS_GROUP = :mlb_picks_group
          MMA_PICKS_GROUP = :mma_picks_group
          PROP_BETS_GROUP = :prop_bets_group
          FANTASY_SPORTS_FREE_TO_PLAY = :fantasy_sports_free_to_play
          LICENSED_GAMBLING_OPERATIONS = :licensed_gambling_operations
          UNLICENSED_GAMBLING = :unlicensed_gambling
          BODYBUILDING_COACHING = :bodybuilding_coaching
          STRENGTH_TRAINING = :strength_training
          WEIGHT_LOSS_COACHING = :weight_loss_coaching
          ATHLETIC_PERFORMANCE = :athletic_performance
          YOGA_INSTRUCTION = :yoga_instruction
          MARTIAL_ARTS_INSTRUCTION = :martial_arts_instruction
          RUNNING_COACHING = :running_coaching
          CALISTHENICS = :calisthenics
          FLEXIBILITY_MOBILITY = :flexibility_mobility
          NUTRITION_COACHING = :nutrition_coaching
          SWIMMING_COACHING = :swimming_coaching
          CYCLING_COACHING = :cycling_coaching
          BOXING_COACHING = :boxing_coaching
          MMA_COACHING = :mma_coaching
          JIU_JITSU_COACHING = :jiu_jitsu_coaching
          WRESTLING_COACHING = :wrestling_coaching
          GYMNASTICS_COACHING = :gymnastics_coaching
          PILATES_INSTRUCTION = :pilates_instruction
          SPORTS_NUTRITION = :sports_nutrition
          BODY_RECOMPOSITION = :body_recomposition
          GOLF_COACHING = :golf_coaching
          TENNIS_COACHING = :tennis_coaching
          BASKETBALL_TRAINING = :basketball_training
          SOCCER_TRAINING = :soccer_training
          RACKET_SPORTS_COACHING = :racket_sports_coaching
          FITNESS_ACCOUNTABILITY = :fitness_accountability
          NUTRITION_COMMUNITY = :nutrition_community
          WEIGHT_LOSS_GROUP = :weight_loss_group
          BODYBUILDING_COMMUNITY = :bodybuilding_community
          RUNNING_COMMUNITY = :running_community
          MARTIAL_ARTS_COMMUNITY = :martial_arts_community
          MENTAL_HEALTH_GROUP = :mental_health_group
          BIOHACKING_COMMUNITY = :biohacking_community
          ADDICTION_SUPPORT_GROUP = :addiction_support_group
          YOGA_COMMUNITY = :yoga_community
          CROSSFIT_COMMUNITY = :crossfit_community
          LONGEVITY_COMMUNITY = :longevity_community
          WOMENS_FITNESS_COMMUNITY = :womens_fitness_community
          POSTPARTUM_FITNESS_GROUP = :postpartum_fitness_group
          CHRONIC_ILLNESS_SUPPORT = :chronic_illness_support
          SKINCARE_COMMUNITY = :skincare_community
          MENTAL_HEALTH_COACHING = :mental_health_coaching
          LIFE_COACHING = :life_coaching
          BIOHACKING = :biohacking
          HOLISTIC_HEALTH = :holistic_health
          ADDICTION_RECOVERY_COACHING = :addiction_recovery_coaching
          BREATHWORK = :breathwork
          MEDITATION_MINDFULNESS = :meditation_mindfulness
          GUT_HEALTH_COACHING = :gut_health_coaching
          LONGEVITY_COACHING = :longevity_coaching
          WOMENS_HEALTH_COACHING = :womens_health_coaching
          MENS_HEALTH_COACHING = :mens_health_coaching
          FERTILITY_WELLNESS = :fertility_wellness
          STRESS_MANAGEMENT = :stress_management
          GRIEF_COACHING = :grief_coaching
          TRAUMA_RECOVERY_COACHING = :trauma_recovery_coaching
          ADHD_COACHING = :adhd_coaching
          BIOMARKER_HEALTH_COACHING = :biomarker_health_coaching
          TELEHEALTH_PLATFORM = :telehealth_platform
          EHR_SOFTWARE = :ehr_software
          PRACTICE_MANAGEMENT = :practice_management
          MENTAL_HEALTH_APP = :mental_health_app
          FITNESS_APP = :fitness_app
          NUTRITION_TRACKING_APP = :nutrition_tracking_app
          WELLNESS_APP = :wellness_app
          PATIENT_ENGAGEMENT = :patient_engagement
          MEDICAL_BILLING_SOFTWARE = :medical_billing_software
          PHARMACY_MANAGEMENT = :pharmacy_management
          LAB_MANAGEMENT = :lab_management
          CLINICAL_TRIAL_SOFTWARE = :clinical_trial_software
          DENTAL_SOFTWARE = :dental_software
          VETERINARY_SOFTWARE = :veterinary_software
          HEALTH_DATA_PLATFORM = :health_data_platform
          FITNESS_NEWSLETTER = :fitness_newsletter
          MENTAL_HEALTH_NEWSLETTER = :mental_health_newsletter
          LONGEVITY_NEWSLETTER = :longevity_newsletter
          MEDICAL_NEWSLETTER = :medical_newsletter
          BIOHACKING_NEWSLETTER = :biohacking_newsletter
          WOMENS_HEALTH_NEWSLETTER = :womens_health_newsletter
          MENS_HEALTH_NEWSLETTER = :mens_health_newsletter
          PHARMA_BIOTECH_NEWSLETTER = :pharma_biotech_newsletter
          ECOMMERCE_EDUCATION = :ecommerce_education
          AMAZON_FBA_COACHING = :amazon_fba_coaching
          DROPSHIPPING_COACHING = :dropshipping_coaching
          PRINT_ON_DEMAND_COACHING = :print_on_demand_coaching
          RETAIL_ARBITRAGE = :retail_arbitrage
          WHOLESALE_COACHING = :wholesale_coaching
          STARTUP_COACHING = :startup_coaching
          BUSINESS_STRATEGY = :business_strategy
          AGENCY_BUILDING = :agency_building
          SMMA_COACHING = :smma_coaching
          CONSULTING_BUSINESS = :consulting_business
          SAAS_ENTREPRENEURSHIP = :saas_entrepreneurship
          LOCAL_BUSINESS_COACHING = :local_business_coaching
          CLEANING_BUSINESS_COACHING = :cleaning_business_coaching
          TRUCKING_BUSINESS_COACHING = :trucking_business_coaching
          VENDING_MACHINE_BUSINESS = :vending_machine_business
          ATM_BUSINESS_COACHING = :atm_business_coaching
          CAR_WASH_BUSINESS = :car_wash_business
          AIRBNB_BUSINESS_COACHING = :airbnb_business_coaching
          PRIVATE_LABEL_COACHING = :private_label_coaching
          ETSY_COACHING = :etsy_coaching
          MERCH_BUSINESS_COACHING = :merch_business_coaching
          LICENSING_BUSINESS = :licensing_business
          BUSINESS_ACQUISITION = :business_acquisition
          WOMEN_ENTREPRENEURSHIP = :women_entrepreneurship
          AFFILIATE_MARKETING_EDUCATION = :affiliate_marketing_education
          COACHING_BUSINESS_COACHING = :coaching_business_coaching
          ECOMMERCE_COMMUNITY = :ecommerce_community
          AGENCY_COMMUNITY = :agency_community
          SAAS_COMMUNITY = :saas_community
          SAAS_MARKETING_COMMUNITY = :saas_marketing_community
          REAL_ESTATE_COMMUNITY = :real_estate_community
          SALES_COMMUNITY = :sales_community
          AFFILIATE_COMMUNITY = :affiliate_community
          RESELLING_COMMUNITY = :reselling_community
          AMAZON_SELLER_COMMUNITY = :amazon_seller_community
          DROPSHIPPING_COMMUNITY = :dropshipping_community
          FREELANCER_COMMUNITY = :freelancer_community
          STARTUP_FOUNDER_COMMUNITY = :startup_founder_community
          CEO_EXECUTIVE_COMMUNITY = :ceo_executive_community
          WOMEN_BUSINESS_COMMUNITY = :women_business_community
          MARKETING_COMMUNITY = :marketing_community
          AI_BUSINESS_COMMUNITY = :ai_business_community
          CONTENT_BUSINESS_COMMUNITY = :content_business_community
          LOCAL_BUSINESS_COMMUNITY = :local_business_community
          PRIVATE_EQUITY_COMMUNITY = :private_equity_community
          WHOLESALING_COMMUNITY = :wholesaling_community
          COACHING_BUSINESS_COMMUNITY = :coaching_business_community
          MAKE_MONEY_ONLINE_COMMUNITY = :make_money_online_community
          STARTUP_NEWSLETTER = :startup_newsletter
          ECOMMERCE_NEWSLETTER = :ecommerce_newsletter
          MARKETING_NEWSLETTER = :marketing_newsletter
          SALES_NEWSLETTER = :sales_newsletter
          SMALL_BUSINESS_NEWSLETTER = :small_business_newsletter
          LEADERSHIP_NEWSLETTER = :leadership_newsletter
          AGENCY_NEWSLETTER = :agency_newsletter
          SAAS_NEWSLETTER = :saas_newsletter
          HR_PEOPLE_NEWSLETTER = :hr_people_newsletter
          LEGAL_BUSINESS_NEWSLETTER = :legal_business_newsletter
          REAL_ESTATE_BUSINESS_NEWSLETTER = :real_estate_business_newsletter
          SOLOPRENEUR_NEWSLETTER = :solopreneur_newsletter
          HIGH_TICKET_SALES = :high_ticket_sales
          B2B_SALES_COACHING = :b2b_sales_coaching
          DOOR_TO_DOOR_SALES = :door_to_door_sales
          SALES_FUNNEL_COACHING = :sales_funnel_coaching
          APPOINTMENT_SETTING_COACHING = :appointment_setting_coaching
          INSURANCE_SALES_COACHING = :insurance_sales_coaching
          CAR_SALES_COACHING = :car_sales_coaching
          RETAIL_SALES_COACHING = :retail_sales_coaching
          SOLAR_SALES_COACHING = :solar_sales_coaching
          LEAD_GENERATION_AGENCY = :lead_generation_agency
          COLD_EMAIL_AGENCY = :cold_email_agency
          COLD_CALLING_AGENCY = :cold_calling_agency
          SALES_OUTSOURCING = :sales_outsourcing
          CRM_IMPLEMENTATION = :crm_implementation
          APPOINTMENT_SETTING_AGENCY = :appointment_setting_agency
          SALES_TRAINING_AGENCY = :sales_training_agency
          REVENUE_OPERATIONS_AGENCY = :revenue_operations_agency
          INBOUND_TELESERVICES = :inbound_teleservices
          OUTBOUND_TELEMARKETING = :outbound_telemarketing
          FACEBOOK_ADS = :facebook_ads
          GOOGLE_ADS = :google_ads
          TIKTOK_MARKETING = :tiktok_marketing
          YOUTUBE_MARKETING = :youtube_marketing
          INSTAGRAM_GROWTH = :instagram_growth
          SEO_COACHING = :seo_coaching
          EMAIL_MARKETING_COACHING = :email_marketing_coaching
          COPYWRITING_COACHING = :copywriting_coaching
          AFFILIATE_MARKETING = :affiliate_marketing
          LOCAL_SEO = :local_seo
          AI_MARKETING = :ai_marketing
          WEBINAR_MARKETING = :webinar_marketing
          EVENT_MARKETING = :event_marketing
          SAAS_MARKETING_COACHING = :saas_marketing_coaching
          DIGITAL_MARKETING = :digital_marketing
          SMMA = :smma
          PERFORMANCE_MARKETING_AGENCY = :performance_marketing_agency
          SEO_AGENCY = :seo_agency
          CONTENT_MARKETING_AGENCY = :content_marketing_agency
          EMAIL_MARKETING_AGENCY = :email_marketing_agency
          INFLUENCER_MARKETING_AGENCY = :influencer_marketing_agency
          PR_AGENCY = :pr_agency
          BRANDING_AGENCY = :branding_agency
          VIDEO_MARKETING_AGENCY = :video_marketing_agency
          AMAZON_MARKETING_AGENCY = :amazon_marketing_agency
          PODCAST_MARKETING_AGENCY = :podcast_marketing_agency
          TIKTOK_AGENCY = :tiktok_agency
          LINKEDIN_AGENCY = :linkedin_agency
          LOCAL_MARKETING_AGENCY = :local_marketing_agency
          DENTAL_MARKETING_AGENCY = :dental_marketing_agency
          REAL_ESTATE_MARKETING_AGENCY = :real_estate_marketing_agency
          RESTAURANT_MARKETING_AGENCY = :restaurant_marketing_agency
          ECOMMERCE_MARKETING_AGENCY = :ecommerce_marketing_agency
          B2B_MARKETING_AGENCY = :b2b_marketing_agency
          GROWTH_MARKETING_AGENCY = :growth_marketing_agency
          AFFILIATE_MANAGEMENT_AGENCY = :affiliate_management_agency
          CONVERSION_OPTIMIZATION_AGENCY = :conversion_optimization_agency
          EVENT_MARKETING_AGENCY = :event_marketing_agency
          CLICK_FARM_SERVICE = :click_farm_service
          DATA_SCRAPING_SERVICE = :data_scraping_service
          LEAD_LIST_SALES = :lead_list_sales
          SOCIAL_MEDIA_BOT_FARM = :social_media_bot_farm
          CRM_SOFTWARE = :crm_software
          EMAIL_MARKETING_SOFTWARE = :email_marketing_software
          SMS_MARKETING_SOFTWARE = :sms_marketing_software
          SEO_TOOL = :seo_tool
          LANDING_PAGE_BUILDER = :landing_page_builder
          AD_MANAGEMENT_TOOL = :ad_management_tool
          AFFILIATE_TRACKING = :affiliate_tracking
          REVIEW_MANAGEMENT = :review_management
          ANALYTICS_DASHBOARD = :analytics_dashboard
          LEAD_GEN_SOFTWARE = :lead_gen_software
          LINK_IN_BIO_TOOL = :link_in_bio_tool
          INFLUENCER_PLATFORM = :influencer_platform
          WEBINAR_PLATFORM = :webinar_platform
          AB_TESTING_TOOL = :ab_testing_tool
          CHATBOT_MARKETING = :chatbot_marketing
          VIDEO_SALES_TOOL = :video_sales_tool
          PROPOSAL_SOFTWARE = :proposal_software
          COMPETITIVE_INTELLIGENCE = :competitive_intelligence
          SOCIAL_LISTENING_TOOL = :social_listening_tool
          WHATSAPP_MARKETING_TOOL = :whatsapp_marketing_tool
          STANDALONE_TIPPING = :standalone_tipping
          VIDEO_EDITING_EDUCATION = :video_editing_education
          PHOTOGRAPHY_COACHING = :photography_coaching
          MUSIC_PRODUCTION = :music_production
          UI_UX_DESIGN_EDUCATION = :ui_ux_design_education
          CLIPPING_EDUCATION = :clipping_education
          UGC_CREATION = :ugc_creation
          INDUSTRY_TYPE_3D_MODELING_EDUCATION = :"3d_modeling_education"
          DJ_EDUCATION = :dj_education
          YOUTUBE_AUTOMATION = :youtube_automation
          BLOG_MONETIZATION = :blog_monetization
          WEDDING_PHOTOGRAPHY_EDUCATION = :wedding_photography_education
          CALLIGRAPHY_LETTERING = :calligraphy_lettering
          ILLUSTRATION_EDUCATION = :illustration_education
          FASHION_DESIGN_EDUCATION = :fashion_design_education
          INTERIOR_DESIGN_EDUCATION = :interior_design_education
          INFLUENCER_EDUCATION = :influencer_education
          AI_CONTENT_CREATOR_EDUCATION = :ai_content_creator_education
          AI_NSFW_CONTENT_GENERATION_EDUCATION = :ai_nsfw_content_generation_education
          WEB_DESIGN_AGENCY = :web_design_agency
          GRAPHIC_DESIGN_AGENCY = :graphic_design_agency
          UI_UX_AGENCY = :ui_ux_agency
          MOTION_DESIGN_AGENCY = :motion_design_agency
          PRODUCT_DESIGN_AGENCY = :product_design_agency
          LOGO_DESIGN_AGENCY = :logo_design_agency
          PRESENTATION_DESIGN_AGENCY = :presentation_design_agency
          INDUSTRY_TYPE_3D_VISUALIZATION_AGENCY = :"3d_visualization_agency"
          FASHION_DESIGN_AGENCY = :fashion_design_agency
          VIDEO_CLIPPING_AGENCY = :video_clipping_agency
          VIDEO_PRODUCTION_AGENCY = :video_production_agency
          UGC_AGENCY = :ugc_agency
          CONTENT_WRITING_AGENCY = :content_writing_agency
          TRANSLATION_AGENCY = :translation_agency
          SOCIAL_MEDIA_MANAGEMENT = :social_media_management
          GHOSTWRITING_AGENCY = :ghostwriting_agency
          PODCAST_EDITING_AGENCY = :podcast_editing_agency
          THUMBNAIL_DESIGN_AGENCY = :thumbnail_design_agency
          SCRIPTWRITING_AGENCY = :scriptwriting_agency
          SEO_CONTENT_AGENCY = :seo_content_agency
          TECHNICAL_WRITING_AGENCY = :technical_writing_agency
          PHOTOGRAPHY_SERVICE = :photography_service
          VIDEOGRAPHY_SERVICE = :videography_service
          MUSIC_PRODUCTION_SERVICE = :music_production_service
          VOICE_OVER_SERVICE = :voice_over_service
          EVENT_PHOTOGRAPHY = :event_photography
          DRONE_SERVICES = :drone_services
          COMMERCIAL_PHOTOGRAPHY = :commercial_photography
          PORTRAIT_PHOTOGRAPHY_SERVICE = :portrait_photography_service
          REAL_ESTATE_PHOTOGRAPHY = :real_estate_photography
          FOOD_PHOTOGRAPHY_SERVICE = :food_photography_service
          LIVE_EVENT_PRODUCTION = :live_event_production
          PODCAST_PRODUCTION_SERVICE = :podcast_production_service
          FREELANCE_DESIGN_GIG = :freelance_design_gig
          FREELANCE_WRITING_GIG = :freelance_writing_gig
          FREELANCE_DEV_GIG = :freelance_dev_gig
          MUSIC_PERFORMANCE_GIG = :music_performance_gig
          EVENT_STAFFING_GIG = :event_staffing_gig
          MODEL_TALENT_GIG = :model_talent_gig
          PHOTOGRAPHY_GIG = :photography_gig
          VIDEOGRAPHY_GIG = :videography_gig
          VOICEOVER_GIG = :voiceover_gig
          ILLUSTRATION_GIG = :illustration_gig
          SOCIAL_MEDIA_GIG = :social_media_gig
          DJ_GIG = :dj_gig
          FACE_PAINTING_GIG = :face_painting_gig
          CLIPPING_GIG = :clipping_gig
          CONTENT_CREATOR_COMMUNITY = :content_creator_community
          VIDEO_EDITING_COMMUNITY = :video_editing_community
          MUSIC_PRODUCER_COMMUNITY = :music_producer_community
          PHOTOGRAPHY_COMMUNITY = :photography_community
          WRITING_COMMUNITY = :writing_community
          DESIGN_COMMUNITY = :design_community
          YOUTUBE_CREATOR_COMMUNITY = :youtube_creator_community
          TIKTOK_CREATOR_COMMUNITY = :tiktok_creator_community
          PODCAST_COMMUNITY = :podcast_community
          FILMMAKER_COMMUNITY = :filmmaker_community
          CLIPPING_COMMUNITY = :clipping_community
          YOUTUBE_AUTOMATION_COMMUNITY = :youtube_automation_community
          PIRATED_DIGITAL_CONTENT = :pirated_digital_content
          WEB_DEVELOPMENT_EDUCATION = :web_development_education
          AI_ML_EDUCATION = :ai_ml_education
          DATA_SCIENCE_EDUCATION = :data_science_education
          CYBERSECURITY_EDUCATION = :cybersecurity_education
          CLOUD_COMPUTING_EDUCATION = :cloud_computing_education
          BLOCKCHAIN_EDUCATION = :blockchain_education
          NO_CODE_EDUCATION = :no_code_education
          AUTOMATION_EDUCATION = :automation_education
          GAME_DEVELOPMENT_EDUCATION = :game_development_education
          PROMPT_ENGINEERING = :prompt_engineering
          PYTHON_PROGRAMMING = :python_programming
          JAVASCRIPT_PROGRAMMING = :javascript_programming
          REACT_DEVELOPMENT = :react_development
          DATABASE_ENGINEERING = :database_engineering
          AWS_CERTIFICATION = :aws_certification
          DATA_ENGINEERING = :data_engineering
          ROBOTICS_EDUCATION = :robotics_education
          VR_AR_DEVELOPMENT = :vr_ar_development
          LINUX_SYSADMIN = :linux_sysadmin
          WORDPRESS_DEVELOPMENT = :wordpress_development
          AI_AGENT_BUILDING = :ai_agent_building
          WEB_DEVELOPMENT_AGENCY = :web_development_agency
          MOBILE_APP_AGENCY = :mobile_app_agency
          SAAS_DEVELOPMENT_AGENCY = :saas_development_agency
          ECOMMERCE_DEVELOPMENT = :ecommerce_development
          BLOCKCHAIN_DEVELOPMENT_AGENCY = :blockchain_development_agency
          GAME_DEVELOPMENT_AGENCY = :game_development_agency
          DEVOPS_AGENCY = :devops_agency
          AI_DEVELOPMENT_AGENCY = :ai_development_agency
          WORDPRESS_AGENCY = :wordpress_agency
          SHOPIFY_AGENCY = :shopify_agency
          API_INTEGRATION_AGENCY = :api_integration_agency
          CYBERSECURITY_AGENCY = :cybersecurity_agency
          DATA_ENGINEERING_AGENCY = :data_engineering_agency
          VR_AR_DEVELOPMENT_AGENCY = :vr_ar_development_agency
          HACKING_TOOLS_MALWARE = :hacking_tools_malware
          STALKERWARE_MONITORING = :stalkerware_monitoring
          DEVELOPER_COMMUNITY = :developer_community
          AI_COMMUNITY = :ai_community
          CYBERSECURITY_COMMUNITY = :cybersecurity_community
          NO_CODE_COMMUNITY = :no_code_community
          INDIE_HACKER_COMMUNITY = :indie_hacker_community
          DEVOPS_COMMUNITY = :devops_community
          DATA_SCIENCE_COMMUNITY = :data_science_community
          PRODUCT_COMMUNITY = :product_community
          OPEN_SOURCE_COMMUNITY = :open_source_community
          API_MANAGEMENT = :api_management
          HOSTING_PLATFORM = :hosting_platform
          DATABASE_TOOL = :database_tool
          DEVOPS_TOOL = :devops_tool
          MONITORING_TOOL = :monitoring_tool
          TESTING_TOOL = :testing_tool
          CODE_EDITOR = :code_editor
          NO_CODE_BUILDER = :no_code_builder
          CDN_PLATFORM = :cdn_platform
          ERROR_TRACKING = :error_tracking
          DOCUMENTATION_TOOL = :documentation_tool
          WEBHOOK_TOOL = :webhook_tool
          INDUSTRY_TYPE_3D_WEAPON_FILES = :"3d_weapon_files"
          BACKGROUND_CHECK_SERVICES = :background_check_services
          DOCUMENT_FALSIFICATION = :document_falsification
          FAKE_ID_SERVICES = :fake_id_services
          FAKE_REFERENCE_SERVICES = :fake_reference_services
          REAL_ESTATE_WHOLESALING = :real_estate_wholesaling
          HOUSE_FLIPPING = :house_flipping
          PROPERTY_DEVELOPMENT = :property_development
          RENTAL_PROPERTY = :rental_property
          AIRBNB_STR = :airbnb_str
          COMMERCIAL_REAL_ESTATE = :commercial_real_estate
          LAND_INVESTING = :land_investing
          SECTION_8_HOUSING = :section_8_housing
          MOBILE_HOME_INVESTING = :mobile_home_investing
          MULTIFAMILY_INVESTING = :multifamily_investing
          SELF_STORAGE_INVESTING = :self_storage_investing
          PROPERTY_MANAGEMENT_EDUCATION = :property_management_education
          VACATION_RENTAL_MANAGEMENT = :vacation_rental_management
          REAL_ESTATE_CRM = :real_estate_crm
          PROPERTY_MANAGEMENT_SOFTWARE = :property_management_software
          DEAL_ANALYSIS_TOOL = :deal_analysis_tool
          MLS_SEARCH_TOOL = :mls_search_tool
          VIRTUAL_TOUR_SOFTWARE = :virtual_tour_software
          REAL_ESTATE_MARKETING_SOFTWARE = :real_estate_marketing_software
          CONSTRUCTION_MANAGEMENT = :construction_management
          HOME_VALUATION_TOOL = :home_valuation_tool
          CREDIT_REPAIR_EDUCATION = :credit_repair_education
          BUDGETING_COACHING = :budgeting_coaching
          TAX_STRATEGY_EDUCATION = :tax_strategy_education
          WEALTH_BUILDING = :wealth_building
          STUDENT_LOAN_STRATEGY = :student_loan_strategy
          CREDIT_CARD_OPTIMIZATION = :credit_card_optimization
          CAREER_COACHING = :career_coaching
          EXECUTIVE_COACHING = :executive_coaching
          MANAGEMENT_COACHING = :management_coaching
          TECH_CAREER_COACHING = :tech_career_coaching
          MEDICAL_CAREER_COACHING = :medical_career_coaching
          TRADE_SKILLS_EDUCATION = :trade_skills_education
          VA_TRAINING = :va_training
          BOOKKEEPING_EDUCATION = :bookkeeping_education
          DATA_CAREER_COACHING = :data_career_coaching
          CYBERSECURITY_CAREER = :cybersecurity_career
          CONSULTING_CAREER = :consulting_career
          INVESTMENT_BANKING_CAREER = :investment_banking_career
          LAW_CAREER_COACHING = :law_career_coaching
          NURSING_CAREER_COACHING = :nursing_career_coaching
          TEACHING_CAREER_COACHING = :teaching_career_coaching
          PERSONAL_BRANDING_CAREER = :personal_branding_career
          MENS_DATING_COACHING = :mens_dating_coaching
          WOMENS_DATING_COACHING = :womens_dating_coaching
          RELATIONSHIP_COACHING = :relationship_coaching
          MARRIAGE_COACHING = :marriage_coaching
          COMMUNICATION_COACHING = :communication_coaching
          MASCULINITY_COACHING = :masculinity_coaching
          FEMININITY_COACHING = :femininity_coaching
          BREAKUP_RECOVERY = :breakup_recovery
          MANIFESTATION_COACHING = :manifestation_coaching
          ASTROLOGY_COACHING = :astrology_coaching
          ENERGY_HEALING = :energy_healing
          SPIRITUAL_COACHING = :spiritual_coaching
          FAITH_BASED_COACHING = :faith_based_coaching
          PSYCHIC_DEVELOPMENT = :psychic_development
          NUMEROLOGY_COACHING = :numerology_coaching
          CHAKRA_HEALING = :chakra_healing
          SHAMANIC_HEALING = :shamanic_healing
          BIBLICAL_COACHING = :biblical_coaching
          ISLAMIC_COACHING = :islamic_coaching
          PRODUCTIVITY_COACHING = :productivity_coaching
          PUBLIC_SPEAKING_COACHING = :public_speaking_coaching
          MINDSET_COACHING = :mindset_coaching
          STOICISM_PHILOSOPHY = :stoicism_philosophy
          MENS_SELF_IMPROVEMENT = :mens_self_improvement
          WOMENS_SELF_IMPROVEMENT = :womens_self_improvement
          LEADERSHIP_DEVELOPMENT = :leadership_development
          ANGER_MANAGEMENT = :anger_management
          NEUROLINGUISTIC_PROGRAMMING = :neurolinguistic_programming
          APPEARANCE_AND_GROOMING_COACHING = :appearance_and_grooming_coaching
          AMAZON_KDP = :amazon_kdp
          SELF_PUBLISHING = :self_publishing
          AUDIOBOOK_PUBLISHING = :audiobook_publishing
          COURSE_CREATION = :course_creation
          DIGITAL_PRODUCT_CREATION = :digital_product_creation
          GHOSTWRITING_BUSINESS = :ghostwriting_business
          TEMPLATE_CREATION = :template_creation
          AI_BOOK_PUBLISHING = :ai_book_publishing
          LANGUAGE_LEARNING = :language_learning
          TUTORING = :tutoring
          COLLEGE_ADMISSIONS_COACHING = :college_admissions_coaching
          CPA_EXAM_PREP = :cpa_exam_prep
          BAR_EXAM_PREP = :bar_exam_prep
          REAL_ESTATE_EXAM_PREP = :real_estate_exam_prep
          MEDICAL_BOARD_PREP = :medical_board_prep
          PMP_CERTIFICATION_PREP = :pmp_certification_prep
          AWS_CERTIFICATION_PREP = :aws_certification_prep
          COMPTIA_CERTIFICATION = :comptia_certification
          AP_EXAM_PREP = :ap_exam_prep
          GRADUATE_SCHOOL_PREP = :graduate_school_prep
          SCHOLARSHIP_COACHING = :scholarship_coaching
          HOMESCHOOL_EDUCATION = :homeschool_education
          STEM_EDUCATION = :stem_education
          FINANCIAL_CERTIFICATION = :financial_certification
          CODING_BOOTCAMP_PREP = :coding_bootcamp_prep
          COOKING_CULINARY = :cooking_culinary
          TRAVEL_COACHING = :travel_coaching
          PARENTING_COACHING = :parenting_coaching
          PET_TRAINING = :pet_training
          GARDENING_EDUCATION = :gardening_education
          DIY_CRAFTS = :diy_crafts
          SURVIVAL_PREPPING = :survival_prepping
          BAKING_PASTRY = :baking_pastry
          WINE_SOMMELIER = :wine_sommelier
          BEER_BREWING = :beer_brewing
          MIXOLOGY_BARTENDING = :mixology_bartending
          WOODWORKING = :woodworking
          POTTERY_CERAMICS = :pottery_ceramics
          KNITTING_CROCHETING = :knitting_crocheting
          JEWELRY_MAKING = :jewelry_making
          AQUARIUM_FISHKEEPING = :aquarium_fishkeeping
          BIRD_WATCHING = :bird_watching
          ASTRONOMY_EDUCATION = :astronomy_education
          MAGIC_ILLUSION = :magic_illusion
          CAR_RESTORATION = :car_restoration
          MOTORCYCLE_RIDING = :motorcycle_riding
          SAILING_BOATING = :sailing_boating
          SCUBA_DIVING = :scuba_diving
          ROCK_CLIMBING = :rock_climbing
          SKIING_SNOWBOARDING = :skiing_snowboarding
          SURFING_EDUCATION = :surfing_education
          HOMESTEADING = :homesteading
          TINY_HOUSE_LIVING = :tiny_house_living
          VAN_LIFE = :van_life
          FASHION_STYLING = :fashion_styling
          FLORAL_DESIGN = :floral_design
          TRAVEL_PLANNING_SERVICE = :travel_planning_service
          COLLECTIBLES_COACHING = :collectibles_coaching
          CAR_ENTHUSIAST_COMMUNITY = :car_enthusiast_community
          SNEAKERHEAD_COMMUNITY = :sneakerhead_community
          WATCH_COLLECTOR_COMMUNITY = :watch_collector_community
          WINE_ENTHUSIAST_COMMUNITY = :wine_enthusiast_community
          CIGAR_COMMUNITY = :cigar_community
          COOKING_COMMUNITY = :cooking_community
          GARDENING_COMMUNITY = :gardening_community
          FISHING_COMMUNITY = :fishing_community
          HUNTING_COMMUNITY = :hunting_community
          DIY_MAKER_COMMUNITY = :diy_maker_community
          GOLF_COMMUNITY = :golf_community
          COLLECTIBLES_COMMUNITY = :collectibles_community
          SWEEPSTAKES_RAFFLES = :sweepstakes_raffles
          EVENT_TICKET_COMMUNITY = :event_ticket_community
          ESPORTS_COACHING = :esports_coaching
          GAME_SPECIFIC_COACHING = :game_specific_coaching
          GAMING_COMMUNITY = :gaming_community
          GAME_ACCOUNT_SELLING = :game_account_selling
          UNAUTHORIZED_INGAME_CURRENCY = :unauthorized_ingame_currency
          LEGAL_EDUCATION = :legal_education
          MUSIC_THEORY = :music_theory
          MUSIC_BUSINESS = :music_business
          ACTING_COACHING = :acting_coaching
          DANCE_INSTRUCTION = :dance_instruction
          VOICE_ACTING = :voice_acting
          ENGLISH_COACHING = :english_coaching
          SPANISH_COACHING = :spanish_coaching
          MANDARIN_COACHING = :mandarin_coaching
          FRENCH_COACHING = :french_coaching
          GERMAN_COACHING = :german_coaching
          JAPANESE_COACHING = :japanese_coaching
          KOREAN_COACHING = :korean_coaching
          ARABIC_COACHING = :arabic_coaching
          SIGN_LANGUAGE_EDUCATION = :sign_language_education
          ACCENT_REDUCTION = :accent_reduction
          BUSINESS_ENGLISH = :business_english
          AI_CHATBOT_AGENCY = :ai_chatbot_agency
          AI_AUTOMATION_AGENCY = :ai_automation_agency
          AI_CONSULTING = :ai_consulting
          WORKFLOW_AUTOMATION_AGENCY = :workflow_automation_agency
          DATA_ANALYTICS_AGENCY = :data_analytics_agency
          AI_VOICE_AGENT_AGENCY = :ai_voice_agent_agency
          AI_CONTENT_AGENCY = :ai_content_agency
          MACHINE_LEARNING_AGENCY = :machine_learning_agency
          COMPUTER_VISION_AGENCY = :computer_vision_agency
          TECH_RECRUITING_AGENCY = :tech_recruiting_agency
          EXECUTIVE_RECRUITING = :executive_recruiting
          STAFFING_AGENCY = :staffing_agency
          REMOTE_STAFFING = :remote_staffing
          HEALTHCARE_RECRUITING = :healthcare_recruiting
          VA_PLACEMENT_AGENCY = :va_placement_agency
          SALES_RECRUITING = :sales_recruiting
          CREATIVE_RECRUITING = :creative_recruiting
          FINANCE_RECRUITING = :finance_recruiting
          LEGAL_RECRUITING = :legal_recruiting
          CONSTRUCTION_STAFFING = :construction_staffing
          HOSPITALITY_STAFFING = :hospitality_staffing
          CUSTOMER_SUPPORT_OUTSOURCING = :customer_support_outsourcing
          LIVE_CHAT_AGENCY = :live_chat_agency
          TECHNICAL_SUPPORT_AGENCY = :technical_support_agency
          CALL_CENTER_AGENCY = :call_center_agency
          MULTILINGUAL_SUPPORT_AGENCY = :multilingual_support_agency
          COMMUNITY_MANAGEMENT_AGENCY = :community_management_agency
          MANAGEMENT_CONSULTING = :management_consulting
          FINANCIAL_CONSULTING = :financial_consulting
          HR_CONSULTING = :hr_consulting
          OPERATIONS_CONSULTING = :operations_consulting
          IT_CONSULTING = :it_consulting
          SUSTAINABILITY_CONSULTING = :sustainability_consulting
          LEGAL_CONSULTING = :legal_consulting
          COMPLIANCE_CONSULTING = :compliance_consulting
          SUPPLY_CHAIN_CONSULTING = :supply_chain_consulting
          CHANGE_MANAGEMENT_CONSULTING = :change_management_consulting
          DIGITAL_TRANSFORMATION_CONSULTING = :digital_transformation_consulting
          HEALTHCARE_CONSULTING = :healthcare_consulting
          REAL_ESTATE_CONSULTING = :real_estate_consulting
          FRANCHISE_CONSULTING = :franchise_consulting
          EXPORT_TRADE_CONSULTING = :export_trade_consulting
          NONPROFIT_CONSULTING = :nonprofit_consulting
          EDUCATION_CONSULTING = :education_consulting
          CANNABIS_CONSULTING = :cannabis_consulting
          RESTAURANT_CONSULTING = :restaurant_consulting
          M_AND_A_CONSULTING = :m_and_a_consulting
          PRICING_STRATEGY_CONSULTING = :pricing_strategy_consulting
          BRAND_STRATEGY_CONSULTING = :brand_strategy_consulting
          SAAS_MARKETING_CONSULTING = :saas_marketing_consulting
          DONE_FOR_YOU_SERVICES = :done_for_you_services
          PROP_FIRM_PASSING_SERVICE = :prop_firm_passing_service
          TRADING_ACCOUNT_MANAGEMENT = :trading_account_management
          DONE_FOR_YOU_TRADING = :done_for_you_trading
          ACCOUNTING_BOOKKEEPING = :accounting_bookkeeping
          TAX_PREPARATION = :tax_preparation
          LEGAL_SERVICES = :legal_services
          NOTARY_SERVICES = :notary_services
          INSURANCE_BROKERAGE = :insurance_brokerage
          FINANCIAL_PLANNING_SERVICE = :financial_planning_service
          REAL_ESTATE_SERVICES = :real_estate_services
          PROPERTY_MANAGEMENT = :property_management
          MORTGAGE_BROKERAGE = :mortgage_brokerage
          IMMIGRATION_SERVICES = :immigration_services
          PATENT_TRADEMARK_SERVICES = :patent_trademark_services
          BUSINESS_FORMATION_SERVICES = :business_formation_services
          SHELL_COMPANY_FORMATION = :shell_company_formation
          PAYROLL_SERVICES = :payroll_services
          AUDIT_SERVICES = :audit_services
          FORENSIC_ACCOUNTING = :forensic_accounting
          ACTUARIAL_SERVICES = :actuarial_services
          APPRAISAL_SERVICES = :appraisal_services
          MEDIATION_ARBITRATION = :mediation_arbitration
          BAIL_BOND_SERVICES = :bail_bond_services
          CROWDFUNDING_PLATFORM = :crowdfunding_platform
          ESSAY_MILL_PAPER_MILL = :essay_mill_paper_mill
          GOVERNMENT_SERVICE_FACILITATION = :government_service_facilitation
          IMMIGRATION_SERVICES_UNLICENSED = :immigration_services_unlicensed
          LICENSED_LEGAL_SERVICES = :licensed_legal_services
          PERSONALIZED_TAX_SERVICES = :personalized_tax_services
          PRIVATE_INVESTIGATION = :private_investigation
          REPOSSESSION_SERVICES = :repossession_services
          UNLICENSED_LEGAL_SERVICES = :unlicensed_legal_services
          RECORD_LABEL = :record_label
          BOOK_PUBLISHING_HOUSE = :book_publishing_house
          NEWS_MEDIA_OUTLET = :news_media_outlet
          RADIO_BROADCASTING = :radio_broadcasting
          TV_PRODUCTION_COMPANY = :tv_production_company
          FILM_STUDIO = :film_studio
          MAGAZINE_PUBLISHER = :magazine_publisher
          MUSIC_LICENSING_AGENCY = :music_licensing_agency
          TALENT_MANAGEMENT_AGENCY = :talent_management_agency
          ADVERTISING_NETWORK = :advertising_network
          AD_TECH_PLATFORM = :ad_tech_platform
          CLEANING_SERVICE = :cleaning_service
          LANDSCAPING_SERVICE = :landscaping_service
          PLUMBING_SERVICE = :plumbing_service
          ELECTRICAL_SERVICE = :electrical_service
          HVAC_SERVICE = :hvac_service
          ROOFING_SERVICE = :roofing_service
          PAINTING_SERVICE = :painting_service
          MOVING_SERVICE = :moving_service
          HANDYMAN_SERVICE = :handyman_service
          PEST_CONTROL = :pest_control
          POOL_SERVICE = :pool_service
          SOLAR_INSTALLATION = :solar_installation
          HOME_RENOVATION = :home_renovation
          PRESSURE_WASHING = :pressure_washing
          JUNK_REMOVAL = :junk_removal
          GARAGE_DOOR_SERVICE = :garage_door_service
          FENCING_SERVICE = :fencing_service
          CONCRETE_MASONRY = :concrete_masonry
          TREE_SERVICE = :tree_service
          WINDOW_CLEANING = :window_cleaning
          GUTTER_SERVICE = :gutter_service
          FLOORING_SERVICE = :flooring_service
          CABINET_COUNTERTOP = :cabinet_countertop
          HOME_INSPECTION = :home_inspection
          SEPTIC_SERVICE = :septic_service
          WATERPROOFING_SERVICE = :waterproofing_service
          INSULATION_SERVICE = :insulation_service
          CHIMNEY_SERVICE = :chimney_service
          LOCKSMITH_SERVICE = :locksmith_service
          GLASS_WINDOW_SERVICE = :glass_window_service
          EPOXY_COATING = :epoxy_coating
          PRIVATE_SECURITY_GUARD_SERVICE = :private_security_guard_service
          ARMORED_CAR_TRANSPORT = :armored_car_transport
          EXECUTIVE_PROTECTION_BODYGUARD = :executive_protection_bodyguard
          EVENT_SECURITY_SERVICE = :event_security_service
          ALARM_SYSTEM_INSTALLATION = :alarm_system_installation
          CCTV_INSTALLATION = :cctv_installation
          PRIVATE_INVESTIGATION_AGENCY = :private_investigation_agency
          BACKGROUND_CHECK_PROVIDER = :background_check_provider
          LOCKSMITH_COMMERCIAL = :locksmith_commercial
          BOUNTY_HUNTER_BAIL_ENFORCEMENT = :bounty_hunter_bail_enforcement
          PERSONAL_STYLING = :personal_styling
          PERSONAL_CHEF = :personal_chef
          PERSONAL_ASSISTANT_SERVICE = :personal_assistant_service
          TUTORING_SERVICE = :tutoring_service
          PET_SERVICES = :pet_services
          WEDDING_PLANNING = :wedding_planning
          CONCIERGE_SERVICE = :concierge_service
          PERSONAL_TRAINING_SERVICE = :personal_training_service
          NANNY_SERVICE = :nanny_service
          ELDER_CARE_SERVICE = :elder_care_service
          ERRAND_SERVICE = :errand_service
          LIFE_ORGANIZATION = :life_organization
          RELOCATION_SERVICE = :relocation_service
          ADULT_DATING_SERVICES = :adult_dating_services
          ESCORT_SERVICES = :escort_services
          HOTEL_ACCOMMODATION_BOOKINGS = :hotel_accommodation_bookings
          MAIL_ORDER_SPOUSE = :mail_order_spouse
          PSYCHIC_FORTUNE_TELLING = :psychic_fortune_telling
          TIMESHARE_SALES = :timeshare_sales
          FREIGHT_BROKERAGE = :freight_brokerage
          COURIER_SERVICE = :courier_service
          WAREHOUSING_SERVICE = :warehousing_service
          LAST_MILE_DELIVERY = :last_mile_delivery
          AUTO_TRANSPORT = :auto_transport
          INTERNATIONAL_SHIPPING = :international_shipping
          COLD_CHAIN_LOGISTICS = :cold_chain_logistics
          COMMERCIAL_AIRLINE_TICKETS = :commercial_airline_tickets
          CRUISE_LINE_BOOKINGS = :cruise_line_bookings
          CONTRACT_MANUFACTURING = :contract_manufacturing
          CNC_MACHINING_SERVICE = :cnc_machining_service
          INDUSTRY_TYPE_3D_PRINTING_SERVICE_COMMERCIAL = :"3d_printing_service_commercial"
          PLASTIC_INJECTION_MOLDING = :plastic_injection_molding
          METAL_FABRICATION = :metal_fabrication
          PCBA_ASSEMBLY = :pcba_assembly
          CHEMICAL_MANUFACTURING = :chemical_manufacturing
          TEXTILE_MANUFACTURING = :textile_manufacturing
          FOOD_PROCESSING_FACILITY = :food_processing_facility
          PACKAGING_MANUFACTURING = :packaging_manufacturing
          INDUSTRIAL_AUTOMATION_INTEGRATOR = :industrial_automation_integrator
          MINING_AND_EXTRACTION = :mining_and_extraction
          OIL_AND_GAS_SERVICES = :oil_and_gas_services
          RENEWABLE_ENERGY_GENERATION = :renewable_energy_generation
          WASTE_MANAGEMENT_RECYCLING = :waste_management_recycling
          HAZARDOUS_WASTE_DISPOSAL = :hazardous_waste_disposal
          AEROSPACE_DEFENSE_CONTRACTING = :aerospace_defense_contracting
          PERSONAL_TRAINING_STUDIO = :personal_training_studio
          NUTRITION_CONSULTING = :nutrition_consulting
          MENTAL_HEALTH_COUNSELING = :mental_health_counseling
          PHYSICAL_THERAPY_SERVICE = :physical_therapy_service
          OCCUPATIONAL_THERAPY_SERVICE = :occupational_therapy_service
          SPEECH_THERAPY_SERVICE = :speech_therapy_service
          CHIROPRACTIC_SERVICE = :chiropractic_service
          ACUPUNCTURE_SERVICE = :acupuncture_service
          MASSAGE_THERAPY_SERVICE = :massage_therapy_service
          MIDWIFERY_DOULA = :midwifery_doula
          LACTATION_CONSULTING = :lactation_consulting
          DIETITIAN_SERVICE = :dietitian_service
          ADDICTION_RECOVERY_SERVICES = :addiction_recovery_services
          DTC_LAB_TESTING = :dtc_lab_testing
          IV_THERAPY_INFUSION = :iv_therapy_infusion
          MEDSPA_AESTHETIC_SERVICES = :medspa_aesthetic_services
          PRESCRIPTION_DELIVERY_SERVICES = :prescription_delivery_services
          REGISTERED_DIETITIAN_SERVICES = :registered_dietitian_services
          UNLICENSED_THERAPY_COUNSELING = :unlicensed_therapy_counseling
          STREETWEAR = :streetwear
          ATHLEISURE = :athleisure
          LUXURY_FASHION = :luxury_fashion
          KIDS_CLOTHING = :kids_clothing
          CUSTOM_APPAREL = :custom_apparel
          WORKWEAR = :workwear
          SWIMWEAR = :swimwear
          LINGERIE_INTIMATES = :lingerie_intimates
          VINTAGE_CLOTHING = :vintage_clothing
          PLUS_SIZE_FASHION = :plus_size_fashion
          MATERNITY_CLOTHING = :maternity_clothing
          SLEEPWEAR_LOUNGEWEAR = :sleepwear_loungewear
          DENIM_BRAND = :denim_brand
          OUTERWEAR_JACKETS = :outerwear_jackets
          SOCKS_HOSIERY = :socks_hosiery
          COSTUMES_COSPLAY = :costumes_cosplay
          SCRUBS_MEDICAL_APPAREL = :scrubs_medical_apparel
          DANCE_PERFORMANCE_WEAR = :dance_performance_wear
          HUNTING_CAMO_APPAREL = :hunting_camo_apparel
          CASUAL_EVERYDAY_CLOTHING = :casual_everyday_clothing
          PROTEIN_SUPPLEMENTS = :protein_supplements
          VITAMINS_MINERALS = :vitamins_minerals
          PRE_WORKOUT = :pre_workout
          NOOTROPICS = :nootropics
          HERBAL_SUPPLEMENTS = :herbal_supplements
          WEIGHT_MANAGEMENT_SUPPLEMENTS = :weight_management_supplements
          GUT_HEALTH = :gut_health
          CBD_PRODUCTS = :cbd_products
          MUSHROOM_SUPPLEMENTS = :mushroom_supplements
          COLLAGEN_SUPPLEMENTS = :collagen_supplements
          TESTOSTERONE_BOOSTERS = :testosterone_boosters
          SLEEP_SUPPLEMENTS = :sleep_supplements
          IMMUNE_SUPPORT = :immune_support
          JOINT_BONE_HEALTH = :joint_bone_health
          GREENS_POWDER = :greens_powder
          CREATINE_SUPPLEMENTS = :creatine_supplements
          ELECTROLYTE_HYDRATION = :electrolyte_hydration
          PRENATAL_SUPPLEMENTS = :prenatal_supplements
          KIDS_SUPPLEMENTS = :kids_supplements
          PET_SUPPLEMENTS = :pet_supplements
          AYURVEDIC_SUPPLEMENTS = :ayurvedic_supplements
          KETO_SUPPLEMENTS = :keto_supplements
          CANNABIS_THC_PRODUCTS = :cannabis_thc_products
          CBD_HEMP_PRODUCTS_COMPLIANT = :cbd_hemp_products_compliant
          DELTA8_THC_PRODUCTS = :delta8_thc_products
          DIETARY_SUPPLEMENTS = :dietary_supplements
          DRUG_PRECURSOR_CHEMICALS = :drug_precursor_chemicals
          ILLEGAL_DRUGS = :illegal_drugs
          KRATOM_KAVA_PRODUCTS = :kratom_kava_products
          MEDICAL_TREATMENT_CLAIMS_PRODUCT = :medical_treatment_claims_product
          NUTRACEUTICAL_PRODUCTS = :nutraceutical_products
          OTC_MEDICATION_SALES = :otc_medication_sales
          PERFORMANCE_ENHANCING_DRUGS = :performance_enhancing_drugs
          RESEARCH_CHEMICALS_DANGEROUS = :research_chemicals_dangerous
          RESEARCH_PEPTIDES = :research_peptides
          SEXUAL_ENHANCEMENT_PRODUCTS = :sexual_enhancement_products
          TOBACCO_PRODUCTS = :tobacco_products
          UNLICENSED_RX_SALES = :unlicensed_rx_sales
          SKINCARE = :skincare
          HAIRCARE = :haircare
          COSMETICS_MAKEUP = :cosmetics_makeup
          MENS_GROOMING = :mens_grooming
          FRAGRANCE = :fragrance
          ORAL_CARE = :oral_care
          SUNSCREEN_SPF = :sunscreen_spf
          HAIR_GROWTH_PRODUCTS = :hair_growth_products
          BODY_CARE = :body_care
          DEODORANT = :deodorant
          LIP_CARE = :lip_care
          ACNE_TREATMENT = :acne_treatment
          MEN_SKINCARE = :men_skincare
          BABY_SKINCARE = :baby_skincare
          TATTOO_AFTERCARE = :tattoo_aftercare
          INTIMATE_CARE = :intimate_care
          HOME_GYM_EQUIPMENT = :home_gym_equipment
          YOGA_EQUIPMENT = :yoga_equipment
          COMBAT_SPORTS_GEAR = :combat_sports_gear
          OUTDOOR_FITNESS_GEAR = :outdoor_fitness_gear
          WEARABLE_FITNESS = :wearable_fitness
          RECOVERY_EQUIPMENT = :recovery_equipment
          WEIGHTLIFTING_EQUIPMENT = :weightlifting_equipment
          CARDIO_EQUIPMENT = :cardio_equipment
          GYMNASTICS_EQUIPMENT = :gymnastics_equipment
          SWIMMING_GEAR = :swimming_gear
          JUMP_ROPE_EQUIPMENT = :jump_rope_equipment
          GRIP_STRENGTH_TOOLS = :grip_strength_tools
          SAUNA_COLD_PLUNGE = :sauna_cold_plunge
          POSTURE_CORRECTORS = :posture_correctors
          JEWELRY = :jewelry
          SUNGLASSES_EYEWEAR = :sunglasses_eyewear
          BAGS_WALLETS = :bags_wallets
          HATS_HEADWEAR = :hats_headwear
          PHONE_ACCESSORIES = :phone_accessories
          TRAVEL_ACCESSORIES = :travel_accessories
          SCARVES_WRAPS = :scarves_wraps
          BELTS = :belts
          HAIR_ACCESSORIES = :hair_accessories
          TECH_ACCESSORIES = :tech_accessories
          KEYCHAINS_CHARMS = :keychains_charms
          CUSTOM_ENGRAVED_ACCESSORIES = :custom_engraved_accessories
          CANNABIS_ACCESSORIES_NON_DRUG = :cannabis_accessories_non_drug
          DRUG_PARAPHERNALIA = :drug_paraphernalia
          HIGH_VALUE_GOODS_OVER_500 = :high_value_goods_over_500
          PRECIOUS_METALS_STONES = :precious_metals_stones
          REPLICA_COUNTERFEIT_GOODS = :replica_counterfeit_goods
          HOME_DECOR = :home_decor
          CANDLES_SCENTS = :candles_scents
          KITCHENWARE = :kitchenware
          BEDDING_LINENS = :bedding_linens
          SMART_HOME = :smart_home
          CLEANING_PRODUCTS = :cleaning_products
          OUTDOOR_FURNITURE = :outdoor_furniture
          ORGANIZATION_STORAGE = :organization_storage
          WALL_ART_PRINTS = :wall_art_prints
          RUGS_CARPETS = :rugs_carpets
          LIGHTING_FIXTURES = :lighting_fixtures
          PLANTERS_GARDEN_DECOR = :planters_garden_decor
          BATHROOM_ACCESSORIES = :bathroom_accessories
          LUXURY_HOME_GOODS = :luxury_home_goods
          SEASONAL_HOLIDAY_DECOR = :seasonal_holiday_decor
          PET_HOME_PRODUCTS = :pet_home_products
          HOME_FRAGRANCE_DIFFUSERS = :home_fragrance_diffusers
          HAZARDOUS_CHEMICALS_B2C = :hazardous_chemicals_b2c
          PRE_ORDERS_DELAYED_DELIVERY = :pre_orders_delayed_delivery
          AUDIO_EQUIPMENT = :audio_equipment
          CAMERA_EQUIPMENT = :camera_equipment
          GAMING_HARDWARE = :gaming_hardware
          DRONES_ROBOTICS = :drones_robotics
          EV_ACCESSORIES = :ev_accessories
          CHARGING_POWER = :charging_power
          SMART_WEARABLES = :smart_wearables
          HOME_SECURITY_DEVICES = :home_security_devices
          INDUSTRY_TYPE_3D_PRINTERS = :"3d_printers"
          PROJECTORS_DISPLAYS = :projectors_displays
          STREAMING_DEVICES = :streaming_devices
          VR_HEADSETS = :vr_headsets
          E_READERS = :e_readers
          PORTABLE_TECH = :portable_tech
          HARDWARE_WALLETS = :hardware_wallets
          REGULATED_MEDICAL_DEVICES = :regulated_medical_devices
          SIGNAL_JAMMING_DEVICES = :signal_jamming_devices
          SPY_CAMERAS_HIDDEN_RECORDING = :spy_cameras_hidden_recording
          SPECIALTY_COFFEE_TEA = :specialty_coffee_tea
          HEALTH_FOOD = :health_food
          SNACKS_TREATS = :snacks_treats
          SAUCES_CONDIMENTS = :sauces_condiments
          ALCOHOL_SPIRITS = :alcohol_spirits
          MEAL_KITS = :meal_kits
          BAKED_GOODS = :baked_goods
          BEVERAGES = :beverages
          PET_FOOD_TREATS = :pet_food_treats
          PROTEIN_BARS_SNACKS = :protein_bars_snacks
          JERKY_MEAT_SNACKS = :jerky_meat_snacks
          CHOCOLATE_CONFECTIONS = :chocolate_confections
          HONEY_SWEETENERS = :honey_sweeteners
          OLIVE_OIL_VINEGAR = :olive_oil_vinegar
          HOT_SAUCE = :hot_sauce
          DRIED_FRUIT_NUTS = :dried_fruit_nuts
          BABY_FOOD = :baby_food
          PLANT_BASED_FOOD = :plant_based_food
          GLUTEN_FREE_FOOD = :gluten_free_food
          KETO_FOOD_PRODUCTS = :keto_food_products
          SUBSCRIPTION_FOOD_BOX = :subscription_food_box
          KOMBUCHA_FERMENTED = :kombucha_fermented
          ALCOHOL_SALES = :alcohol_sales
          BABY_PRODUCTS = :baby_products
          KIDS_TOYS = :kids_toys
          KIDS_EDUCATIONAL = :kids_educational
          BABY_CLOTHING_ACCESSORIES = :baby_clothing_accessories
          NURSERY_DECOR = :nursery_decor
          KIDS_OUTDOOR_PLAY = :kids_outdoor_play
          KIDS_BOOKS = :kids_books
          BABY_SAFETY_PRODUCTS = :baby_safety_products
          KIDS_ARTS_CRAFTS = :kids_arts_crafts
          CAMPING_HIKING = :camping_hiking
          FISHING_GEAR = :fishing_gear
          HUNTING_GEAR = :hunting_gear
          CYCLING_GEAR = :cycling_gear
          WATER_SPORTS_GEAR = :water_sports_gear
          GOLF_EQUIPMENT = :golf_equipment
          SNOW_SPORTS_GEAR = :snow_sports_gear
          CLIMBING_GEAR = :climbing_gear
          ARCHERY_EQUIPMENT = :archery_equipment
          SKATEBOARDING_GEAR = :skateboarding_gear
          PICKLEBALL_EQUIPMENT = :pickleball_equipment
          TENNIS_EQUIPMENT = :tennis_equipment
          EQUESTRIAN_GEAR = :equestrian_gear
          TACTICAL_GEAR = :tactical_gear
          OVERLANDING_GEAR = :overlanding_gear
          EXPLOSIVES_FIREWORKS = :explosives_fireworks
          FIREARMS_SALES = :firearms_sales
          SELF_DEFENSE_PRODUCTS = :self_defense_products
          WEAPON_COMPONENTS = :weapon_components
          CRAFT_KITS = :craft_kits
          SEWING_TEXTILES = :sewing_textiles
          STATIONERY = :stationery
          SCRAPBOOKING_SUPPLIES = :scrapbooking_supplies
          BEADING_JEWELRY_SUPPLIES = :beading_jewelry_supplies
          POTTERY_SUPPLIES = :pottery_supplies
          PRINTMAKING_SUPPLIES = :printmaking_supplies
          CAR_ACCESSORIES = :car_accessories
          DETAILING_PRODUCTS = :detailing_products
          MOTORCYCLE_GEAR = :motorcycle_gear
          TRUCK_ACCESSORIES = :truck_accessories
          OFF_ROAD_PARTS = :off_road_parts
          CAR_AUDIO_ELECTRONICS = :car_audio_electronics
          PERFORMANCE_PARTS = :performance_parts
          CAR_CARE_PRODUCTS = :car_care_products
          EV_CHARGING_ACCESSORIES = :ev_charging_accessories
          AUTO_REPAIR_SERVICE = :auto_repair_service
          AUTO_BODY_SHOP = :auto_body_shop
          CAR_DEALERSHIP = :car_dealership
          CAR_WASH = :car_wash
          TIRE_SHOP = :tire_shop
          OIL_CHANGE_SHOP = :oil_change_shop
          AUTO_PARTS_STORE = :auto_parts_store
          MOTORCYCLE_SHOP = :motorcycle_shop
          EV_CHARGING_STATION = :ev_charging_station
          TRANSMISSION_SHOP = :transmission_shop
          MUFFLER_EXHAUST_SHOP = :muffler_exhaust_shop
          AUTO_GLASS_SHOP = :auto_glass_shop
          AUTO_UPHOLSTERY_SHOP = :auto_upholstery_shop
          CAR_AUDIO_SHOP = :car_audio_shop
          SMOG_EMISSIONS_SHOP = :smog_emissions_shop
          TRUCK_REPAIR_SHOP = :truck_repair_shop
          RV_REPAIR_SHOP = :rv_repair_shop
          BOAT_REPAIR_SHOP = :boat_repair_shop
          USED_CAR_LOT = :used_car_lot
          AUTO_AUCTION = :auto_auction
          DOG_PRODUCTS = :dog_products
          CAT_PRODUCTS = :cat_products
          AQUARIUM_SUPPLIES = :aquarium_supplies
          BIRD_SUPPLIES = :bird_supplies
          REPTILE_SUPPLIES = :reptile_supplies
          HORSE_SUPPLIES = :horse_supplies
          PET_APPAREL = :pet_apparel
          PET_TECH = :pet_tech
          PET_GROOMING_PRODUCTS = :pet_grooming_products
          HAND_TOOLS = :hand_tools
          POWER_TOOLS_AND_ACCESSORIES = :power_tools_and_accessories
          HARDWARE_AND_FASTENERS = :hardware_and_fasteners
          WORKSHOP_EQUIPMENT_AND_STORAGE = :workshop_equipment_and_storage
          SAFETY_AND_WORK_GEAR = :safety_and_work_gear
          PAINTING_AND_BUILDING_SUPPLIES = :painting_and_building_supplies
          OFFICE_SUPPLIES = :office_supplies
          DESK_ACCESSORIES = :desk_accessories
          PRINTING_SUPPLIES = :printing_supplies
          SHIPPING_PACKAGING = :shipping_packaging
          REUSABLE_PRODUCTS = :reusable_products
          SOLAR_POWERED_PRODUCTS = :solar_powered_products
          CHRISTIAN_BOOKS_BIBLES = :christian_books_bibles
          CHRISTIAN_APPAREL = :christian_apparel
          CHRISTIAN_JEWELRY = :christian_jewelry
          CHRISTIAN_HOME_DECOR = :christian_home_decor
          JEWISH_JUDAICA = :jewish_judaica
          JEWISH_BOOKS_TORAH = :jewish_books_torah
          JEWISH_APPAREL = :jewish_apparel
          ISLAMIC_BOOKS_QURAN = :islamic_books_quran
          ISLAMIC_APPAREL = :islamic_apparel
          ISLAMIC_PRAYER_GOODS = :islamic_prayer_goods
          HINDU_PUJA_SUPPLIES = :hindu_puja_supplies
          HINDU_BOOKS_TEXTS = :hindu_books_texts
          BUDDHIST_MEDITATION_GOODS = :buddhist_meditation_goods
          BUDDHIST_BOOKS_TEXTS = :buddhist_books_texts
          SIKH_RELIGIOUS_GOODS = :sikh_religious_goods
          OTHER_RELIGIOUS_PRODUCTS = :other_religious_products
          HANDMADE_GOODS_MARKETPLACE = :handmade_goods_marketplace
          VINTAGE_RESALE_MARKETPLACE = :vintage_resale_marketplace
          ELECTRONICS_MARKETPLACE = :electronics_marketplace
          AUTO_PARTS_MARKETPLACE = :auto_parts_marketplace
          LUXURY_GOODS_MARKETPLACE = :luxury_goods_marketplace
          COLLECTIBLES_MARKETPLACE = :collectibles_marketplace
          WHOLESALE_MARKETPLACE = :wholesale_marketplace
          LOCAL_GOODS_MARKETPLACE = :local_goods_marketplace
          SNEAKER_MARKETPLACE = :sneaker_marketplace
          BOOK_MARKETPLACE = :book_marketplace
          FURNITURE_MARKETPLACE = :furniture_marketplace
          MUSICAL_INSTRUMENT_MARKETPLACE = :musical_instrument_marketplace
          ART_MARKETPLACE = :art_marketplace
          TICKET_MARKETPLACE = :ticket_marketplace
          INDUSTRIAL_EQUIPMENT_MARKETPLACE = :industrial_equipment_marketplace
          CRAFT_SUPPLY_MARKETPLACE = :craft_supply_marketplace
          BABY_KIDS_MARKETPLACE = :baby_kids_marketplace
          OUTDOOR_GEAR_MARKETPLACE = :outdoor_gear_marketplace
          PET_MARKETPLACE = :pet_marketplace
          SUSTAINABLE_GOODS_MARKETPLACE = :sustainable_goods_marketplace
          CULTURAL_ARTIFACTS_LOOTED = :cultural_artifacts_looted
          DROPSHIPPING_OPERATIONS = :dropshipping_operations
          ENDANGERED_ANIMAL_PRODUCTS = :endangered_animal_products
          HUMAN_BODY_PARTS_TISSUE = :human_body_parts_tissue
          NFT_MARKETPLACE = :nft_marketplace
          PENNY_AUCTION = :penny_auction
          PRIMARY_EVENT_TICKETING = :primary_event_ticketing
          FREELANCER_MARKETPLACE = :freelancer_marketplace
          HOME_SERVICES_MARKETPLACE = :home_services_marketplace
          TUTORING_MARKETPLACE = :tutoring_marketplace
          LEGAL_SERVICES_MARKETPLACE = :legal_services_marketplace
          HEALTHCARE_MARKETPLACE = :healthcare_marketplace
          WEDDING_SERVICES_MARKETPLACE = :wedding_services_marketplace
          CREATIVE_AND_CONTENT_CREATION_MARKETPLACE = :creative_and_content_creation_marketplace
          BEAUTY_SERVICES_MARKETPLACE = :beauty_services_marketplace
          FITNESS_TRAINER_MARKETPLACE = :fitness_trainer_marketplace
          PET_SERVICES_MARKETPLACE = :pet_services_marketplace
          CHILDCARE_MARKETPLACE = :childcare_marketplace
          ELDER_CARE_MARKETPLACE = :elder_care_marketplace
          TRANSLATION_MARKETPLACE = :translation_marketplace
          COACHING_MARKETPLACE = :coaching_marketplace
          THERAPY_MARKETPLACE = :therapy_marketplace
          PHOTOGRAPHY_MARKETPLACE = :photography_marketplace
          DJ_ENTERTAINMENT_MARKETPLACE = :dj_entertainment_marketplace
          AUTO_SERVICES_MARKETPLACE = :auto_services_marketplace
          FREELANCE_MARKETPLACE_OPERATOR = :freelance_marketplace_operator
          EQUIPMENT_RENTAL_MARKETPLACE = :equipment_rental_marketplace
          VEHICLE_RENTAL_MARKETPLACE = :vehicle_rental_marketplace
          SPACE_RENTAL_MARKETPLACE = :space_rental_marketplace
          VACATION_RENTAL_MARKETPLACE = :vacation_rental_marketplace
          CLOTHING_RENTAL_MARKETPLACE = :clothing_rental_marketplace
          CAMERA_GEAR_RENTAL = :camera_gear_rental
          RV_CAMPER_RENTAL = :rv_camper_rental
          BOAT_RENTAL_MARKETPLACE = :boat_rental_marketplace
          STORAGE_RENTAL_MARKETPLACE = :storage_rental_marketplace
          OFFICE_COWORKING_RENTAL = :office_coworking_rental
          PARKING_RENTAL_MARKETPLACE = :parking_rental_marketplace
          RESTAURANT_MARKETPLACE = :restaurant_marketplace
          GROCERY_MARKETPLACE = :grocery_marketplace
          CATERING_MARKETPLACE = :catering_marketplace
          HOMEMADE_FOOD_MARKETPLACE = :homemade_food_marketplace
          MEAL_PREP_MARKETPLACE = :meal_prep_marketplace
          BAKERY_MARKETPLACE = :bakery_marketplace
          FARM_PRODUCE_MARKETPLACE = :farm_produce_marketplace
          CHEF_BOOKING_MARKETPLACE = :chef_booking_marketplace
          COURSE_MARKETPLACE = :course_marketplace
          TEMPLATE_MARKETPLACE = :template_marketplace
          STOCK_MEDIA_MARKETPLACE = :stock_media_marketplace
          MUSIC_BEATS_MARKETPLACE = :music_beats_marketplace
          EBOOK_MARKETPLACE = :ebook_marketplace
          PLUGIN_THEME_MARKETPLACE = :plugin_theme_marketplace
          INDUSTRY_TYPE_3D_MODEL_MARKETPLACE = :"3d_model_marketplace"
          PROMPT_MARKETPLACE = :prompt_marketplace
          CODE_SNIPPET_MARKETPLACE = :code_snippet_marketplace
          AFFILIATE_MARKETING_PLATFORM = :affiliate_marketing_platform
          GAME_CHEATS_HACKS = :game_cheats_hacks
          WEAPON_BLUEPRINT_DISTRIBUTION = :weapon_blueprint_distribution
          SAAS_MARKETPLACE = :saas_marketplace
          AGENCY_MARKETPLACE = :agency_marketplace
          MANUFACTURING_MARKETPLACE = :manufacturing_marketplace
          LOGISTICS_MARKETPLACE = :logistics_marketplace
          COMMERCIAL_REAL_ESTATE_MARKETPLACE = :commercial_real_estate_marketplace
          BUSINESS_FOR_SALE_MARKETPLACE = :business_for_sale_marketplace
          FOOD_DELIVERY = :food_delivery
          GROCERY_DELIVERY = :grocery_delivery
          PACKAGE_DELIVERY = :package_delivery
          MOVING_LABOR = :moving_labor
          ALCOHOL_DELIVERY = :alcohol_delivery
          PHARMACY_DELIVERY = :pharmacy_delivery
          FLOWER_DELIVERY_GIG = :flower_delivery_gig
          FURNITURE_DELIVERY_GIG = :furniture_delivery_gig
          CATERING_DELIVERY = :catering_delivery
          RIDESHARE = :rideshare
          CHAUFFEUR_SERVICE = :chauffeur_service
          BIKE_SCOOTER_RENTAL = :bike_scooter_rental
          BOAT_CHARTER_GIG = :boat_charter_gig
          MOVING_TRUCK_RENTAL_GIG = :moving_truck_rental_gig
          ASSEMBLY_INSTALLATION = :assembly_installation
          WAITING_LINE_SERVICE = :waiting_line_service
          PERSONAL_SHOPPING = :personal_shopping
          GROCERY_SHOPPING_GIG = :grocery_shopping_gig
          GIFT_WRAPPING_GIG = :gift_wrapping_gig
          NOTARY_GIG = :notary_gig
          LAUNDRY_GIG = :laundry_gig
          CAR_WASH_GIG = :car_wash_gig
          CLEANING_GIG = :cleaning_gig
          LAWN_CARE_GIG = :lawn_care_gig
          HANDYMAN_GIG = :handyman_gig
          PET_CARE_GIG = :pet_care_gig
          CHILDCARE_GIG = :childcare_gig
          ELDER_CARE_GIG = :elder_care_gig
          PAINTING_GIG = :painting_gig
          SNOW_REMOVAL_GIG = :snow_removal_gig
          POOL_CLEANING_GIG = :pool_cleaning_gig
          ORGANIZING_GIG = :organizing_gig
          PRESSURE_WASHING_GIG = :pressure_washing_gig
          JUNK_REMOVAL_GIG = :junk_removal_gig
          CONSULTING_GIG = :consulting_gig
          ACCOUNTING_GIG = :accounting_gig
          LEGAL_GIG = :legal_gig
          HEALTHCARE_GIG = :healthcare_gig
          TEACHING_GIG = :teaching_gig
          TRANSLATION_GIG = :translation_gig
          DATA_ENTRY_GIG = :data_entry_gig
          RESEARCH_GIG = :research_gig
          VIRTUAL_ASSISTANT_GIG = :virtual_assistant_gig
          SALES_GIG = :sales_gig
          RECRUITING_GIG = :recruiting_gig
          MYSTERY_SHOPPING = :mystery_shopping
          FOCUS_GROUP_GIG = :focus_group_gig
          PRODUCT_TESTING_GIG = :product_testing_gig
          DRONE_PILOT_GIG = :drone_pilot_gig
          FITNESS_INSTRUCTION_GIG = :fitness_instruction_gig
          TOUR_GUIDE_GIG = :tour_guide_gig
          DATING_COMMUNITY = :dating_community
          PERSONAL_DEVELOPMENT_COMMUNITY = :personal_development_community
          SPIRITUALITY_COMMUNITY = :spirituality_community
          PARENTING_COMMUNITY = :parenting_community
          TRAVEL_COMMUNITY = :travel_community
          NETWORKING_COMMUNITY = :networking_community
          FAITH_COMMUNITY = :faith_community
          MENS_COMMUNITY = :mens_community
          WOMENS_COMMUNITY = :womens_community
          EXPAT_COMMUNITY = :expat_community
          ADULT_COMMUNITY_NSFW = :adult_community_nsfw
          HATE_VIOLENCE_COMMUNITIES = :hate_violence_communities
          PERSONAL_FUNDRAISING = :personal_fundraising
          POLITICAL_FUNDRAISING = :political_fundraising
          POLITICAL_ORGANIZATIONS = :political_organizations
          PORNOGRAPHIC_CONTENT = :pornographic_content
          REGISTERED_501C3 = :registered_501c3
          RELIGIOUS_ORGANIZATION = :religious_organization
          UNREGISTERED_CHARITIES = :unregistered_charities
          AI_OUTREACH_TOOL = :ai_outreach_tool
          AI_CHATBOT_SOFTWARE = :ai_chatbot_software
          AI_WRITING_TOOL = :ai_writing_tool
          AI_IMAGE_GENERATOR = :ai_image_generator
          AI_VIDEO_TOOL = :ai_video_tool
          AI_VOICE_TOOL = :ai_voice_tool
          AI_DATA_ANALYSIS = :ai_data_analysis
          AI_CODE_ASSISTANT = :ai_code_assistant
          AI_MEETING_ASSISTANT = :ai_meeting_assistant
          WORKFLOW_AUTOMATION_SOFTWARE = :workflow_automation_software
          AI_SALES_TOOL = :ai_sales_tool
          AI_CUSTOMER_SUPPORT = :ai_customer_support
          AI_RECRUITING_TOOL = :ai_recruiting_tool
          AI_TRANSLATION_TOOL = :ai_translation_tool
          AI_MUSIC_TOOL = :ai_music_tool
          AI_PRESENTATION_TOOL = :ai_presentation_tool
          AI_RESEARCH_TOOL = :ai_research_tool
          AI_SEO_TOOL = :ai_seo_tool
          AI_SOCIAL_MEDIA_TOOL = :ai_social_media_tool
          AI_PHONE_AGENT = :ai_phone_agent
          AI_LEGAL_TOOL = :ai_legal_tool
          AI_HEALTHCARE_TOOL = :ai_healthcare_tool
          LLM_API_PLATFORM = :llm_api_platform
          AI_AGENT_PLATFORM = :ai_agent_platform
          GENERATIVE_AI_PLATFORM = :generative_ai_platform
          CELEBRITY_IMPERSONATION = :celebrity_impersonation
          DEEPFAKE_SERVICE = :deepfake_service
          AI_NSFW_CONTENT_GENERATOR = :ai_nsfw_content_generator
          ECOMMERCE_PLATFORM = :ecommerce_platform
          PRODUCT_RESEARCH_TOOL = :product_research_tool
          PRICE_TRACKER = :price_tracker
          SHIPPING_SOFTWARE = :shipping_software
          PRINT_ON_DEMAND_SOFTWARE = :print_on_demand_software
          MARKETPLACE_SELLER_TOOL = :marketplace_seller_tool
          RESALE_ARBITRAGE_TOOL = :resale_arbitrage_tool
          RESELLER_MANAGEMENT_TOOL = :reseller_management_tool
          PRODUCT_REVIEW_SOFTWARE = :product_review_software
          RETURNS_MANAGEMENT = :returns_management
          PRODUCT_FEED_MANAGEMENT = :product_feed_management
          CHECKOUT_OPTIMIZATION = :checkout_optimization
          WHOLESALE_ORDERING = :wholesale_ordering
          PROJECT_MANAGEMENT_SOFTWARE = :project_management_software
          TEAM_COMMUNICATION = :team_communication
          VIDEO_CONFERENCING = :video_conferencing
          DOCUMENT_COLLABORATION = :document_collaboration
          TIME_TRACKING_SOFTWARE = :time_tracking_software
          SCHEDULING_SOFTWARE = :scheduling_software
          HR_SOFTWARE = :hr_software
          KNOWLEDGE_BASE_SOFTWARE = :knowledge_base_software
          FORM_SURVEY_BUILDER = :form_survey_builder
          NOTE_TAKING_APP = :note_taking_app
          TASK_MANAGEMENT = :task_management
          CONTRACT_MANAGEMENT = :contract_management
          EXPENSE_MANAGEMENT = :expense_management
          OKR_GOAL_TRACKING = :okr_goal_tracking
          EMPLOYEE_ENGAGEMENT = :employee_engagement
          ONBOARDING_SOFTWARE = :onboarding_software
          APPLICANT_TRACKING = :applicant_tracking
          ASSET_MANAGEMENT = :asset_management
          FACILITY_MANAGEMENT = :facility_management
          VISITOR_MANAGEMENT = :visitor_management
          COMMUNITY_PLATFORM = :community_platform
          EVENT_MANAGEMENT_SOFTWARE = :event_management_software
          WEBINAR_SOFTWARE = :webinar_software
          SCHOOL_MANAGEMENT = :school_management
          NEWSLETTER_PLATFORM = :newsletter_platform
          PODCAST_HOSTING = :podcast_hosting
          FORUM_SOFTWARE = :forum_software
          VIRTUAL_CLASSROOM = :virtual_classroom
          RESTAURANT_POS = :restaurant_pos
          SALON_SOFTWARE = :salon_software
          GYM_MANAGEMENT_SOFTWARE = :gym_management_software
          AUTO_SHOP_SOFTWARE = :auto_shop_software
          LEGAL_PRACTICE_SOFTWARE = :legal_practice_software
          CHURCH_MANAGEMENT = :church_management
          NONPROFIT_SOFTWARE = :nonprofit_software
          LOGISTICS_SOFTWARE = :logistics_software
          AGRICULTURE_SOFTWARE = :agriculture_software
          FIELD_SERVICE_SOFTWARE = :field_service_software
          MARINA_MANAGEMENT = :marina_management
          HOTEL_PMS = :hotel_pms
          CHILDCARE_MANAGEMENT = :childcare_management
          CLEANING_BUSINESS_SOFTWARE = :cleaning_business_software
          ROOFING_SOFTWARE = :roofing_software
          LANDSCAPING_SOFTWARE = :landscaping_software
          PEST_CONTROL_SOFTWARE = :pest_control_software
          TATTOO_STUDIO_SOFTWARE = :tattoo_studio_software
          CANNABIS_SOFTWARE = :cannabis_software
          PASSWORD_MANAGER = :password_manager
          CYBERSECURITY_SOFTWARE = :cybersecurity_software
          IDENTITY_VERIFICATION = :identity_verification
          BACKUP_RECOVERY = :backup_recovery
          ENDPOINT_PROTECTION = :endpoint_protection
          EMAIL_SECURITY = :email_security
          ACCESS_MANAGEMENT = :access_management
          COMPLIANCE_SOFTWARE = :compliance_software
          DATA_PRIVACY_TOOL = :data_privacy_tool
          VPN_SERVICES = :vpn_services
          PEOPLE_SEARCH_TOOL = :people_search_tool
          GAME_MOD_TOOL = :game_mod_tool
          STREAMING_TOOL = :streaming_tool
          GAME_SERVER_HOSTING = :game_server_hosting
          MUSIC_SOFTWARE = :music_software
          VIDEO_EDITING_SOFTWARE = :video_editing_software
          PHOTO_EDITING_SOFTWARE = :photo_editing_software
          ANIMATION_SOFTWARE = :animation_software
          AUDIO_EDITING_SOFTWARE = :audio_editing_software
          SCREEN_RECORDING_SOFTWARE = :screen_recording_software
          SPORTS_BETTING_TOOL = :sports_betting_tool
          FANTASY_SPORTS_PAID_ENTRY = :fantasy_sports_paid_entry
          IPTV_PIRATED_STREAMING = :iptv_pirated_streaming
          LOOT_BOXES_GACHA = :loot_boxes_gacha
          SKILL_CONTESTS_FREE_ENTRY = :skill_contests_free_entry
          SKILL_CONTESTS_PAID_ENTRY = :skill_contests_paid_entry
          ONLY_FANS_MANAGEMENT_SOFTWARE = :only_fans_management_software
          PORNOGRAPHY_PLATFORM = :pornography_platform
          BUSINESS_PHONE_SYSTEM = :business_phone_system
          CUSTOMER_MESSAGING = :customer_messaging
          DIGITAL_KEY_RESELLING = :digital_key_reselling
          STREAMING_ACCOUNT_RESELLING = :streaming_account_reselling
          SUBSCRIPTION_ACCOUNT_SHARING = :subscription_account_sharing
          ACCOUNT_GENERATION_TOOL = :account_generation_tool
          PRIMARY_CARE_TELEHEALTH = :primary_care_telehealth
          URGENT_CARE_TELEHEALTH = :urgent_care_telehealth
          PEDIATRIC_TELEHEALTH = :pediatric_telehealth
          GERIATRIC_TELEHEALTH = :geriatric_telehealth
          FAMILY_MEDICINE_TELEHEALTH = :family_medicine_telehealth
          INTERNAL_MEDICINE_TELEHEALTH = :internal_medicine_telehealth
          PREVENTIVE_CARE_TELEHEALTH = :preventive_care_telehealth
          LICENSED_ONLINE_PHARMACY = :licensed_online_pharmacy
          TELEMEDICINE_PRACTITIONER_SERVICES = :telemedicine_practitioner_services
          DERMATOLOGY_TELEHEALTH = :dermatology_telehealth
          ACNE_TELEHEALTH = :acne_telehealth
          PSORIASIS_ECZEMA_TELEHEALTH = :psoriasis_eczema_telehealth
          SKIN_CANCER_SCREENING_TELE = :skin_cancer_screening_tele
          COSMETIC_DERMATOLOGY_TELE = :cosmetic_dermatology_tele
          THERAPY_TELEHEALTH = :therapy_telehealth
          PSYCHIATRY_TELEHEALTH = :psychiatry_telehealth
          ADDICTION_TELEHEALTH = :addiction_telehealth
          COUPLES_THERAPY_TELEHEALTH = :couples_therapy_telehealth
          CHILD_PSYCHOLOGY_TELEHEALTH = :child_psychology_telehealth
          EATING_DISORDER_TELEHEALTH = :eating_disorder_telehealth
          PTSD_TRAUMA_TELEHEALTH = :ptsd_trauma_telehealth
          ADHD_TELEHEALTH = :adhd_telehealth
          ANXIETY_DEPRESSION_TELEHEALTH = :anxiety_depression_telehealth
          OCD_TELEHEALTH = :ocd_telehealth
          GRIEF_COUNSELING_TELEHEALTH = :grief_counseling_telehealth
          ANGER_MANAGEMENT_TELEHEALTH = :anger_management_telehealth
          FAMILY_THERAPY_TELEHEALTH = :family_therapy_telehealth
          GROUP_THERAPY_TELEHEALTH = :group_therapy_telehealth
          LICENSED_PSYCHEDELIC_THERAPY = :licensed_psychedelic_therapy
          WOMENS_HEALTH_TELEHEALTH = :womens_health_telehealth
          MENS_HEALTH_TELEHEALTH = :mens_health_telehealth
          SEXUAL_HEALTH_TELEHEALTH = :sexual_health_telehealth
          FERTILITY_TELEHEALTH = :fertility_telehealth
          HORMONE_THERAPY_TELEHEALTH = :hormone_therapy_telehealth
          MENOPAUSE_TELEHEALTH = :menopause_telehealth
          PRENATAL_TELEHEALTH = :prenatal_telehealth
          POSTPARTUM_TELEHEALTH = :postpartum_telehealth
          ERECTILE_DYSFUNCTION_TELE = :erectile_dysfunction_tele
          HAIR_LOSS_TELEHEALTH = :hair_loss_telehealth
          BIRTH_CONTROL_TELEHEALTH = :birth_control_telehealth
          STI_TESTING_TELEHEALTH = :sti_testing_telehealth
          DENTAL_TELEHEALTH = :dental_telehealth
          ORTHODONTICS_TELEHEALTH = :orthodontics_telehealth
          OPTOMETRY_TELEHEALTH = :optometry_telehealth
          ORAL_SURGERY_CONSULTATION = :oral_surgery_consultation
          VISION_THERAPY_TELEHEALTH = :vision_therapy_telehealth
          CARDIOLOGY_TELEHEALTH = :cardiology_telehealth
          ENDOCRINOLOGY_TELEHEALTH = :endocrinology_telehealth
          NEUROLOGY_TELEHEALTH = :neurology_telehealth
          ORTHOPEDIC_TELEHEALTH = :orthopedic_telehealth
          ALLERGY_TELEHEALTH = :allergy_telehealth
          ENT_TELEHEALTH = :ent_telehealth
          RHEUMATOLOGY_TELEHEALTH = :rheumatology_telehealth
          GASTROENTEROLOGY_TELEHEALTH = :gastroenterology_telehealth
          INFECTIOUS_DISEASE_TELEHEALTH = :infectious_disease_telehealth
          PULMONOLOGY_TELEHEALTH = :pulmonology_telehealth
          NEPHROLOGY_TELEHEALTH = :nephrology_telehealth
          ONCOLOGY_TELEHEALTH = :oncology_telehealth
          HEMATOLOGY_TELEHEALTH = :hematology_telehealth
          UROLOGY_TELEHEALTH = :urology_telehealth
          WEIGHT_MANAGEMENT_TELEHEALTH = :weight_management_telehealth
          GLP1_WEIGHT_LOSS_TELE = :glp1_weight_loss_tele
          DIABETES_MANAGEMENT_TELE = :diabetes_management_tele
          METABOLIC_HEALTH_TELE = :metabolic_health_tele
          BARIATRIC_TELEHEALTH = :bariatric_telehealth
          PHYSICAL_THERAPY_TELEHEALTH = :physical_therapy_telehealth
          OCCUPATIONAL_THERAPY_TELE = :occupational_therapy_tele
          SPEECH_THERAPY_TELEHEALTH = :speech_therapy_telehealth
          PAIN_MANAGEMENT_TELEHEALTH = :pain_management_telehealth
          CARDIAC_REHAB_TELEHEALTH = :cardiac_rehab_telehealth
          PELVIC_FLOOR_TELEHEALTH = :pelvic_floor_telehealth
          VESTIBULAR_TELEHEALTH = :vestibular_telehealth
          SLEEP_MEDICINE_TELEHEALTH = :sleep_medicine_telehealth
          CHRONIC_DISEASE_MANAGEMENT = :chronic_disease_management
          CHRONIC_PAIN_TELEHEALTH = :chronic_pain_telehealth
          MIGRAINE_TELEHEALTH = :migraine_telehealth
          ASTHMA_COPD_TELEHEALTH = :asthma_copd_telehealth
          NUTRITION_TELEHEALTH = :nutrition_telehealth
          NATUROPATHIC_TELEHEALTH = :naturopathic_telehealth
          FUNCTIONAL_MEDICINE_TELEHEALTH = :functional_medicine_telehealth
          ACUPUNCTURE_TELEHEALTH = :acupuncture_telehealth
          HEALTH_COACHING_TELEHEALTH = :health_coaching_telehealth
          INTEGRATIVE_MEDICINE_TELE = :integrative_medicine_tele
          AYURVEDIC_TELEHEALTH = :ayurvedic_telehealth
          GENETIC_COUNSELING_TELEHEALTH = :genetic_counseling_telehealth
          PHARMACOGENOMICS_TELE = :pharmacogenomics_tele
          RARE_DISEASE_TELEHEALTH = :rare_disease_telehealth
          SECOND_OPINION_TELEHEALTH = :second_opinion_telehealth
          VET_TELEHEALTH = :vet_telehealth
          PET_BEHAVIOR_TELEHEALTH = :pet_behavior_telehealth
          EXOTIC_PET_TELEHEALTH = :exotic_pet_telehealth
          EQUINE_TELEHEALTH = :equine_telehealth
          VETERINARY_SERVICES = :veterinary_services
          CLASS_ACTION_SETTLEMENT = :class_action_settlement
          MASTERMIND_EVENT = :mastermind_event
          WEBINAR_EVENT = :webinar_event
          VIRTUAL_SUMMIT = :virtual_summit
          BOOTCAMP_EVENT = :bootcamp_event
          WORKSHOP_SEMINAR = :workshop_seminar
          HACKATHON = :hackathon
          CORPORATE_TRAINING_EVENT = :corporate_training_event
          TRAINING_CERTIFICATION_EVENT = :training_certification_event
          CONVENTION_EXPO = :convention_expo
          CONFERENCE_SUMMIT = :conference_summit
          INDUSTRY_AWARDS_EVENT = :industry_awards_event
          PRODUCT_LAUNCH_EVENT = :product_launch_event
          INVESTOR_DEMO_DAY = :investor_demo_day
          PANEL_DISCUSSION_EVENT = :panel_discussion_event
          PITCH_COMPETITION = :pitch_competition
          MEETUP_EVENT = :meetup_event
          DINNER_EVENT = :dinner_event
          ALUMNI_EVENT = :alumni_event
          COMMUNITY_GATHERING = :community_gathering
          SINGLES_EVENT = :singles_event
          PROFESSIONAL_HAPPY_HOUR = :professional_happy_hour
          WOMEN_NETWORKING_EVENT = :women_networking_event
          FOUNDERS_DINNER = :founders_dinner
          INDUSTRY_MIXER = :industry_mixer
          CONCERT_EVENT = :concert_event
          COMEDY_SHOW = :comedy_show
          THEATER_PERFORMANCE = :theater_performance
          FILM_SCREENING = :film_screening
          MUSIC_FESTIVAL = :music_festival
          CULTURAL_FESTIVAL = :cultural_festival
          FASHION_SHOW = :fashion_show
          DRAG_SHOW = :drag_show
          MAGIC_SHOW = :magic_show
          DANCE_PERFORMANCE = :dance_performance
          POETRY_SPOKEN_WORD = :poetry_spoken_word
          ART_EXHIBITION = :art_exhibition
          PARTY_EVENT = :party_event
          TRIVIA_NIGHT = :trivia_night
          WINE_TASTING_EVENT = :wine_tasting_event
          BEER_FESTIVAL = :beer_festival
          CAR_SHOW = :car_show
          FOOD_FESTIVAL = :food_festival
          FITNESS_CHALLENGE_EVENT = :fitness_challenge_event
          MARATHON_RACE = :marathon_race
          TOURNAMENT_EVENT = :tournament_event
          FIGHT_EVENT = :fight_event
          YOGA_RETREAT_EVENT = :yoga_retreat_event
          OUTDOOR_ADVENTURE_EVENT = :outdoor_adventure_event
          ESPORTS_TOURNAMENT = :esports_tournament
          OBSTACLE_COURSE_RACE = :obstacle_course_race
          CYCLING_EVENT = :cycling_event
          SWIM_MEET = :swim_meet
          GOLF_TOURNAMENT = :golf_tournament
          PICKLEBALL_TOURNAMENT = :pickleball_tournament
          CROSSFIT_COMPETITION = :crossfit_competition
          MARTIAL_ARTS_TOURNAMENT = :martial_arts_tournament
          SURFING_COMPETITION = :surfing_competition
          WELLNESS_RETREAT = :wellness_retreat
          SPIRITUAL_RETREAT = :spiritual_retreat
          COUPLES_RETREAT = :couples_retreat
          PLANT_MEDICINE_RETREAT = :plant_medicine_retreat
          LUXURY_EXPERIENCE_EVENT = :luxury_experience_event
          DETOX_RETREAT = :detox_retreat
          SILENT_RETREAT = :silent_retreat
          CREATIVE_RETREAT = :creative_retreat
          LEADERSHIP_RETREAT = :leadership_retreat
          MENS_RETREAT = :mens_retreat
          WOMENS_RETREAT = :womens_retreat
          DIGITAL_DETOX_RETREAT = :digital_detox_retreat
          FUNDRAISER_EVENT = :fundraiser_event
          AWARENESS_EVENT = :awareness_event
          VOLUNTEER_EVENT = :volunteer_event
          CHARITY_AUCTION = :charity_auction
          BENEFIT_CONCERT = :benefit_concert
          CHARITY_RUN_WALK = :charity_run_walk
          ENVIRONMENTAL_CLEANUP = :environmental_cleanup
          FAMILY_FESTIVAL = :family_festival
          KIDS_EVENT = :kids_event
          HOLIDAY_EVENT = :holiday_event
          FARMERS_MARKET_EVENT = :farmers_market_event
          BLOCK_PARTY = :block_party
          GRADUATION_CEREMONY = :graduation_ceremony
          MEMORIAL_EVENT = :memorial_event
          STOCK_MARKET_NEWSLETTER = :stock_market_newsletter
          CRYPTO_NEWSLETTER = :crypto_newsletter
          PERSONAL_FINANCE_NEWSLETTER = :personal_finance_newsletter
          REAL_ESTATE_NEWSLETTER = :real_estate_newsletter
          FINTECH_NEWSLETTER = :fintech_newsletter
          VENTURE_CAPITAL_NEWSLETTER = :venture_capital_newsletter
          OPTIONS_TRADING_NEWSLETTER = :options_trading_newsletter
          FOREX_NEWSLETTER = :forex_newsletter
          MACRO_ECONOMICS_NEWSLETTER = :macro_economics_newsletter
          ALTERNATIVE_INVESTING_NEWSLETTER = :alternative_investing_newsletter
          TAX_STRATEGY_NEWSLETTER = :tax_strategy_newsletter
          AI_NEWSLETTER = :ai_newsletter
          TECH_INDUSTRY_NEWSLETTER = :tech_industry_newsletter
          CYBERSECURITY_NEWSLETTER = :cybersecurity_newsletter
          DEVELOPER_NEWSLETTER = :developer_newsletter
          PRODUCT_NEWSLETTER = :product_newsletter
          DEVOPS_NEWSLETTER = :devops_newsletter
          OPEN_SOURCE_NEWSLETTER = :open_source_newsletter
          ROBOTICS_NEWSLETTER = :robotics_newsletter
          CLIMATE_TECH_NEWSLETTER = :climate_tech_newsletter
          TRAVEL_NEWSLETTER = :travel_newsletter
          FASHION_NEWSLETTER = :fashion_newsletter
          PARENTING_NEWSLETTER = :parenting_newsletter
          SPORTS_NEWSLETTER = :sports_newsletter
          GAMING_NEWSLETTER = :gaming_newsletter
          MUSIC_ENTERTAINMENT_NEWSLETTER = :music_entertainment_newsletter
          BOOK_READING_NEWSLETTER = :book_reading_newsletter
          DATING_RELATIONSHIPS_NEWSLETTER = :dating_relationships_newsletter
          HOME_DESIGN_NEWSLETTER = :home_design_newsletter
          PET_NEWSLETTER = :pet_newsletter
          WINE_SPIRITS_NEWSLETTER = :wine_spirits_newsletter
          AUTOMOTIVE_NEWSLETTER = :automotive_newsletter
          POLITICAL_NEWSLETTER = :political_newsletter
          GEOPOLITICS_NEWSLETTER = :geopolitics_newsletter
          MEDIA_JOURNALISM_NEWSLETTER = :media_journalism_newsletter
          DEFENSE_SECURITY_NEWSLETTER = :defense_security_newsletter
          LEGAL_POLICY_NEWSLETTER = :legal_policy_newsletter
          DESIGN_NEWSLETTER = :design_newsletter
          EDUCATION_NEWSLETTER = :education_newsletter
          SCIENCE_NEWSLETTER = :science_newsletter
          PHILOSOPHY_NEWSLETTER = :philosophy_newsletter
          SUSTAINABILITY_NEWSLETTER = :sustainability_newsletter
          ARCHITECTURE_NEWSLETTER = :architecture_newsletter
          HISTORY_NEWSLETTER = :history_newsletter
          PSYCHOLOGY_NEWSLETTER = :psychology_newsletter
          CAREER_NEWSLETTER = :career_newsletter
          SPIRITUALITY_NEWSLETTER = :spirituality_newsletter
          SELF_IMPROVEMENT_NEWSLETTER = :self_improvement_newsletter
          PRODUCTIVITY_NEWSLETTER = :productivity_newsletter
          FAITH_NEWSLETTER = :faith_newsletter
          GYM_FACILITY = :gym_facility
          CROSSFIT_BOX = :crossfit_box
          YOGA_STUDIO = :yoga_studio
          PILATES_STUDIO = :pilates_studio
          MARTIAL_ARTS_GYM = :martial_arts_gym
          BOXING_GYM = :boxing_gym
          CLIMBING_GYM = :climbing_gym
          DANCE_STUDIO = :dance_studio
          SWIMMING_POOL = :swimming_pool
          SPORTS_FACILITY = :sports_facility
          GOLF_COURSE = :golf_course
          BOWLING_ALLEY = :bowling_alley
          SKATING_RINK = :skating_rink
          TRAMPOLINE_PARK = :trampoline_park
          TENNIS_CLUB = :tennis_club
          PICKLEBALL_FACILITY = :pickleball_facility
          GYMNASTICS_CENTER = :gymnastics_center
          SPIN_STUDIO = :spin_studio
          BARRE_STUDIO = :barre_studio
          PERSONAL_TRAINING_STUDIO_BM = :personal_training_studio_bm
          RECOVERY_STUDIO = :recovery_studio
          INDOOR_SOCCER = :indoor_soccer
          BATTING_CAGE = :batting_cage
          SHOOTING_RANGE = :shooting_range
          ARCHERY_RANGE = :archery_range
          EQUESTRIAN_CENTER = :equestrian_center
          FINE_DINING = :fine_dining
          FAST_CASUAL_RESTAURANT = :fast_casual_restaurant
          STEAKHOUSE = :steakhouse
          SEAFOOD_RESTAURANT = :seafood_restaurant
          PIZZA_SHOP = :pizza_shop
          SUSHI_RESTAURANT = :sushi_restaurant
          DELI_SANDWICH_SHOP = :deli_sandwich_shop
          BBQ_RESTAURANT = :bbq_restaurant
          MEXICAN_RESTAURANT = :mexican_restaurant
          ITALIAN_RESTAURANT = :italian_restaurant
          CHINESE_RESTAURANT = :chinese_restaurant
          INDIAN_RESTAURANT = :indian_restaurant
          THAI_RESTAURANT = :thai_restaurant
          KOREAN_RESTAURANT = :korean_restaurant
          MEDITERRANEAN_RESTAURANT = :mediterranean_restaurant
          VEGAN_VEGETARIAN_RESTAURANT = :vegan_vegetarian_restaurant
          BRUNCH_RESTAURANT = :brunch_restaurant
          RAMEN_NOODLE_SHOP = :ramen_noodle_shop
          POKE_BOWL_SHOP = :poke_bowl_shop
          ETHNIC_RESTAURANT = :ethnic_restaurant
          COFFEE_SHOP_CAFE = :coffee_shop_cafe
          BAKERY = :bakery
          JUICE_SMOOTHIE_BAR = :juice_smoothie_bar
          ICE_CREAM_SHOP = :ice_cream_shop
          DONUT_SHOP = :donut_shop
          BUBBLE_TEA_SHOP = :bubble_tea_shop
          FOOD_TRUCK = :food_truck
          FAST_FOOD = :fast_food
          GHOST_KITCHEN = :ghost_kitchen
          FOOD_HALL_VENDOR = :food_hall_vendor
          CATERING_KITCHEN = :catering_kitchen
          BUTCHER_SHOP = :butcher_shop
          CHEESE_SHOP = :cheese_shop
          FARMERS_MARKET_STALL = :farmers_market_stall
          BAR_LOUNGE = :bar_lounge
          BREWERY_TAPROOM = :brewery_taproom
          WINERY_TASTING = :winery_tasting
          WINE_BAR = :wine_bar
          COCKTAIL_BAR = :cocktail_bar
          SPORTS_BAR = :sports_bar
          HOOKAH_LOUNGE = :hookah_lounge
          DISTILLERY = :distillery
          COMMERCIAL_FARMING = :commercial_farming
          LIVESTOCK_RANCHING = :livestock_ranching
          HYDROPONIC_VERTICAL_FARMING = :hydroponic_vertical_farming
          FORESTRY_LOGGING = :forestry_logging
          AQUACULTURE_FISHERIES = :aquaculture_fisheries
          VINEYARD_WINERY_PRODUCTION = :vineyard_winery_production
          CANNABIS_CULTIVATION = :cannabis_cultivation
          HEMP_FARMING = :hemp_farming
          GRAIN_PRODUCTION = :grain_production
          AGRICULTURAL_COOPERATIVE = :agricultural_cooperative
          FERTILIZER_PESTICIDE_SALES = :fertilizer_pesticide_sales
          FARM_EQUIPMENT_SALES = :farm_equipment_sales
          BOUTIQUE_STORE = :boutique_store
          CLOTHING_STORE = :clothing_store
          SHOE_STORE = :shoe_store
          JEWELRY_STORE = :jewelry_store
          ELECTRONICS_STORE = :electronics_store
          BOOKSTORE = :bookstore
          PET_STORE = :pet_store
          TOY_STORE = :toy_store
          SPORTING_GOODS_STORE = :sporting_goods_store
          THRIFT_STORE = :thrift_store
          SMOKE_SHOP = :smoke_shop
          CANNABIS_DISPENSARY = :cannabis_dispensary
          CONVENIENCE_STORE = :convenience_store
          GROCERY_STORE = :grocery_store
          LIQUOR_STORE = :liquor_store
          FLORIST = :florist
          GIFT_SHOP = :gift_shop
          FURNITURE_STORE = :furniture_store
          HOME_IMPROVEMENT_STORE = :home_improvement_store
          ART_GALLERY_RETAIL = :art_gallery_retail
          MUSIC_INSTRUMENT_STORE = :music_instrument_store
          OUTDOOR_RECREATION_STORE = :outdoor_recreation_store
          PHONE_REPAIR_STORE = :phone_repair_store
          WATCH_STORE = :watch_store
          BRIDAL_SHOP = :bridal_shop
          MATERNITY_STORE = :maternity_store
          KIDS_STORE = :kids_store
          SNEAKER_STORE = :sneaker_store
          VINTAGE_STORE = :vintage_store
          COMIC_BOOK_STORE = :comic_book_store
          RECORD_STORE = :record_store
          CRAFT_SUPPLY_STORE = :craft_supply_store
          FABRIC_STORE = :fabric_store
          HEALTH_FOOD_STORE = :health_food_store
          VITAMIN_SUPPLEMENT_STORE = :vitamin_supplement_store
          OPTICAL_STORE = :optical_store
          MATTRESS_STORE = :mattress_store
          APPLIANCE_STORE = :appliance_store
          KITCHEN_BATH_STORE = :kitchen_bath_store
          TILE_FLOORING_STORE = :tile_flooring_store
          PAINT_STORE = :paint_store
          GARDEN_CENTER = :garden_center
          GUN_STORE = :gun_store
          PAWN_SHOP = :pawn_shop
          DOLLAR_STORE = :dollar_store
          HAIR_SALON = :hair_salon
          NAIL_SALON = :nail_salon
          DAY_SPA = :day_spa
          MED_SPA = :med_spa
          MASSAGE_STUDIO = :massage_studio
          TATTOO_PARLOR = :tattoo_parlor
          TANNING_SALON = :tanning_salon
          BEAUTY_SUPPLY_STORE = :beauty_supply_store
          LASH_BROW_STUDIO = :lash_brow_studio
          WAXING_STUDIO = :waxing_studio
          SAUNA_BATHHOUSE = :sauna_bathhouse
          CRYOTHERAPY_STUDIO = :cryotherapy_studio
          FLOAT_SENSORY_STUDIO = :float_sensory_studio
          IV_THERAPY_LOUNGE = :iv_therapy_lounge
          TEETH_WHITENING_STUDIO = :teeth_whitening_studio
          MICROBLADING_STUDIO = :microblading_studio
          SPRAY_TAN_STUDIO = :spray_tan_studio
          BLOWOUT_BAR = :blowout_bar
          MENS_BARBERSHOP = :mens_barbershop
          KIDS_SALON = :kids_salon
          MEDICAL_OFFICE = :medical_office
          DENTAL_OFFICE = :dental_office
          CHIROPRACTIC_OFFICE = :chiropractic_office
          PHYSICAL_THERAPY_CLINIC = :physical_therapy_clinic
          OPTOMETRY_OFFICE = :optometry_office
          DERMATOLOGY_CLINIC = :dermatology_clinic
          URGENT_CARE_CLINIC = :urgent_care_clinic
          PHARMACY = :pharmacy
          VETERINARY_CLINIC = :veterinary_clinic
          MENTAL_HEALTH_CLINIC = :mental_health_clinic
          FERTILITY_CLINIC = :fertility_clinic
          ACUPUNCTURE_CLINIC = :acupuncture_clinic
          HEARING_AID_CENTER = :hearing_aid_center
          ORTHOPEDIC_CLINIC = :orthopedic_clinic
          PEDIATRIC_CLINIC = :pediatric_clinic
          COSMETIC_SURGERY_CENTER = :cosmetic_surgery_center
          ALLERGY_CLINIC = :allergy_clinic
          PAIN_MANAGEMENT_CLINIC = :pain_management_clinic
          DIALYSIS_CENTER = :dialysis_center
          IMAGING_CENTER = :imaging_center
          LAB_TESTING_CENTER = :lab_testing_center
          SLEEP_CLINIC = :sleep_clinic
          WEIGHT_LOSS_CLINIC = :weight_loss_clinic
          HORMONE_THERAPY_CLINIC = :hormone_therapy_clinic
          ADDICTION_TREATMENT_CENTER = :addiction_treatment_center
          REHABILITATION_CENTER = :rehabilitation_center
          OCCUPATIONAL_THERAPY_CLINIC = :occupational_therapy_clinic
          SPEECH_THERAPY_CLINIC = :speech_therapy_clinic
          WOUND_CARE_CENTER = :wound_care_center
          FUNERAL_HOME_MORTUARY = :funeral_home_mortuary
          CREMATORY_SERVICE = :crematory_service
          CEMETERY_MEMORIAL_PARK = :cemetery_memorial_park
          CASKET_URN_RETAILER = :casket_urn_retailer
          PET_CREMATION_SERVICE = :pet_cremation_service
          BIOHAZARD_CLEANUP = :biohazard_cleanup
          ESTATE_LIQUIDATION = :estate_liquidation
          HOTEL = :hotel
          MOTEL = :motel
          BOUTIQUE_HOTEL = :boutique_hotel
          BED_AND_BREAKFAST = :bed_and_breakfast
          HOSTEL = :hostel
          RESORT = :resort
          CAMPGROUND_RV = :campground_rv
          VACATION_RENTAL_PROPERTY = :vacation_rental_property
          EXTENDED_STAY = :extended_stay
          GLAMPING_SITE = :glamping_site
          CABIN_RENTAL = :cabin_rental
          ECO_LODGE = :eco_lodge
          RETREAT_CENTER = :retreat_center
          TUTORING_CENTER = :tutoring_center
          DAYCARE_CENTER = :daycare_center
          PRESCHOOL = :preschool
          LEARNING_CENTER = :learning_center
          MUSIC_SCHOOL = :music_school
          ART_SCHOOL = :art_school
          DRIVING_SCHOOL = :driving_school
          LANGUAGE_SCHOOL = :language_school
          TRADE_SCHOOL = :trade_school
          CODING_BOOTCAMP_LOCATION = :coding_bootcamp_location
          MONTESSORI_SCHOOL = :montessori_school
          AFTER_SCHOOL_PROGRAM = :after_school_program
          SWIM_SCHOOL = :swim_school
          COOKING_SCHOOL = :cooking_school
          TEST_PREP_CENTER = :test_prep_center
          SPECIAL_NEEDS_CENTER = :special_needs_center
          ADULT_EDUCATION_CENTER = :adult_education_center
          FLIGHT_SCHOOL = :flight_school
          COSMETOLOGY_SCHOOL = :cosmetology_school
          MOVIE_THEATER = :movie_theater
          ESCAPE_ROOM = :escape_room
          ARCADE = :arcade
          MINI_GOLF = :mini_golf
          LASER_TAG = :laser_tag
          GO_KART = :go_kart
          AMUSEMENT_PARK = :amusement_park
          MUSEUM = :museum
          ZOO_AQUARIUM = :zoo_aquarium
          THEATER_VENUE = :theater_venue
          NIGHTCLUB = :nightclub
          KARAOKE_BAR = :karaoke_bar
          COMEDY_CLUB = :comedy_club
          LIVE_MUSIC_VENUE = :live_music_venue
          AXE_THROWING = :axe_throwing
          VIRTUAL_REALITY_ARCADE = :virtual_reality_arcade
          BOARD_GAME_CAFE = :board_game_cafe
          CAT_CAFE = :cat_cafe
          HAUNTED_HOUSE = :haunted_house
          WATER_PARK = :water_park
          INDOOR_PLAYGROUND = :indoor_playground
          CONCERT_VENUE = :concert_venue
          DRIVE_IN_THEATER = :drive_in_theater
          BILLIARDS_HALL = :billiards_hall
          DART_BAR = :dart_bar
          INDOOR_SKYDIVING = :indoor_skydiving
          LAW_OFFICE = :law_office
          REAL_ESTATE_OFFICE = :real_estate_office
          INSURANCE_OFFICE = :insurance_office
          ACCOUNTING_OFFICE = :accounting_office
          BANK_CREDIT_UNION = :bank_credit_union
          PRINTING_SHOP = :printing_shop
          SHIPPING_CENTER = :shipping_center
          DRY_CLEANER = :dry_cleaner
          LAUNDROMAT = :laundromat
          STORAGE_FACILITY = :storage_facility
          COWORKING_SPACE = :coworking_space
          CHECK_CASHING = :check_cashing
          TITLE_COMPANY = :title_company
          TRAVEL_AGENCY_STOREFRONT = :travel_agency_storefront
          STAFFING_OFFICE = :staffing_office
          FINANCIAL_ADVISOR_OFFICE = :financial_advisor_office
          IMMIGRATION_OFFICE = :immigration_office
          BAIL_BONDS_OFFICE = :bail_bonds_office
          PET_GROOMING = :pet_grooming
          DOG_DAYCARE = :dog_daycare
          PET_BOARDING = :pet_boarding
          DOG_TRAINING_FACILITY = :dog_training_facility
          PET_SPA = :pet_spa
          AQUATIC_PET_STORE = :aquatic_pet_store
          PET_BAKERY = :pet_bakery
          PET_PHOTOGRAPHY_STUDIO = :pet_photography_studio
          PLUMBING_SHOWROOM = :plumbing_showroom
          HVAC_SHOWROOM = :hvac_showroom
          SOLAR_SHOWROOM = :solar_showroom
          KITCHEN_DESIGN_SHOWROOM = :kitchen_design_showroom
          BATH_DESIGN_SHOWROOM = :bath_design_showroom
          WINDOW_DOOR_SHOWROOM = :window_door_showroom
          POOL_SPA_SHOWROOM = :pool_spa_showroom
          FIREPLACE_SHOWROOM = :fireplace_showroom
          COUNTERTOP_SHOWROOM = :countertop_showroom
          NONPROFIT_ORGANIZATION = :nonprofit_organization
          CHARITY_FOUNDATION = :charity_foundation
          POLITICAL_CAMPAIGN = :political_campaign
          COMMUNITY_ORGANIZATION = :community_organization
          ENVIRONMENTAL_NONPROFIT = :environmental_nonprofit
          EDUCATION_NONPROFIT = :education_nonprofit
          HEALTH_NONPROFIT = :health_nonprofit
          ANIMAL_WELFARE_NONPROFIT = :animal_welfare_nonprofit
          ARTS_CULTURE_NONPROFIT = :arts_culture_nonprofit
          SOCIAL_JUSTICE_NONPROFIT = :social_justice_nonprofit
          VETERANS_NONPROFIT = :veterans_nonprofit
          YOUTH_NONPROFIT = :youth_nonprofit
          DISASTER_RELIEF_NONPROFIT = :disaster_relief_nonprofit
          FOOD_BANK = :food_bank
          HOUSING_NONPROFIT = :housing_nonprofit
          GOVERNMENT_AGENCY = :government_agency
          PUBLIC_UTILITY = :public_utility
          PUBLIC_LIBRARY = :public_library
          PUBLIC_SCHOOL = :public_school
          MUNICIPAL_SERVICE = :municipal_service
          MILITARY_INSTALLATION = :military_installation
          EMBASSY_CONSULATE = :embassy_consulate
          NICHE_SERVICE = :niche_service
          NICHE_PRODUCT = :niche_product
          HYBRID_BUSINESS = :hybrid_business
          OTHER_GENERAL = :other_general
          HOLDING_COMPANY = :holding_company
          FAMILY_OFFICE = :family_office
          COOPERATIVE = :cooperative
          SOCIAL_ENTERPRISE = :social_enterprise
          INCUBATOR_ACCELERATOR = :incubator_accelerator
          COWORKING_COMMUNITY = :coworking_community
          MEDIA_COMPANY = :media_company
          RESEARCH_LAB = :research_lab

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Type of onboarding the account has completed.
        #
        # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data#onboarding_type
        module OnboardingType
          extend WhopSDK::Internal::Type::Enum

          PLATFORM = :platform
          SELLER = :seller

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Account Open Graph image variant.
        #
        # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data#opengraph_image_variant
        module OpengraphImageVariant
          extend WhopSDK::Internal::Type::Enum

          WHITE = :white
          BLACK = :black
          ORANGE = :orange

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data#owner
        class Owner < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   User ID, prefixed `user_`.
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #   Display name.
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute profile_picture
          #   Avatar wrapper; its `url` is always present, using a generated placeholder when
          #   the user set no picture.
          #
          #   @return [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Owner::ProfilePicture]
          required :profile_picture, -> { WhopSDK::AccountUpdatedWebhookEvent::Data::Owner::ProfilePicture }

          # @!attribute username
          #   Public username.
          #
          #   @return [String]
          required :username, String

          # @!method initialize(id:, name:, profile_picture:, username:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Owner} for more details.
          #
          #   The single user who owns the account, whose email is the `email` above. Distinct
          #   from the `owner` role on team members, which any number of them can hold.
          #
          #   @param id [String] User ID, prefixed `user_`.
          #
          #   @param name [String, nil] Display name.
          #
          #   @param profile_picture [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Owner::ProfilePicture] Avatar wrapper; its `url` is always present, using a generated placeholder when
          #
          #   @param username [String] Public username.

          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Owner#profile_picture
          class ProfilePicture < WhopSDK::Internal::Type::BaseModel
            # @!attribute url
            #   Avatar image URL. Always present — a generated placeholder when the user set no
            #   picture.
            #
            #   @return [String]
            required :url, String

            # @!method initialize(url:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Owner::ProfilePicture} for
            #   more details.
            #
            #   Avatar wrapper; its `url` is always present, using a generated placeholder when
            #   the user set no picture.
            #
            #   @param url [String] Avatar image URL. Always present — a generated placeholder when the user set no
          end
        end

        # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data#parent_account
        class ParentAccount < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   Account ID, prefixed `biz_`.
          #
          #   @return [String]
          required :id, String

          # @!attribute logo_url
          #   Account logo image URL.
          #
          #   @return [String, nil]
          required :logo_url, String, nil?: true

          # @!attribute route
          #   Account public route identifier.
          #
          #   @return [String]
          required :route, String

          # @!attribute title
          #   Account display name.
          #
          #   @return [String]
          required :title, String

          # @!method initialize(id:, logo_url:, route:, title:)
          #   Parent account for connected accounts, or `null` for standalone accounts.
          #
          #   @param id [String] Account ID, prefixed `biz_`.
          #
          #   @param logo_url [String, nil] Account logo image URL.
          #
          #   @param route [String] Account public route identifier.
          #
          #   @param title [String] Account display name.
        end

        # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data#payment_controls
        class PaymentControls < WhopSDK::Internal::Type::BaseModel
          # @!attribute dispute_alert_auto_refund
          #   Automatic refund settings for pre-chargeback dispute alerts.
          #
          #   @return [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls::DisputeAlertAutoRefund]
          required :dispute_alert_auto_refund,
                   -> { WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::DisputeAlertAutoRefund }

          # @!attribute dispute_alert_fee_usd
          #   Fee charged for each dispute alert in USD. `null` when unavailable.
          #
          #   @return [Float, nil]
          required :dispute_alert_fee_usd, Float, nil?: true

          # @!attribute enforce_3ds
          #   Whether 3-D Secure is forced on every card payment at checkout. The account
          #   cannot bypass it while set.
          #
          #   @return [Boolean]
          required :enforce_3ds, WhopSDK::Internal::Type::Boolean

          # @!attribute financing_disabled
          #   Whether payment health controls explicitly disable financing. This is
          #   independent of financing approval in `capabilities.accept_bnpl_payments`.
          #
          #   @return [Boolean]
          required :financing_disabled, WhopSDK::Internal::Type::Boolean

          # @!attribute high_risk_processing_fee_percentage
          #   Additional processing fee percentage for high-risk processing.
          #
          #   @return [Float]
          required :high_risk_processing_fee_percentage, Float

          # @!attribute pending_auto_topup_fee_percentage
          #   Percentage fee charged when pending, not-yet-settled balance is advanced to fund
          #   the account's cards balance, where `2` means 2%. `0` when the account is exempt.
          #
          #   @return [Float]
          required :pending_auto_topup_fee_percentage, Float

          # @!attribute pending_balance_delay_days
          #   Additional days payments remain pending before becoming available.
          #
          #   @return [Integer]
          required :pending_balance_delay_days, Integer

          # @!attribute reserve
          #   Reserve currently applied to incoming payment volume.
          #
          #   @return [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls::Reserve]
          required :reserve, -> { WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::Reserve }

          # @!attribute resolution_center_auto_refund
          #   Automatic refund settings for resolution center cases.
          #
          #   @return [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls::ResolutionCenterAutoRefund]
          required :resolution_center_auto_refund,
                   -> { WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::ResolutionCenterAutoRefund }

          # @!attribute restricted_payment_methods
          #
          #   @return [Array<Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls::RestrictedPaymentMethod>]
          required :restricted_payment_methods,
                   -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::RestrictedPaymentMethod] }

          # @!attribute undated_pending_reason
          #   Why pending funds without a settlement date aren't moving yet, when it's
          #   something the merchant can act on. `null` when there's no reason to show (still
          #   clearing, or the account is held for a reason that isn't merchant-actionable).
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls::UndatedPendingReason, nil]
          required :undated_pending_reason,
                   enum: -> {
                     WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::UndatedPendingReason
                   },
                   nil?: true

          # @!attribute withdrawal_schedule
          #   How the account's balance automatically withdraws.
          #
          #   @return [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls::WithdrawalSchedule]
          required :withdrawal_schedule,
                   -> { WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::WithdrawalSchedule }

          # @!method initialize(dispute_alert_auto_refund:, dispute_alert_fee_usd:, enforce_3ds:, financing_disabled:, high_risk_processing_fee_percentage:, pending_auto_topup_fee_percentage:, pending_balance_delay_days:, reserve:, resolution_center_auto_refund:, restricted_payment_methods:, undated_pending_reason:, withdrawal_schedule:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls} for more
          #   details.
          #
          #   Payment health controls currently applied to the account. Computed only on
          #   `retrieve` and `me` for callers with `company:balance:read` scope; `null`
          #   otherwise.
          #
          #   @param dispute_alert_auto_refund [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls::DisputeAlertAutoRefund] Automatic refund settings for pre-chargeback dispute alerts.
          #
          #   @param dispute_alert_fee_usd [Float, nil] Fee charged for each dispute alert in USD. `null` when unavailable.
          #
          #   @param enforce_3ds [Boolean] Whether 3-D Secure is forced on every card payment at checkout. The account cann
          #
          #   @param financing_disabled [Boolean] Whether payment health controls explicitly disable financing. This is independen
          #
          #   @param high_risk_processing_fee_percentage [Float] Additional processing fee percentage for high-risk processing.
          #
          #   @param pending_auto_topup_fee_percentage [Float] Percentage fee charged when pending, not-yet-settled balance is advanced to fund
          #
          #   @param pending_balance_delay_days [Integer] Additional days payments remain pending before becoming available.
          #
          #   @param reserve [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls::Reserve] Reserve currently applied to incoming payment volume.
          #
          #   @param resolution_center_auto_refund [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls::ResolutionCenterAutoRefund] Automatic refund settings for resolution center cases.
          #
          #   @param restricted_payment_methods [Array<Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls::RestrictedPaymentMethod>]
          #
          #   @param undated_pending_reason [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls::UndatedPendingReason, nil] Why pending funds without a settlement date aren't moving yet, when it's somethi
          #
          #   @param withdrawal_schedule [WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls::WithdrawalSchedule] How the account's balance automatically withdraws.

          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls#dispute_alert_auto_refund
          class DisputeAlertAutoRefund < WhopSDK::Internal::Type::BaseModel
            # @!attribute locked
            #   Whether the account owner is prevented from changing this threshold.
            #
            #   @return [Boolean]
            required :locked, WhopSDK::Internal::Type::Boolean

            # @!attribute threshold_usd
            #   Maximum dispute alert amount automatically refunded in USD. `null` when
            #   automatic refunds are disabled.
            #
            #   @return [Float, nil]
            required :threshold_usd, Float, nil?: true

            # @!method initialize(locked:, threshold_usd:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls::DisputeAlertAutoRefund}
            #   for more details.
            #
            #   Automatic refund settings for pre-chargeback dispute alerts.
            #
            #   @param locked [Boolean] Whether the account owner is prevented from changing this threshold.
            #
            #   @param threshold_usd [Float, nil] Maximum dispute alert amount automatically refunded in USD. `null` when automati
          end

          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls#reserve
          class Reserve < WhopSDK::Internal::Type::BaseModel
            # @!attribute hold_period_days
            #   Number of days reserved funds are held before release.
            #
            #   @return [Integer]
            required :hold_period_days, Integer

            # @!attribute percentage
            #   Percentage of incoming payment volume held in reserve. `null` when no reserve is
            #   applied.
            #
            #   @return [Float, nil]
            required :percentage, Float, nil?: true

            # @!method initialize(hold_period_days:, percentage:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls::Reserve}
            #   for more details.
            #
            #   Reserve currently applied to incoming payment volume.
            #
            #   @param hold_period_days [Integer] Number of days reserved funds are held before release.
            #
            #   @param percentage [Float, nil] Percentage of incoming payment volume held in reserve. `null` when no reserve is
          end

          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls#resolution_center_auto_refund
          class ResolutionCenterAutoRefund < WhopSDK::Internal::Type::BaseModel
            # @!attribute card_threshold_usd
            #   Maximum card-funded resolution center case amount automatically refunded in USD.
            #   `null` when automatic refunds are disabled for cards.
            #
            #   @return [Float, nil]
            required :card_threshold_usd, Float, nil?: true

            # @!attribute financing_threshold_usd
            #   Maximum financing-funded resolution center case amount automatically refunded in
            #   USD. `null` when automatic refunds are disabled for financing.
            #
            #   @return [Float, nil]
            required :financing_threshold_usd, Float, nil?: true

            # @!attribute locked
            #   Whether the account owner is prevented from changing these thresholds.
            #
            #   @return [Boolean]
            required :locked, WhopSDK::Internal::Type::Boolean

            # @!attribute paypal_threshold_usd
            #   Maximum PayPal-funded resolution center case amount automatically refunded in
            #   USD. `null` when automatic refunds are disabled for PayPal.
            #
            #   @return [Float, nil]
            required :paypal_threshold_usd, Float, nil?: true

            # @!method initialize(card_threshold_usd:, financing_threshold_usd:, locked:, paypal_threshold_usd:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls::ResolutionCenterAutoRefund}
            #   for more details.
            #
            #   Automatic refund settings for resolution center cases.
            #
            #   @param card_threshold_usd [Float, nil] Maximum card-funded resolution center case amount automatically refunded in USD.
            #
            #   @param financing_threshold_usd [Float, nil] Maximum financing-funded resolution center case amount automatically refunded in
            #
            #   @param locked [Boolean] Whether the account owner is prevented from changing these thresholds.
            #
            #   @param paypal_threshold_usd [Float, nil] Maximum PayPal-funded resolution center case amount automatically refunded in US
          end

          # Card brands blocked at checkout for this account. Empty when none are blocked.
          # The account cannot re-enable them itself.
          module RestrictedPaymentMethod
            extend WhopSDK::Internal::Type::Enum

            CARD_VISA = :card_visa
            CARD_MASTERCARD = :card_mastercard
            CARD_AMERICAN_EXPRESS = :card_american_express
            CARD_DISCOVER_GLOBAL_NETWORK = :card_discover_global_network

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Why pending funds without a settlement date aren't moving yet, when it's
          # something the merchant can act on. `null` when there's no reason to show (still
          # clearing, or the account is held for a reason that isn't merchant-actionable).
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls#undated_pending_reason
          module UndatedPendingReason
            extend WhopSDK::Internal::Type::Enum

            KYC_INCOMPLETE = :kyc_incomplete
            PENDING_INFORMATION_REQUEST = :pending_information_request

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls#withdrawal_schedule
          class WithdrawalSchedule < WhopSDK::Internal::Type::BaseModel
            # @!attribute day
            #   Day the automatic withdrawal runs on: 0-6 (Sunday-Saturday) for `weekly`, 1-31
            #   for `monthly`. `null` for `manual` and `daily`.
            #
            #   @return [Integer, nil]
            required :day, Integer, nil?: true

            # @!attribute frequency
            #   How often the account's balance automatically withdraws.
            #
            #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::Frequency]
            required :frequency,
                     enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::Frequency }

            # @!attribute next_payout_date
            #   Next date the automatic withdrawal is scheduled to run, as an ISO 8601 date.
            #   `null` for `manual` and `daily`, where no single next date applies.
            #
            #   @return [String, nil]
            required :next_payout_date, String, nil?: true

            # @!method initialize(day:, frequency:, next_payout_date:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls::WithdrawalSchedule}
            #   for more details.
            #
            #   How the account's balance automatically withdraws.
            #
            #   @param day [Integer, nil] Day the automatic withdrawal runs on: 0-6 (Sunday-Saturday) for `weekly`, 1-31 f
            #
            #   @param frequency [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::Frequency] How often the account's balance automatically withdraws.
            #
            #   @param next_payout_date [String, nil] Next date the automatic withdrawal is scheduled to run, as an ISO 8601 date. `nu

            # How often the account's balance automatically withdraws.
            #
            # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PaymentControls::WithdrawalSchedule#frequency
            module Frequency
              extend WhopSDK::Internal::Type::Enum

              MANUAL = :manual
              DAILY = :daily
              WEEKLY = :weekly
              MONTHLY = :monthly

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data#privacy_policy
        class PrivacyPolicy < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The file's ID, prefixed `file_`.
          #
          #   @return [String]
          required :id, String

          # @!attribute content_type
          #   The file's MIME type, e.g. `application/pdf`.
          #
          #   @return [String, nil]
          required :content_type, String, nil?: true

          # @!attribute created_at
          #   When the file was created, as an ISO 8601 timestamp.
          #
          #   @return [String]
          required :created_at, String

          # @!attribute filename
          #   The original filename, including its extension.
          #
          #   @return [String, nil]
          required :filename, String, nil?: true

          # @!attribute object
          #   The type of this object, always `file`.
          #
          #   @return [String]
          required :object, String

          # @!attribute size
          #   The file size in bytes. `null` until the upload has finished.
          #
          #   @return [Integer, nil]
          required :size, Integer, nil?: true

          # @!attribute upload_status
          #   Where the file is in its upload lifecycle.
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::UploadStatus]
          required :upload_status,
                   enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::UploadStatus }

          # @!attribute url
          #   A URL to download the file: a permanent CDN URL for public files, a signed
          #   expiring URL for private ones. `null` until the upload has finished.
          #
          #   @return [String, nil]
          required :url, String, nil?: true

          # @!attribute visibility
          #   `public` files are served via an unsigned CDN URL; `private` files via a signed,
          #   expiring URL.
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::Visibility]
          required :visibility, enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::Visibility }

          # @!attribute multipart_chunk_size
          #   The byte size each part (except the last) must be. Present only on create, and
          #   only for multipart uploads.
          #
          #   @return [Integer, nil]
          optional :multipart_chunk_size, Integer, nil?: true

          # @!attribute multipart_upload_id
          #   The ID of the multipart upload, passed back to `complete`. Present only on
          #   create, and only for multipart uploads.
          #
          #   @return [String, nil]
          optional :multipart_upload_id, String, nil?: true

          # @!attribute multipart_upload_urls
          #
          #   @return [Array<WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::MultipartUploadURL>, nil]
          optional :multipart_upload_urls,
                   -> {
                     WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::MultipartUploadURL]
                   },
                   nil?: true

          # @!attribute upload_headers
          #   Headers to send with the upload PUT. Present only on create.
          #
          #   @return [Object, nil]
          optional :upload_headers, WhopSDK::Internal::Type::Unknown

          # @!attribute upload_url
          #   Presigned URL to PUT the file's bytes to. Present only on create, and only for
          #   single-part uploads.
          #
          #   @return [String, nil]
          optional :upload_url, String, nil?: true

          # @!method initialize(id:, content_type:, created_at:, filename:, object:, size:, upload_status:, url:, visibility:, multipart_chunk_size: nil, multipart_upload_id: nil, multipart_upload_urls: nil, upload_headers: nil, upload_url: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PrivacyPolicy} for more
          #   details.
          #
          #   The account's privacy policy document, or `null` if they have not published one.
          #
          #   @param id [String] The file's ID, prefixed `file_`.
          #
          #   @param content_type [String, nil] The file's MIME type, e.g. `application/pdf`.
          #
          #   @param created_at [String] When the file was created, as an ISO 8601 timestamp.
          #
          #   @param filename [String, nil] The original filename, including its extension.
          #
          #   @param object [String] The type of this object, always `file`.
          #
          #   @param size [Integer, nil] The file size in bytes. `null` until the upload has finished.
          #
          #   @param upload_status [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::UploadStatus] Where the file is in its upload lifecycle.
          #
          #   @param url [String, nil] A URL to download the file: a permanent CDN URL for public files, a signed expir
          #
          #   @param visibility [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::Visibility] `public` files are served via an unsigned CDN URL; `private` files via a signed,
          #
          #   @param multipart_chunk_size [Integer, nil] The byte size each part (except the last) must be. Present only on create, and o
          #
          #   @param multipart_upload_id [String, nil] The ID of the multipart upload, passed back to `complete`. Present only on creat
          #
          #   @param multipart_upload_urls [Array<WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::MultipartUploadURL>, nil]
          #
          #   @param upload_headers [Object] Headers to send with the upload PUT. Present only on create.
          #
          #   @param upload_url [String, nil] Presigned URL to PUT the file's bytes to. Present only on create, and only for s

          # Where the file is in its upload lifecycle.
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PrivacyPolicy#upload_status
          module UploadStatus
            extend WhopSDK::Internal::Type::Enum

            PENDING = :pending
            PROCESSING = :processing
            READY = :ready
            FAILED = :failed

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # `public` files are served via an unsigned CDN URL; `private` files via a signed,
          # expiring URL.
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::PrivacyPolicy#visibility
          module Visibility
            extend WhopSDK::Internal::Type::Enum

            PUBLIC = :public
            PRIVATE = :private

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class MultipartUploadURL < WhopSDK::Internal::Type::BaseModel
            # @!attribute part_number
            #   The 1-based index of this part within the multipart upload.
            #
            #   @return [Integer]
            required :part_number, Integer

            # @!attribute url
            #   The presigned URL to PUT this part's bytes to.
            #
            #   @return [String]
            required :url, String

            # @!method initialize(part_number:, url:)
            #   The presigned URL for each part. Present only on create, and only for multipart
            #   uploads.
            #
            #   @param part_number [Integer] The 1-based index of this part within the multipart upload.
            #
            #   @param url [String] The presigned URL to PUT this part's bytes to.
          end
        end

        class RecommendedAction < WhopSDK::Internal::Type::BaseModel
          # @!attribute action
          #   The recommendation; new values may be added, so handle unknown actions
          #   gracefully
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action]
          required :action, enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action }

          # @!attribute blocked_capabilities
          #
          #   @return [Array<String>]
          required :blocked_capabilities, WhopSDK::Internal::Type::ArrayOf[String]

          # @!attribute cta
          #   The URL the call-to-action links to
          #
          #   @return [String]
          required :cta, String

          # @!attribute cta_label
          #   Button label
          #
          #   @return [String]
          required :cta_label, String

          # @!attribute description
          #   Supporting copy, or empty
          #
          #   @return [String]
          required :description, String

          # @!attribute icon_url
          #   Illustration icon URL, or `null`
          #
          #   @return [String, nil]
          required :icon_url, String, nil?: true

          # @!attribute impact_score
          #   Estimated impact from 0-100, or `null` when not ranked
          #
          #   @return [Integer, nil]
          required :impact_score, Integer, nil?: true

          # @!attribute reasoning
          #   Why this action was recommended, or `null`
          #
          #   @return [String, nil]
          required :reasoning, String, nil?: true

          # @!attribute status
          #   Always optional — never blocking
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::RecommendedAction::Status]
          required :status, enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Status }

          # @!attribute title
          #   Headline for the recommendation
          #
          #   @return [String]
          required :title, String

          # @!method initialize(action:, blocked_capabilities:, cta:, cta_label:, description:, icon_url:, impact_score:, reasoning:, status:, title:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AccountUpdatedWebhookEvent::Data::RecommendedAction} for more
          #   details.
          #
          #   Deprecated: use the `GET /recommended_actions?account_id={account_id}` endpoint
          #   instead. Optional actions that unlock capabilities or grow the account, same
          #   shape as `required_actions`. Computed only on `retrieve` and `me`; `null`
          #   otherwise.
          #
          #   @param action [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action] The recommendation; new values may be added, so handle unknown actions gracefull
          #
          #   @param blocked_capabilities [Array<String>]
          #
          #   @param cta [String] The URL the call-to-action links to
          #
          #   @param cta_label [String] Button label
          #
          #   @param description [String] Supporting copy, or empty
          #
          #   @param icon_url [String, nil] Illustration icon URL, or `null`
          #
          #   @param impact_score [Integer, nil] Estimated impact from 0-100, or `null` when not ranked
          #
          #   @param reasoning [String, nil] Why this action was recommended, or `null`
          #
          #   @param status [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::RecommendedAction::Status] Always optional — never blocking
          #
          #   @param title [String] Headline for the recommendation

          # The recommendation; new values may be added, so handle unknown actions
          # gracefully
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::RecommendedAction#action
          module Action
            extend WhopSDK::Internal::Type::Enum

            THEME_BUSINESS = :theme_business
            CREATE_PRODUCT = :create_product
            CREATE_PLAN = :create_plan
            VERIFY_IDENTITY = :verify_identity
            CONNECT_AFFILIATE_PROGRAM = :connect_affiliate_program
            CREATE_PROMOTION = :create_promotion
            MIGRATE_FROM_STRIPE = :migrate_from_stripe
            ACCEPT_FIRST_PAYMENT = :accept_first_payment
            LAUNCH_FIRST_AD = :launch_first_ad
            LAUNCH_DRAFT_CAMPAIGN = :launch_draft_campaign
            INCREASE_AD_BUDGET = :increase_ad_budget
            REFRESH_AD_CREATIVES = :refresh_ad_creatives
            FIX_AD_BILLING = :fix_ad_billing
            EXCLUDE_CUSTOMERS_FROM_ADS = :exclude_customers_from_ads
            RETARGET_ABANDONED_CHECKOUTS = :retarget_abandoned_checkouts
            FIX_FUNNEL_DROPOFF = :fix_funnel_dropoff
            INVITE_TEAM_MEMBER = :invite_team_member
            ENABLE_TAX_COLLECTION = :enable_tax_collection
            CREATE_CARD = :create_card
            APPLY_FOR_FINANCING = :apply_for_financing

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Always optional — never blocking
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::RecommendedAction#status
          module Status
            extend WhopSDK::Internal::Type::Enum

            OPTIONAL = :optional

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class RequiredAction < WhopSDK::Internal::Type::BaseModel
          # @!attribute action
          #   What the holder must do; new values may be added, so handle unknown actions
          #   gracefully
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::RequiredAction::Action]
          required :action, enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Action }

          # @!attribute blocked_capabilities
          #
          #   @return [Array<String>]
          required :blocked_capabilities, WhopSDK::Internal::Type::ArrayOf[String]

          # @!attribute cta
          #   The URL the call-to-action links to, or null when there is no button
          #
          #   @return [String, nil]
          required :cta, String, nil?: true

          # @!attribute cta_label
          #   Button label, or empty when there is no button
          #
          #   @return [String]
          required :cta_label, String

          # @!attribute description
          #   Supporting copy, or empty
          #
          #   @return [String]
          required :description, String

          # @!attribute icon_url
          #   The URL of the action's illustration icon, or null if it has none
          #
          #   @return [String, nil]
          required :icon_url, String, nil?: true

          # @!attribute status
          #   required (act now) or pending (under review)
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::RequiredAction::Status]
          required :status, enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Status }

          # @!attribute title
          #   Headline for the action
          #
          #   @return [String]
          required :title, String

          # @!method initialize(action:, blocked_capabilities:, cta:, cta_label:, description:, icon_url:, status:, title:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AccountUpdatedWebhookEvent::Data::RequiredAction} for more
          #   details.
          #
          #   Actions the account owner must take to unblock capabilities like payouts and
          #   card spend, ordered by display priority. Computed only on `retrieve` and `me`
          #   for callers with `company:balance:read` scope; `null` otherwise.
          #
          #   @param action [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::RequiredAction::Action] What the holder must do; new values may be added, so handle unknown actions grac
          #
          #   @param blocked_capabilities [Array<String>]
          #
          #   @param cta [String, nil] The URL the call-to-action links to, or null when there is no button
          #
          #   @param cta_label [String] Button label, or empty when there is no button
          #
          #   @param description [String] Supporting copy, or empty
          #
          #   @param icon_url [String, nil] The URL of the action's illustration icon, or null if it has none
          #
          #   @param status [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::RequiredAction::Status] required (act now) or pending (under review)
          #
          #   @param title [String] Headline for the action

          # What the holder must do; new values may be added, so handle unknown actions
          # gracefully
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::RequiredAction#action
          module Action
            extend WhopSDK::Internal::Type::Enum

            DEPOSIT_FUNDS = :deposit_funds
            SUBMIT_INFORMATION_REQUEST = :submit_information_request
            REAUTHORIZE_PAYOUT_METHODS = :reauthorize_payout_methods
            UPDATE_PAYOUT_PROFILE = :update_payout_profile
            CARD_USAGE_REVIEW = :card_usage_review
            VERIFY_IDENTITY = :verify_identity
            SIGN_FORMATION_DOCUMENTS = :sign_formation_documents
            CONNECT_FULFILLMENT_TRACKER = :connect_fulfillment_tracker
            SETUP_APPLE_PAY_DOMAINS = :setup_apple_pay_domains
            CONFIGURE_TAX_REMITTER = :configure_tax_remitter
            ADD_VAT_REGISTRATION = :add_vat_registration

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # required (act now) or pending (under review)
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::RequiredAction#status
          module Status
            extend WhopSDK::Internal::Type::Enum

            REQUIRED = :required
            PENDING = :pending

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data#return_policy
        class ReturnPolicy < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The file's ID, prefixed `file_`.
          #
          #   @return [String]
          required :id, String

          # @!attribute content_type
          #   The file's MIME type, e.g. `application/pdf`.
          #
          #   @return [String, nil]
          required :content_type, String, nil?: true

          # @!attribute created_at
          #   When the file was created, as an ISO 8601 timestamp.
          #
          #   @return [String]
          required :created_at, String

          # @!attribute filename
          #   The original filename, including its extension.
          #
          #   @return [String, nil]
          required :filename, String, nil?: true

          # @!attribute object
          #   The type of this object, always `file`.
          #
          #   @return [String]
          required :object, String

          # @!attribute size
          #   The file size in bytes. `null` until the upload has finished.
          #
          #   @return [Integer, nil]
          required :size, Integer, nil?: true

          # @!attribute upload_status
          #   Where the file is in its upload lifecycle.
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::ReturnPolicy::UploadStatus]
          required :upload_status,
                   enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::UploadStatus }

          # @!attribute url
          #   A URL to download the file: a permanent CDN URL for public files, a signed
          #   expiring URL for private ones. `null` until the upload has finished.
          #
          #   @return [String, nil]
          required :url, String, nil?: true

          # @!attribute visibility
          #   `public` files are served via an unsigned CDN URL; `private` files via a signed,
          #   expiring URL.
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::ReturnPolicy::Visibility]
          required :visibility, enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::Visibility }

          # @!attribute multipart_chunk_size
          #   The byte size each part (except the last) must be. Present only on create, and
          #   only for multipart uploads.
          #
          #   @return [Integer, nil]
          optional :multipart_chunk_size, Integer, nil?: true

          # @!attribute multipart_upload_id
          #   The ID of the multipart upload, passed back to `complete`. Present only on
          #   create, and only for multipart uploads.
          #
          #   @return [String, nil]
          optional :multipart_upload_id, String, nil?: true

          # @!attribute multipart_upload_urls
          #
          #   @return [Array<WhopSDK::Models::AccountUpdatedWebhookEvent::Data::ReturnPolicy::MultipartUploadURL>, nil]
          optional :multipart_upload_urls,
                   -> {
                     WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::MultipartUploadURL]
                   },
                   nil?: true

          # @!attribute upload_headers
          #   Headers to send with the upload PUT. Present only on create.
          #
          #   @return [Object, nil]
          optional :upload_headers, WhopSDK::Internal::Type::Unknown

          # @!attribute upload_url
          #   Presigned URL to PUT the file's bytes to. Present only on create, and only for
          #   single-part uploads.
          #
          #   @return [String, nil]
          optional :upload_url, String, nil?: true

          # @!method initialize(id:, content_type:, created_at:, filename:, object:, size:, upload_status:, url:, visibility:, multipart_chunk_size: nil, multipart_upload_id: nil, multipart_upload_urls: nil, upload_headers: nil, upload_url: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AccountUpdatedWebhookEvent::Data::ReturnPolicy} for more
          #   details.
          #
          #   The account's return policy document, or `null` if they have not published one.
          #
          #   @param id [String] The file's ID, prefixed `file_`.
          #
          #   @param content_type [String, nil] The file's MIME type, e.g. `application/pdf`.
          #
          #   @param created_at [String] When the file was created, as an ISO 8601 timestamp.
          #
          #   @param filename [String, nil] The original filename, including its extension.
          #
          #   @param object [String] The type of this object, always `file`.
          #
          #   @param size [Integer, nil] The file size in bytes. `null` until the upload has finished.
          #
          #   @param upload_status [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::ReturnPolicy::UploadStatus] Where the file is in its upload lifecycle.
          #
          #   @param url [String, nil] A URL to download the file: a permanent CDN URL for public files, a signed expir
          #
          #   @param visibility [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::ReturnPolicy::Visibility] `public` files are served via an unsigned CDN URL; `private` files via a signed,
          #
          #   @param multipart_chunk_size [Integer, nil] The byte size each part (except the last) must be. Present only on create, and o
          #
          #   @param multipart_upload_id [String, nil] The ID of the multipart upload, passed back to `complete`. Present only on creat
          #
          #   @param multipart_upload_urls [Array<WhopSDK::Models::AccountUpdatedWebhookEvent::Data::ReturnPolicy::MultipartUploadURL>, nil]
          #
          #   @param upload_headers [Object] Headers to send with the upload PUT. Present only on create.
          #
          #   @param upload_url [String, nil] Presigned URL to PUT the file's bytes to. Present only on create, and only for s

          # Where the file is in its upload lifecycle.
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::ReturnPolicy#upload_status
          module UploadStatus
            extend WhopSDK::Internal::Type::Enum

            PENDING = :pending
            PROCESSING = :processing
            READY = :ready
            FAILED = :failed

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # `public` files are served via an unsigned CDN URL; `private` files via a signed,
          # expiring URL.
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::ReturnPolicy#visibility
          module Visibility
            extend WhopSDK::Internal::Type::Enum

            PUBLIC = :public
            PRIVATE = :private

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class MultipartUploadURL < WhopSDK::Internal::Type::BaseModel
            # @!attribute part_number
            #   The 1-based index of this part within the multipart upload.
            #
            #   @return [Integer]
            required :part_number, Integer

            # @!attribute url
            #   The presigned URL to PUT this part's bytes to.
            #
            #   @return [String]
            required :url, String

            # @!method initialize(part_number:, url:)
            #   The presigned URL for each part. Present only on create, and only for multipart
            #   uploads.
            #
            #   @param part_number [Integer] The 1-based index of this part within the multipart upload.
            #
            #   @param url [String] The presigned URL to PUT this part's bytes to.
          end
        end

        class SocialLink < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of the social link
          #
          #   @return [String]
          required :id, String

          # @!attribute title
          #   The optional display title for the social link
          #
          #   @return [String, nil]
          required :title, String, nil?: true

          # @!attribute url
          #   The social link URL
          #
          #   @return [String]
          required :url, String

          # @!attribute website
          #   The social platform for this link
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::SocialLink::Website]
          required :website, enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::SocialLink::Website }

          # @!method initialize(id:, title:, url:, website:)
          #   Account social links.
          #
          #   @param id [String] The ID of the social link
          #
          #   @param title [String, nil] The optional display title for the social link
          #
          #   @param url [String] The social link URL
          #
          #   @param website [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::SocialLink::Website] The social platform for this link

          # The social platform for this link
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::SocialLink#website
          module Website
            extend WhopSDK::Internal::Type::Enum

            X = :x
            INSTAGRAM = :instagram
            FACEBOOK = :facebook
            TIKTOK = :tiktok
            YOUTUBE = :youtube
            LINKEDIN = :linkedin
            TWITCH = :twitch
            WEBSITE = :website
            CUSTOM = :custom

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data#store_page_config
        class StorePageConfig < WhopSDK::Internal::Type::BaseModel
          # @!attribute accent_color
          #   Accent color used on the account store page.
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor, nil]
          required :accent_color,
                   enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor },
                   nil?: true

          # @!attribute layout
          #   Layout used on the account store page.
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::StorePageConfig::Layout, nil]
          required :layout,
                   enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::Layout },
                   nil?: true

          # @!attribute profile_variant
          #   Profile presentation used on the account store page.
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::StorePageConfig::ProfileVariant, nil]
          required :profile_variant,
                   enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::ProfileVariant },
                   nil?: true

          # @!attribute whop_affiliate_link
          #   Whether the account store page shows a Whop affiliate link.
          #
          #   @return [Boolean]
          required :whop_affiliate_link, WhopSDK::Internal::Type::Boolean

          # @!method initialize(accent_color:, layout:, profile_variant:, whop_affiliate_link:)
          #   Account store page display configuration.
          #
          #   @param accent_color [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor, nil] Accent color used on the account store page.
          #
          #   @param layout [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::StorePageConfig::Layout, nil] Layout used on the account store page.
          #
          #   @param profile_variant [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::StorePageConfig::ProfileVariant, nil] Profile presentation used on the account store page.
          #
          #   @param whop_affiliate_link [Boolean] Whether the account store page shows a Whop affiliate link.

          # Accent color used on the account store page.
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::StorePageConfig#accent_color
          module AccentColor
            extend WhopSDK::Internal::Type::Enum

            RUBY = :ruby
            TOMATO = :tomato
            RED = :red
            CRIMSON = :crimson
            PINK = :pink
            PLUM = :plum
            PURPLE = :purple
            VIOLET = :violet
            IRIS = :iris
            CYAN = :cyan
            TEAL = :teal
            JADE = :jade
            GREEN = :green
            GRASS = :grass
            BROWN = :brown
            BLUE = :blue
            ORANGE = :orange
            INDIGO = :indigo
            SKY = :sky
            MINT = :mint
            YELLOW = :yellow
            AMBER = :amber
            LIME = :lime
            LEMON = :lemon
            MAGENTA = :magenta
            GOLD = :gold
            BRONZE = :bronze
            GRAY = :gray

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Layout used on the account store page.
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::StorePageConfig#layout
          module Layout
            extend WhopSDK::Internal::Type::Enum

            FEATURED = :featured
            COMPACT = :compact

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Profile presentation used on the account store page.
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::StorePageConfig#profile_variant
          module ProfileVariant
            extend WhopSDK::Internal::Type::Enum

            PERSONAL = :personal
            BUSINESS = :business

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class TaxIdentifier < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   Tax identifier ID.
          #
          #   @return [String]
          required :id, String

          # @!attribute tax_id_type
          #   Tax ID type.
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType]
          required :tax_id_type, enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType }

          # @!attribute tax_id_value
          #   Tax ID value.
          #
          #   @return [String]
          required :tax_id_value, String

          # @!method initialize(id:, tax_id_type:, tax_id_value:)
          #   Account tax/VAT registrations. Empty when none are set.
          #
          #   @param id [String] Tax identifier ID.
          #
          #   @param tax_id_type [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType] Tax ID type.
          #
          #   @param tax_id_value [String] Tax ID value.

          # Tax ID type.
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::TaxIdentifier#tax_id_type
          module TaxIDType
            extend WhopSDK::Internal::Type::Enum

            AD_NRT = :ad_nrt
            AO_TIN = :ao_tin
            AR_CUIT = :ar_cuit
            AL_TIN = :al_tin
            AM_TIN = :am_tin
            AW_TIN = :aw_tin
            AU_ABN = :au_abn
            AU_ARN = :au_arn
            EU_VAT = :eu_vat
            AZ_TIN = :az_tin
            BS_TIN = :bs_tin
            BH_VAT = :bh_vat
            BD_BIN = :bd_bin
            BB_TIN = :bb_tin
            BY_TIN = :by_tin
            BJ_IFU = :bj_ifu
            BO_TIN = :bo_tin
            BA_TIN = :ba_tin
            BR_CNPJ = :br_cnpj
            BR_CPF = :br_cpf
            BG_UIC = :bg_uic
            BF_IFU = :bf_ifu
            KH_TIN = :kh_tin
            CM_NIU = :cm_niu
            CA_BN = :ca_bn
            CA_GST_HST = :ca_gst_hst
            CA_PST_BC = :ca_pst_bc
            CA_PST_MB = :ca_pst_mb
            CA_PST_SK = :ca_pst_sk
            CA_QST = :ca_qst
            CV_NIF = :cv_nif
            CL_TIN = :cl_tin
            CN_TIN = :cn_tin
            CO_NIT = :co_nit
            CD_NIF = :cd_nif
            CR_TIN = :cr_tin
            HR_OIB = :hr_oib
            DO_RCN = :do_rcn
            EC_RUC = :ec_ruc
            EG_TIN = :eg_tin
            SV_NIT = :sv_nit
            ET_TIN = :et_tin
            EU_OSS_VAT = :eu_oss_vat
            GE_VAT = :ge_vat
            GH_TIN = :gh_tin
            DE_STN = :de_stn
            GB_VAT = :gb_vat
            GN_NIF = :gn_nif
            HK_BR = :hk_br
            HU_TIN = :hu_tin
            IS_VAT = :is_vat
            IN_GST = :in_gst
            ID_NPWP = :id_npwp
            IL_VAT = :il_vat
            JP_CN = :jp_cn
            JP_RN = :jp_rn
            JP_TRN = :jp_trn
            KZ_BIN = :kz_bin
            KE_PIN = :ke_pin
            KG_TIN = :kg_tin
            LA_TIN = :la_tin
            LI_UID = :li_uid
            LI_VAT = :li_vat
            MY_FRP = :my_frp
            MY_ITN = :my_itn
            MY_SST = :my_sst
            MR_NIF = :mr_nif
            MX_RFC = :mx_rfc
            MD_VAT = :md_vat
            ME_PIB = :me_pib
            MA_VAT = :ma_vat
            NP_PAN = :np_pan
            NZ_GST = :nz_gst
            NG_TIN = :ng_tin
            MK_VAT = :mk_vat
            NO_VAT = :no_vat
            NO_VOEC = :no_voec
            OM_VAT = :om_vat
            PE_RUC = :pe_ruc
            PH_TIN = :ph_tin
            PL_NIP = :pl_nip
            RO_TIN = :ro_tin
            RU_INN = :ru_inn
            RU_KPP = :ru_kpp
            SA_VAT = :sa_vat
            SN_NINEA = :sn_ninea
            RS_PIB = :rs_pib
            SG_GST = :sg_gst
            SG_UEN = :sg_uen
            SI_TIN = :si_tin
            ZA_VAT = :za_vat
            KR_BRN = :kr_brn
            ES_CIF = :es_cif
            CH_UID = :ch_uid
            CH_VAT = :ch_vat
            TW_VAT = :tw_vat
            TJ_TIN = :tj_tin
            TZ_VAT = :tz_vat
            TH_VAT = :th_vat
            TR_TIN = :tr_tin
            UG_TIN = :ug_tin
            UA_VAT = :ua_vat
            AE_TRN = :ae_trn
            US_EIN = :us_ein
            UY_RUC = :uy_ruc
            UZ_TIN = :uz_tin
            UZ_VAT = :uz_vat
            VE_RIF = :ve_rif
            VN_TIN = :vn_tin
            ZM_TIN = :zm_tin
            ZW_TIN = :zw_tin
            SR_FIN = :sr_fin
            XI_VAT = :xi_vat

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Who calculates and remits tax for the account: `whop` (Whop calculates and
        # remits), `self` (Whop calculates; the account collects and remits), or `none`
        # (neither; the account is responsible). `null` until the account enrolls in the
        # Whop tax service.
        #
        # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data#tax_remitted_by
        module TaxRemittedBy
          extend WhopSDK::Internal::Type::Enum

          WHOP = :whop
          SELF = :self
          NONE = :none

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # How tax is applied to the account's prices: `inclusive` (tax included in the
        # listed price) or `exclusive` (tax added on top). Defaults to `exclusive` when
        # unset; `null` only when the account has no payment connection.
        #
        # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data#tax_type
        module TaxType
          extend WhopSDK::Internal::Type::Enum

          INCLUSIVE = :inclusive
          EXCLUSIVE = :exclusive

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data#terms_of_service
        class TermsOfService < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The file's ID, prefixed `file_`.
          #
          #   @return [String]
          required :id, String

          # @!attribute content_type
          #   The file's MIME type, e.g. `application/pdf`.
          #
          #   @return [String, nil]
          required :content_type, String, nil?: true

          # @!attribute created_at
          #   When the file was created, as an ISO 8601 timestamp.
          #
          #   @return [String]
          required :created_at, String

          # @!attribute filename
          #   The original filename, including its extension.
          #
          #   @return [String, nil]
          required :filename, String, nil?: true

          # @!attribute object
          #   The type of this object, always `file`.
          #
          #   @return [String]
          required :object, String

          # @!attribute size
          #   The file size in bytes. `null` until the upload has finished.
          #
          #   @return [Integer, nil]
          required :size, Integer, nil?: true

          # @!attribute upload_status
          #   Where the file is in its upload lifecycle.
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::TermsOfService::UploadStatus]
          required :upload_status,
                   enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::UploadStatus }

          # @!attribute url
          #   A URL to download the file: a permanent CDN URL for public files, a signed
          #   expiring URL for private ones. `null` until the upload has finished.
          #
          #   @return [String, nil]
          required :url, String, nil?: true

          # @!attribute visibility
          #   `public` files are served via an unsigned CDN URL; `private` files via a signed,
          #   expiring URL.
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::TermsOfService::Visibility]
          required :visibility, enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::Visibility }

          # @!attribute multipart_chunk_size
          #   The byte size each part (except the last) must be. Present only on create, and
          #   only for multipart uploads.
          #
          #   @return [Integer, nil]
          optional :multipart_chunk_size, Integer, nil?: true

          # @!attribute multipart_upload_id
          #   The ID of the multipart upload, passed back to `complete`. Present only on
          #   create, and only for multipart uploads.
          #
          #   @return [String, nil]
          optional :multipart_upload_id, String, nil?: true

          # @!attribute multipart_upload_urls
          #
          #   @return [Array<WhopSDK::Models::AccountUpdatedWebhookEvent::Data::TermsOfService::MultipartUploadURL>, nil]
          optional :multipart_upload_urls,
                   -> {
                     WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::MultipartUploadURL]
                   },
                   nil?: true

          # @!attribute upload_headers
          #   Headers to send with the upload PUT. Present only on create.
          #
          #   @return [Object, nil]
          optional :upload_headers, WhopSDK::Internal::Type::Unknown

          # @!attribute upload_url
          #   Presigned URL to PUT the file's bytes to. Present only on create, and only for
          #   single-part uploads.
          #
          #   @return [String, nil]
          optional :upload_url, String, nil?: true

          # @!method initialize(id:, content_type:, created_at:, filename:, object:, size:, upload_status:, url:, visibility:, multipart_chunk_size: nil, multipart_upload_id: nil, multipart_upload_urls: nil, upload_headers: nil, upload_url: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AccountUpdatedWebhookEvent::Data::TermsOfService} for more
          #   details.
          #
          #   The account's terms of service document, or `null` if they have not published
          #   one.
          #
          #   @param id [String] The file's ID, prefixed `file_`.
          #
          #   @param content_type [String, nil] The file's MIME type, e.g. `application/pdf`.
          #
          #   @param created_at [String] When the file was created, as an ISO 8601 timestamp.
          #
          #   @param filename [String, nil] The original filename, including its extension.
          #
          #   @param object [String] The type of this object, always `file`.
          #
          #   @param size [Integer, nil] The file size in bytes. `null` until the upload has finished.
          #
          #   @param upload_status [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::TermsOfService::UploadStatus] Where the file is in its upload lifecycle.
          #
          #   @param url [String, nil] A URL to download the file: a permanent CDN URL for public files, a signed expir
          #
          #   @param visibility [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::TermsOfService::Visibility] `public` files are served via an unsigned CDN URL; `private` files via a signed,
          #
          #   @param multipart_chunk_size [Integer, nil] The byte size each part (except the last) must be. Present only on create, and o
          #
          #   @param multipart_upload_id [String, nil] The ID of the multipart upload, passed back to `complete`. Present only on creat
          #
          #   @param multipart_upload_urls [Array<WhopSDK::Models::AccountUpdatedWebhookEvent::Data::TermsOfService::MultipartUploadURL>, nil]
          #
          #   @param upload_headers [Object] Headers to send with the upload PUT. Present only on create.
          #
          #   @param upload_url [String, nil] Presigned URL to PUT the file's bytes to. Present only on create, and only for s

          # Where the file is in its upload lifecycle.
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::TermsOfService#upload_status
          module UploadStatus
            extend WhopSDK::Internal::Type::Enum

            PENDING = :pending
            PROCESSING = :processing
            READY = :ready
            FAILED = :failed

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # `public` files are served via an unsigned CDN URL; `private` files via a signed,
          # expiring URL.
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::TermsOfService#visibility
          module Visibility
            extend WhopSDK::Internal::Type::Enum

            PUBLIC = :public
            PRIVATE = :private

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class MultipartUploadURL < WhopSDK::Internal::Type::BaseModel
            # @!attribute part_number
            #   The 1-based index of this part within the multipart upload.
            #
            #   @return [Integer]
            required :part_number, Integer

            # @!attribute url
            #   The presigned URL to PUT this part's bytes to.
            #
            #   @return [String]
            required :url, String

            # @!method initialize(part_number:, url:)
            #   The presigned URL for each part. Present only on create, and only for multipart
            #   uploads.
            #
            #   @param part_number [Integer] The 1-based index of this part within the multipart upload.
            #
            #   @param url [String] The presigned URL to PUT this part's bytes to.
          end
        end

        # Account-level 3D Secure behavior. `mandate_challenge` requires cardholder
        # verification on supported card payments; `null` uses the standard checkout flow.
        #
        # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data#three_ds_level
        module ThreeDSLevel
          extend WhopSDK::Internal::Type::Enum

          MANDATE_CHALLENGE = :mandate_challenge

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data#wallet
        class Wallet < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   Wallet ID, prefixed `wallet_`.
          #
          #   @return [String]
          required :id, String

          # @!attribute address
          #   The on-chain address of the wallet
          #
          #   @return [String]
          required :address, String

          # @!attribute network
          #   The blockchain network the wallet lives on
          #
          #   @return [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Wallet::Network]
          required :network, enum: -> { WhopSDK::AccountUpdatedWebhookEvent::Data::Wallet::Network }

          # @!method initialize(id:, address:, network:)
          #   Account primary crypto wallet, or `null` if none has been provisioned.
          #
          #   @param id [String] Wallet ID, prefixed `wallet_`.
          #
          #   @param address [String] The on-chain address of the wallet
          #
          #   @param network [Symbol, WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Wallet::Network] The blockchain network the wallet lives on

          # The blockchain network the wallet lives on
          #
          # @see WhopSDK::Models::AccountUpdatedWebhookEvent::Data::Wallet#network
          module Network
            extend WhopSDK::Internal::Type::Enum

            SOLANA = :solana
            ETHEREUM = :ethereum
            BITCOIN = :bitcoin

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
