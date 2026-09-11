# frozen_string_literal: true

module WhopSDK
  module Models
    class AccountFinancingApprovedWebhookEvent < WhopSDK::Internal::Type::BaseModel
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
      #   @return [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data]
      required :data, -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"account.financing_approved"]
      required :type, const: :"account.financing_approved"

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

      # @!method initialize(id:, api_version_date:, data:, timestamp:, account_id: nil, previous_attributes: nil, api_version: :v1, type: :"account.financing_approved")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param api_version_date [String, nil] The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @param data [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data]
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param account_id [String, nil] The account ID that this webhook event is associated with
      #
      #   @param previous_attributes [Object] For some `.updated` events, the old values of the payload fields that changed, k
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"account.financing_approved"] The webhook event type

      # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Account ID, prefixed `biz_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute balances
        #
        #   @return [Array<WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Balance>]
        required :balances,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Balance] }

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
        #   @return [String, nil]
        required :business_type, String, nil?: true

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
        #   @return [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities, nil]
        required :capabilities,
                 -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities },
                 nil?: true

        # @!attribute cards
        #   Whop Cards application details for the account. Computed only on `retrieve` and
        #   `me` for callers with `company:balance:read` scope; `null` otherwise, or when
        #   the account has no card application.
        #
        #   @return [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Cards, nil]
        required :cards, -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards }, nil?: true

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
        #   @return [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation]
        required :company_formation, -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation }

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

        # @!attribute economic_intelligence
        #   Whether economic intelligence is enabled for the account.
        #
        #   @return [Boolean]
        required :economic_intelligence, WhopSDK::Internal::Type::Boolean

        # @!attribute email
        #   Account owner email address.
        #
        #   @return [String, nil]
        required :email, String, nil?: true

        # @!attribute eula
        #   The account's end-user license agreement document, or `null` if they have not
        #   published one.
        #
        #   @return [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Eula, nil]
        required :eula, -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula }, nil?: true

        # @!attribute home_preferences
        #
        #   @return [Array<Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::HomePreference>]
        required :home_preferences,
                 -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AccountFinancingApprovedWebhookEvent::Data::HomePreference] }

        # @!attribute industry_group
        #   Account industry group. See the
        #   [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary)
        #   for valid values.
        #
        #   @return [String, nil]
        required :industry_group, String, nil?: true

        # @!attribute industry_type
        #   Specific industry vertical for the account. See the
        #   [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary)
        #   for valid values.
        #
        #   @return [String, nil]
        required :industry_type, String, nil?: true

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
        #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::OnboardingType, nil]
        required :onboarding_type,
                 enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::OnboardingType },
                 nil?: true

        # @!attribute opengraph_image_url
        #   Account Open Graph image URL.
        #
        #   @return [String, nil]
        required :opengraph_image_url, String, nil?: true

        # @!attribute opengraph_image_variant
        #   Account Open Graph image variant.
        #
        #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::OpengraphImageVariant, nil]
        required :opengraph_image_variant,
                 enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::OpengraphImageVariant },
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
        #   @return [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Owner]
        required :owner, -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Owner }

        # @!attribute parent_account
        #   Parent account for connected accounts, or `null` for standalone accounts.
        #
        #   @return [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::ParentAccount, nil]
        required :parent_account,
                 -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ParentAccount },
                 nil?: true

        # @!attribute payment_controls
        #   Payment health controls currently applied to the account. Computed only on
        #   `retrieve` and `me` for callers with `company:balance:read` scope; `null`
        #   otherwise.
        #
        #   @return [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls, nil]
        required :payment_controls,
                 -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls },
                 nil?: true

        # @!attribute privacy_policy
        #   The account's privacy policy document, or `null` if they have not published one.
        #
        #   @return [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy, nil]
        required :privacy_policy,
                 -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy },
                 nil?: true

        # @!attribute product_tax_code
        #   Tax classification code applied by default to the account's products, with `id`,
        #   `name`, and `product_type`. `null` when no default is set.
        #
        #   @return [Object, nil]
        required :product_tax_code, WhopSDK::Internal::Type::Unknown, nil?: true

        # @!attribute recommended_actions
        #   @deprecated
        #
        #   DEPRECATED: Use the `GET /economic_intelligence?account_id={account_id}`
        #   endpoint instead.
        #
        #   @return [Array<WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction>, nil]
        required :recommended_actions,
                 -> {
                   WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction]
                 },
                 nil?: true

        # @!attribute require_2fa
        #   Whether authorized users must enable two-factor authentication.
        #
        #   @return [Boolean]
        required :require_2fa, WhopSDK::Internal::Type::Boolean

        # @!attribute required_actions
        #
        #   @return [Array<WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::RequiredAction>, nil]
        required :required_actions,
                 -> {
                   WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction]
                 },
                 nil?: true

        # @!attribute return_policy
        #   The account's return policy document, or `null` if they have not published one.
        #
        #   @return [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy, nil]
        required :return_policy,
                 -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy },
                 nil?: true

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
        #   @return [Array<WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::SocialLink>]
        required :social_links,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountFinancingApprovedWebhookEvent::Data::SocialLink] }

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
        #   @return [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig]
        required :store_page_config, -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig }

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
        #   @return [Array<WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier>]
        required :tax_identifiers,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier] }

        # @!attribute tax_remitted_by
        #   Who calculates and remits tax for the account: `whop` (Whop calculates and
        #   remits), `self` (Whop calculates; the account collects and remits), or `none`
        #   (neither; the account is responsible). `null` until the account enrolls in the
        #   Whop tax service.
        #
        #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::TaxRemittedBy, nil]
        required :tax_remitted_by,
                 enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxRemittedBy },
                 nil?: true

        # @!attribute tax_type
        #   How tax is applied to the account's prices: `inclusive` (tax included in the
        #   listed price) or `exclusive` (tax added on top). Defaults to `exclusive` when
        #   unset; `null` only when the account has no payment connection.
        #
        #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::TaxType, nil]
        required :tax_type,
                 enum: -> {
                   WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxType
                 },
                 nil?: true

        # @!attribute terms_of_service
        #   The account's terms of service document, or `null` if they have not published
        #   one.
        #
        #   @return [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::TermsOfService, nil]
        required :terms_of_service,
                 -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService },
                 nil?: true

        # @!attribute three_ds_level
        #   Account-level 3D Secure behavior. `mandate_challenge` requires cardholder
        #   verification on supported card payments; `null` uses the standard checkout flow.
        #
        #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::ThreeDSLevel, nil]
        required :three_ds_level,
                 enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ThreeDSLevel },
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
        #   @return [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Wallet, nil]
        required :wallet, -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Wallet }, nil?: true

        # @!method initialize(id:, balances:, banner_image_url:, business_address:, business_name:, business_type:, can_transfer_pending_balance_to_children:, capabilities:, cards:, collect_vat_id:, company_formation:, country:, created_at:, description:, economic_intelligence:, email:, eula:, home_preferences:, industry_group:, industry_type:, invoice_prefix:, logo_url:, metadata:, onboarding_type:, opengraph_image_url:, opengraph_image_variant:, other_business_description:, other_industry_description:, owner:, parent_account:, payment_controls:, privacy_policy:, product_tax_code:, recommended_actions:, require_2fa:, required_actions:, return_policy:, route:, send_customer_emails:, show_joined_whops:, show_reviews_dtc:, show_user_directory:, social_links:, stablecoin_rails:, status:, status_reason:, store_page_config:, target_audience:, tax_collection_enabled_states:, tax_identifiers:, tax_remitted_by:, tax_type:, terms_of_service:, three_ds_level:, title:, total_earned_usd:, total_usd:, use_logo_as_opengraph_image_fallback:, verification:, volume_usd:, wallet:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data} for more details.
        #
        #   @param id [String] Account ID, prefixed `biz_`.
        #
        #   @param balances [Array<WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Balance>]
        #
        #   @param banner_image_url [String, nil] Account banner image URL.
        #
        #   @param business_address [Object, nil] Account business address used to calculate tax, with `line1`, `line2`, `city`, `
        #
        #   @param business_name [String, nil] The account's legal business name used with its tax address.
        #
        #   @param business_type [String, nil] High-level business category for the account. See the [business types and indust
        #
        #   @param can_transfer_pending_balance_to_children [Boolean] Whether pending funds may be transferred from this platform account to its conne
        #
        #   @param capabilities [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities, nil] Payment rails enabled for this account, each `active`, `inactive`, or `pending`
        #
        #   @param cards [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Cards, nil] Whop Cards application details for the account. Computed only on `retrieve` and
        #
        #   @param collect_vat_id [Boolean] Whether checkout shows a VAT/tax ID field for buyers to optionally enter. Does n
        #
        #   @param company_formation [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation] Company formation state for the account, managed through [Form Company](/api-ref
        #
        #   @param country [String, nil] Country where the account is located.
        #
        #   @param created_at [String] When the account was created, as an ISO 8601 timestamp.
        #
        #   @param description [String, nil] Account promotional description.
        #
        #   @param economic_intelligence [Boolean] Whether economic intelligence is enabled for the account.
        #
        #   @param email [String, nil] Account owner email address.
        #
        #   @param eula [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Eula, nil] The account's end-user license agreement document, or `null` if they have not pu
        #
        #   @param home_preferences [Array<Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::HomePreference>]
        #
        #   @param industry_group [String, nil] Account industry group. See the [business types and industries glossary](/api-re
        #
        #   @param industry_type [String, nil] Specific industry vertical for the account. See the [business types and industri
        #
        #   @param invoice_prefix [String, nil] Prefix used for account invoices.
        #
        #   @param logo_url [String, nil] Account logo image URL.
        #
        #   @param metadata [Object] Arbitrary key/value metadata supplied at account creation.
        #
        #   @param onboarding_type [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::OnboardingType, nil] Type of onboarding the account has completed.
        #
        #   @param opengraph_image_url [String, nil] Account Open Graph image URL.
        #
        #   @param opengraph_image_variant [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::OpengraphImageVariant, nil] Account Open Graph image variant.
        #
        #   @param other_business_description [String, nil] Business type details when business_type is `other`.
        #
        #   @param other_industry_description [String, nil] Industry details when industry_type is `other`.
        #
        #   @param owner [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Owner] The single user who owns the account, whose email is the `email` above. Distinct
        #
        #   @param parent_account [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::ParentAccount, nil] Parent account for connected accounts, or `null` for standalone accounts.
        #
        #   @param payment_controls [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls, nil] Payment health controls currently applied to the account. Computed only on `retr
        #
        #   @param privacy_policy [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy, nil] The account's privacy policy document, or `null` if they have not published one.
        #
        #   @param product_tax_code [Object, nil] Tax classification code applied by default to the account's products, with `id`,
        #
        #   @param recommended_actions [Array<WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction>, nil] DEPRECATED: Use the `GET /economic_intelligence?account_id={account_id}` endpoin
        #
        #   @param require_2fa [Boolean] Whether authorized users must enable two-factor authentication.
        #
        #   @param required_actions [Array<WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::RequiredAction>, nil]
        #
        #   @param return_policy [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy, nil] The account's return policy document, or `null` if they have not published one.
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
        #   @param social_links [Array<WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::SocialLink>]
        #
        #   @param stablecoin_rails [Boolean] Whether the account settles on stablecoin rails — its balance is held on-chain a
        #
        #   @param status [String, nil] Whether the account can operate on Whop: `active` or `suspended`. Computed on `l
        #
        #   @param status_reason [String, nil] Why the account was suspended, in language safe to show the account owner. Compu
        #
        #   @param store_page_config [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig] Account store page display configuration.
        #
        #   @param target_audience [String, nil] Target audience for this account.
        #
        #   @param tax_collection_enabled_states [Array<String>]
        #
        #   @param tax_identifiers [Array<WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier>]
        #
        #   @param tax_remitted_by [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::TaxRemittedBy, nil] Who calculates and remits tax for the account: `whop` (Whop calculates and remit
        #
        #   @param tax_type [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::TaxType, nil] How tax is applied to the account's prices: `inclusive` (tax included in the lis
        #
        #   @param terms_of_service [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::TermsOfService, nil] The account's terms of service document, or `null` if they have not published on
        #
        #   @param three_ds_level [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::ThreeDSLevel, nil] Account-level 3D Secure behavior. `mandate_challenge` requires cardholder verifi
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
        #   @param wallet [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Wallet, nil] Account primary crypto wallet, or `null` if none has been provisioned.

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
          #   @return [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Balance::Breakdown]
          required :breakdown, -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Balance::Breakdown }

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
          #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Balance} for more
          #   details.
          #
          #   Account holdings, each with USD value. Empty when `total_usd` is `null`.
          #
          #   @param balance [String] Total amount held in native units, as a decimal string.
          #
          #   @param breakdown [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Balance::Breakdown] Balance split into available, pending, and reserve amounts, as native-unit decim
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

          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Balance#breakdown
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
            #   @return [Array<WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Balance::Breakdown::PendingSettlement>]
            required :pending_settlements,
                     -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Balance::Breakdown::PendingSettlement] }

            # @!attribute reserve
            #   Amount held back, in native units, as a decimal string. Retrieve the account's
            #   reserves for why it is held and when it unlocks.
            #
            #   @return [String]
            required :reserve, String

            # @!method initialize(available:, in_transit:, pending:, pending_settlements:, reserve:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Balance::Breakdown}
            #   for more details.
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
            #   @param pending_settlements [Array<WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Balance::Breakdown::PendingSettlement>]
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

        # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data#capabilities
        class Capabilities < WhopSDK::Internal::Type::BaseModel
          # @!attribute accept_bank_payments
          #   Bank payins: debits, transfers, and local bank rails
          #
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptBankPayments]
          required :accept_bank_payments,
                   enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptBankPayments }

          # @!attribute accept_bnpl_payments
          #   Buy-now-pay-later payins; requires approval
          #
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptBnplPayments]
          required :accept_bnpl_payments,
                   enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptBnplPayments }

          # @!attribute accept_card_payments
          #   Card payins, including Apple Pay and Google Pay
          #
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptCardPayments]
          required :accept_card_payments,
                   enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptCardPayments }

          # @!attribute bank_deposit
          #   Deposits by bank wire or ACH to the account's virtual bank account
          #
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities::BankDeposit]
          required :bank_deposit,
                   enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::BankDeposit }

          # @!attribute card_deposit
          #   Balance top-ups by charging a stored payment method
          #
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CardDeposit]
          required :card_deposit,
                   enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CardDeposit }

          # @!attribute card_issuing
          #   Issuing Whop cards; requires card application approval
          #
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CardIssuing]
          required :card_issuing,
                   enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CardIssuing }

          # @!attribute crypto_deposit
          #   On-chain deposits to the account's crypto wallet
          #
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CryptoDeposit]
          required :crypto_deposit,
                   enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CryptoDeposit }

          # @!attribute crypto_payout
          #   On-chain payouts to a crypto wallet
          #
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CryptoPayout]
          required :crypto_payout,
                   enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CryptoPayout }

          # @!attribute instant_payout
          #   Instant payouts to an eligible payout destination
          #
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities::InstantPayout]
          required :instant_payout,
                   enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::InstantPayout }

          # @!attribute run_ads
          #   Launching ad campaigns through Whop Ads. `inactive` while a requested ads
          #   services agreement is awaiting the account's signature.
          #
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities::RunAds]
          required :run_ads, enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::RunAds }

          # @!attribute standard_payout
          #   Standard payouts to an external payout destination
          #
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities::StandardPayout]
          required :standard_payout,
                   enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::StandardPayout }

          # @!attribute transfer
          #   Transfers to other accounts
          #
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities::Transfer]
          required :transfer,
                   enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::Transfer }

          # @!method initialize(accept_bank_payments:, accept_bnpl_payments:, accept_card_payments:, bank_deposit:, card_deposit:, card_issuing:, crypto_deposit:, crypto_payout:, instant_payout:, run_ads:, standard_payout:, transfer:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities} for
          #   more details.
          #
          #   Payment rails enabled for this account, each `active`, `inactive`, or `pending`
          #   (onboarding or review in progress). Computed only on `retrieve` and `me` for
          #   callers with `company:balance:read` scope; `null` otherwise.
          #
          #   @param accept_bank_payments [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptBankPayments] Bank payins: debits, transfers, and local bank rails
          #
          #   @param accept_bnpl_payments [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptBnplPayments] Buy-now-pay-later payins; requires approval
          #
          #   @param accept_card_payments [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptCardPayments] Card payins, including Apple Pay and Google Pay
          #
          #   @param bank_deposit [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities::BankDeposit] Deposits by bank wire or ACH to the account's virtual bank account
          #
          #   @param card_deposit [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CardDeposit] Balance top-ups by charging a stored payment method
          #
          #   @param card_issuing [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CardIssuing] Issuing Whop cards; requires card application approval
          #
          #   @param crypto_deposit [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CryptoDeposit] On-chain deposits to the account's crypto wallet
          #
          #   @param crypto_payout [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CryptoPayout] On-chain payouts to a crypto wallet
          #
          #   @param instant_payout [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities::InstantPayout] Instant payouts to an eligible payout destination
          #
          #   @param run_ads [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities::RunAds] Launching ad campaigns through Whop Ads. `inactive` while a requested ads servic
          #
          #   @param standard_payout [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities::StandardPayout] Standard payouts to an external payout destination
          #
          #   @param transfer [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities::Transfer] Transfers to other accounts

          # Bank payins: debits, transfers, and local bank rails
          #
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities#accept_bank_payments
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
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities#accept_bnpl_payments
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
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities#accept_card_payments
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
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities#bank_deposit
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
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities#card_deposit
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
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities#card_issuing
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
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities#crypto_deposit
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
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities#crypto_payout
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
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities#instant_payout
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
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities#run_ads
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
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities#standard_payout
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
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Capabilities#transfer
          module Transfer
            extend WhopSDK::Internal::Type::Enum

            ACTIVE = :active
            INACTIVE = :inactive
            PENDING = :pending

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data#cards
        class Cards < WhopSDK::Internal::Type::BaseModel
          # @!attribute kind
          #   Whether the card application verifies a business (`business`, KYB) or a person
          #   (`individual`, consumer identity). `null` when the application is not yet linked
          #   to a verification.
          #
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Cards::Kind, nil]
          required :kind,
                   enum: -> {
                     WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards::Kind
                   },
                   nil?: true

          # @!attribute status
          #   Where the card application stands. `approved` means cards can be issued.
          #   `needs_verification` means the applicant has not completed identity verification
          #   yet; `needs_information` means they did, but the documents were rejected for a
          #   fixable reason and must be resubmitted. `pending` and `manual_review` are in
          #   flight. `denied`, `locked`, and `canceled` are terminal.
          #
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Cards::Status]
          required :status, enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards::Status }

          # @!method initialize(kind:, status:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Cards} for more
          #   details.
          #
          #   Whop Cards application details for the account. Computed only on `retrieve` and
          #   `me` for callers with `company:balance:read` scope; `null` otherwise, or when
          #   the account has no card application.
          #
          #   @param kind [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Cards::Kind, nil] Whether the card application verifies a business (`business`, KYB) or a person (
          #
          #   @param status [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Cards::Status] Where the card application stands. `approved` means cards can be issued.
          #   `needs\_

          # Whether the card application verifies a business (`business`, KYB) or a person
          # (`individual`, consumer identity). `null` when the application is not yet linked
          # to a verification.
          #
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Cards#kind
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
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Cards#status
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

        # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data#company_formation
        class CompanyFormation < WhopSDK::Internal::Type::BaseModel
          # @!attribute documents
          #
          #   @return [Array<WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Document>, nil]
          optional :documents,
                   -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Document] }

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
          #   @return [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures, nil]
          optional :signatures,
                   -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures }

          # @!attribute state_registered
          #   Whether the state formation filing is complete. Present once `status` leaves
          #   `draft`.
          #
          #   @return [Boolean, nil]
          optional :state_registered, WhopSDK::Internal::Type::Boolean

          # @!attribute status
          #
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Status, nil]
          optional :status,
                   enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Status }

          # @!method initialize(documents: nil, ein_registered: nil, legal_name: nil, signatures: nil, state_registered: nil, status: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation}
          #   for more details.
          #
          #   Company formation state for the account, managed through
          #   [Form Company](/api-reference/beta/accounts/form-company). A `draft` `status`
          #   until the formation checkout is paid, then filing progress with downloadable
          #   documents and signatures awaiting action. Empty when the formation state is
          #   temporarily unavailable.
          #
          #   @param documents [Array<WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Document>]
          #
          #   @param ein_registered [Boolean] Whether the company's EIN has been issued by the IRS. Present once `status` leav
          #
          #   @param legal_name [String, nil] Registered company name including the entity ending, for example `Acme, LLC`. Pr
          #
          #   @param signatures [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures] IRS forms still awaiting a founder's signature, each with a hosted signing URL.
          #
          #   @param state_registered [Boolean] Whether the state formation filing is complete. Present once `status` leaves `dr
          #
          #   @param status [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Status]

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
            #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Document}
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

          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation#signatures
          class Signatures < WhopSDK::Internal::Type::BaseModel
            # @!attribute form8821
            #   Signature state for IRS Form 8821, the tax information authorization. Present
            #   only while the form still needs the founder's action.
            #
            #   @return [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Form8821, nil]
            optional :form8821,
                     -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Form8821 }

            # @!attribute ss4
            #   Signature state for IRS Form SS-4, the EIN application. Present only while the
            #   form still needs the founder's action.
            #
            #   @return [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Ss4, nil]
            optional :ss4,
                     -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Ss4 }

            # @!method initialize(form8821: nil, ss4: nil)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures}
            #   for more details.
            #
            #   IRS forms still awaiting a founder's signature, each with a hosted signing URL.
            #   Present once `status` leaves `draft`; empty when nothing needs signing.
            #
            #   @param form8821 [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Form8821] Signature state for IRS Form 8821, the tax information authorization. Present on
            #
            #   @param ss4 [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Ss4] Signature state for IRS Form SS-4, the EIN application. Present only while the f

            # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures#form8821
            class Form8821 < WhopSDK::Internal::Type::BaseModel
              # @!attribute status
              #   `pending` when a signing session is ready for the founder; `unknown` when the
              #   signature state could not be determined.
              #
              #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Form8821::Status]
              required :status,
                       enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Form8821::Status }

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
              #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Form8821}
              #   for more details.
              #
              #   Signature state for IRS Form 8821, the tax information authorization. Present
              #   only while the form still needs the founder's action.
              #
              #   @param status [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Form8821::Status] `pending` when a signing session is ready for the founder; `unknown` when the si
              #
              #   @param expires_at [String] When the signing URL expires, as an ISO 8601 timestamp. Present while `status` i
              #
              #   @param url [String] Hosted signing URL where the founder completes the form. Present while `status`

              # `pending` when a signing session is ready for the founder; `unknown` when the
              # signature state could not be determined.
              #
              # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Form8821#status
              module Status
                extend WhopSDK::Internal::Type::Enum

                PENDING = :pending
                UNKNOWN = :unknown

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures#ss4
            class Ss4 < WhopSDK::Internal::Type::BaseModel
              # @!attribute status
              #   `pending` when a signing session is ready for the founder; `unknown` when the
              #   signature state could not be determined.
              #
              #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Ss4::Status]
              required :status,
                       enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Ss4::Status }

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
              #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Ss4}
              #   for more details.
              #
              #   Signature state for IRS Form SS-4, the EIN application. Present only while the
              #   form still needs the founder's action.
              #
              #   @param status [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Ss4::Status] `pending` when a signing session is ready for the founder; `unknown` when the si
              #
              #   @param expires_at [String] When the signing URL expires, as an ISO 8601 timestamp. Present while `status` i
              #
              #   @param url [String] Hosted signing URL where the founder completes the form. Present while `status`

              # `pending` when a signing session is ready for the founder; `unknown` when the
              # signature state could not be determined.
              #
              # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Ss4#status
              module Status
                extend WhopSDK::Internal::Type::Enum

                PENDING = :pending
                UNKNOWN = :unknown

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation#status
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

        # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data#eula
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
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Eula::UploadStatus]
          required :upload_status,
                   enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::UploadStatus }

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
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Eula::Visibility]
          required :visibility, enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::Visibility }

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
          #   @return [Array<WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Eula::MultipartUploadURL>, nil]
          optional :multipart_upload_urls,
                   -> {
                     WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::MultipartUploadURL]
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
          #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Eula} for more
          #   details.
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
          #   @param upload_status [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Eula::UploadStatus] Where the file is in its upload lifecycle.
          #
          #   @param url [String, nil] A URL to download the file: a permanent CDN URL for public files, a signed expir
          #
          #   @param visibility [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Eula::Visibility] `public` files are served via an unsigned CDN URL; `private` files via a signed,
          #
          #   @param multipart_chunk_size [Integer, nil] The byte size each part (except the last) must be. Present only on create, and o
          #
          #   @param multipart_upload_id [String, nil] The ID of the multipart upload, passed back to `complete`. Present only on creat
          #
          #   @param multipart_upload_urls [Array<WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Eula::MultipartUploadURL>, nil]
          #
          #   @param upload_headers [Object] Headers to send with the upload PUT. Present only on create.
          #
          #   @param upload_url [String, nil] Presigned URL to PUT the file's bytes to. Present only on create, and only for s

          # Where the file is in its upload lifecycle.
          #
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Eula#upload_status
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
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Eula#visibility
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

        # Type of onboarding the account has completed.
        #
        # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data#onboarding_type
        module OnboardingType
          extend WhopSDK::Internal::Type::Enum

          PLATFORM = :platform
          SELLER = :seller

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Account Open Graph image variant.
        #
        # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data#opengraph_image_variant
        module OpengraphImageVariant
          extend WhopSDK::Internal::Type::Enum

          WHITE = :white
          BLACK = :black
          ORANGE = :orange

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data#owner
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
          #   @return [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Owner::ProfilePicture]
          required :profile_picture,
                   -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Owner::ProfilePicture }

          # @!attribute username
          #   Public username.
          #
          #   @return [String]
          required :username, String

          # @!method initialize(id:, name:, profile_picture:, username:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Owner} for more
          #   details.
          #
          #   The single user who owns the account, whose email is the `email` above. Distinct
          #   from the `owner` role on team members, which any number of them can hold.
          #
          #   @param id [String] User ID, prefixed `user_`.
          #
          #   @param name [String, nil] Display name.
          #
          #   @param profile_picture [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Owner::ProfilePicture] Avatar wrapper; its `url` is always present, using a generated placeholder when
          #
          #   @param username [String] Public username.

          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Owner#profile_picture
          class ProfilePicture < WhopSDK::Internal::Type::BaseModel
            # @!attribute url
            #   Avatar image URL. Always present — a generated placeholder when the user set no
            #   picture.
            #
            #   @return [String]
            required :url, String

            # @!method initialize(url:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Owner::ProfilePicture}
            #   for more details.
            #
            #   Avatar wrapper; its `url` is always present, using a generated placeholder when
            #   the user set no picture.
            #
            #   @param url [String] Avatar image URL. Always present — a generated placeholder when the user set no
          end
        end

        # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data#parent_account
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

          # @!attribute fees
          #   Markup rates this parent charges the connected account being read, keyed by fee
          #   type (for example `crypto_deposit_markup`), each with `percentage_fee` and
          #   `fixed_fee_usd`. Resolved with the connected account's own overrides winning
          #   over the platform default.
          #
          #   @return [Hash{Symbol=>WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::ParentAccount::Fee}, nil]
          optional :fees,
                   -> { WhopSDK::Internal::Type::HashOf[WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ParentAccount::Fee] }

          # @!method initialize(id:, logo_url:, route:, title:, fees: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::ParentAccount} for
          #   more details.
          #
          #   Parent account for connected accounts, or `null` for standalone accounts.
          #
          #   @param id [String] Account ID, prefixed `biz_`.
          #
          #   @param logo_url [String, nil] Account logo image URL.
          #
          #   @param route [String] Account public route identifier.
          #
          #   @param title [String] Account display name.
          #
          #   @param fees [Hash{Symbol=>WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::ParentAccount::Fee}] Markup rates this parent charges the connected account being read, keyed by fee

          class Fee < WhopSDK::Internal::Type::BaseModel
            # @!attribute fixed_fee_usd
            #   Fixed markup in US dollars per transaction.
            #
            #   @return [Float]
            required :fixed_fee_usd, Float

            # @!attribute percentage_fee
            #   Percentage of the transaction charged as markup.
            #
            #   @return [Float]
            required :percentage_fee, Float

            # @!method initialize(fixed_fee_usd:, percentage_fee:)
            #   @param fixed_fee_usd [Float] Fixed markup in US dollars per transaction.
            #
            #   @param percentage_fee [Float] Percentage of the transaction charged as markup.
          end
        end

        # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data#payment_controls
        class PaymentControls < WhopSDK::Internal::Type::BaseModel
          # @!attribute dispute_alert_auto_refund
          #   Automatic refund settings for pre-chargeback dispute alerts.
          #
          #   @return [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::DisputeAlertAutoRefund]
          required :dispute_alert_auto_refund,
                   -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::DisputeAlertAutoRefund }

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
          #   @return [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::Reserve]
          required :reserve, -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::Reserve }

          # @!attribute resolution_center_auto_refund
          #   Automatic refund settings for resolution center cases.
          #
          #   @return [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::ResolutionCenterAutoRefund]
          required :resolution_center_auto_refund,
                   -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::ResolutionCenterAutoRefund }

          # @!attribute restricted_payment_methods
          #
          #   @return [Array<Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::RestrictedPaymentMethod>]
          required :restricted_payment_methods,
                   -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::RestrictedPaymentMethod] }

          # @!attribute undated_pending_reason
          #   Why pending funds without a settlement date aren't moving yet. `kyc_incomplete`
          #   and `pending_information_request` are things the merchant can act on.
          #   `withdrawals_disabled` means Whop has blocked withdrawals, so these funds cannot
          #   become available. `null` when there's no reason to show — still clearing, or
          #   held for a reason that isn't named here.
          #
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::UndatedPendingReason, nil]
          required :undated_pending_reason,
                   enum: -> {
                     WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::UndatedPendingReason
                   },
                   nil?: true

          # @!attribute withdrawal_schedule
          #   How the account's balance automatically withdraws.
          #
          #   @return [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::WithdrawalSchedule]
          required :withdrawal_schedule,
                   -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::WithdrawalSchedule }

          # @!method initialize(dispute_alert_auto_refund:, dispute_alert_fee_usd:, enforce_3ds:, financing_disabled:, high_risk_processing_fee_percentage:, pending_auto_topup_fee_percentage:, pending_balance_delay_days:, reserve:, resolution_center_auto_refund:, restricted_payment_methods:, undated_pending_reason:, withdrawal_schedule:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls}
          #   for more details.
          #
          #   Payment health controls currently applied to the account. Computed only on
          #   `retrieve` and `me` for callers with `company:balance:read` scope; `null`
          #   otherwise.
          #
          #   @param dispute_alert_auto_refund [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::DisputeAlertAutoRefund] Automatic refund settings for pre-chargeback dispute alerts.
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
          #   @param reserve [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::Reserve] Reserve currently applied to incoming payment volume.
          #
          #   @param resolution_center_auto_refund [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::ResolutionCenterAutoRefund] Automatic refund settings for resolution center cases.
          #
          #   @param restricted_payment_methods [Array<Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::RestrictedPaymentMethod>]
          #
          #   @param undated_pending_reason [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::UndatedPendingReason, nil] Why pending funds without a settlement date aren't moving yet. `kyc_incomplete`
          #
          #   @param withdrawal_schedule [WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::WithdrawalSchedule] How the account's balance automatically withdraws.

          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls#dispute_alert_auto_refund
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
            #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::DisputeAlertAutoRefund}
            #   for more details.
            #
            #   Automatic refund settings for pre-chargeback dispute alerts.
            #
            #   @param locked [Boolean] Whether the account owner is prevented from changing this threshold.
            #
            #   @param threshold_usd [Float, nil] Maximum dispute alert amount automatically refunded in USD. `null` when automati
          end

          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls#reserve
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
            #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::Reserve}
            #   for more details.
            #
            #   Reserve currently applied to incoming payment volume.
            #
            #   @param hold_period_days [Integer] Number of days reserved funds are held before release.
            #
            #   @param percentage [Float, nil] Percentage of incoming payment volume held in reserve. `null` when no reserve is
          end

          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls#resolution_center_auto_refund
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
            #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::ResolutionCenterAutoRefund}
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

          # Why pending funds without a settlement date aren't moving yet. `kyc_incomplete`
          # and `pending_information_request` are things the merchant can act on.
          # `withdrawals_disabled` means Whop has blocked withdrawals, so these funds cannot
          # become available. `null` when there's no reason to show — still clearing, or
          # held for a reason that isn't named here.
          #
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls#undated_pending_reason
          module UndatedPendingReason
            extend WhopSDK::Internal::Type::Enum

            KYC_INCOMPLETE = :kyc_incomplete
            PENDING_INFORMATION_REQUEST = :pending_information_request
            WITHDRAWALS_DISABLED = :withdrawals_disabled

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls#withdrawal_schedule
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
            #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::Frequency]
            required :frequency,
                     enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::Frequency }

            # @!attribute next_payout_date
            #   Next date the automatic withdrawal is scheduled to run, as an ISO 8601 date.
            #   `null` for `manual` and `daily`, where no single next date applies.
            #
            #   @return [String, nil]
            required :next_payout_date, String, nil?: true

            # @!method initialize(day:, frequency:, next_payout_date:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::WithdrawalSchedule}
            #   for more details.
            #
            #   How the account's balance automatically withdraws.
            #
            #   @param day [Integer, nil] Day the automatic withdrawal runs on: 0-6 (Sunday-Saturday) for `weekly`, 1-31 f
            #
            #   @param frequency [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::Frequency] How often the account's balance automatically withdraws.
            #
            #   @param next_payout_date [String, nil] Next date the automatic withdrawal is scheduled to run, as an ISO 8601 date. `nu

            # How often the account's balance automatically withdraws.
            #
            # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::WithdrawalSchedule#frequency
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

        # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data#privacy_policy
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
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::UploadStatus]
          required :upload_status,
                   enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::UploadStatus }

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
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::Visibility]
          required :visibility,
                   enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::Visibility }

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
          #   @return [Array<WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::MultipartUploadURL>, nil]
          optional :multipart_upload_urls,
                   -> {
                     WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::MultipartUploadURL]
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
          #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy} for
          #   more details.
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
          #   @param upload_status [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::UploadStatus] Where the file is in its upload lifecycle.
          #
          #   @param url [String, nil] A URL to download the file: a permanent CDN URL for public files, a signed expir
          #
          #   @param visibility [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::Visibility] `public` files are served via an unsigned CDN URL; `private` files via a signed,
          #
          #   @param multipart_chunk_size [Integer, nil] The byte size each part (except the last) must be. Present only on create, and o
          #
          #   @param multipart_upload_id [String, nil] The ID of the multipart upload, passed back to `complete`. Present only on creat
          #
          #   @param multipart_upload_urls [Array<WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::MultipartUploadURL>, nil]
          #
          #   @param upload_headers [Object] Headers to send with the upload PUT. Present only on create.
          #
          #   @param upload_url [String, nil] Presigned URL to PUT the file's bytes to. Present only on create, and only for s

          # Where the file is in its upload lifecycle.
          #
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy#upload_status
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
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy#visibility
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
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action]
          required :action,
                   enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action }

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
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Status]
          required :status,
                   enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Status }

          # @!attribute title
          #   Headline for the recommendation
          #
          #   @return [String]
          required :title, String

          # @!method initialize(action:, blocked_capabilities:, cta:, cta_label:, description:, icon_url:, impact_score:, reasoning:, status:, title:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction}
          #   for more details.
          #
          #   Deprecated: use the `GET /economic_intelligence?account_id={account_id}`
          #   endpoint instead. Optional actions that unlock capabilities or grow the account,
          #   same shape as `required_actions`. Computed only on `retrieve` and `me`; `null`
          #   otherwise.
          #
          #   @param action [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action] The recommendation; new values may be added, so handle unknown actions gracefull
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
          #   @param status [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Status] Always optional — never blocking
          #
          #   @param title [String] Headline for the recommendation

          # The recommendation; new values may be added, so handle unknown actions
          # gracefully
          #
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction#action
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
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction#status
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
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Action]
          required :action, enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Action }

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
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Status]
          required :status, enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Status }

          # @!attribute title
          #   Headline for the action
          #
          #   @return [String]
          required :title, String

          # @!method initialize(action:, blocked_capabilities:, cta:, cta_label:, description:, icon_url:, status:, title:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::RequiredAction}
          #   for more details.
          #
          #   Actions the account owner must take to unblock capabilities like payouts and
          #   card spend, ordered by display priority. Computed only on `retrieve` and `me`
          #   for callers with `company:balance:read` scope; `null` otherwise.
          #
          #   @param action [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Action] What the holder must do; new values may be added, so handle unknown actions grac
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
          #   @param status [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Status] required (act now) or pending (under review)
          #
          #   @param title [String] Headline for the action

          # What the holder must do; new values may be added, so handle unknown actions
          # gracefully
          #
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::RequiredAction#action
          module Action
            extend WhopSDK::Internal::Type::Enum

            DEPOSIT_FUNDS = :deposit_funds
            ACCEPT_AIRWALLEX_TERMS = :accept_airwallex_terms
            SUBMIT_INFORMATION_REQUEST = :submit_information_request
            UPDATE_AUTOMATIC_WITHDRAWAL_METHOD = :update_automatic_withdrawal_method
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
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::RequiredAction#status
          module Status
            extend WhopSDK::Internal::Type::Enum

            REQUIRED = :required
            PENDING = :pending

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data#return_policy
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
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::UploadStatus]
          required :upload_status,
                   enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::UploadStatus }

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
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::Visibility]
          required :visibility,
                   enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::Visibility }

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
          #   @return [Array<WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::MultipartUploadURL>, nil]
          optional :multipart_upload_urls,
                   -> {
                     WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::MultipartUploadURL]
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
          #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy} for
          #   more details.
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
          #   @param upload_status [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::UploadStatus] Where the file is in its upload lifecycle.
          #
          #   @param url [String, nil] A URL to download the file: a permanent CDN URL for public files, a signed expir
          #
          #   @param visibility [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::Visibility] `public` files are served via an unsigned CDN URL; `private` files via a signed,
          #
          #   @param multipart_chunk_size [Integer, nil] The byte size each part (except the last) must be. Present only on create, and o
          #
          #   @param multipart_upload_id [String, nil] The ID of the multipart upload, passed back to `complete`. Present only on creat
          #
          #   @param multipart_upload_urls [Array<WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::MultipartUploadURL>, nil]
          #
          #   @param upload_headers [Object] Headers to send with the upload PUT. Present only on create.
          #
          #   @param upload_url [String, nil] Presigned URL to PUT the file's bytes to. Present only on create, and only for s

          # Where the file is in its upload lifecycle.
          #
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy#upload_status
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
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy#visibility
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
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::SocialLink::Website]
          required :website, enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::SocialLink::Website }

          # @!method initialize(id:, title:, url:, website:)
          #   Account social links.
          #
          #   @param id [String] The ID of the social link
          #
          #   @param title [String, nil] The optional display title for the social link
          #
          #   @param url [String] The social link URL
          #
          #   @param website [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::SocialLink::Website] The social platform for this link

          # The social platform for this link
          #
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::SocialLink#website
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

        # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data#store_page_config
        class StorePageConfig < WhopSDK::Internal::Type::BaseModel
          # @!attribute accent_color
          #   Accent color used on the account store page.
          #
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor, nil]
          required :accent_color,
                   enum: -> {
                     WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor
                   },
                   nil?: true

          # @!attribute layout
          #   Layout used on the account store page.
          #
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::Layout, nil]
          required :layout,
                   enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::Layout },
                   nil?: true

          # @!attribute profile_variant
          #   Profile presentation used on the account store page.
          #
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::ProfileVariant, nil]
          required :profile_variant,
                   enum: -> {
                     WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::ProfileVariant
                   },
                   nil?: true

          # @!attribute whop_affiliate_link
          #   Whether the account store page shows a Whop affiliate link.
          #
          #   @return [Boolean]
          required :whop_affiliate_link, WhopSDK::Internal::Type::Boolean

          # @!method initialize(accent_color:, layout:, profile_variant:, whop_affiliate_link:)
          #   Account store page display configuration.
          #
          #   @param accent_color [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor, nil] Accent color used on the account store page.
          #
          #   @param layout [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::Layout, nil] Layout used on the account store page.
          #
          #   @param profile_variant [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::ProfileVariant, nil] Profile presentation used on the account store page.
          #
          #   @param whop_affiliate_link [Boolean] Whether the account store page shows a Whop affiliate link.

          # Accent color used on the account store page.
          #
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig#accent_color
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
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig#layout
          module Layout
            extend WhopSDK::Internal::Type::Enum

            FEATURED = :featured
            COMPACT = :compact

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Profile presentation used on the account store page.
          #
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig#profile_variant
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
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType]
          required :tax_id_type,
                   enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType }

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
          #   @param tax_id_type [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType] Tax ID type.
          #
          #   @param tax_id_value [String] Tax ID value.

          # Tax ID type.
          #
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier#tax_id_type
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
        # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data#tax_remitted_by
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
        # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data#tax_type
        module TaxType
          extend WhopSDK::Internal::Type::Enum

          INCLUSIVE = :inclusive
          EXCLUSIVE = :exclusive

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data#terms_of_service
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
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::UploadStatus]
          required :upload_status,
                   enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::UploadStatus }

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
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::Visibility]
          required :visibility,
                   enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::Visibility }

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
          #   @return [Array<WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::MultipartUploadURL>, nil]
          optional :multipart_upload_urls,
                   -> {
                     WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::MultipartUploadURL]
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
          #   {WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::TermsOfService}
          #   for more details.
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
          #   @param upload_status [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::UploadStatus] Where the file is in its upload lifecycle.
          #
          #   @param url [String, nil] A URL to download the file: a permanent CDN URL for public files, a signed expir
          #
          #   @param visibility [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::Visibility] `public` files are served via an unsigned CDN URL; `private` files via a signed,
          #
          #   @param multipart_chunk_size [Integer, nil] The byte size each part (except the last) must be. Present only on create, and o
          #
          #   @param multipart_upload_id [String, nil] The ID of the multipart upload, passed back to `complete`. Present only on creat
          #
          #   @param multipart_upload_urls [Array<WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::MultipartUploadURL>, nil]
          #
          #   @param upload_headers [Object] Headers to send with the upload PUT. Present only on create.
          #
          #   @param upload_url [String, nil] Presigned URL to PUT the file's bytes to. Present only on create, and only for s

          # Where the file is in its upload lifecycle.
          #
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::TermsOfService#upload_status
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
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::TermsOfService#visibility
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
        # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data#three_ds_level
        module ThreeDSLevel
          extend WhopSDK::Internal::Type::Enum

          MANDATE_CHALLENGE = :mandate_challenge

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data#wallet
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
          #   @return [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Wallet::Network]
          required :network, enum: -> { WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Wallet::Network }

          # @!method initialize(id:, address:, network:)
          #   Account primary crypto wallet, or `null` if none has been provisioned.
          #
          #   @param id [String] Wallet ID, prefixed `wallet_`.
          #
          #   @param address [String] The on-chain address of the wallet
          #
          #   @param network [Symbol, WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Wallet::Network] The blockchain network the wallet lives on

          # The blockchain network the wallet lives on
          #
          # @see WhopSDK::Models::AccountFinancingApprovedWebhookEvent::Data::Wallet#network
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
