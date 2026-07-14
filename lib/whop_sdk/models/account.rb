# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Accounts#create
    class Account < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Account ID, prefixed `biz_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute balances
      #
      #   @return [Array<WhopSDK::Models::Account::Balance>]
      required :balances, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Account::Balance] }

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

      # @!attribute business_type
      #   High-level business category for the account.
      #
      #   @return [String, nil]
      required :business_type, String, nil?: true

      # @!attribute capabilities
      #   Payment rails enabled for this account, each `active`, `inactive`, or `pending`
      #   (onboarding or review in progress). Computed only on `retrieve` and `me` for
      #   callers with `company:balance:read` scope; `null` otherwise.
      #
      #   @return [WhopSDK::Models::Account::Capabilities, nil]
      required :capabilities, -> { WhopSDK::Account::Capabilities }, nil?: true

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

      # @!attribute home_preferences
      #
      #   @return [Array<String>]
      required :home_preferences, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute industry_group
      #   Account industry group.
      #
      #   @return [String, nil]
      required :industry_group, String, nil?: true

      # @!attribute industry_type
      #   Specific industry vertical for the account.
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
      #   @return [String, nil]
      required :onboarding_type, String, nil?: true

      # @!attribute opengraph_image_url
      #   Account Open Graph image URL.
      #
      #   @return [String, nil]
      required :opengraph_image_url, String, nil?: true

      # @!attribute opengraph_image_variant
      #   Account Open Graph image variant.
      #
      #   @return [String, nil]
      required :opengraph_image_variant, String, nil?: true

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

      # @!attribute parent_account_id
      #   Parent account ID for connected accounts.
      #
      #   @return [String, nil]
      required :parent_account_id, String, nil?: true

      # @!attribute product_tax_code
      #   Tax classification code applied by default to the account's products, with `id`,
      #   `name`, and `product_type`. `null` when no default is set.
      #
      #   @return [Object, nil]
      required :product_tax_code, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute recommended_actions
      #   @deprecated
      #
      #   DEPRECATED: Use the `GET /accounts/{account_id}/recommend_actions` endpoint
      #   instead.
      #
      #   @return [Array<WhopSDK::Models::Account::RecommendedAction>, nil]
      required :recommended_actions,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Account::RecommendedAction] },
               nil?: true

      # @!attribute require_2fa
      #   Whether authorized users must enable two-factor authentication.
      #
      #   @return [Boolean]
      required :require_2fa, WhopSDK::Internal::Type::Boolean

      # @!attribute required_actions
      #
      #   @return [Array<WhopSDK::Models::Account::RequiredAction>, nil]
      required :required_actions,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Account::RequiredAction] },
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
      #   @return [Array<WhopSDK::Models::AccountSocialLink>]
      required :social_links, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountSocialLink] }

      # @!attribute status
      #   Whether the account can operate on Whop: `active` or `suspended`. Computed only
      #   on `retrieve` and `me`; `null` otherwise.
      #
      #   @return [String, nil]
      required :status, String, nil?: true

      # @!attribute store_page_config
      #   Account store page display configuration.
      #
      #   @return [Object]
      required :store_page_config, WhopSDK::Internal::Type::Unknown

      # @!attribute target_audience
      #   Target audience for this account.
      #
      #   @return [String, nil]
      required :target_audience, String, nil?: true

      # @!attribute tax_identifiers
      #   Account tax/VAT registrations, each with `id`, `tax_id_type`, and
      #   `tax_id_value`. Empty when none are set.
      #
      #   @return [Array<Object>]
      required :tax_identifiers, WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::Unknown]

      # @!attribute tax_remitted_by
      #   Who calculates and remits tax for the account: `whop` (Whop calculates and
      #   remits), `self` (Whop calculates; the account collects and remits), or `none`
      #   (neither; the account is responsible). `null` until the account enrolls in the
      #   Whop tax service.
      #
      #   @return [String, nil]
      required :tax_remitted_by, String, nil?: true

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
      #   `not_started`, `pending`, `approved`, or `rejected`.
      #
      #   @return [Object]
      required :verification, WhopSDK::Internal::Type::Unknown

      # @!attribute wallet
      #   Account primary crypto wallet, or `null` if none has been provisioned.
      #
      #   @return [WhopSDK::Models::Account::Wallet, nil]
      required :wallet, -> { WhopSDK::Account::Wallet }, nil?: true

      # @!method initialize(id:, balances:, banner_image_url:, business_address:, business_type:, capabilities:, country:, created_at:, description:, email:, home_preferences:, industry_group:, industry_type:, invoice_prefix:, logo_url:, metadata:, onboarding_type:, opengraph_image_url:, opengraph_image_variant:, other_business_description:, other_industry_description:, parent_account_id:, product_tax_code:, recommended_actions:, require_2fa:, required_actions:, route:, send_customer_emails:, show_joined_whops:, show_reviews_dtc:, show_user_directory:, social_links:, status:, store_page_config:, target_audience:, tax_identifiers:, tax_remitted_by:, title:, total_earned_usd:, total_usd:, use_logo_as_opengraph_image_fallback:, verification:, wallet:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::Account}
      #   for more details.
      #
      #   @param id [String] Account ID, prefixed `biz_`.
      #
      #   @param balances [Array<WhopSDK::Models::Account::Balance>]
      #
      #   @param banner_image_url [String, nil] Account banner image URL.
      #
      #   @param business_address [Object, nil] Account business address used to calculate tax, with `line1`, `line2`, `city`, `
      #
      #   @param business_type [String, nil] High-level business category for the account.
      #
      #   @param capabilities [WhopSDK::Models::Account::Capabilities, nil] Payment rails enabled for this account, each `active`, `inactive`, or `pending`
      #
      #   @param country [String, nil] Country where the account is located.
      #
      #   @param created_at [String] When the account was created, as an ISO 8601 timestamp.
      #
      #   @param description [String, nil] Account promotional description.
      #
      #   @param email [String, nil] Account owner email address.
      #
      #   @param home_preferences [Array<String>]
      #
      #   @param industry_group [String, nil] Account industry group.
      #
      #   @param industry_type [String, nil] Specific industry vertical for the account.
      #
      #   @param invoice_prefix [String, nil] Prefix used for account invoices.
      #
      #   @param logo_url [String, nil] Account logo image URL.
      #
      #   @param metadata [Object] Arbitrary key/value metadata supplied at account creation.
      #
      #   @param onboarding_type [String, nil] Type of onboarding the account has completed.
      #
      #   @param opengraph_image_url [String, nil] Account Open Graph image URL.
      #
      #   @param opengraph_image_variant [String, nil] Account Open Graph image variant.
      #
      #   @param other_business_description [String, nil] Business type details when business_type is `other`.
      #
      #   @param other_industry_description [String, nil] Industry details when industry_type is `other`.
      #
      #   @param parent_account_id [String, nil] Parent account ID for connected accounts.
      #
      #   @param product_tax_code [Object, nil] Tax classification code applied by default to the account's products, with `id`,
      #
      #   @param recommended_actions [Array<WhopSDK::Models::Account::RecommendedAction>, nil] DEPRECATED: Use the `GET /accounts/{account_id}/recommend_actions` endpoint inst
      #
      #   @param require_2fa [Boolean] Whether authorized users must enable two-factor authentication.
      #
      #   @param required_actions [Array<WhopSDK::Models::Account::RequiredAction>, nil]
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
      #   @param social_links [Array<WhopSDK::Models::AccountSocialLink>]
      #
      #   @param status [String, nil] Whether the account can operate on Whop: `active` or `suspended`. Computed only
      #
      #   @param store_page_config [Object] Account store page display configuration.
      #
      #   @param target_audience [String, nil] Target audience for this account.
      #
      #   @param tax_identifiers [Array<Object>] Account tax/VAT registrations, each with `id`, `tax_id_type`, and `tax_id_value`
      #
      #   @param tax_remitted_by [String, nil] Who calculates and remits tax for the account: `whop` (Whop calculates and remit
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
      #   @param wallet [WhopSDK::Models::Account::Wallet, nil] Account primary crypto wallet, or `null` if none has been provisioned.

      class Balance < WhopSDK::Internal::Type::BaseModel
        # @!attribute balance
        #   Total amount held in native units, as a decimal string.
        #
        #   @return [String]
        required :balance, String

        # @!attribute breakdown
        #   Balance split into available, pending, and reserve amounts, as native-unit
        #   decimal strings. On-chain crypto is entirely available; good_funds and fiat cash
        #   can have pending or reserve portions.
        #
        #   @return [Object]
        required :breakdown, WhopSDK::Internal::Type::Unknown

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
        #   {WhopSDK::Models::Account::Balance} for more details.
        #
        #   Account holdings, each with USD value. Empty when `total_usd` is `null`.
        #
        #   @param balance [String] Total amount held in native units, as a decimal string.
        #
        #   @param breakdown [Object] Balance split into available, pending, and reserve amounts, as native-unit decim
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
      end

      # @see WhopSDK::Models::Account#capabilities
      class Capabilities < WhopSDK::Internal::Type::BaseModel
        # @!attribute accept_bank_payments
        #   Bank payins: debits, transfers, and local bank rails
        #
        #   @return [Symbol, WhopSDK::Models::Account::Capabilities::AcceptBankPayments]
        required :accept_bank_payments, enum: -> { WhopSDK::Account::Capabilities::AcceptBankPayments }

        # @!attribute accept_bnpl_payments
        #   Buy-now-pay-later payins; requires approval
        #
        #   @return [Symbol, WhopSDK::Models::Account::Capabilities::AcceptBnplPayments]
        required :accept_bnpl_payments, enum: -> { WhopSDK::Account::Capabilities::AcceptBnplPayments }

        # @!attribute accept_card_payments
        #   Card payins, including Apple Pay and Google Pay
        #
        #   @return [Symbol, WhopSDK::Models::Account::Capabilities::AcceptCardPayments]
        required :accept_card_payments, enum: -> { WhopSDK::Account::Capabilities::AcceptCardPayments }

        # @!attribute bank_deposit
        #   Deposits by bank wire or ACH to the account's virtual bank account
        #
        #   @return [Symbol, WhopSDK::Models::Account::Capabilities::BankDeposit]
        required :bank_deposit, enum: -> { WhopSDK::Account::Capabilities::BankDeposit }

        # @!attribute card_deposit
        #   Balance top-ups by charging a stored payment method
        #
        #   @return [Symbol, WhopSDK::Models::Account::Capabilities::CardDeposit]
        required :card_deposit, enum: -> { WhopSDK::Account::Capabilities::CardDeposit }

        # @!attribute card_issuing
        #   Issuing Whop cards; requires card application approval
        #
        #   @return [Symbol, WhopSDK::Models::Account::Capabilities::CardIssuing]
        required :card_issuing, enum: -> { WhopSDK::Account::Capabilities::CardIssuing }

        # @!attribute crypto_deposit
        #   On-chain deposits to the account's crypto wallet
        #
        #   @return [Symbol, WhopSDK::Models::Account::Capabilities::CryptoDeposit]
        required :crypto_deposit, enum: -> { WhopSDK::Account::Capabilities::CryptoDeposit }

        # @!attribute crypto_payout
        #   On-chain payouts to a crypto wallet
        #
        #   @return [Symbol, WhopSDK::Models::Account::Capabilities::CryptoPayout]
        required :crypto_payout, enum: -> { WhopSDK::Account::Capabilities::CryptoPayout }

        # @!attribute instant_payout
        #   Instant payouts to an eligible payout destination
        #
        #   @return [Symbol, WhopSDK::Models::Account::Capabilities::InstantPayout]
        required :instant_payout, enum: -> { WhopSDK::Account::Capabilities::InstantPayout }

        # @!attribute standard_payout
        #   Standard payouts to an external payout destination
        #
        #   @return [Symbol, WhopSDK::Models::Account::Capabilities::StandardPayout]
        required :standard_payout, enum: -> { WhopSDK::Account::Capabilities::StandardPayout }

        # @!attribute transfer
        #   Transfers to other accounts
        #
        #   @return [Symbol, WhopSDK::Models::Account::Capabilities::Transfer]
        required :transfer, enum: -> { WhopSDK::Account::Capabilities::Transfer }

        # @!method initialize(accept_bank_payments:, accept_bnpl_payments:, accept_card_payments:, bank_deposit:, card_deposit:, card_issuing:, crypto_deposit:, crypto_payout:, instant_payout:, standard_payout:, transfer:)
        #   Payment rails enabled for this account, each `active`, `inactive`, or `pending`
        #   (onboarding or review in progress). Computed only on `retrieve` and `me` for
        #   callers with `company:balance:read` scope; `null` otherwise.
        #
        #   @param accept_bank_payments [Symbol, WhopSDK::Models::Account::Capabilities::AcceptBankPayments] Bank payins: debits, transfers, and local bank rails
        #
        #   @param accept_bnpl_payments [Symbol, WhopSDK::Models::Account::Capabilities::AcceptBnplPayments] Buy-now-pay-later payins; requires approval
        #
        #   @param accept_card_payments [Symbol, WhopSDK::Models::Account::Capabilities::AcceptCardPayments] Card payins, including Apple Pay and Google Pay
        #
        #   @param bank_deposit [Symbol, WhopSDK::Models::Account::Capabilities::BankDeposit] Deposits by bank wire or ACH to the account's virtual bank account
        #
        #   @param card_deposit [Symbol, WhopSDK::Models::Account::Capabilities::CardDeposit] Balance top-ups by charging a stored payment method
        #
        #   @param card_issuing [Symbol, WhopSDK::Models::Account::Capabilities::CardIssuing] Issuing Whop cards; requires card application approval
        #
        #   @param crypto_deposit [Symbol, WhopSDK::Models::Account::Capabilities::CryptoDeposit] On-chain deposits to the account's crypto wallet
        #
        #   @param crypto_payout [Symbol, WhopSDK::Models::Account::Capabilities::CryptoPayout] On-chain payouts to a crypto wallet
        #
        #   @param instant_payout [Symbol, WhopSDK::Models::Account::Capabilities::InstantPayout] Instant payouts to an eligible payout destination
        #
        #   @param standard_payout [Symbol, WhopSDK::Models::Account::Capabilities::StandardPayout] Standard payouts to an external payout destination
        #
        #   @param transfer [Symbol, WhopSDK::Models::Account::Capabilities::Transfer] Transfers to other accounts

        # Bank payins: debits, transfers, and local bank rails
        #
        # @see WhopSDK::Models::Account::Capabilities#accept_bank_payments
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
        # @see WhopSDK::Models::Account::Capabilities#accept_bnpl_payments
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
        # @see WhopSDK::Models::Account::Capabilities#accept_card_payments
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
        # @see WhopSDK::Models::Account::Capabilities#bank_deposit
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
        # @see WhopSDK::Models::Account::Capabilities#card_deposit
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
        # @see WhopSDK::Models::Account::Capabilities#card_issuing
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
        # @see WhopSDK::Models::Account::Capabilities#crypto_deposit
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
        # @see WhopSDK::Models::Account::Capabilities#crypto_payout
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
        # @see WhopSDK::Models::Account::Capabilities#instant_payout
        module InstantPayout
          extend WhopSDK::Internal::Type::Enum

          ACTIVE = :active
          INACTIVE = :inactive
          PENDING = :pending

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Standard payouts to an external payout destination
        #
        # @see WhopSDK::Models::Account::Capabilities#standard_payout
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
        # @see WhopSDK::Models::Account::Capabilities#transfer
        module Transfer
          extend WhopSDK::Internal::Type::Enum

          ACTIVE = :active
          INACTIVE = :inactive
          PENDING = :pending

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class RecommendedAction < WhopSDK::Internal::Type::BaseModel
        # @!attribute action
        #   The recommendation; new values may be added, so handle unknown actions
        #   gracefully
        #
        #   @return [Symbol, WhopSDK::Models::Account::RecommendedAction::Action]
        required :action, enum: -> { WhopSDK::Account::RecommendedAction::Action }

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
        #   Estimated revenue impact from 0-100, comparable across accounts, or `null` when
        #   not ranked
        #
        #   @return [Integer, nil]
        required :impact_score, Integer, nil?: true

        # @!attribute reasoning
        #   Why this action was recommended for this account, or `null`
        #
        #   @return [String, nil]
        required :reasoning, String, nil?: true

        # @!attribute status
        #   Always optional — never blocking
        #
        #   @return [Symbol, WhopSDK::Models::Account::RecommendedAction::Status]
        required :status, enum: -> { WhopSDK::Account::RecommendedAction::Status }

        # @!attribute title
        #   Headline for the recommendation
        #
        #   @return [String]
        required :title, String

        # @!method initialize(action:, blocked_capabilities:, cta:, cta_label:, description:, icon_url:, impact_score:, reasoning:, status:, title:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Account::RecommendedAction} for more details.
        #
        #   Deprecated: use the `GET /accounts/{account_id}/recommend_actions` endpoint
        #   instead. Optional actions that unlock capabilities or grow the account, same
        #   shape as `required_actions`. Computed only on `retrieve` and `me`; `null`
        #   otherwise.
        #
        #   @param action [Symbol, WhopSDK::Models::Account::RecommendedAction::Action] The recommendation; new values may be added, so handle unknown actions gracefull
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
        #   @param impact_score [Integer, nil] Estimated revenue impact from 0-100, comparable across accounts, or `null` when
        #
        #   @param reasoning [String, nil] Why this action was recommended for this account, or `null`
        #
        #   @param status [Symbol, WhopSDK::Models::Account::RecommendedAction::Status] Always optional — never blocking
        #
        #   @param title [String] Headline for the recommendation

        # The recommendation; new values may be added, so handle unknown actions
        # gracefully
        #
        # @see WhopSDK::Models::Account::RecommendedAction#action
        module Action
          extend WhopSDK::Internal::Type::Enum

          THEME_BUSINESS = :theme_business
          CREATE_PRODUCT = :create_product
          CREATE_PLAN = :create_plan
          VERIFY_IDENTITY = :verify_identity
          CONNECT_AFFILIATE_PROGRAM = :connect_affiliate_program
          CREATE_PROMOTION = :create_promotion
          SETUP_TRACKING_PIXEL = :setup_tracking_pixel
          MIGRATE_FROM_STRIPE = :migrate_from_stripe
          ACCEPT_FIRST_PAYMENT = :accept_first_payment
          LAUNCH_FIRST_AD = :launch_first_ad
          INVITE_TEAM_MEMBER = :invite_team_member
          ENABLE_TAX_COLLECTION = :enable_tax_collection
          CREATE_CARD = :create_card
          JOIN_WHOP_UNIVERSITY = :join_whop_university
          APPLY_FOR_FINANCING = :apply_for_financing

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Always optional — never blocking
        #
        # @see WhopSDK::Models::Account::RecommendedAction#status
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
        #   @return [Symbol, WhopSDK::Models::Account::RequiredAction::Action]
        required :action, enum: -> { WhopSDK::Account::RequiredAction::Action }

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
        #   @return [Symbol, WhopSDK::Models::Account::RequiredAction::Status]
        required :status, enum: -> { WhopSDK::Account::RequiredAction::Status }

        # @!attribute title
        #   Headline for the action
        #
        #   @return [String]
        required :title, String

        # @!method initialize(action:, blocked_capabilities:, cta:, cta_label:, description:, icon_url:, status:, title:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Account::RequiredAction} for more details.
        #
        #   Actions the account owner must take to unblock capabilities like payouts and
        #   card spend, ordered by display priority. Computed only on `retrieve` and `me`
        #   for callers with `company:balance:read` scope; `null` otherwise.
        #
        #   @param action [Symbol, WhopSDK::Models::Account::RequiredAction::Action] What the holder must do; new values may be added, so handle unknown actions grac
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
        #   @param status [Symbol, WhopSDK::Models::Account::RequiredAction::Status] required (act now) or pending (under review)
        #
        #   @param title [String] Headline for the action

        # What the holder must do; new values may be added, so handle unknown actions
        # gracefully
        #
        # @see WhopSDK::Models::Account::RequiredAction#action
        module Action
          extend WhopSDK::Internal::Type::Enum

          DEPOSIT_FUNDS = :deposit_funds
          SUBMIT_INFORMATION_REQUEST = :submit_information_request
          VERIFY_IDENTITY = :verify_identity
          CONNECT_FULFILLMENT_TRACKER = :connect_fulfillment_tracker

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # required (act now) or pending (under review)
        #
        # @see WhopSDK::Models::Account::RequiredAction#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          REQUIRED = :required
          PENDING = :pending

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see WhopSDK::Models::Account#wallet
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
        #   @return [Symbol, WhopSDK::Models::Account::Wallet::Network]
        required :network, enum: -> { WhopSDK::Account::Wallet::Network }

        # @!method initialize(id:, address:, network:)
        #   Account primary crypto wallet, or `null` if none has been provisioned.
        #
        #   @param id [String] Wallet ID, prefixed `wallet_`.
        #
        #   @param address [String] The on-chain address of the wallet
        #
        #   @param network [Symbol, WhopSDK::Models::Account::Wallet::Network] The blockchain network the wallet lives on

        # The blockchain network the wallet lives on
        #
        # @see WhopSDK::Models::Account::Wallet#network
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
