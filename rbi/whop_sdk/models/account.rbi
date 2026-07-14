# typed: strong

module WhopSDK
  module Models
    class Account < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Account, WhopSDK::Internal::AnyHash) }

      # Account ID, prefixed `biz_`.
      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Array[WhopSDK::Account::Balance]) }
      attr_accessor :balances

      # Account banner image URL.
      sig { returns(T.nilable(String)) }
      attr_accessor :banner_image_url

      # Account business address used to calculate tax, with `line1`, `line2`, `city`,
      # `state`, `postal_code`, and `country`. `null` when no address is set.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :business_address

      # High-level business category for the account.
      sig { returns(T.nilable(String)) }
      attr_accessor :business_type

      # Payment rails enabled for this account, each `active`, `inactive`, or `pending`
      # (onboarding or review in progress). Computed only on `retrieve` and `me` for
      # callers with `company:balance:read` scope; `null` otherwise.
      sig { returns(T.nilable(WhopSDK::Account::Capabilities)) }
      attr_reader :capabilities

      sig do
        params(
          capabilities: T.nilable(WhopSDK::Account::Capabilities::OrHash)
        ).void
      end
      attr_writer :capabilities

      # Country where the account is located.
      sig { returns(T.nilable(String)) }
      attr_accessor :country

      # When the account was created, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :created_at

      # Account promotional description.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Account owner email address.
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      sig { returns(T::Array[String]) }
      attr_accessor :home_preferences

      # Account industry group.
      sig { returns(T.nilable(String)) }
      attr_accessor :industry_group

      # Specific industry vertical for the account.
      sig { returns(T.nilable(String)) }
      attr_accessor :industry_type

      # Prefix used for account invoices.
      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_prefix

      # Account logo image URL.
      sig { returns(T.nilable(String)) }
      attr_accessor :logo_url

      # Arbitrary key/value metadata supplied at account creation.
      sig { returns(T.anything) }
      attr_accessor :metadata

      # Type of onboarding the account has completed.
      sig { returns(T.nilable(String)) }
      attr_accessor :onboarding_type

      # Account Open Graph image URL.
      sig { returns(T.nilable(String)) }
      attr_accessor :opengraph_image_url

      # Account Open Graph image variant.
      sig { returns(T.nilable(String)) }
      attr_accessor :opengraph_image_variant

      # Business type details when business_type is `other`.
      sig { returns(T.nilable(String)) }
      attr_accessor :other_business_description

      # Industry details when industry_type is `other`.
      sig { returns(T.nilable(String)) }
      attr_accessor :other_industry_description

      # Parent account ID for connected accounts.
      sig { returns(T.nilable(String)) }
      attr_accessor :parent_account_id

      # Tax classification code applied by default to the account's products, with `id`,
      # `name`, and `product_type`. `null` when no default is set.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :product_tax_code

      # DEPRECATED: Use the `GET /accounts/{account_id}/recommend_actions` endpoint
      # instead.
      sig { returns(T.nilable(T::Array[WhopSDK::Account::RecommendedAction])) }
      attr_accessor :recommended_actions

      # Whether authorized users must enable two-factor authentication.
      sig { returns(T::Boolean) }
      attr_accessor :require_2fa

      sig { returns(T.nilable(T::Array[WhopSDK::Account::RequiredAction])) }
      attr_accessor :required_actions

      # Account public route identifier.
      sig { returns(String) }
      attr_accessor :route

      # Whether Whop sends transactional emails to customers on behalf of this account.
      sig { returns(T::Boolean) }
      attr_accessor :send_customer_emails

      # Whether the account appears in joined whops on other accounts.
      sig { returns(T::Boolean) }
      attr_accessor :show_joined_whops

      # Whether reviews are displayed on direct-to-consumer product pages.
      sig { returns(T::Boolean) }
      attr_accessor :show_reviews_dtc

      # Whether the account shows users in the user directory.
      sig { returns(T::Boolean) }
      attr_accessor :show_user_directory

      sig { returns(T::Array[WhopSDK::AccountSocialLink]) }
      attr_accessor :social_links

      # Whether the account can operate on Whop: `active` or `suspended`. Computed only
      # on `retrieve` and `me`; `null` otherwise.
      sig { returns(T.nilable(String)) }
      attr_accessor :status

      # Account store page display configuration.
      sig { returns(T.anything) }
      attr_accessor :store_page_config

      # Target audience for this account.
      sig { returns(T.nilable(String)) }
      attr_accessor :target_audience

      # Account tax/VAT registrations, each with `id`, `tax_id_type`, and
      # `tax_id_value`. Empty when none are set.
      sig { returns(T::Array[T.anything]) }
      attr_accessor :tax_identifiers

      # Who calculates and remits tax for the account: `whop` (Whop calculates and
      # remits), `self` (Whop calculates; the account collects and remits), or `none`
      # (neither; the account is responsible). `null` until the account enrolls in the
      # Whop tax service.
      sig { returns(T.nilable(String)) }
      attr_accessor :tax_remitted_by

      # Account display name.
      sig { returns(String) }
      attr_accessor :title

      # Account lifetime sales, normalized to USD. Computed only on `retrieve` and `me`
      # for callers with `stats:read` scope; `null` otherwise.
      sig { returns(T.nilable(Float)) }
      attr_accessor :total_earned_usd

      # Total USD value across balances with known exchange rates. Computed only on
      # single-account reads (`retrieve` and `me`); `null` on list responses, writes,
      # missing balance-read permission, or unavailable balance source.
      sig { returns(T.nilable(String)) }
      attr_accessor :total_usd

      # Whether the account uses its logo as the fallback Open Graph image.
      sig { returns(T::Boolean) }
      attr_accessor :use_logo_as_opengraph_image_fallback

      # Account identity verification status for the `individual` (KYC) and `business`
      # (KYB) profiles. Each is `null` until created, otherwise a `status` of
      # `not_started`, `pending`, `approved`, or `rejected`.
      sig { returns(T.anything) }
      attr_accessor :verification

      # Account primary crypto wallet, or `null` if none has been provisioned.
      sig { returns(T.nilable(WhopSDK::Account::Wallet)) }
      attr_reader :wallet

      sig { params(wallet: T.nilable(WhopSDK::Account::Wallet::OrHash)).void }
      attr_writer :wallet

      sig do
        params(
          id: String,
          balances: T::Array[WhopSDK::Account::Balance::OrHash],
          banner_image_url: T.nilable(String),
          business_address: T.nilable(T.anything),
          business_type: T.nilable(String),
          capabilities: T.nilable(WhopSDK::Account::Capabilities::OrHash),
          country: T.nilable(String),
          created_at: String,
          description: T.nilable(String),
          email: T.nilable(String),
          home_preferences: T::Array[String],
          industry_group: T.nilable(String),
          industry_type: T.nilable(String),
          invoice_prefix: T.nilable(String),
          logo_url: T.nilable(String),
          metadata: T.anything,
          onboarding_type: T.nilable(String),
          opengraph_image_url: T.nilable(String),
          opengraph_image_variant: T.nilable(String),
          other_business_description: T.nilable(String),
          other_industry_description: T.nilable(String),
          parent_account_id: T.nilable(String),
          product_tax_code: T.nilable(T.anything),
          recommended_actions:
            T.nilable(T::Array[WhopSDK::Account::RecommendedAction::OrHash]),
          require_2fa: T::Boolean,
          required_actions:
            T.nilable(T::Array[WhopSDK::Account::RequiredAction::OrHash]),
          route: String,
          send_customer_emails: T::Boolean,
          show_joined_whops: T::Boolean,
          show_reviews_dtc: T::Boolean,
          show_user_directory: T::Boolean,
          social_links: T::Array[WhopSDK::AccountSocialLink::OrHash],
          status: T.nilable(String),
          store_page_config: T.anything,
          target_audience: T.nilable(String),
          tax_identifiers: T::Array[T.anything],
          tax_remitted_by: T.nilable(String),
          title: String,
          total_earned_usd: T.nilable(Float),
          total_usd: T.nilable(String),
          use_logo_as_opengraph_image_fallback: T::Boolean,
          verification: T.anything,
          wallet: T.nilable(WhopSDK::Account::Wallet::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # Account ID, prefixed `biz_`.
        id:,
        balances:,
        # Account banner image URL.
        banner_image_url:,
        # Account business address used to calculate tax, with `line1`, `line2`, `city`,
        # `state`, `postal_code`, and `country`. `null` when no address is set.
        business_address:,
        # High-level business category for the account.
        business_type:,
        # Payment rails enabled for this account, each `active`, `inactive`, or `pending`
        # (onboarding or review in progress). Computed only on `retrieve` and `me` for
        # callers with `company:balance:read` scope; `null` otherwise.
        capabilities:,
        # Country where the account is located.
        country:,
        # When the account was created, as an ISO 8601 timestamp.
        created_at:,
        # Account promotional description.
        description:,
        # Account owner email address.
        email:,
        home_preferences:,
        # Account industry group.
        industry_group:,
        # Specific industry vertical for the account.
        industry_type:,
        # Prefix used for account invoices.
        invoice_prefix:,
        # Account logo image URL.
        logo_url:,
        # Arbitrary key/value metadata supplied at account creation.
        metadata:,
        # Type of onboarding the account has completed.
        onboarding_type:,
        # Account Open Graph image URL.
        opengraph_image_url:,
        # Account Open Graph image variant.
        opengraph_image_variant:,
        # Business type details when business_type is `other`.
        other_business_description:,
        # Industry details when industry_type is `other`.
        other_industry_description:,
        # Parent account ID for connected accounts.
        parent_account_id:,
        # Tax classification code applied by default to the account's products, with `id`,
        # `name`, and `product_type`. `null` when no default is set.
        product_tax_code:,
        # DEPRECATED: Use the `GET /accounts/{account_id}/recommend_actions` endpoint
        # instead.
        recommended_actions:,
        # Whether authorized users must enable two-factor authentication.
        require_2fa:,
        required_actions:,
        # Account public route identifier.
        route:,
        # Whether Whop sends transactional emails to customers on behalf of this account.
        send_customer_emails:,
        # Whether the account appears in joined whops on other accounts.
        show_joined_whops:,
        # Whether reviews are displayed on direct-to-consumer product pages.
        show_reviews_dtc:,
        # Whether the account shows users in the user directory.
        show_user_directory:,
        social_links:,
        # Whether the account can operate on Whop: `active` or `suspended`. Computed only
        # on `retrieve` and `me`; `null` otherwise.
        status:,
        # Account store page display configuration.
        store_page_config:,
        # Target audience for this account.
        target_audience:,
        # Account tax/VAT registrations, each with `id`, `tax_id_type`, and
        # `tax_id_value`. Empty when none are set.
        tax_identifiers:,
        # Who calculates and remits tax for the account: `whop` (Whop calculates and
        # remits), `self` (Whop calculates; the account collects and remits), or `none`
        # (neither; the account is responsible). `null` until the account enrolls in the
        # Whop tax service.
        tax_remitted_by:,
        # Account display name.
        title:,
        # Account lifetime sales, normalized to USD. Computed only on `retrieve` and `me`
        # for callers with `stats:read` scope; `null` otherwise.
        total_earned_usd:,
        # Total USD value across balances with known exchange rates. Computed only on
        # single-account reads (`retrieve` and `me`); `null` on list responses, writes,
        # missing balance-read permission, or unavailable balance source.
        total_usd:,
        # Whether the account uses its logo as the fallback Open Graph image.
        use_logo_as_opengraph_image_fallback:,
        # Account identity verification status for the `individual` (KYC) and `business`
        # (KYB) profiles. Each is `null` until created, otherwise a `status` of
        # `not_started`, `pending`, `approved`, or `rejected`.
        verification:,
        # Account primary crypto wallet, or `null` if none has been provisioned.
        wallet:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            balances: T::Array[WhopSDK::Account::Balance],
            banner_image_url: T.nilable(String),
            business_address: T.nilable(T.anything),
            business_type: T.nilable(String),
            capabilities: T.nilable(WhopSDK::Account::Capabilities),
            country: T.nilable(String),
            created_at: String,
            description: T.nilable(String),
            email: T.nilable(String),
            home_preferences: T::Array[String],
            industry_group: T.nilable(String),
            industry_type: T.nilable(String),
            invoice_prefix: T.nilable(String),
            logo_url: T.nilable(String),
            metadata: T.anything,
            onboarding_type: T.nilable(String),
            opengraph_image_url: T.nilable(String),
            opengraph_image_variant: T.nilable(String),
            other_business_description: T.nilable(String),
            other_industry_description: T.nilable(String),
            parent_account_id: T.nilable(String),
            product_tax_code: T.nilable(T.anything),
            recommended_actions:
              T.nilable(T::Array[WhopSDK::Account::RecommendedAction]),
            require_2fa: T::Boolean,
            required_actions:
              T.nilable(T::Array[WhopSDK::Account::RequiredAction]),
            route: String,
            send_customer_emails: T::Boolean,
            show_joined_whops: T::Boolean,
            show_reviews_dtc: T::Boolean,
            show_user_directory: T::Boolean,
            social_links: T::Array[WhopSDK::AccountSocialLink],
            status: T.nilable(String),
            store_page_config: T.anything,
            target_audience: T.nilable(String),
            tax_identifiers: T::Array[T.anything],
            tax_remitted_by: T.nilable(String),
            title: String,
            total_earned_usd: T.nilable(Float),
            total_usd: T.nilable(String),
            use_logo_as_opengraph_image_fallback: T::Boolean,
            verification: T.anything,
            wallet: T.nilable(WhopSDK::Account::Wallet)
          }
        )
      end
      def to_hash
      end

      class Balance < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Account::Balance, WhopSDK::Internal::AnyHash)
          end

        # Total amount held in native units, as a decimal string.
        sig { returns(String) }
        attr_accessor :balance

        # Balance split into available, pending, and reserve amounts, as native-unit
        # decimal strings. On-chain crypto is entirely available; good_funds and fiat cash
        # can have pending or reserve portions.
        sig { returns(T.anything) }
        attr_accessor :breakdown

        # Holding icon URL.
        sig { returns(T.nilable(String)) }
        attr_accessor :icon_url

        # The holding's display name
        sig { returns(String) }
        attr_accessor :name

        # USD price per unit, or `null` when no exchange rate is available.
        sig { returns(T.nilable(Float)) }
        attr_accessor :price_usd

        # Holding display symbol, such as `USDT`, `cbBTC`, or `EUR`.
        sig { returns(String) }
        attr_accessor :symbol

        # Holding USD value, or `null` when no exchange rate is available.
        sig { returns(T.nilable(String)) }
        attr_accessor :value_usd

        # Account holdings, each with USD value. Empty when `total_usd` is `null`.
        sig do
          params(
            balance: String,
            breakdown: T.anything,
            icon_url: T.nilable(String),
            name: String,
            price_usd: T.nilable(Float),
            symbol: String,
            value_usd: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Total amount held in native units, as a decimal string.
          balance:,
          # Balance split into available, pending, and reserve amounts, as native-unit
          # decimal strings. On-chain crypto is entirely available; good_funds and fiat cash
          # can have pending or reserve portions.
          breakdown:,
          # Holding icon URL.
          icon_url:,
          # The holding's display name
          name:,
          # USD price per unit, or `null` when no exchange rate is available.
          price_usd:,
          # Holding display symbol, such as `USDT`, `cbBTC`, or `EUR`.
          symbol:,
          # Holding USD value, or `null` when no exchange rate is available.
          value_usd:
        )
        end

        sig do
          override.returns(
            {
              balance: String,
              breakdown: T.anything,
              icon_url: T.nilable(String),
              name: String,
              price_usd: T.nilable(Float),
              symbol: String,
              value_usd: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class Capabilities < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Account::Capabilities, WhopSDK::Internal::AnyHash)
          end

        # Bank payins: debits, transfers, and local bank rails
        sig do
          returns(
            WhopSDK::Account::Capabilities::AcceptBankPayments::TaggedSymbol
          )
        end
        attr_accessor :accept_bank_payments

        # Buy-now-pay-later payins; requires approval
        sig do
          returns(
            WhopSDK::Account::Capabilities::AcceptBnplPayments::TaggedSymbol
          )
        end
        attr_accessor :accept_bnpl_payments

        # Card payins, including Apple Pay and Google Pay
        sig do
          returns(
            WhopSDK::Account::Capabilities::AcceptCardPayments::TaggedSymbol
          )
        end
        attr_accessor :accept_card_payments

        # Deposits by bank wire or ACH to the account's virtual bank account
        sig do
          returns(WhopSDK::Account::Capabilities::BankDeposit::TaggedSymbol)
        end
        attr_accessor :bank_deposit

        # Balance top-ups by charging a stored payment method
        sig do
          returns(WhopSDK::Account::Capabilities::CardDeposit::TaggedSymbol)
        end
        attr_accessor :card_deposit

        # Issuing Whop cards; requires card application approval
        sig do
          returns(WhopSDK::Account::Capabilities::CardIssuing::TaggedSymbol)
        end
        attr_accessor :card_issuing

        # On-chain deposits to the account's crypto wallet
        sig do
          returns(WhopSDK::Account::Capabilities::CryptoDeposit::TaggedSymbol)
        end
        attr_accessor :crypto_deposit

        # On-chain payouts to a crypto wallet
        sig do
          returns(WhopSDK::Account::Capabilities::CryptoPayout::TaggedSymbol)
        end
        attr_accessor :crypto_payout

        # Instant payouts to an eligible payout destination
        sig do
          returns(WhopSDK::Account::Capabilities::InstantPayout::TaggedSymbol)
        end
        attr_accessor :instant_payout

        # Standard payouts to an external payout destination
        sig do
          returns(WhopSDK::Account::Capabilities::StandardPayout::TaggedSymbol)
        end
        attr_accessor :standard_payout

        # Transfers to other accounts
        sig { returns(WhopSDK::Account::Capabilities::Transfer::TaggedSymbol) }
        attr_accessor :transfer

        # Payment rails enabled for this account, each `active`, `inactive`, or `pending`
        # (onboarding or review in progress). Computed only on `retrieve` and `me` for
        # callers with `company:balance:read` scope; `null` otherwise.
        sig do
          params(
            accept_bank_payments:
              WhopSDK::Account::Capabilities::AcceptBankPayments::OrSymbol,
            accept_bnpl_payments:
              WhopSDK::Account::Capabilities::AcceptBnplPayments::OrSymbol,
            accept_card_payments:
              WhopSDK::Account::Capabilities::AcceptCardPayments::OrSymbol,
            bank_deposit: WhopSDK::Account::Capabilities::BankDeposit::OrSymbol,
            card_deposit: WhopSDK::Account::Capabilities::CardDeposit::OrSymbol,
            card_issuing: WhopSDK::Account::Capabilities::CardIssuing::OrSymbol,
            crypto_deposit:
              WhopSDK::Account::Capabilities::CryptoDeposit::OrSymbol,
            crypto_payout:
              WhopSDK::Account::Capabilities::CryptoPayout::OrSymbol,
            instant_payout:
              WhopSDK::Account::Capabilities::InstantPayout::OrSymbol,
            standard_payout:
              WhopSDK::Account::Capabilities::StandardPayout::OrSymbol,
            transfer: WhopSDK::Account::Capabilities::Transfer::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Bank payins: debits, transfers, and local bank rails
          accept_bank_payments:,
          # Buy-now-pay-later payins; requires approval
          accept_bnpl_payments:,
          # Card payins, including Apple Pay and Google Pay
          accept_card_payments:,
          # Deposits by bank wire or ACH to the account's virtual bank account
          bank_deposit:,
          # Balance top-ups by charging a stored payment method
          card_deposit:,
          # Issuing Whop cards; requires card application approval
          card_issuing:,
          # On-chain deposits to the account's crypto wallet
          crypto_deposit:,
          # On-chain payouts to a crypto wallet
          crypto_payout:,
          # Instant payouts to an eligible payout destination
          instant_payout:,
          # Standard payouts to an external payout destination
          standard_payout:,
          # Transfers to other accounts
          transfer:
        )
        end

        sig do
          override.returns(
            {
              accept_bank_payments:
                WhopSDK::Account::Capabilities::AcceptBankPayments::TaggedSymbol,
              accept_bnpl_payments:
                WhopSDK::Account::Capabilities::AcceptBnplPayments::TaggedSymbol,
              accept_card_payments:
                WhopSDK::Account::Capabilities::AcceptCardPayments::TaggedSymbol,
              bank_deposit:
                WhopSDK::Account::Capabilities::BankDeposit::TaggedSymbol,
              card_deposit:
                WhopSDK::Account::Capabilities::CardDeposit::TaggedSymbol,
              card_issuing:
                WhopSDK::Account::Capabilities::CardIssuing::TaggedSymbol,
              crypto_deposit:
                WhopSDK::Account::Capabilities::CryptoDeposit::TaggedSymbol,
              crypto_payout:
                WhopSDK::Account::Capabilities::CryptoPayout::TaggedSymbol,
              instant_payout:
                WhopSDK::Account::Capabilities::InstantPayout::TaggedSymbol,
              standard_payout:
                WhopSDK::Account::Capabilities::StandardPayout::TaggedSymbol,
              transfer: WhopSDK::Account::Capabilities::Transfer::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Bank payins: debits, transfers, and local bank rails
        module AcceptBankPayments
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Account::Capabilities::AcceptBankPayments)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              WhopSDK::Account::Capabilities::AcceptBankPayments::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              WhopSDK::Account::Capabilities::AcceptBankPayments::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              WhopSDK::Account::Capabilities::AcceptBankPayments::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Account::Capabilities::AcceptBankPayments::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Buy-now-pay-later payins; requires approval
        module AcceptBnplPayments
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Account::Capabilities::AcceptBnplPayments)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              WhopSDK::Account::Capabilities::AcceptBnplPayments::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              WhopSDK::Account::Capabilities::AcceptBnplPayments::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              WhopSDK::Account::Capabilities::AcceptBnplPayments::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Account::Capabilities::AcceptBnplPayments::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Card payins, including Apple Pay and Google Pay
        module AcceptCardPayments
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Account::Capabilities::AcceptCardPayments)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              WhopSDK::Account::Capabilities::AcceptCardPayments::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              WhopSDK::Account::Capabilities::AcceptCardPayments::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              WhopSDK::Account::Capabilities::AcceptCardPayments::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Account::Capabilities::AcceptCardPayments::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Deposits by bank wire or ACH to the account's virtual bank account
        module BankDeposit
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Account::Capabilities::BankDeposit)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              WhopSDK::Account::Capabilities::BankDeposit::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              WhopSDK::Account::Capabilities::BankDeposit::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              WhopSDK::Account::Capabilities::BankDeposit::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Account::Capabilities::BankDeposit::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Balance top-ups by charging a stored payment method
        module CardDeposit
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Account::Capabilities::CardDeposit)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              WhopSDK::Account::Capabilities::CardDeposit::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              WhopSDK::Account::Capabilities::CardDeposit::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              WhopSDK::Account::Capabilities::CardDeposit::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Account::Capabilities::CardDeposit::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Issuing Whop cards; requires card application approval
        module CardIssuing
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Account::Capabilities::CardIssuing)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              WhopSDK::Account::Capabilities::CardIssuing::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              WhopSDK::Account::Capabilities::CardIssuing::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              WhopSDK::Account::Capabilities::CardIssuing::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Account::Capabilities::CardIssuing::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # On-chain deposits to the account's crypto wallet
        module CryptoDeposit
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Account::Capabilities::CryptoDeposit)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              WhopSDK::Account::Capabilities::CryptoDeposit::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              WhopSDK::Account::Capabilities::CryptoDeposit::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              WhopSDK::Account::Capabilities::CryptoDeposit::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Account::Capabilities::CryptoDeposit::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # On-chain payouts to a crypto wallet
        module CryptoPayout
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Account::Capabilities::CryptoPayout)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              WhopSDK::Account::Capabilities::CryptoPayout::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              WhopSDK::Account::Capabilities::CryptoPayout::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              WhopSDK::Account::Capabilities::CryptoPayout::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Account::Capabilities::CryptoPayout::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Instant payouts to an eligible payout destination
        module InstantPayout
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Account::Capabilities::InstantPayout)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              WhopSDK::Account::Capabilities::InstantPayout::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              WhopSDK::Account::Capabilities::InstantPayout::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              WhopSDK::Account::Capabilities::InstantPayout::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Account::Capabilities::InstantPayout::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Standard payouts to an external payout destination
        module StandardPayout
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Account::Capabilities::StandardPayout)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              WhopSDK::Account::Capabilities::StandardPayout::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              WhopSDK::Account::Capabilities::StandardPayout::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              WhopSDK::Account::Capabilities::StandardPayout::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Account::Capabilities::StandardPayout::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Transfers to other accounts
        module Transfer
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Account::Capabilities::Transfer)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              WhopSDK::Account::Capabilities::Transfer::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              WhopSDK::Account::Capabilities::Transfer::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              WhopSDK::Account::Capabilities::Transfer::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[WhopSDK::Account::Capabilities::Transfer::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class RecommendedAction < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Account::RecommendedAction,
              WhopSDK::Internal::AnyHash
            )
          end

        # The recommendation; new values may be added, so handle unknown actions
        # gracefully
        sig do
          returns(WhopSDK::Account::RecommendedAction::Action::TaggedSymbol)
        end
        attr_accessor :action

        sig { returns(T::Array[String]) }
        attr_accessor :blocked_capabilities

        # The URL the call-to-action links to
        sig { returns(String) }
        attr_accessor :cta

        # Button label
        sig { returns(String) }
        attr_accessor :cta_label

        # Supporting copy, or empty
        sig { returns(String) }
        attr_accessor :description

        # Illustration icon URL, or `null`
        sig { returns(T.nilable(String)) }
        attr_accessor :icon_url

        # Estimated revenue impact from 0-100, comparable across accounts, or `null` when
        # not ranked
        sig { returns(T.nilable(Integer)) }
        attr_accessor :impact_score

        # Why this action was recommended for this account, or `null`
        sig { returns(T.nilable(String)) }
        attr_accessor :reasoning

        # Always optional — never blocking
        sig do
          returns(WhopSDK::Account::RecommendedAction::Status::TaggedSymbol)
        end
        attr_accessor :status

        # Headline for the recommendation
        sig { returns(String) }
        attr_accessor :title

        # Deprecated: use the `GET /accounts/{account_id}/recommend_actions` endpoint
        # instead. Optional actions that unlock capabilities or grow the account, same
        # shape as `required_actions`. Computed only on `retrieve` and `me`; `null`
        # otherwise.
        sig do
          params(
            action: WhopSDK::Account::RecommendedAction::Action::OrSymbol,
            blocked_capabilities: T::Array[String],
            cta: String,
            cta_label: String,
            description: String,
            icon_url: T.nilable(String),
            impact_score: T.nilable(Integer),
            reasoning: T.nilable(String),
            status: WhopSDK::Account::RecommendedAction::Status::OrSymbol,
            title: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The recommendation; new values may be added, so handle unknown actions
          # gracefully
          action:,
          blocked_capabilities:,
          # The URL the call-to-action links to
          cta:,
          # Button label
          cta_label:,
          # Supporting copy, or empty
          description:,
          # Illustration icon URL, or `null`
          icon_url:,
          # Estimated revenue impact from 0-100, comparable across accounts, or `null` when
          # not ranked
          impact_score:,
          # Why this action was recommended for this account, or `null`
          reasoning:,
          # Always optional — never blocking
          status:,
          # Headline for the recommendation
          title:
        )
        end

        sig do
          override.returns(
            {
              action: WhopSDK::Account::RecommendedAction::Action::TaggedSymbol,
              blocked_capabilities: T::Array[String],
              cta: String,
              cta_label: String,
              description: String,
              icon_url: T.nilable(String),
              impact_score: T.nilable(Integer),
              reasoning: T.nilable(String),
              status: WhopSDK::Account::RecommendedAction::Status::TaggedSymbol,
              title: String
            }
          )
        end
        def to_hash
        end

        # The recommendation; new values may be added, so handle unknown actions
        # gracefully
        module Action
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Account::RecommendedAction::Action)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          THEME_BUSINESS =
            T.let(
              :theme_business,
              WhopSDK::Account::RecommendedAction::Action::TaggedSymbol
            )
          CREATE_PRODUCT =
            T.let(
              :create_product,
              WhopSDK::Account::RecommendedAction::Action::TaggedSymbol
            )
          CREATE_PLAN =
            T.let(
              :create_plan,
              WhopSDK::Account::RecommendedAction::Action::TaggedSymbol
            )
          VERIFY_IDENTITY =
            T.let(
              :verify_identity,
              WhopSDK::Account::RecommendedAction::Action::TaggedSymbol
            )
          CONNECT_AFFILIATE_PROGRAM =
            T.let(
              :connect_affiliate_program,
              WhopSDK::Account::RecommendedAction::Action::TaggedSymbol
            )
          CREATE_PROMOTION =
            T.let(
              :create_promotion,
              WhopSDK::Account::RecommendedAction::Action::TaggedSymbol
            )
          SETUP_TRACKING_PIXEL =
            T.let(
              :setup_tracking_pixel,
              WhopSDK::Account::RecommendedAction::Action::TaggedSymbol
            )
          MIGRATE_FROM_STRIPE =
            T.let(
              :migrate_from_stripe,
              WhopSDK::Account::RecommendedAction::Action::TaggedSymbol
            )
          ACCEPT_FIRST_PAYMENT =
            T.let(
              :accept_first_payment,
              WhopSDK::Account::RecommendedAction::Action::TaggedSymbol
            )
          LAUNCH_FIRST_AD =
            T.let(
              :launch_first_ad,
              WhopSDK::Account::RecommendedAction::Action::TaggedSymbol
            )
          INVITE_TEAM_MEMBER =
            T.let(
              :invite_team_member,
              WhopSDK::Account::RecommendedAction::Action::TaggedSymbol
            )
          ENABLE_TAX_COLLECTION =
            T.let(
              :enable_tax_collection,
              WhopSDK::Account::RecommendedAction::Action::TaggedSymbol
            )
          CREATE_CARD =
            T.let(
              :create_card,
              WhopSDK::Account::RecommendedAction::Action::TaggedSymbol
            )
          JOIN_WHOP_UNIVERSITY =
            T.let(
              :join_whop_university,
              WhopSDK::Account::RecommendedAction::Action::TaggedSymbol
            )
          APPLY_FOR_FINANCING =
            T.let(
              :apply_for_financing,
              WhopSDK::Account::RecommendedAction::Action::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Account::RecommendedAction::Action::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Always optional — never blocking
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Account::RecommendedAction::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OPTIONAL =
            T.let(
              :optional,
              WhopSDK::Account::RecommendedAction::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Account::RecommendedAction::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class RequiredAction < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Account::RequiredAction, WhopSDK::Internal::AnyHash)
          end

        # What the holder must do; new values may be added, so handle unknown actions
        # gracefully
        sig { returns(WhopSDK::Account::RequiredAction::Action::TaggedSymbol) }
        attr_accessor :action

        sig { returns(T::Array[String]) }
        attr_accessor :blocked_capabilities

        # The URL the call-to-action links to, or null when there is no button
        sig { returns(T.nilable(String)) }
        attr_accessor :cta

        # Button label, or empty when there is no button
        sig { returns(String) }
        attr_accessor :cta_label

        # Supporting copy, or empty
        sig { returns(String) }
        attr_accessor :description

        # The URL of the action's illustration icon, or null if it has none
        sig { returns(T.nilable(String)) }
        attr_accessor :icon_url

        # required (act now) or pending (under review)
        sig { returns(WhopSDK::Account::RequiredAction::Status::TaggedSymbol) }
        attr_accessor :status

        # Headline for the action
        sig { returns(String) }
        attr_accessor :title

        # Actions the account owner must take to unblock capabilities like payouts and
        # card spend, ordered by display priority. Computed only on `retrieve` and `me`
        # for callers with `company:balance:read` scope; `null` otherwise.
        sig do
          params(
            action: WhopSDK::Account::RequiredAction::Action::OrSymbol,
            blocked_capabilities: T::Array[String],
            cta: T.nilable(String),
            cta_label: String,
            description: String,
            icon_url: T.nilable(String),
            status: WhopSDK::Account::RequiredAction::Status::OrSymbol,
            title: String
          ).returns(T.attached_class)
        end
        def self.new(
          # What the holder must do; new values may be added, so handle unknown actions
          # gracefully
          action:,
          blocked_capabilities:,
          # The URL the call-to-action links to, or null when there is no button
          cta:,
          # Button label, or empty when there is no button
          cta_label:,
          # Supporting copy, or empty
          description:,
          # The URL of the action's illustration icon, or null if it has none
          icon_url:,
          # required (act now) or pending (under review)
          status:,
          # Headline for the action
          title:
        )
        end

        sig do
          override.returns(
            {
              action: WhopSDK::Account::RequiredAction::Action::TaggedSymbol,
              blocked_capabilities: T::Array[String],
              cta: T.nilable(String),
              cta_label: String,
              description: String,
              icon_url: T.nilable(String),
              status: WhopSDK::Account::RequiredAction::Status::TaggedSymbol,
              title: String
            }
          )
        end
        def to_hash
        end

        # What the holder must do; new values may be added, so handle unknown actions
        # gracefully
        module Action
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Account::RequiredAction::Action)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEPOSIT_FUNDS =
            T.let(
              :deposit_funds,
              WhopSDK::Account::RequiredAction::Action::TaggedSymbol
            )
          SUBMIT_INFORMATION_REQUEST =
            T.let(
              :submit_information_request,
              WhopSDK::Account::RequiredAction::Action::TaggedSymbol
            )
          VERIFY_IDENTITY =
            T.let(
              :verify_identity,
              WhopSDK::Account::RequiredAction::Action::TaggedSymbol
            )
          CONNECT_FULFILLMENT_TRACKER =
            T.let(
              :connect_fulfillment_tracker,
              WhopSDK::Account::RequiredAction::Action::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[WhopSDK::Account::RequiredAction::Action::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # required (act now) or pending (under review)
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Account::RequiredAction::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REQUIRED =
            T.let(
              :required,
              WhopSDK::Account::RequiredAction::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              WhopSDK::Account::RequiredAction::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[WhopSDK::Account::RequiredAction::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class Wallet < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Account::Wallet, WhopSDK::Internal::AnyHash)
          end

        # Wallet ID, prefixed `wallet_`.
        sig { returns(String) }
        attr_accessor :id

        # The on-chain address of the wallet
        sig { returns(String) }
        attr_accessor :address

        # The blockchain network the wallet lives on
        sig { returns(WhopSDK::Account::Wallet::Network::TaggedSymbol) }
        attr_accessor :network

        # Account primary crypto wallet, or `null` if none has been provisioned.
        sig do
          params(
            id: String,
            address: String,
            network: WhopSDK::Account::Wallet::Network::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Wallet ID, prefixed `wallet_`.
          id:,
          # The on-chain address of the wallet
          address:,
          # The blockchain network the wallet lives on
          network:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              address: String,
              network: WhopSDK::Account::Wallet::Network::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The blockchain network the wallet lives on
        module Network
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, WhopSDK::Account::Wallet::Network) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SOLANA =
            T.let(:solana, WhopSDK::Account::Wallet::Network::TaggedSymbol)
          ETHEREUM =
            T.let(:ethereum, WhopSDK::Account::Wallet::Network::TaggedSymbol)
          BITCOIN =
            T.let(:bitcoin, WhopSDK::Account::Wallet::Network::TaggedSymbol)

          sig do
            override.returns(
              T::Array[WhopSDK::Account::Wallet::Network::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
