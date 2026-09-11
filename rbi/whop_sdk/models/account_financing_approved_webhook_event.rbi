# typed: strong

module WhopSDK
  module Models
    class AccountFinancingApprovedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::AccountFinancingApprovedWebhookEvent,
            WhopSDK::Internal::AnyHash
          )
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # The dated API version (Api-Version-Date) the payload is serialized to
      sig { returns(T.nilable(String)) }
      attr_accessor :api_version_date

      sig { returns(WhopSDK::AccountFinancingApprovedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: WhopSDK::AccountFinancingApprovedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      # The timestamp in ISO 8601 format that the webhook was sent at on the server
      sig { returns(Time) }
      attr_accessor :timestamp

      # The webhook event type
      sig { returns(Symbol) }
      attr_accessor :type

      # The account ID that this webhook event is associated with
      sig { returns(T.nilable(String)) }
      attr_accessor :account_id

      # For some `.updated` events, the old values of the payload fields that changed,
      # keyed by field name. Omitted when no capture is available for the event
      sig { returns(T.nilable(T.anything)) }
      attr_reader :previous_attributes

      sig { params(previous_attributes: T.anything).void }
      attr_writer :previous_attributes

      sig do
        params(
          id: String,
          api_version_date: T.nilable(String),
          data: WhopSDK::AccountFinancingApprovedWebhookEvent::Data::OrHash,
          timestamp: Time,
          account_id: T.nilable(String),
          previous_attributes: T.anything,
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # The dated API version (Api-Version-Date) the payload is serialized to
        api_version_date:,
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The account ID that this webhook event is associated with
        account_id: nil,
        # For some `.updated` events, the old values of the payload fields that changed,
        # keyed by field name. Omitted when no capture is available for the event
        previous_attributes: nil,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"account.financing_approved"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            api_version_date: T.nilable(String),
            data: WhopSDK::AccountFinancingApprovedWebhookEvent::Data,
            timestamp: Time,
            type: Symbol,
            account_id: T.nilable(String),
            previous_attributes: T.anything
          }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # Account ID, prefixed `biz_`.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            T::Array[
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Balance
            ]
          )
        end
        attr_accessor :balances

        # Account banner image URL.
        sig { returns(T.nilable(String)) }
        attr_accessor :banner_image_url

        # Account business address used to calculate tax, with `line1`, `line2`, `city`,
        # `state`, `postal_code`, and `country`. `null` when no address is set.
        sig { returns(T.nilable(T.anything)) }
        attr_accessor :business_address

        # The account's legal business name used with its tax address.
        sig { returns(T.nilable(String)) }
        attr_accessor :business_name

        # High-level business category for the account. See the
        # [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary)
        # for valid values.
        sig { returns(T.nilable(String)) }
        attr_accessor :business_type

        # Whether pending funds may be transferred from this platform account to its
        # connected accounts.
        sig { returns(T::Boolean) }
        attr_accessor :can_transfer_pending_balance_to_children

        # Payment rails enabled for this account, each `active`, `inactive`, or `pending`
        # (onboarding or review in progress). Computed only on `retrieve` and `me` for
        # callers with `company:balance:read` scope; `null` otherwise.
        sig do
          returns(
            T.nilable(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities
            )
          )
        end
        attr_reader :capabilities

        sig do
          params(
            capabilities:
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::OrHash
              )
          ).void
        end
        attr_writer :capabilities

        # Whop Cards application details for the account. Computed only on `retrieve` and
        # `me` for callers with `company:balance:read` scope; `null` otherwise, or when
        # the account has no card application.
        sig do
          returns(
            T.nilable(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards
            )
          )
        end
        attr_reader :cards

        sig do
          params(
            cards:
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards::OrHash
              )
          ).void
        end
        attr_writer :cards

        # Whether checkout shows a VAT/tax ID field for buyers to optionally enter. Does
        # not require a VAT ID to purchase.
        sig { returns(T::Boolean) }
        attr_accessor :collect_vat_id

        # Company formation state for the account, managed through
        # [Form Company](/api-reference/beta/accounts/form-company). A `draft` `status`
        # until the formation checkout is paid, then filing progress with downloadable
        # documents and signatures awaiting action. Empty when the formation state is
        # temporarily unavailable.
        sig do
          returns(
            WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation
          )
        end
        attr_reader :company_formation

        sig do
          params(
            company_formation:
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::OrHash
          ).void
        end
        attr_writer :company_formation

        # Country where the account is located.
        sig { returns(T.nilable(String)) }
        attr_accessor :country

        # When the account was created, as an ISO 8601 timestamp.
        sig { returns(String) }
        attr_accessor :created_at

        # Account promotional description.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Whether economic intelligence is enabled for the account.
        sig { returns(T::Boolean) }
        attr_accessor :economic_intelligence

        # Account owner email address.
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # The account's end-user license agreement document, or `null` if they have not
        # published one.
        sig do
          returns(
            T.nilable(WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula)
          )
        end
        attr_reader :eula

        sig do
          params(
            eula:
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::OrHash
              )
          ).void
        end
        attr_writer :eula

        sig do
          returns(
            T::Array[
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::HomePreference::TaggedSymbol
            ]
          )
        end
        attr_accessor :home_preferences

        # Account industry group. See the
        # [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary)
        # for valid values.
        sig { returns(T.nilable(String)) }
        attr_accessor :industry_group

        # Specific industry vertical for the account. See the
        # [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary)
        # for valid values.
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
        sig do
          returns(
            T.nilable(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::OnboardingType::TaggedSymbol
            )
          )
        end
        attr_accessor :onboarding_type

        # Account Open Graph image URL.
        sig { returns(T.nilable(String)) }
        attr_accessor :opengraph_image_url

        # Account Open Graph image variant.
        sig do
          returns(
            T.nilable(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::OpengraphImageVariant::TaggedSymbol
            )
          )
        end
        attr_accessor :opengraph_image_variant

        # Business type details when business_type is `other`.
        sig { returns(T.nilable(String)) }
        attr_accessor :other_business_description

        # Industry details when industry_type is `other`.
        sig { returns(T.nilable(String)) }
        attr_accessor :other_industry_description

        # The single user who owns the account, whose email is the `email` above. Distinct
        # from the `owner` role on team members, which any number of them can hold.
        sig do
          returns(WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Owner)
        end
        attr_reader :owner

        sig do
          params(
            owner:
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Owner::OrHash
          ).void
        end
        attr_writer :owner

        # Parent account for connected accounts, or `null` for standalone accounts.
        sig do
          returns(
            T.nilable(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ParentAccount
            )
          )
        end
        attr_reader :parent_account

        sig do
          params(
            parent_account:
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ParentAccount::OrHash
              )
          ).void
        end
        attr_writer :parent_account

        # Payment health controls currently applied to the account. Computed only on
        # `retrieve` and `me` for callers with `company:balance:read` scope; `null`
        # otherwise.
        sig do
          returns(
            T.nilable(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls
            )
          )
        end
        attr_reader :payment_controls

        sig do
          params(
            payment_controls:
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::OrHash
              )
          ).void
        end
        attr_writer :payment_controls

        # The account's privacy policy document, or `null` if they have not published one.
        sig do
          returns(
            T.nilable(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy
            )
          )
        end
        attr_reader :privacy_policy

        sig do
          params(
            privacy_policy:
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::OrHash
              )
          ).void
        end
        attr_writer :privacy_policy

        # Tax classification code applied by default to the account's products, with `id`,
        # `name`, and `product_type`. `null` when no default is set.
        sig { returns(T.nilable(T.anything)) }
        attr_accessor :product_tax_code

        # DEPRECATED: Use the `GET /economic_intelligence?account_id={account_id}`
        # endpoint instead.
        sig do
          returns(
            T.nilable(
              T::Array[
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction
              ]
            )
          )
        end
        attr_accessor :recommended_actions

        # Whether authorized users must enable two-factor authentication.
        sig { returns(T::Boolean) }
        attr_accessor :require_2fa

        sig do
          returns(
            T.nilable(
              T::Array[
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction
              ]
            )
          )
        end
        attr_accessor :required_actions

        # The account's return policy document, or `null` if they have not published one.
        sig do
          returns(
            T.nilable(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy
            )
          )
        end
        attr_reader :return_policy

        sig do
          params(
            return_policy:
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::OrHash
              )
          ).void
        end
        attr_writer :return_policy

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

        sig do
          returns(
            T::Array[
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::SocialLink
            ]
          )
        end
        attr_accessor :social_links

        # Whether the account settles on stablecoin rails — its balance is held on-chain
        # as USDT and paid out over crypto, rather than as fiat cash.
        sig { returns(T::Boolean) }
        attr_accessor :stablecoin_rails

        # Whether the account can operate on Whop: `active` or `suspended`. Computed on
        # `list`, `retrieve`, `me`, and `suspend`; `null` otherwise.
        sig { returns(T.nilable(String)) }
        attr_accessor :status

        # Why the account was suspended, in language safe to show the account owner.
        # Computed on `retrieve`, `me`, and `suspend`; `null` otherwise, when `status` is
        # not `suspended`, and when the suspension was recorded without a reason.
        sig { returns(T.nilable(String)) }
        attr_accessor :status_reason

        # Account store page display configuration.
        sig do
          returns(
            WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig
          )
        end
        attr_reader :store_page_config

        sig do
          params(
            store_page_config:
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::OrHash
          ).void
        end
        attr_writer :store_page_config

        # Target audience for this account.
        sig { returns(T.nilable(String)) }
        attr_accessor :target_audience

        sig { returns(T::Array[String]) }
        attr_accessor :tax_collection_enabled_states

        sig do
          returns(
            T::Array[
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier
            ]
          )
        end
        attr_accessor :tax_identifiers

        # Who calculates and remits tax for the account: `whop` (Whop calculates and
        # remits), `self` (Whop calculates; the account collects and remits), or `none`
        # (neither; the account is responsible). `null` until the account enrolls in the
        # Whop tax service.
        sig do
          returns(
            T.nilable(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxRemittedBy::TaggedSymbol
            )
          )
        end
        attr_accessor :tax_remitted_by

        # How tax is applied to the account's prices: `inclusive` (tax included in the
        # listed price) or `exclusive` (tax added on top). Defaults to `exclusive` when
        # unset; `null` only when the account has no payment connection.
        sig do
          returns(
            T.nilable(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxType::TaggedSymbol
            )
          )
        end
        attr_accessor :tax_type

        # The account's terms of service document, or `null` if they have not published
        # one.
        sig do
          returns(
            T.nilable(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService
            )
          )
        end
        attr_reader :terms_of_service

        sig do
          params(
            terms_of_service:
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::OrHash
              )
          ).void
        end
        attr_writer :terms_of_service

        # Account-level 3D Secure behavior. `mandate_challenge` requires cardholder
        # verification on supported card payments; `null` uses the standard checkout flow.
        sig do
          returns(
            T.nilable(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ThreeDSLevel::TaggedSymbol
            )
          )
        end
        attr_accessor :three_ds_level

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
        # `not_started`, `pending`, `manual_review`, `approved`, or `rejected`.
        sig { returns(T.anything) }
        attr_accessor :verification

        # Lifetime volume through the account — sales plus transfers received — normalized
        # to USD. Computed only on `list` for callers with `stats:read` on the account;
        # `null` otherwise.
        sig { returns(T.nilable(Float)) }
        attr_accessor :volume_usd

        # Account primary crypto wallet, or `null` if none has been provisioned.
        sig do
          returns(
            T.nilable(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Wallet
            )
          )
        end
        attr_reader :wallet

        sig do
          params(
            wallet:
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Wallet::OrHash
              )
          ).void
        end
        attr_writer :wallet

        sig do
          params(
            id: String,
            balances:
              T::Array[
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Balance::OrHash
              ],
            banner_image_url: T.nilable(String),
            business_address: T.nilable(T.anything),
            business_name: T.nilable(String),
            business_type: T.nilable(String),
            can_transfer_pending_balance_to_children: T::Boolean,
            capabilities:
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::OrHash
              ),
            cards:
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards::OrHash
              ),
            collect_vat_id: T::Boolean,
            company_formation:
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::OrHash,
            country: T.nilable(String),
            created_at: String,
            description: T.nilable(String),
            economic_intelligence: T::Boolean,
            email: T.nilable(String),
            eula:
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::OrHash
              ),
            home_preferences:
              T::Array[
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::HomePreference::OrSymbol
              ],
            industry_group: T.nilable(String),
            industry_type: T.nilable(String),
            invoice_prefix: T.nilable(String),
            logo_url: T.nilable(String),
            metadata: T.anything,
            onboarding_type:
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::OnboardingType::OrSymbol
              ),
            opengraph_image_url: T.nilable(String),
            opengraph_image_variant:
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::OpengraphImageVariant::OrSymbol
              ),
            other_business_description: T.nilable(String),
            other_industry_description: T.nilable(String),
            owner:
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Owner::OrHash,
            parent_account:
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ParentAccount::OrHash
              ),
            payment_controls:
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::OrHash
              ),
            privacy_policy:
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::OrHash
              ),
            product_tax_code: T.nilable(T.anything),
            recommended_actions:
              T.nilable(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::OrHash
                ]
              ),
            require_2fa: T::Boolean,
            required_actions:
              T.nilable(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::OrHash
                ]
              ),
            return_policy:
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::OrHash
              ),
            route: String,
            send_customer_emails: T::Boolean,
            show_joined_whops: T::Boolean,
            show_reviews_dtc: T::Boolean,
            show_user_directory: T::Boolean,
            social_links:
              T::Array[
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::SocialLink::OrHash
              ],
            stablecoin_rails: T::Boolean,
            status: T.nilable(String),
            status_reason: T.nilable(String),
            store_page_config:
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::OrHash,
            target_audience: T.nilable(String),
            tax_collection_enabled_states: T::Array[String],
            tax_identifiers:
              T::Array[
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::OrHash
              ],
            tax_remitted_by:
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxRemittedBy::OrSymbol
              ),
            tax_type:
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxType::OrSymbol
              ),
            terms_of_service:
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::OrHash
              ),
            three_ds_level:
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ThreeDSLevel::OrSymbol
              ),
            title: String,
            total_earned_usd: T.nilable(Float),
            total_usd: T.nilable(String),
            use_logo_as_opengraph_image_fallback: T::Boolean,
            verification: T.anything,
            volume_usd: T.nilable(Float),
            wallet:
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Wallet::OrHash
              )
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
          # The account's legal business name used with its tax address.
          business_name:,
          # High-level business category for the account. See the
          # [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary)
          # for valid values.
          business_type:,
          # Whether pending funds may be transferred from this platform account to its
          # connected accounts.
          can_transfer_pending_balance_to_children:,
          # Payment rails enabled for this account, each `active`, `inactive`, or `pending`
          # (onboarding or review in progress). Computed only on `retrieve` and `me` for
          # callers with `company:balance:read` scope; `null` otherwise.
          capabilities:,
          # Whop Cards application details for the account. Computed only on `retrieve` and
          # `me` for callers with `company:balance:read` scope; `null` otherwise, or when
          # the account has no card application.
          cards:,
          # Whether checkout shows a VAT/tax ID field for buyers to optionally enter. Does
          # not require a VAT ID to purchase.
          collect_vat_id:,
          # Company formation state for the account, managed through
          # [Form Company](/api-reference/beta/accounts/form-company). A `draft` `status`
          # until the formation checkout is paid, then filing progress with downloadable
          # documents and signatures awaiting action. Empty when the formation state is
          # temporarily unavailable.
          company_formation:,
          # Country where the account is located.
          country:,
          # When the account was created, as an ISO 8601 timestamp.
          created_at:,
          # Account promotional description.
          description:,
          # Whether economic intelligence is enabled for the account.
          economic_intelligence:,
          # Account owner email address.
          email:,
          # The account's end-user license agreement document, or `null` if they have not
          # published one.
          eula:,
          home_preferences:,
          # Account industry group. See the
          # [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary)
          # for valid values.
          industry_group:,
          # Specific industry vertical for the account. See the
          # [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary)
          # for valid values.
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
          # The single user who owns the account, whose email is the `email` above. Distinct
          # from the `owner` role on team members, which any number of them can hold.
          owner:,
          # Parent account for connected accounts, or `null` for standalone accounts.
          parent_account:,
          # Payment health controls currently applied to the account. Computed only on
          # `retrieve` and `me` for callers with `company:balance:read` scope; `null`
          # otherwise.
          payment_controls:,
          # The account's privacy policy document, or `null` if they have not published one.
          privacy_policy:,
          # Tax classification code applied by default to the account's products, with `id`,
          # `name`, and `product_type`. `null` when no default is set.
          product_tax_code:,
          # DEPRECATED: Use the `GET /economic_intelligence?account_id={account_id}`
          # endpoint instead.
          recommended_actions:,
          # Whether authorized users must enable two-factor authentication.
          require_2fa:,
          required_actions:,
          # The account's return policy document, or `null` if they have not published one.
          return_policy:,
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
          # Whether the account settles on stablecoin rails — its balance is held on-chain
          # as USDT and paid out over crypto, rather than as fiat cash.
          stablecoin_rails:,
          # Whether the account can operate on Whop: `active` or `suspended`. Computed on
          # `list`, `retrieve`, `me`, and `suspend`; `null` otherwise.
          status:,
          # Why the account was suspended, in language safe to show the account owner.
          # Computed on `retrieve`, `me`, and `suspend`; `null` otherwise, when `status` is
          # not `suspended`, and when the suspension was recorded without a reason.
          status_reason:,
          # Account store page display configuration.
          store_page_config:,
          # Target audience for this account.
          target_audience:,
          tax_collection_enabled_states:,
          tax_identifiers:,
          # Who calculates and remits tax for the account: `whop` (Whop calculates and
          # remits), `self` (Whop calculates; the account collects and remits), or `none`
          # (neither; the account is responsible). `null` until the account enrolls in the
          # Whop tax service.
          tax_remitted_by:,
          # How tax is applied to the account's prices: `inclusive` (tax included in the
          # listed price) or `exclusive` (tax added on top). Defaults to `exclusive` when
          # unset; `null` only when the account has no payment connection.
          tax_type:,
          # The account's terms of service document, or `null` if they have not published
          # one.
          terms_of_service:,
          # Account-level 3D Secure behavior. `mandate_challenge` requires cardholder
          # verification on supported card payments; `null` uses the standard checkout flow.
          three_ds_level:,
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
          # `not_started`, `pending`, `manual_review`, `approved`, or `rejected`.
          verification:,
          # Lifetime volume through the account — sales plus transfers received — normalized
          # to USD. Computed only on `list` for callers with `stats:read` on the account;
          # `null` otherwise.
          volume_usd:,
          # Account primary crypto wallet, or `null` if none has been provisioned.
          wallet:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              balances:
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Balance
                ],
              banner_image_url: T.nilable(String),
              business_address: T.nilable(T.anything),
              business_name: T.nilable(String),
              business_type: T.nilable(String),
              can_transfer_pending_balance_to_children: T::Boolean,
              capabilities:
                T.nilable(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities
                ),
              cards:
                T.nilable(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards
                ),
              collect_vat_id: T::Boolean,
              company_formation:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation,
              country: T.nilable(String),
              created_at: String,
              description: T.nilable(String),
              economic_intelligence: T::Boolean,
              email: T.nilable(String),
              eula:
                T.nilable(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula
                ),
              home_preferences:
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::HomePreference::TaggedSymbol
                ],
              industry_group: T.nilable(String),
              industry_type: T.nilable(String),
              invoice_prefix: T.nilable(String),
              logo_url: T.nilable(String),
              metadata: T.anything,
              onboarding_type:
                T.nilable(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::OnboardingType::TaggedSymbol
                ),
              opengraph_image_url: T.nilable(String),
              opengraph_image_variant:
                T.nilable(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::OpengraphImageVariant::TaggedSymbol
                ),
              other_business_description: T.nilable(String),
              other_industry_description: T.nilable(String),
              owner: WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Owner,
              parent_account:
                T.nilable(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ParentAccount
                ),
              payment_controls:
                T.nilable(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls
                ),
              privacy_policy:
                T.nilable(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy
                ),
              product_tax_code: T.nilable(T.anything),
              recommended_actions:
                T.nilable(
                  T::Array[
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction
                  ]
                ),
              require_2fa: T::Boolean,
              required_actions:
                T.nilable(
                  T::Array[
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction
                  ]
                ),
              return_policy:
                T.nilable(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy
                ),
              route: String,
              send_customer_emails: T::Boolean,
              show_joined_whops: T::Boolean,
              show_reviews_dtc: T::Boolean,
              show_user_directory: T::Boolean,
              social_links:
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::SocialLink
                ],
              stablecoin_rails: T::Boolean,
              status: T.nilable(String),
              status_reason: T.nilable(String),
              store_page_config:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig,
              target_audience: T.nilable(String),
              tax_collection_enabled_states: T::Array[String],
              tax_identifiers:
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier
                ],
              tax_remitted_by:
                T.nilable(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxRemittedBy::TaggedSymbol
                ),
              tax_type:
                T.nilable(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxType::TaggedSymbol
                ),
              terms_of_service:
                T.nilable(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService
                ),
              three_ds_level:
                T.nilable(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ThreeDSLevel::TaggedSymbol
                ),
              title: String,
              total_earned_usd: T.nilable(Float),
              total_usd: T.nilable(String),
              use_logo_as_opengraph_image_fallback: T::Boolean,
              verification: T.anything,
              volume_usd: T.nilable(Float),
              wallet:
                T.nilable(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Wallet
                )
            }
          )
        end
        def to_hash
        end

        class Balance < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Balance,
                WhopSDK::Internal::AnyHash
              )
            end

          # Total amount held in native units, as a decimal string.
          sig { returns(String) }
          attr_accessor :balance

          # Balance split into available, pending, and reserve amounts, as native-unit
          # decimal strings, with the days the pending amount is expected to settle.
          # On-chain crypto is entirely available; good_funds and fiat cash can have pending
          # or reserve portions.
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Balance::Breakdown
            )
          end
          attr_reader :breakdown

          sig do
            params(
              breakdown:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Balance::Breakdown::OrHash
            ).void
          end
          attr_writer :breakdown

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
              breakdown:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Balance::Breakdown::OrHash,
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
            # decimal strings, with the days the pending amount is expected to settle.
            # On-chain crypto is entirely available; good_funds and fiat cash can have pending
            # or reserve portions.
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
                breakdown:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Balance::Breakdown,
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

          class Breakdown < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Balance::Breakdown,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Amount you can spend, send, or withdraw now, in native units, as a decimal
            # string.
            sig { returns(String) }
            attr_accessor :available

            # Amount moving between the account's own destinations, such as a treasury sweep
            # to its crypto wallet or a card top-up. In native units, as a decimal string.
            sig { returns(String) }
            attr_accessor :in_transit

            # Amount from recent payments still settling, in native units, as a decimal
            # string.
            sig { returns(String) }
            attr_accessor :pending

            sig do
              returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Balance::Breakdown::PendingSettlement
                ]
              )
            end
            attr_accessor :pending_settlements

            # Amount held back, in native units, as a decimal string. Retrieve the account's
            # reserves for why it is held and when it unlocks.
            sig { returns(String) }
            attr_accessor :reserve

            # Balance split into available, pending, and reserve amounts, as native-unit
            # decimal strings, with the days the pending amount is expected to settle.
            # On-chain crypto is entirely available; good_funds and fiat cash can have pending
            # or reserve portions.
            sig do
              params(
                available: String,
                in_transit: String,
                pending: String,
                pending_settlements:
                  T::Array[
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Balance::Breakdown::PendingSettlement::OrHash
                  ],
                reserve: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Amount you can spend, send, or withdraw now, in native units, as a decimal
              # string.
              available:,
              # Amount moving between the account's own destinations, such as a treasury sweep
              # to its crypto wallet or a card top-up. In native units, as a decimal string.
              in_transit:,
              # Amount from recent payments still settling, in native units, as a decimal
              # string.
              pending:,
              pending_settlements:,
              # Amount held back, in native units, as a decimal string. Retrieve the account's
              # reserves for why it is held and when it unlocks.
              reserve:
            )
            end

            sig do
              override.returns(
                {
                  available: String,
                  in_transit: String,
                  pending: String,
                  pending_settlements:
                    T::Array[
                      WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Balance::Breakdown::PendingSettlement
                    ],
                  reserve: String
                }
              )
            end
            def to_hash
            end

            class PendingSettlement < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Balance::Breakdown::PendingSettlement,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Amount expected that day, in native units, as a decimal string.
              sig { returns(String) }
              attr_accessor :amount

              # The day this money is expected to finish settling, as an ISO 8601 date.
              sig { returns(String) }
              attr_accessor :date

              # When the pending amount is expected to settle, one entry per day, earliest
              # first. Money with no scheduled settlement day, such as a transfer in flight, is
              # left out — so these can sum to less than `pending`, never more.
              sig do
                params(amount: String, date: String).returns(T.attached_class)
              end
              def self.new(
                # Amount expected that day, in native units, as a decimal string.
                amount:,
                # The day this money is expected to finish settling, as an ISO 8601 date.
                date:
              )
              end

              sig { override.returns({ amount: String, date: String }) }
              def to_hash
              end
            end
          end
        end

        class Capabilities < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities,
                WhopSDK::Internal::AnyHash
              )
            end

          # Bank payins: debits, transfers, and local bank rails
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptBankPayments::TaggedSymbol
            )
          end
          attr_accessor :accept_bank_payments

          # Buy-now-pay-later payins; requires approval
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptBnplPayments::TaggedSymbol
            )
          end
          attr_accessor :accept_bnpl_payments

          # Card payins, including Apple Pay and Google Pay
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptCardPayments::TaggedSymbol
            )
          end
          attr_accessor :accept_card_payments

          # Deposits by bank wire or ACH to the account's virtual bank account
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::BankDeposit::TaggedSymbol
            )
          end
          attr_accessor :bank_deposit

          # Balance top-ups by charging a stored payment method
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CardDeposit::TaggedSymbol
            )
          end
          attr_accessor :card_deposit

          # Issuing Whop cards; requires card application approval
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CardIssuing::TaggedSymbol
            )
          end
          attr_accessor :card_issuing

          # On-chain deposits to the account's crypto wallet
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CryptoDeposit::TaggedSymbol
            )
          end
          attr_accessor :crypto_deposit

          # On-chain payouts to a crypto wallet
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CryptoPayout::TaggedSymbol
            )
          end
          attr_accessor :crypto_payout

          # Instant payouts to an eligible payout destination
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::InstantPayout::TaggedSymbol
            )
          end
          attr_accessor :instant_payout

          # Launching ad campaigns through Whop Ads. `inactive` while a requested ads
          # services agreement is awaiting the account's signature.
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::RunAds::TaggedSymbol
            )
          end
          attr_accessor :run_ads

          # Standard payouts to an external payout destination
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::StandardPayout::TaggedSymbol
            )
          end
          attr_accessor :standard_payout

          # Transfers to other accounts
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::Transfer::TaggedSymbol
            )
          end
          attr_accessor :transfer

          # Payment rails enabled for this account, each `active`, `inactive`, or `pending`
          # (onboarding or review in progress). Computed only on `retrieve` and `me` for
          # callers with `company:balance:read` scope; `null` otherwise.
          sig do
            params(
              accept_bank_payments:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptBankPayments::OrSymbol,
              accept_bnpl_payments:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptBnplPayments::OrSymbol,
              accept_card_payments:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptCardPayments::OrSymbol,
              bank_deposit:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::BankDeposit::OrSymbol,
              card_deposit:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CardDeposit::OrSymbol,
              card_issuing:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CardIssuing::OrSymbol,
              crypto_deposit:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CryptoDeposit::OrSymbol,
              crypto_payout:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CryptoPayout::OrSymbol,
              instant_payout:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::InstantPayout::OrSymbol,
              run_ads:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::RunAds::OrSymbol,
              standard_payout:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::StandardPayout::OrSymbol,
              transfer:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::Transfer::OrSymbol
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
            # Launching ad campaigns through Whop Ads. `inactive` while a requested ads
            # services agreement is awaiting the account's signature.
            run_ads:,
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
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptBankPayments::TaggedSymbol,
                accept_bnpl_payments:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptBnplPayments::TaggedSymbol,
                accept_card_payments:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptCardPayments::TaggedSymbol,
                bank_deposit:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::BankDeposit::TaggedSymbol,
                card_deposit:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CardDeposit::TaggedSymbol,
                card_issuing:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CardIssuing::TaggedSymbol,
                crypto_deposit:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CryptoDeposit::TaggedSymbol,
                crypto_payout:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CryptoPayout::TaggedSymbol,
                instant_payout:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::InstantPayout::TaggedSymbol,
                run_ads:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::RunAds::TaggedSymbol,
                standard_payout:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::StandardPayout::TaggedSymbol,
                transfer:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::Transfer::TaggedSymbol
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
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptBankPayments
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptBankPayments::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptBankPayments::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptBankPayments::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptBankPayments::TaggedSymbol
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
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptBnplPayments
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptBnplPayments::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptBnplPayments::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptBnplPayments::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptBnplPayments::TaggedSymbol
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
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptCardPayments
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptCardPayments::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptCardPayments::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptCardPayments::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::AcceptCardPayments::TaggedSymbol
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
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::BankDeposit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::BankDeposit::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::BankDeposit::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::BankDeposit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::BankDeposit::TaggedSymbol
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
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CardDeposit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CardDeposit::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CardDeposit::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CardDeposit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CardDeposit::TaggedSymbol
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
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CardIssuing
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CardIssuing::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CardIssuing::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CardIssuing::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CardIssuing::TaggedSymbol
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
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CryptoDeposit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CryptoDeposit::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CryptoDeposit::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CryptoDeposit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CryptoDeposit::TaggedSymbol
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
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CryptoPayout
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CryptoPayout::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CryptoPayout::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CryptoPayout::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::CryptoPayout::TaggedSymbol
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
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::InstantPayout
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::InstantPayout::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::InstantPayout::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::InstantPayout::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::InstantPayout::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Launching ad campaigns through Whop Ads. `inactive` while a requested ads
          # services agreement is awaiting the account's signature.
          module RunAds
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::RunAds
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::RunAds::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::RunAds::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::RunAds::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::RunAds::TaggedSymbol
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
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::StandardPayout
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::StandardPayout::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::StandardPayout::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::StandardPayout::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::StandardPayout::TaggedSymbol
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
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::Transfer
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::Transfer::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::Transfer::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::Transfer::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Capabilities::Transfer::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Cards < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards,
                WhopSDK::Internal::AnyHash
              )
            end

          # Whether the card application verifies a business (`business`, KYB) or a person
          # (`individual`, consumer identity). `null` when the application is not yet linked
          # to a verification.
          sig do
            returns(
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards::Kind::TaggedSymbol
              )
            )
          end
          attr_accessor :kind

          # Where the card application stands. `approved` means cards can be issued.
          # `needs_verification` means the applicant has not completed identity verification
          # yet; `needs_information` means they did, but the documents were rejected for a
          # fixable reason and must be resubmitted. `pending` and `manual_review` are in
          # flight. `denied`, `locked`, and `canceled` are terminal.
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # Whop Cards application details for the account. Computed only on `retrieve` and
          # `me` for callers with `company:balance:read` scope; `null` otherwise, or when
          # the account has no card application.
          sig do
            params(
              kind:
                T.nilable(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards::Kind::OrSymbol
                ),
              status:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards::Status::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Whether the card application verifies a business (`business`, KYB) or a person
            # (`individual`, consumer identity). `null` when the application is not yet linked
            # to a verification.
            kind:,
            # Where the card application stands. `approved` means cards can be issued.
            # `needs_verification` means the applicant has not completed identity verification
            # yet; `needs_information` means they did, but the documents were rejected for a
            # fixable reason and must be resubmitted. `pending` and `manual_review` are in
            # flight. `denied`, `locked`, and `canceled` are terminal.
            status:
          )
          end

          sig do
            override.returns(
              {
                kind:
                  T.nilable(
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards::Kind::TaggedSymbol
                  ),
                status:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards::Status::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # Whether the card application verifies a business (`business`, KYB) or a person
          # (`individual`, consumer identity). `null` when the application is not yet linked
          # to a verification.
          module Kind
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards::Kind
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INDIVIDUAL =
              T.let(
                :individual,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards::Kind::TaggedSymbol
              )
            BUSINESS =
              T.let(
                :business,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards::Kind::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards::Kind::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Where the card application stands. `approved` means cards can be issued.
          # `needs_verification` means the applicant has not completed identity verification
          # yet; `needs_information` means they did, but the documents were rejected for a
          # fixable reason and must be resubmitted. `pending` and `manual_review` are in
          # flight. `denied`, `locked`, and `canceled` are terminal.
          module Status
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            APPROVED =
              T.let(
                :approved,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards::Status::TaggedSymbol
              )
            MANUAL_REVIEW =
              T.let(
                :manual_review,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards::Status::TaggedSymbol
              )
            DENIED =
              T.let(
                :denied,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards::Status::TaggedSymbol
              )
            LOCKED =
              T.let(
                :locked,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards::Status::TaggedSymbol
              )
            CANCELED =
              T.let(
                :canceled,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards::Status::TaggedSymbol
              )
            NEEDS_VERIFICATION =
              T.let(
                :needs_verification,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards::Status::TaggedSymbol
              )
            NEEDS_INFORMATION =
              T.let(
                :needs_information,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Cards::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class CompanyFormation < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation,
                WhopSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Document
                ]
              )
            )
          end
          attr_reader :documents

          sig do
            params(
              documents:
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Document::OrHash
                ]
            ).void
          end
          attr_writer :documents

          # Whether the company's EIN has been issued by the IRS. Present once `status`
          # leaves `draft`.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :ein_registered

          sig { params(ein_registered: T::Boolean).void }
          attr_writer :ein_registered

          # Registered company name including the entity ending, for example `Acme, LLC`.
          # Present once `status` leaves `draft`.
          sig { returns(T.nilable(String)) }
          attr_accessor :legal_name

          # IRS forms still awaiting a founder's signature, each with a hosted signing URL.
          # Present once `status` leaves `draft`; empty when nothing needs signing.
          sig do
            returns(
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures
              )
            )
          end
          attr_reader :signatures

          sig do
            params(
              signatures:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::OrHash
            ).void
          end
          attr_writer :signatures

          # Whether the state formation filing is complete. Present once `status` leaves
          # `draft`.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :state_registered

          sig { params(state_registered: T::Boolean).void }
          attr_writer :state_registered

          sig do
            returns(
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # Company formation state for the account, managed through
          # [Form Company](/api-reference/beta/accounts/form-company). A `draft` `status`
          # until the formation checkout is paid, then filing progress with downloadable
          # documents and signatures awaiting action. Empty when the formation state is
          # temporarily unavailable.
          sig do
            params(
              documents:
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Document::OrHash
                ],
              ein_registered: T::Boolean,
              legal_name: T.nilable(String),
              signatures:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::OrHash,
              state_registered: T::Boolean,
              status:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Status::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            documents: nil,
            # Whether the company's EIN has been issued by the IRS. Present once `status`
            # leaves `draft`.
            ein_registered: nil,
            # Registered company name including the entity ending, for example `Acme, LLC`.
            # Present once `status` leaves `draft`.
            legal_name: nil,
            # IRS forms still awaiting a founder's signature, each with a hosted signing URL.
            # Present once `status` leaves `draft`; empty when nothing needs signing.
            signatures: nil,
            # Whether the state formation filing is complete. Present once `status` leaves
            # `draft`.
            state_registered: nil,
            status: nil
          )
          end

          sig do
            override.returns(
              {
                documents:
                  T::Array[
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Document
                  ],
                ein_registered: T::Boolean,
                legal_name: T.nilable(String),
                signatures:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures,
                state_registered: T::Boolean,
                status:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Status::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          class Document < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Document,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Document ID, prefixed `file_`.
            sig { returns(String) }
            attr_accessor :id

            # Human-readable document name, such as `Articles of Organization`.
            sig { returns(String) }
            attr_accessor :name

            # Document category: `articles_of_organization`, `operating_agreement`,
            # `ein_letter`, `signed_ss4`, `signed_form8821`, or `mail` for postal
            # correspondence received on the company's behalf.
            sig { returns(String) }
            attr_accessor :type

            # CDN URL for downloading the document.
            sig { returns(String) }
            attr_accessor :url

            # Formation documents available for download, such as the Articles of Organization
            # and the EIN confirmation letter. Present once `status` leaves `draft`.
            sig do
              params(
                id: String,
                name: String,
                type: String,
                url: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Document ID, prefixed `file_`.
              id:,
              # Human-readable document name, such as `Articles of Organization`.
              name:,
              # Document category: `articles_of_organization`, `operating_agreement`,
              # `ein_letter`, `signed_ss4`, `signed_form8821`, or `mail` for postal
              # correspondence received on the company's behalf.
              type:,
              # CDN URL for downloading the document.
              url:
            )
            end

            sig do
              override.returns(
                { id: String, name: String, type: String, url: String }
              )
            end
            def to_hash
            end
          end

          class Signatures < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Signature state for IRS Form 8821, the tax information authorization. Present
            # only while the form still needs the founder's action.
            sig do
              returns(
                T.nilable(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Form8821
                )
              )
            end
            attr_reader :form8821

            sig do
              params(
                form8821:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Form8821::OrHash
              ).void
            end
            attr_writer :form8821

            # Signature state for IRS Form SS-4, the EIN application. Present only while the
            # form still needs the founder's action.
            sig do
              returns(
                T.nilable(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Ss4
                )
              )
            end
            attr_reader :ss4

            sig do
              params(
                ss4:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Ss4::OrHash
              ).void
            end
            attr_writer :ss4

            # IRS forms still awaiting a founder's signature, each with a hosted signing URL.
            # Present once `status` leaves `draft`; empty when nothing needs signing.
            sig do
              params(
                form8821:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Form8821::OrHash,
                ss4:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Ss4::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Signature state for IRS Form 8821, the tax information authorization. Present
              # only while the form still needs the founder's action.
              form8821: nil,
              # Signature state for IRS Form SS-4, the EIN application. Present only while the
              # form still needs the founder's action.
              ss4: nil
            )
            end

            sig do
              override.returns(
                {
                  form8821:
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Form8821,
                  ss4:
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Ss4
                }
              )
            end
            def to_hash
            end

            class Form8821 < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Form8821,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # `pending` when a signing session is ready for the founder; `unknown` when the
              # signature state could not be determined.
              sig do
                returns(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Form8821::Status::TaggedSymbol
                )
              end
              attr_accessor :status

              # When the signing URL expires, as an ISO 8601 timestamp. Present while `status`
              # is `pending`.
              sig { returns(T.nilable(String)) }
              attr_reader :expires_at

              sig { params(expires_at: String).void }
              attr_writer :expires_at

              # Hosted signing URL where the founder completes the form. Present while `status`
              # is `pending`.
              sig { returns(T.nilable(String)) }
              attr_reader :url

              sig { params(url: String).void }
              attr_writer :url

              # Signature state for IRS Form 8821, the tax information authorization. Present
              # only while the form still needs the founder's action.
              sig do
                params(
                  status:
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Form8821::Status::OrSymbol,
                  expires_at: String,
                  url: String
                ).returns(T.attached_class)
              end
              def self.new(
                # `pending` when a signing session is ready for the founder; `unknown` when the
                # signature state could not be determined.
                status:,
                # When the signing URL expires, as an ISO 8601 timestamp. Present while `status`
                # is `pending`.
                expires_at: nil,
                # Hosted signing URL where the founder completes the form. Present while `status`
                # is `pending`.
                url: nil
              )
              end

              sig do
                override.returns(
                  {
                    status:
                      WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Form8821::Status::TaggedSymbol,
                    expires_at: String,
                    url: String
                  }
                )
              end
              def to_hash
              end

              # `pending` when a signing session is ready for the founder; `unknown` when the
              # signature state could not be determined.
              module Status
                extend WhopSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Form8821::Status
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PENDING =
                  T.let(
                    :pending,
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Form8821::Status::TaggedSymbol
                  )
                UNKNOWN =
                  T.let(
                    :unknown,
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Form8821::Status::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Form8821::Status::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class Ss4 < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Ss4,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # `pending` when a signing session is ready for the founder; `unknown` when the
              # signature state could not be determined.
              sig do
                returns(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Ss4::Status::TaggedSymbol
                )
              end
              attr_accessor :status

              # When the signing URL expires, as an ISO 8601 timestamp. Present while `status`
              # is `pending`.
              sig { returns(T.nilable(String)) }
              attr_reader :expires_at

              sig { params(expires_at: String).void }
              attr_writer :expires_at

              # Hosted signing URL where the founder completes the form. Present while `status`
              # is `pending`.
              sig { returns(T.nilable(String)) }
              attr_reader :url

              sig { params(url: String).void }
              attr_writer :url

              # Signature state for IRS Form SS-4, the EIN application. Present only while the
              # form still needs the founder's action.
              sig do
                params(
                  status:
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Ss4::Status::OrSymbol,
                  expires_at: String,
                  url: String
                ).returns(T.attached_class)
              end
              def self.new(
                # `pending` when a signing session is ready for the founder; `unknown` when the
                # signature state could not be determined.
                status:,
                # When the signing URL expires, as an ISO 8601 timestamp. Present while `status`
                # is `pending`.
                expires_at: nil,
                # Hosted signing URL where the founder completes the form. Present while `status`
                # is `pending`.
                url: nil
              )
              end

              sig do
                override.returns(
                  {
                    status:
                      WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Ss4::Status::TaggedSymbol,
                    expires_at: String,
                    url: String
                  }
                )
              end
              def to_hash
              end

              # `pending` when a signing session is ready for the founder; `unknown` when the
              # signature state could not be determined.
              module Status
                extend WhopSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Ss4::Status
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PENDING =
                  T.let(
                    :pending,
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Ss4::Status::TaggedSymbol
                  )
                UNKNOWN =
                  T.let(
                    :unknown,
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Ss4::Status::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Signatures::Ss4::Status::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          module Status
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DRAFT =
              T.let(
                :draft,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Status::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :processing,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Status::TaggedSymbol
              )
            FILED =
              T.let(
                :filed,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Status::TaggedSymbol
              )
            REJECTED =
              T.let(
                :rejected,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::CompanyFormation::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Eula < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula,
                WhopSDK::Internal::AnyHash
              )
            end

          # The file's ID, prefixed `file_`.
          sig { returns(String) }
          attr_accessor :id

          # The file's MIME type, e.g. `application/pdf`.
          sig { returns(T.nilable(String)) }
          attr_accessor :content_type

          # When the file was created, as an ISO 8601 timestamp.
          sig { returns(String) }
          attr_accessor :created_at

          # The original filename, including its extension.
          sig { returns(T.nilable(String)) }
          attr_accessor :filename

          # The type of this object, always `file`.
          sig { returns(String) }
          attr_accessor :object

          # The file size in bytes. `null` until the upload has finished.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :size

          # Where the file is in its upload lifecycle.
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::UploadStatus::TaggedSymbol
            )
          end
          attr_accessor :upload_status

          # A URL to download the file: a permanent CDN URL for public files, a signed
          # expiring URL for private ones. `null` until the upload has finished.
          sig { returns(T.nilable(String)) }
          attr_accessor :url

          # `public` files are served via an unsigned CDN URL; `private` files via a signed,
          # expiring URL.
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::Visibility::TaggedSymbol
            )
          end
          attr_accessor :visibility

          # The byte size each part (except the last) must be. Present only on create, and
          # only for multipart uploads.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :multipart_chunk_size

          # The ID of the multipart upload, passed back to `complete`. Present only on
          # create, and only for multipart uploads.
          sig { returns(T.nilable(String)) }
          attr_accessor :multipart_upload_id

          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::MultipartUploadURL
                ]
              )
            )
          end
          attr_accessor :multipart_upload_urls

          # Headers to send with the upload PUT. Present only on create.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :upload_headers

          sig { params(upload_headers: T.anything).void }
          attr_writer :upload_headers

          # Presigned URL to PUT the file's bytes to. Present only on create, and only for
          # single-part uploads.
          sig { returns(T.nilable(String)) }
          attr_accessor :upload_url

          # The account's end-user license agreement document, or `null` if they have not
          # published one.
          sig do
            params(
              id: String,
              content_type: T.nilable(String),
              created_at: String,
              filename: T.nilable(String),
              object: String,
              size: T.nilable(Integer),
              upload_status:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::UploadStatus::OrSymbol,
              url: T.nilable(String),
              visibility:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::Visibility::OrSymbol,
              multipart_chunk_size: T.nilable(Integer),
              multipart_upload_id: T.nilable(String),
              multipart_upload_urls:
                T.nilable(
                  T::Array[
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::MultipartUploadURL::OrHash
                  ]
                ),
              upload_headers: T.anything,
              upload_url: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The file's ID, prefixed `file_`.
            id:,
            # The file's MIME type, e.g. `application/pdf`.
            content_type:,
            # When the file was created, as an ISO 8601 timestamp.
            created_at:,
            # The original filename, including its extension.
            filename:,
            # The type of this object, always `file`.
            object:,
            # The file size in bytes. `null` until the upload has finished.
            size:,
            # Where the file is in its upload lifecycle.
            upload_status:,
            # A URL to download the file: a permanent CDN URL for public files, a signed
            # expiring URL for private ones. `null` until the upload has finished.
            url:,
            # `public` files are served via an unsigned CDN URL; `private` files via a signed,
            # expiring URL.
            visibility:,
            # The byte size each part (except the last) must be. Present only on create, and
            # only for multipart uploads.
            multipart_chunk_size: nil,
            # The ID of the multipart upload, passed back to `complete`. Present only on
            # create, and only for multipart uploads.
            multipart_upload_id: nil,
            multipart_upload_urls: nil,
            # Headers to send with the upload PUT. Present only on create.
            upload_headers: nil,
            # Presigned URL to PUT the file's bytes to. Present only on create, and only for
            # single-part uploads.
            upload_url: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                content_type: T.nilable(String),
                created_at: String,
                filename: T.nilable(String),
                object: String,
                size: T.nilable(Integer),
                upload_status:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::UploadStatus::TaggedSymbol,
                url: T.nilable(String),
                visibility:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::Visibility::TaggedSymbol,
                multipart_chunk_size: T.nilable(Integer),
                multipart_upload_id: T.nilable(String),
                multipart_upload_urls:
                  T.nilable(
                    T::Array[
                      WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::MultipartUploadURL
                    ]
                  ),
                upload_headers: T.anything,
                upload_url: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # Where the file is in its upload lifecycle.
          module UploadStatus
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::UploadStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::UploadStatus::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :processing,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::UploadStatus::TaggedSymbol
              )
            READY =
              T.let(
                :ready,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::UploadStatus::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::UploadStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::UploadStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # `public` files are served via an unsigned CDN URL; `private` files via a signed,
          # expiring URL.
          module Visibility
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::Visibility
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PUBLIC =
              T.let(
                :public,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::Visibility::TaggedSymbol
              )
            PRIVATE =
              T.let(
                :private,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::Visibility::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::Visibility::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class MultipartUploadURL < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Eula::MultipartUploadURL,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The 1-based index of this part within the multipart upload.
            sig { returns(Integer) }
            attr_accessor :part_number

            # The presigned URL to PUT this part's bytes to.
            sig { returns(String) }
            attr_accessor :url

            # The presigned URL for each part. Present only on create, and only for multipart
            # uploads.
            sig do
              params(part_number: Integer, url: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # The 1-based index of this part within the multipart upload.
              part_number:,
              # The presigned URL to PUT this part's bytes to.
              url:
            )
            end

            sig { override.returns({ part_number: Integer, url: String }) }
            def to_hash
            end
          end
        end

        # Public account home page preferences.
        module HomePreference
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::HomePreference
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HIDE_MEMBER_COUNT =
            T.let(
              :hide_member_count,
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::HomePreference::TaggedSymbol
            )
          HIDE_MEMBERS_CARD =
            T.let(
              :hide_members_card,
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::HomePreference::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::HomePreference::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Type of onboarding the account has completed.
        module OnboardingType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::OnboardingType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PLATFORM =
            T.let(
              :platform,
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::OnboardingType::TaggedSymbol
            )
          SELLER =
            T.let(
              :seller,
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::OnboardingType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::OnboardingType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Account Open Graph image variant.
        module OpengraphImageVariant
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::OpengraphImageVariant
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WHITE =
            T.let(
              :white,
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::OpengraphImageVariant::TaggedSymbol
            )
          BLACK =
            T.let(
              :black,
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::OpengraphImageVariant::TaggedSymbol
            )
          ORANGE =
            T.let(
              :orange,
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::OpengraphImageVariant::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::OpengraphImageVariant::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Owner < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Owner,
                WhopSDK::Internal::AnyHash
              )
            end

          # User ID, prefixed `user_`.
          sig { returns(String) }
          attr_accessor :id

          # Display name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # Avatar wrapper; its `url` is always present, using a generated placeholder when
          # the user set no picture.
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Owner::ProfilePicture
            )
          end
          attr_reader :profile_picture

          sig do
            params(
              profile_picture:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Owner::ProfilePicture::OrHash
            ).void
          end
          attr_writer :profile_picture

          # Public username.
          sig { returns(String) }
          attr_accessor :username

          # The single user who owns the account, whose email is the `email` above. Distinct
          # from the `owner` role on team members, which any number of them can hold.
          sig do
            params(
              id: String,
              name: T.nilable(String),
              profile_picture:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Owner::ProfilePicture::OrHash,
              username: String
            ).returns(T.attached_class)
          end
          def self.new(
            # User ID, prefixed `user_`.
            id:,
            # Display name.
            name:,
            # Avatar wrapper; its `url` is always present, using a generated placeholder when
            # the user set no picture.
            profile_picture:,
            # Public username.
            username:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                name: T.nilable(String),
                profile_picture:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Owner::ProfilePicture,
                username: String
              }
            )
          end
          def to_hash
          end

          class ProfilePicture < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Owner::ProfilePicture,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Avatar image URL. Always present — a generated placeholder when the user set no
            # picture.
            sig { returns(String) }
            attr_accessor :url

            # Avatar wrapper; its `url` is always present, using a generated placeholder when
            # the user set no picture.
            sig { params(url: String).returns(T.attached_class) }
            def self.new(
              # Avatar image URL. Always present — a generated placeholder when the user set no
              # picture.
              url:
            )
            end

            sig { override.returns({ url: String }) }
            def to_hash
            end
          end
        end

        class ParentAccount < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ParentAccount,
                WhopSDK::Internal::AnyHash
              )
            end

          # Account ID, prefixed `biz_`.
          sig { returns(String) }
          attr_accessor :id

          # Account logo image URL.
          sig { returns(T.nilable(String)) }
          attr_accessor :logo_url

          # Account public route identifier.
          sig { returns(String) }
          attr_accessor :route

          # Account display name.
          sig { returns(String) }
          attr_accessor :title

          # Markup rates this parent charges the connected account being read, keyed by fee
          # type (for example `crypto_deposit_markup`), each with `percentage_fee` and
          # `fixed_fee_usd`. Resolved with the connected account's own overrides winning
          # over the platform default.
          sig do
            returns(
              T.nilable(
                T::Hash[
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ParentAccount::Fee
                ]
              )
            )
          end
          attr_reader :fees

          sig do
            params(
              fees:
                T::Hash[
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ParentAccount::Fee::OrHash
                ]
            ).void
          end
          attr_writer :fees

          # Parent account for connected accounts, or `null` for standalone accounts.
          sig do
            params(
              id: String,
              logo_url: T.nilable(String),
              route: String,
              title: String,
              fees:
                T::Hash[
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ParentAccount::Fee::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Account ID, prefixed `biz_`.
            id:,
            # Account logo image URL.
            logo_url:,
            # Account public route identifier.
            route:,
            # Account display name.
            title:,
            # Markup rates this parent charges the connected account being read, keyed by fee
            # type (for example `crypto_deposit_markup`), each with `percentage_fee` and
            # `fixed_fee_usd`. Resolved with the connected account's own overrides winning
            # over the platform default.
            fees: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                logo_url: T.nilable(String),
                route: String,
                title: String,
                fees:
                  T::Hash[
                    Symbol,
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ParentAccount::Fee
                  ]
              }
            )
          end
          def to_hash
          end

          class Fee < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ParentAccount::Fee,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Fixed markup in US dollars per transaction.
            sig { returns(Float) }
            attr_accessor :fixed_fee_usd

            # Percentage of the transaction charged as markup.
            sig { returns(Float) }
            attr_accessor :percentage_fee

            sig do
              params(fixed_fee_usd: Float, percentage_fee: Float).returns(
                T.attached_class
              )
            end
            def self.new(
              # Fixed markup in US dollars per transaction.
              fixed_fee_usd:,
              # Percentage of the transaction charged as markup.
              percentage_fee:
            )
            end

            sig do
              override.returns({ fixed_fee_usd: Float, percentage_fee: Float })
            end
            def to_hash
            end
          end
        end

        class PaymentControls < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls,
                WhopSDK::Internal::AnyHash
              )
            end

          # Automatic refund settings for pre-chargeback dispute alerts.
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::DisputeAlertAutoRefund
            )
          end
          attr_reader :dispute_alert_auto_refund

          sig do
            params(
              dispute_alert_auto_refund:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::DisputeAlertAutoRefund::OrHash
            ).void
          end
          attr_writer :dispute_alert_auto_refund

          # Fee charged for each dispute alert in USD. `null` when unavailable.
          sig { returns(T.nilable(Float)) }
          attr_accessor :dispute_alert_fee_usd

          # Whether 3-D Secure is forced on every card payment at checkout. The account
          # cannot bypass it while set.
          sig { returns(T::Boolean) }
          attr_accessor :enforce_3ds

          # Whether payment health controls explicitly disable financing. This is
          # independent of financing approval in `capabilities.accept_bnpl_payments`.
          sig { returns(T::Boolean) }
          attr_accessor :financing_disabled

          # Additional processing fee percentage for high-risk processing.
          sig { returns(Float) }
          attr_accessor :high_risk_processing_fee_percentage

          # Percentage fee charged when pending, not-yet-settled balance is advanced to fund
          # the account's cards balance, where `2` means 2%. `0` when the account is exempt.
          sig { returns(Float) }
          attr_accessor :pending_auto_topup_fee_percentage

          # Additional days payments remain pending before becoming available.
          sig { returns(Integer) }
          attr_accessor :pending_balance_delay_days

          # Reserve currently applied to incoming payment volume.
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::Reserve
            )
          end
          attr_reader :reserve

          sig do
            params(
              reserve:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::Reserve::OrHash
            ).void
          end
          attr_writer :reserve

          # Automatic refund settings for resolution center cases.
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::ResolutionCenterAutoRefund
            )
          end
          attr_reader :resolution_center_auto_refund

          sig do
            params(
              resolution_center_auto_refund:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::ResolutionCenterAutoRefund::OrHash
            ).void
          end
          attr_writer :resolution_center_auto_refund

          sig do
            returns(
              T::Array[
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::RestrictedPaymentMethod::TaggedSymbol
              ]
            )
          end
          attr_accessor :restricted_payment_methods

          # Why pending funds without a settlement date aren't moving yet. `kyc_incomplete`
          # and `pending_information_request` are things the merchant can act on.
          # `withdrawals_disabled` means Whop has blocked withdrawals, so these funds cannot
          # become available. `null` when there's no reason to show — still clearing, or
          # held for a reason that isn't named here.
          sig do
            returns(
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::UndatedPendingReason::TaggedSymbol
              )
            )
          end
          attr_accessor :undated_pending_reason

          # How the account's balance automatically withdraws.
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::WithdrawalSchedule
            )
          end
          attr_reader :withdrawal_schedule

          sig do
            params(
              withdrawal_schedule:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::OrHash
            ).void
          end
          attr_writer :withdrawal_schedule

          # Payment health controls currently applied to the account. Computed only on
          # `retrieve` and `me` for callers with `company:balance:read` scope; `null`
          # otherwise.
          sig do
            params(
              dispute_alert_auto_refund:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::DisputeAlertAutoRefund::OrHash,
              dispute_alert_fee_usd: T.nilable(Float),
              enforce_3ds: T::Boolean,
              financing_disabled: T::Boolean,
              high_risk_processing_fee_percentage: Float,
              pending_auto_topup_fee_percentage: Float,
              pending_balance_delay_days: Integer,
              reserve:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::Reserve::OrHash,
              resolution_center_auto_refund:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::ResolutionCenterAutoRefund::OrHash,
              restricted_payment_methods:
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::RestrictedPaymentMethod::OrSymbol
                ],
              undated_pending_reason:
                T.nilable(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::UndatedPendingReason::OrSymbol
                ),
              withdrawal_schedule:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Automatic refund settings for pre-chargeback dispute alerts.
            dispute_alert_auto_refund:,
            # Fee charged for each dispute alert in USD. `null` when unavailable.
            dispute_alert_fee_usd:,
            # Whether 3-D Secure is forced on every card payment at checkout. The account
            # cannot bypass it while set.
            enforce_3ds:,
            # Whether payment health controls explicitly disable financing. This is
            # independent of financing approval in `capabilities.accept_bnpl_payments`.
            financing_disabled:,
            # Additional processing fee percentage for high-risk processing.
            high_risk_processing_fee_percentage:,
            # Percentage fee charged when pending, not-yet-settled balance is advanced to fund
            # the account's cards balance, where `2` means 2%. `0` when the account is exempt.
            pending_auto_topup_fee_percentage:,
            # Additional days payments remain pending before becoming available.
            pending_balance_delay_days:,
            # Reserve currently applied to incoming payment volume.
            reserve:,
            # Automatic refund settings for resolution center cases.
            resolution_center_auto_refund:,
            restricted_payment_methods:,
            # Why pending funds without a settlement date aren't moving yet. `kyc_incomplete`
            # and `pending_information_request` are things the merchant can act on.
            # `withdrawals_disabled` means Whop has blocked withdrawals, so these funds cannot
            # become available. `null` when there's no reason to show — still clearing, or
            # held for a reason that isn't named here.
            undated_pending_reason:,
            # How the account's balance automatically withdraws.
            withdrawal_schedule:
          )
          end

          sig do
            override.returns(
              {
                dispute_alert_auto_refund:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::DisputeAlertAutoRefund,
                dispute_alert_fee_usd: T.nilable(Float),
                enforce_3ds: T::Boolean,
                financing_disabled: T::Boolean,
                high_risk_processing_fee_percentage: Float,
                pending_auto_topup_fee_percentage: Float,
                pending_balance_delay_days: Integer,
                reserve:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::Reserve,
                resolution_center_auto_refund:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::ResolutionCenterAutoRefund,
                restricted_payment_methods:
                  T::Array[
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::RestrictedPaymentMethod::TaggedSymbol
                  ],
                undated_pending_reason:
                  T.nilable(
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::UndatedPendingReason::TaggedSymbol
                  ),
                withdrawal_schedule:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::WithdrawalSchedule
              }
            )
          end
          def to_hash
          end

          class DisputeAlertAutoRefund < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::DisputeAlertAutoRefund,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Whether the account owner is prevented from changing this threshold.
            sig { returns(T::Boolean) }
            attr_accessor :locked

            # Maximum dispute alert amount automatically refunded in USD. `null` when
            # automatic refunds are disabled.
            sig { returns(T.nilable(Float)) }
            attr_accessor :threshold_usd

            # Automatic refund settings for pre-chargeback dispute alerts.
            sig do
              params(
                locked: T::Boolean,
                threshold_usd: T.nilable(Float)
              ).returns(T.attached_class)
            end
            def self.new(
              # Whether the account owner is prevented from changing this threshold.
              locked:,
              # Maximum dispute alert amount automatically refunded in USD. `null` when
              # automatic refunds are disabled.
              threshold_usd:
            )
            end

            sig do
              override.returns(
                { locked: T::Boolean, threshold_usd: T.nilable(Float) }
              )
            end
            def to_hash
            end
          end

          class Reserve < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::Reserve,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Number of days reserved funds are held before release.
            sig { returns(Integer) }
            attr_accessor :hold_period_days

            # Percentage of incoming payment volume held in reserve. `null` when no reserve is
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :percentage

            # Reserve currently applied to incoming payment volume.
            sig do
              params(
                hold_period_days: Integer,
                percentage: T.nilable(Float)
              ).returns(T.attached_class)
            end
            def self.new(
              # Number of days reserved funds are held before release.
              hold_period_days:,
              # Percentage of incoming payment volume held in reserve. `null` when no reserve is
              # applied.
              percentage:
            )
            end

            sig do
              override.returns(
                { hold_period_days: Integer, percentage: T.nilable(Float) }
              )
            end
            def to_hash
            end
          end

          class ResolutionCenterAutoRefund < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::ResolutionCenterAutoRefund,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Maximum card-funded resolution center case amount automatically refunded in USD.
            # `null` when automatic refunds are disabled for cards.
            sig { returns(T.nilable(Float)) }
            attr_accessor :card_threshold_usd

            # Maximum financing-funded resolution center case amount automatically refunded in
            # USD. `null` when automatic refunds are disabled for financing.
            sig { returns(T.nilable(Float)) }
            attr_accessor :financing_threshold_usd

            # Whether the account owner is prevented from changing these thresholds.
            sig { returns(T::Boolean) }
            attr_accessor :locked

            # Maximum PayPal-funded resolution center case amount automatically refunded in
            # USD. `null` when automatic refunds are disabled for PayPal.
            sig { returns(T.nilable(Float)) }
            attr_accessor :paypal_threshold_usd

            # Automatic refund settings for resolution center cases.
            sig do
              params(
                card_threshold_usd: T.nilable(Float),
                financing_threshold_usd: T.nilable(Float),
                locked: T::Boolean,
                paypal_threshold_usd: T.nilable(Float)
              ).returns(T.attached_class)
            end
            def self.new(
              # Maximum card-funded resolution center case amount automatically refunded in USD.
              # `null` when automatic refunds are disabled for cards.
              card_threshold_usd:,
              # Maximum financing-funded resolution center case amount automatically refunded in
              # USD. `null` when automatic refunds are disabled for financing.
              financing_threshold_usd:,
              # Whether the account owner is prevented from changing these thresholds.
              locked:,
              # Maximum PayPal-funded resolution center case amount automatically refunded in
              # USD. `null` when automatic refunds are disabled for PayPal.
              paypal_threshold_usd:
            )
            end

            sig do
              override.returns(
                {
                  card_threshold_usd: T.nilable(Float),
                  financing_threshold_usd: T.nilable(Float),
                  locked: T::Boolean,
                  paypal_threshold_usd: T.nilable(Float)
                }
              )
            end
            def to_hash
            end
          end

          # Card brands blocked at checkout for this account. Empty when none are blocked.
          # The account cannot re-enable them itself.
          module RestrictedPaymentMethod
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::RestrictedPaymentMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CARD_VISA =
              T.let(
                :card_visa,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::RestrictedPaymentMethod::TaggedSymbol
              )
            CARD_MASTERCARD =
              T.let(
                :card_mastercard,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::RestrictedPaymentMethod::TaggedSymbol
              )
            CARD_AMERICAN_EXPRESS =
              T.let(
                :card_american_express,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::RestrictedPaymentMethod::TaggedSymbol
              )
            CARD_DISCOVER_GLOBAL_NETWORK =
              T.let(
                :card_discover_global_network,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::RestrictedPaymentMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::RestrictedPaymentMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Why pending funds without a settlement date aren't moving yet. `kyc_incomplete`
          # and `pending_information_request` are things the merchant can act on.
          # `withdrawals_disabled` means Whop has blocked withdrawals, so these funds cannot
          # become available. `null` when there's no reason to show — still clearing, or
          # held for a reason that isn't named here.
          module UndatedPendingReason
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::UndatedPendingReason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            KYC_INCOMPLETE =
              T.let(
                :kyc_incomplete,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::UndatedPendingReason::TaggedSymbol
              )
            PENDING_INFORMATION_REQUEST =
              T.let(
                :pending_information_request,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::UndatedPendingReason::TaggedSymbol
              )
            WITHDRAWALS_DISABLED =
              T.let(
                :withdrawals_disabled,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::UndatedPendingReason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::UndatedPendingReason::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class WithdrawalSchedule < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::WithdrawalSchedule,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Day the automatic withdrawal runs on: 0-6 (Sunday-Saturday) for `weekly`, 1-31
            # for `monthly`. `null` for `manual` and `daily`.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :day

            # How often the account's balance automatically withdraws.
            sig do
              returns(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::Frequency::TaggedSymbol
              )
            end
            attr_accessor :frequency

            # Next date the automatic withdrawal is scheduled to run, as an ISO 8601 date.
            # `null` for `manual` and `daily`, where no single next date applies.
            sig { returns(T.nilable(String)) }
            attr_accessor :next_payout_date

            # How the account's balance automatically withdraws.
            sig do
              params(
                day: T.nilable(Integer),
                frequency:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::Frequency::OrSymbol,
                next_payout_date: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Day the automatic withdrawal runs on: 0-6 (Sunday-Saturday) for `weekly`, 1-31
              # for `monthly`. `null` for `manual` and `daily`.
              day:,
              # How often the account's balance automatically withdraws.
              frequency:,
              # Next date the automatic withdrawal is scheduled to run, as an ISO 8601 date.
              # `null` for `manual` and `daily`, where no single next date applies.
              next_payout_date:
            )
            end

            sig do
              override.returns(
                {
                  day: T.nilable(Integer),
                  frequency:
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::Frequency::TaggedSymbol,
                  next_payout_date: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            # How often the account's balance automatically withdraws.
            module Frequency
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::Frequency
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MANUAL =
                T.let(
                  :manual,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::Frequency::TaggedSymbol
                )
              DAILY =
                T.let(
                  :daily,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::Frequency::TaggedSymbol
                )
              WEEKLY =
                T.let(
                  :weekly,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::Frequency::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::Frequency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::Frequency::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class PrivacyPolicy < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy,
                WhopSDK::Internal::AnyHash
              )
            end

          # The file's ID, prefixed `file_`.
          sig { returns(String) }
          attr_accessor :id

          # The file's MIME type, e.g. `application/pdf`.
          sig { returns(T.nilable(String)) }
          attr_accessor :content_type

          # When the file was created, as an ISO 8601 timestamp.
          sig { returns(String) }
          attr_accessor :created_at

          # The original filename, including its extension.
          sig { returns(T.nilable(String)) }
          attr_accessor :filename

          # The type of this object, always `file`.
          sig { returns(String) }
          attr_accessor :object

          # The file size in bytes. `null` until the upload has finished.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :size

          # Where the file is in its upload lifecycle.
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::UploadStatus::TaggedSymbol
            )
          end
          attr_accessor :upload_status

          # A URL to download the file: a permanent CDN URL for public files, a signed
          # expiring URL for private ones. `null` until the upload has finished.
          sig { returns(T.nilable(String)) }
          attr_accessor :url

          # `public` files are served via an unsigned CDN URL; `private` files via a signed,
          # expiring URL.
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::Visibility::TaggedSymbol
            )
          end
          attr_accessor :visibility

          # The byte size each part (except the last) must be. Present only on create, and
          # only for multipart uploads.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :multipart_chunk_size

          # The ID of the multipart upload, passed back to `complete`. Present only on
          # create, and only for multipart uploads.
          sig { returns(T.nilable(String)) }
          attr_accessor :multipart_upload_id

          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::MultipartUploadURL
                ]
              )
            )
          end
          attr_accessor :multipart_upload_urls

          # Headers to send with the upload PUT. Present only on create.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :upload_headers

          sig { params(upload_headers: T.anything).void }
          attr_writer :upload_headers

          # Presigned URL to PUT the file's bytes to. Present only on create, and only for
          # single-part uploads.
          sig { returns(T.nilable(String)) }
          attr_accessor :upload_url

          # The account's privacy policy document, or `null` if they have not published one.
          sig do
            params(
              id: String,
              content_type: T.nilable(String),
              created_at: String,
              filename: T.nilable(String),
              object: String,
              size: T.nilable(Integer),
              upload_status:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::UploadStatus::OrSymbol,
              url: T.nilable(String),
              visibility:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::Visibility::OrSymbol,
              multipart_chunk_size: T.nilable(Integer),
              multipart_upload_id: T.nilable(String),
              multipart_upload_urls:
                T.nilable(
                  T::Array[
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::MultipartUploadURL::OrHash
                  ]
                ),
              upload_headers: T.anything,
              upload_url: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The file's ID, prefixed `file_`.
            id:,
            # The file's MIME type, e.g. `application/pdf`.
            content_type:,
            # When the file was created, as an ISO 8601 timestamp.
            created_at:,
            # The original filename, including its extension.
            filename:,
            # The type of this object, always `file`.
            object:,
            # The file size in bytes. `null` until the upload has finished.
            size:,
            # Where the file is in its upload lifecycle.
            upload_status:,
            # A URL to download the file: a permanent CDN URL for public files, a signed
            # expiring URL for private ones. `null` until the upload has finished.
            url:,
            # `public` files are served via an unsigned CDN URL; `private` files via a signed,
            # expiring URL.
            visibility:,
            # The byte size each part (except the last) must be. Present only on create, and
            # only for multipart uploads.
            multipart_chunk_size: nil,
            # The ID of the multipart upload, passed back to `complete`. Present only on
            # create, and only for multipart uploads.
            multipart_upload_id: nil,
            multipart_upload_urls: nil,
            # Headers to send with the upload PUT. Present only on create.
            upload_headers: nil,
            # Presigned URL to PUT the file's bytes to. Present only on create, and only for
            # single-part uploads.
            upload_url: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                content_type: T.nilable(String),
                created_at: String,
                filename: T.nilable(String),
                object: String,
                size: T.nilable(Integer),
                upload_status:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::UploadStatus::TaggedSymbol,
                url: T.nilable(String),
                visibility:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::Visibility::TaggedSymbol,
                multipart_chunk_size: T.nilable(Integer),
                multipart_upload_id: T.nilable(String),
                multipart_upload_urls:
                  T.nilable(
                    T::Array[
                      WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::MultipartUploadURL
                    ]
                  ),
                upload_headers: T.anything,
                upload_url: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # Where the file is in its upload lifecycle.
          module UploadStatus
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::UploadStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::UploadStatus::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :processing,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::UploadStatus::TaggedSymbol
              )
            READY =
              T.let(
                :ready,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::UploadStatus::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::UploadStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::UploadStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # `public` files are served via an unsigned CDN URL; `private` files via a signed,
          # expiring URL.
          module Visibility
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::Visibility
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PUBLIC =
              T.let(
                :public,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::Visibility::TaggedSymbol
              )
            PRIVATE =
              T.let(
                :private,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::Visibility::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::Visibility::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class MultipartUploadURL < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::PrivacyPolicy::MultipartUploadURL,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The 1-based index of this part within the multipart upload.
            sig { returns(Integer) }
            attr_accessor :part_number

            # The presigned URL to PUT this part's bytes to.
            sig { returns(String) }
            attr_accessor :url

            # The presigned URL for each part. Present only on create, and only for multipart
            # uploads.
            sig do
              params(part_number: Integer, url: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # The 1-based index of this part within the multipart upload.
              part_number:,
              # The presigned URL to PUT this part's bytes to.
              url:
            )
            end

            sig { override.returns({ part_number: Integer, url: String }) }
            def to_hash
            end
          end
        end

        class RecommendedAction < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction,
                WhopSDK::Internal::AnyHash
              )
            end

          # The recommendation; new values may be added, so handle unknown actions
          # gracefully
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
            )
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

          # Estimated impact from 0-100, or `null` when not ranked
          sig { returns(T.nilable(Integer)) }
          attr_accessor :impact_score

          # Why this action was recommended, or `null`
          sig { returns(T.nilable(String)) }
          attr_accessor :reasoning

          # Always optional — never blocking
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # Headline for the recommendation
          sig { returns(String) }
          attr_accessor :title

          # Deprecated: use the `GET /economic_intelligence?account_id={account_id}`
          # endpoint instead. Optional actions that unlock capabilities or grow the account,
          # same shape as `required_actions`. Computed only on `retrieve` and `me`; `null`
          # otherwise.
          sig do
            params(
              action:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action::OrSymbol,
              blocked_capabilities: T::Array[String],
              cta: String,
              cta_label: String,
              description: String,
              icon_url: T.nilable(String),
              impact_score: T.nilable(Integer),
              reasoning: T.nilable(String),
              status:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Status::OrSymbol,
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
            # Estimated impact from 0-100, or `null` when not ranked
            impact_score:,
            # Why this action was recommended, or `null`
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
                action:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol,
                blocked_capabilities: T::Array[String],
                cta: String,
                cta_label: String,
                description: String,
                icon_url: T.nilable(String),
                impact_score: T.nilable(Integer),
                reasoning: T.nilable(String),
                status:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Status::TaggedSymbol,
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
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            THEME_BUSINESS =
              T.let(
                :theme_business,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            CREATE_PRODUCT =
              T.let(
                :create_product,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            CREATE_PLAN =
              T.let(
                :create_plan,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            VERIFY_IDENTITY =
              T.let(
                :verify_identity,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            CONNECT_AFFILIATE_PROGRAM =
              T.let(
                :connect_affiliate_program,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            CREATE_PROMOTION =
              T.let(
                :create_promotion,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            MIGRATE_FROM_STRIPE =
              T.let(
                :migrate_from_stripe,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            ACCEPT_FIRST_PAYMENT =
              T.let(
                :accept_first_payment,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            LAUNCH_FIRST_AD =
              T.let(
                :launch_first_ad,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            LAUNCH_DRAFT_CAMPAIGN =
              T.let(
                :launch_draft_campaign,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            INCREASE_AD_BUDGET =
              T.let(
                :increase_ad_budget,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            REFRESH_AD_CREATIVES =
              T.let(
                :refresh_ad_creatives,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            FIX_AD_BILLING =
              T.let(
                :fix_ad_billing,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            EXCLUDE_CUSTOMERS_FROM_ADS =
              T.let(
                :exclude_customers_from_ads,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            RETARGET_ABANDONED_CHECKOUTS =
              T.let(
                :retarget_abandoned_checkouts,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            FIX_FUNNEL_DROPOFF =
              T.let(
                :fix_funnel_dropoff,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            INVITE_TEAM_MEMBER =
              T.let(
                :invite_team_member,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            ENABLE_TAX_COLLECTION =
              T.let(
                :enable_tax_collection,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            CREATE_CARD =
              T.let(
                :create_card,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            APPLY_FOR_FINANCING =
              T.let(
                :apply_for_financing,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
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
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OPTIONAL =
              T.let(
                :optional,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RecommendedAction::Status::TaggedSymbol
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
              T.any(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction,
                WhopSDK::Internal::AnyHash
              )
            end

          # What the holder must do; new values may be added, so handle unknown actions
          # gracefully
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
            )
          end
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
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # Headline for the action
          sig { returns(String) }
          attr_accessor :title

          # Actions the account owner must take to unblock capabilities like payouts and
          # card spend, ordered by display priority. Computed only on `retrieve` and `me`
          # for callers with `company:balance:read` scope; `null` otherwise.
          sig do
            params(
              action:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Action::OrSymbol,
              blocked_capabilities: T::Array[String],
              cta: T.nilable(String),
              cta_label: String,
              description: String,
              icon_url: T.nilable(String),
              status:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Status::OrSymbol,
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
                action:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol,
                blocked_capabilities: T::Array[String],
                cta: T.nilable(String),
                cta_label: String,
                description: String,
                icon_url: T.nilable(String),
                status:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Status::TaggedSymbol,
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
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Action
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DEPOSIT_FUNDS =
              T.let(
                :deposit_funds,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
              )
            ACCEPT_AIRWALLEX_TERMS =
              T.let(
                :accept_airwallex_terms,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
              )
            SUBMIT_INFORMATION_REQUEST =
              T.let(
                :submit_information_request,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
              )
            UPDATE_AUTOMATIC_WITHDRAWAL_METHOD =
              T.let(
                :update_automatic_withdrawal_method,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
              )
            REAUTHORIZE_PAYOUT_METHODS =
              T.let(
                :reauthorize_payout_methods,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
              )
            UPDATE_PAYOUT_PROFILE =
              T.let(
                :update_payout_profile,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
              )
            CARD_USAGE_REVIEW =
              T.let(
                :card_usage_review,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
              )
            VERIFY_IDENTITY =
              T.let(
                :verify_identity,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
              )
            SIGN_FORMATION_DOCUMENTS =
              T.let(
                :sign_formation_documents,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
              )
            CONNECT_FULFILLMENT_TRACKER =
              T.let(
                :connect_fulfillment_tracker,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
              )
            SETUP_APPLE_PAY_DOMAINS =
              T.let(
                :setup_apple_pay_domains,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
              )
            CONFIGURE_TAX_REMITTER =
              T.let(
                :configure_tax_remitter,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
              )
            ADD_VAT_REGISTRATION =
              T.let(
                :add_vat_registration,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
                ]
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
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            REQUIRED =
              T.let(
                :required,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::RequiredAction::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class ReturnPolicy < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy,
                WhopSDK::Internal::AnyHash
              )
            end

          # The file's ID, prefixed `file_`.
          sig { returns(String) }
          attr_accessor :id

          # The file's MIME type, e.g. `application/pdf`.
          sig { returns(T.nilable(String)) }
          attr_accessor :content_type

          # When the file was created, as an ISO 8601 timestamp.
          sig { returns(String) }
          attr_accessor :created_at

          # The original filename, including its extension.
          sig { returns(T.nilable(String)) }
          attr_accessor :filename

          # The type of this object, always `file`.
          sig { returns(String) }
          attr_accessor :object

          # The file size in bytes. `null` until the upload has finished.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :size

          # Where the file is in its upload lifecycle.
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::UploadStatus::TaggedSymbol
            )
          end
          attr_accessor :upload_status

          # A URL to download the file: a permanent CDN URL for public files, a signed
          # expiring URL for private ones. `null` until the upload has finished.
          sig { returns(T.nilable(String)) }
          attr_accessor :url

          # `public` files are served via an unsigned CDN URL; `private` files via a signed,
          # expiring URL.
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::Visibility::TaggedSymbol
            )
          end
          attr_accessor :visibility

          # The byte size each part (except the last) must be. Present only on create, and
          # only for multipart uploads.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :multipart_chunk_size

          # The ID of the multipart upload, passed back to `complete`. Present only on
          # create, and only for multipart uploads.
          sig { returns(T.nilable(String)) }
          attr_accessor :multipart_upload_id

          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::MultipartUploadURL
                ]
              )
            )
          end
          attr_accessor :multipart_upload_urls

          # Headers to send with the upload PUT. Present only on create.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :upload_headers

          sig { params(upload_headers: T.anything).void }
          attr_writer :upload_headers

          # Presigned URL to PUT the file's bytes to. Present only on create, and only for
          # single-part uploads.
          sig { returns(T.nilable(String)) }
          attr_accessor :upload_url

          # The account's return policy document, or `null` if they have not published one.
          sig do
            params(
              id: String,
              content_type: T.nilable(String),
              created_at: String,
              filename: T.nilable(String),
              object: String,
              size: T.nilable(Integer),
              upload_status:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::UploadStatus::OrSymbol,
              url: T.nilable(String),
              visibility:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::Visibility::OrSymbol,
              multipart_chunk_size: T.nilable(Integer),
              multipart_upload_id: T.nilable(String),
              multipart_upload_urls:
                T.nilable(
                  T::Array[
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::MultipartUploadURL::OrHash
                  ]
                ),
              upload_headers: T.anything,
              upload_url: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The file's ID, prefixed `file_`.
            id:,
            # The file's MIME type, e.g. `application/pdf`.
            content_type:,
            # When the file was created, as an ISO 8601 timestamp.
            created_at:,
            # The original filename, including its extension.
            filename:,
            # The type of this object, always `file`.
            object:,
            # The file size in bytes. `null` until the upload has finished.
            size:,
            # Where the file is in its upload lifecycle.
            upload_status:,
            # A URL to download the file: a permanent CDN URL for public files, a signed
            # expiring URL for private ones. `null` until the upload has finished.
            url:,
            # `public` files are served via an unsigned CDN URL; `private` files via a signed,
            # expiring URL.
            visibility:,
            # The byte size each part (except the last) must be. Present only on create, and
            # only for multipart uploads.
            multipart_chunk_size: nil,
            # The ID of the multipart upload, passed back to `complete`. Present only on
            # create, and only for multipart uploads.
            multipart_upload_id: nil,
            multipart_upload_urls: nil,
            # Headers to send with the upload PUT. Present only on create.
            upload_headers: nil,
            # Presigned URL to PUT the file's bytes to. Present only on create, and only for
            # single-part uploads.
            upload_url: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                content_type: T.nilable(String),
                created_at: String,
                filename: T.nilable(String),
                object: String,
                size: T.nilable(Integer),
                upload_status:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::UploadStatus::TaggedSymbol,
                url: T.nilable(String),
                visibility:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::Visibility::TaggedSymbol,
                multipart_chunk_size: T.nilable(Integer),
                multipart_upload_id: T.nilable(String),
                multipart_upload_urls:
                  T.nilable(
                    T::Array[
                      WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::MultipartUploadURL
                    ]
                  ),
                upload_headers: T.anything,
                upload_url: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # Where the file is in its upload lifecycle.
          module UploadStatus
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::UploadStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::UploadStatus::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :processing,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::UploadStatus::TaggedSymbol
              )
            READY =
              T.let(
                :ready,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::UploadStatus::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::UploadStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::UploadStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # `public` files are served via an unsigned CDN URL; `private` files via a signed,
          # expiring URL.
          module Visibility
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::Visibility
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PUBLIC =
              T.let(
                :public,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::Visibility::TaggedSymbol
              )
            PRIVATE =
              T.let(
                :private,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::Visibility::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::Visibility::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class MultipartUploadURL < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ReturnPolicy::MultipartUploadURL,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The 1-based index of this part within the multipart upload.
            sig { returns(Integer) }
            attr_accessor :part_number

            # The presigned URL to PUT this part's bytes to.
            sig { returns(String) }
            attr_accessor :url

            # The presigned URL for each part. Present only on create, and only for multipart
            # uploads.
            sig do
              params(part_number: Integer, url: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # The 1-based index of this part within the multipart upload.
              part_number:,
              # The presigned URL to PUT this part's bytes to.
              url:
            )
            end

            sig { override.returns({ part_number: Integer, url: String }) }
            def to_hash
            end
          end
        end

        class SocialLink < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::SocialLink,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ID of the social link
          sig { returns(String) }
          attr_accessor :id

          # The optional display title for the social link
          sig { returns(T.nilable(String)) }
          attr_accessor :title

          # The social link URL
          sig { returns(String) }
          attr_accessor :url

          # The social platform for this link
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::SocialLink::Website::TaggedSymbol
            )
          end
          attr_accessor :website

          # Account social links.
          sig do
            params(
              id: String,
              title: T.nilable(String),
              url: String,
              website:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::SocialLink::Website::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The ID of the social link
            id:,
            # The optional display title for the social link
            title:,
            # The social link URL
            url:,
            # The social platform for this link
            website:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                title: T.nilable(String),
                url: String,
                website:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::SocialLink::Website::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # The social platform for this link
          module Website
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::SocialLink::Website
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            X =
              T.let(
                :x,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::SocialLink::Website::TaggedSymbol
              )
            INSTAGRAM =
              T.let(
                :instagram,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::SocialLink::Website::TaggedSymbol
              )
            FACEBOOK =
              T.let(
                :facebook,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::SocialLink::Website::TaggedSymbol
              )
            TIKTOK =
              T.let(
                :tiktok,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::SocialLink::Website::TaggedSymbol
              )
            YOUTUBE =
              T.let(
                :youtube,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::SocialLink::Website::TaggedSymbol
              )
            LINKEDIN =
              T.let(
                :linkedin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::SocialLink::Website::TaggedSymbol
              )
            TWITCH =
              T.let(
                :twitch,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::SocialLink::Website::TaggedSymbol
              )
            WEBSITE =
              T.let(
                :website,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::SocialLink::Website::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :custom,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::SocialLink::Website::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::SocialLink::Website::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class StorePageConfig < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig,
                WhopSDK::Internal::AnyHash
              )
            end

          # Accent color used on the account store page.
          sig do
            returns(
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            )
          end
          attr_accessor :accent_color

          # Layout used on the account store page.
          sig do
            returns(
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::Layout::TaggedSymbol
              )
            )
          end
          attr_accessor :layout

          # Profile presentation used on the account store page.
          sig do
            returns(
              T.nilable(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::ProfileVariant::TaggedSymbol
              )
            )
          end
          attr_accessor :profile_variant

          # Whether the account store page shows a Whop affiliate link.
          sig { returns(T::Boolean) }
          attr_accessor :whop_affiliate_link

          # Account store page display configuration.
          sig do
            params(
              accent_color:
                T.nilable(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::OrSymbol
                ),
              layout:
                T.nilable(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::Layout::OrSymbol
                ),
              profile_variant:
                T.nilable(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::ProfileVariant::OrSymbol
                ),
              whop_affiliate_link: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # Accent color used on the account store page.
            accent_color:,
            # Layout used on the account store page.
            layout:,
            # Profile presentation used on the account store page.
            profile_variant:,
            # Whether the account store page shows a Whop affiliate link.
            whop_affiliate_link:
          )
          end

          sig do
            override.returns(
              {
                accent_color:
                  T.nilable(
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
                  ),
                layout:
                  T.nilable(
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::Layout::TaggedSymbol
                  ),
                profile_variant:
                  T.nilable(
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::ProfileVariant::TaggedSymbol
                  ),
                whop_affiliate_link: T::Boolean
              }
            )
          end
          def to_hash
          end

          # Accent color used on the account store page.
          module AccentColor
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            RUBY =
              T.let(
                :ruby,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            TOMATO =
              T.let(
                :tomato,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            RED =
              T.let(
                :red,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            CRIMSON =
              T.let(
                :crimson,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            PINK =
              T.let(
                :pink,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            PLUM =
              T.let(
                :plum,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            PURPLE =
              T.let(
                :purple,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            VIOLET =
              T.let(
                :violet,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            IRIS =
              T.let(
                :iris,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            CYAN =
              T.let(
                :cyan,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            TEAL =
              T.let(
                :teal,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            JADE =
              T.let(
                :jade,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            GREEN =
              T.let(
                :green,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            GRASS =
              T.let(
                :grass,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            BROWN =
              T.let(
                :brown,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            BLUE =
              T.let(
                :blue,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            ORANGE =
              T.let(
                :orange,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            INDIGO =
              T.let(
                :indigo,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            SKY =
              T.let(
                :sky,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            MINT =
              T.let(
                :mint,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            YELLOW =
              T.let(
                :yellow,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            AMBER =
              T.let(
                :amber,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            LIME =
              T.let(
                :lime,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            LEMON =
              T.let(
                :lemon,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            MAGENTA =
              T.let(
                :magenta,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            GOLD =
              T.let(
                :gold,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            BRONZE =
              T.let(
                :bronze,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            GRAY =
              T.let(
                :gray,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Layout used on the account store page.
          module Layout
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::Layout
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FEATURED =
              T.let(
                :featured,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::Layout::TaggedSymbol
              )
            COMPACT =
              T.let(
                :compact,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::Layout::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::Layout::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Profile presentation used on the account store page.
          module ProfileVariant
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::ProfileVariant
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PERSONAL =
              T.let(
                :personal,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::ProfileVariant::TaggedSymbol
              )
            BUSINESS =
              T.let(
                :business,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::ProfileVariant::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::StorePageConfig::ProfileVariant::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class TaxIdentifier < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier,
                WhopSDK::Internal::AnyHash
              )
            end

          # Tax identifier ID.
          sig { returns(String) }
          attr_accessor :id

          # Tax ID type.
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          end
          attr_accessor :tax_id_type

          # Tax ID value.
          sig { returns(String) }
          attr_accessor :tax_id_value

          # Account tax/VAT registrations. Empty when none are set.
          sig do
            params(
              id: String,
              tax_id_type:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::OrSymbol,
              tax_id_value: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Tax identifier ID.
            id:,
            # Tax ID type.
            tax_id_type:,
            # Tax ID value.
            tax_id_value:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                tax_id_type:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol,
                tax_id_value: String
              }
            )
          end
          def to_hash
          end

          # Tax ID type.
          module TaxIDType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AD_NRT =
              T.let(
                :ad_nrt,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            AO_TIN =
              T.let(
                :ao_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            AR_CUIT =
              T.let(
                :ar_cuit,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            AL_TIN =
              T.let(
                :al_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            AM_TIN =
              T.let(
                :am_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            AW_TIN =
              T.let(
                :aw_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            AU_ABN =
              T.let(
                :au_abn,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            AU_ARN =
              T.let(
                :au_arn,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            EU_VAT =
              T.let(
                :eu_vat,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            AZ_TIN =
              T.let(
                :az_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            BS_TIN =
              T.let(
                :bs_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            BH_VAT =
              T.let(
                :bh_vat,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            BD_BIN =
              T.let(
                :bd_bin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            BB_TIN =
              T.let(
                :bb_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            BY_TIN =
              T.let(
                :by_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            BJ_IFU =
              T.let(
                :bj_ifu,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            BO_TIN =
              T.let(
                :bo_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            BA_TIN =
              T.let(
                :ba_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            BR_CNPJ =
              T.let(
                :br_cnpj,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            BR_CPF =
              T.let(
                :br_cpf,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            BG_UIC =
              T.let(
                :bg_uic,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            BF_IFU =
              T.let(
                :bf_ifu,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            KH_TIN =
              T.let(
                :kh_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CM_NIU =
              T.let(
                :cm_niu,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CA_BN =
              T.let(
                :ca_bn,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CA_GST_HST =
              T.let(
                :ca_gst_hst,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CA_PST_BC =
              T.let(
                :ca_pst_bc,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CA_PST_MB =
              T.let(
                :ca_pst_mb,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CA_PST_SK =
              T.let(
                :ca_pst_sk,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CA_QST =
              T.let(
                :ca_qst,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CV_NIF =
              T.let(
                :cv_nif,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CL_TIN =
              T.let(
                :cl_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CN_TIN =
              T.let(
                :cn_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CO_NIT =
              T.let(
                :co_nit,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CD_NIF =
              T.let(
                :cd_nif,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CR_TIN =
              T.let(
                :cr_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            HR_OIB =
              T.let(
                :hr_oib,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            DO_RCN =
              T.let(
                :do_rcn,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            EC_RUC =
              T.let(
                :ec_ruc,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            EG_TIN =
              T.let(
                :eg_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            SV_NIT =
              T.let(
                :sv_nit,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            ET_TIN =
              T.let(
                :et_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            EU_OSS_VAT =
              T.let(
                :eu_oss_vat,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            GE_VAT =
              T.let(
                :ge_vat,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            GH_TIN =
              T.let(
                :gh_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            DE_STN =
              T.let(
                :de_stn,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            GB_VAT =
              T.let(
                :gb_vat,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            GN_NIF =
              T.let(
                :gn_nif,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            HK_BR =
              T.let(
                :hk_br,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            HU_TIN =
              T.let(
                :hu_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            IS_VAT =
              T.let(
                :is_vat,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            IN_GST =
              T.let(
                :in_gst,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            ID_NPWP =
              T.let(
                :id_npwp,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            IL_VAT =
              T.let(
                :il_vat,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            JP_CN =
              T.let(
                :jp_cn,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            JP_RN =
              T.let(
                :jp_rn,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            JP_TRN =
              T.let(
                :jp_trn,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            KZ_BIN =
              T.let(
                :kz_bin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            KE_PIN =
              T.let(
                :ke_pin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            KG_TIN =
              T.let(
                :kg_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            LA_TIN =
              T.let(
                :la_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            LI_UID =
              T.let(
                :li_uid,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            LI_VAT =
              T.let(
                :li_vat,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            MY_FRP =
              T.let(
                :my_frp,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            MY_ITN =
              T.let(
                :my_itn,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            MY_SST =
              T.let(
                :my_sst,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            MR_NIF =
              T.let(
                :mr_nif,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            MX_RFC =
              T.let(
                :mx_rfc,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            MD_VAT =
              T.let(
                :md_vat,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            ME_PIB =
              T.let(
                :me_pib,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            MA_VAT =
              T.let(
                :ma_vat,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            NP_PAN =
              T.let(
                :np_pan,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            NZ_GST =
              T.let(
                :nz_gst,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            NG_TIN =
              T.let(
                :ng_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            MK_VAT =
              T.let(
                :mk_vat,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            NO_VAT =
              T.let(
                :no_vat,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            NO_VOEC =
              T.let(
                :no_voec,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            OM_VAT =
              T.let(
                :om_vat,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            PE_RUC =
              T.let(
                :pe_ruc,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            PH_TIN =
              T.let(
                :ph_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            PL_NIP =
              T.let(
                :pl_nip,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            RO_TIN =
              T.let(
                :ro_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            RU_INN =
              T.let(
                :ru_inn,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            RU_KPP =
              T.let(
                :ru_kpp,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            SA_VAT =
              T.let(
                :sa_vat,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            SN_NINEA =
              T.let(
                :sn_ninea,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            RS_PIB =
              T.let(
                :rs_pib,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            SG_GST =
              T.let(
                :sg_gst,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            SG_UEN =
              T.let(
                :sg_uen,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            SI_TIN =
              T.let(
                :si_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            ZA_VAT =
              T.let(
                :za_vat,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            KR_BRN =
              T.let(
                :kr_brn,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            ES_CIF =
              T.let(
                :es_cif,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CH_UID =
              T.let(
                :ch_uid,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CH_VAT =
              T.let(
                :ch_vat,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            TW_VAT =
              T.let(
                :tw_vat,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            TJ_TIN =
              T.let(
                :tj_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            TZ_VAT =
              T.let(
                :tz_vat,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            TH_VAT =
              T.let(
                :th_vat,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            TR_TIN =
              T.let(
                :tr_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            UG_TIN =
              T.let(
                :ug_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            UA_VAT =
              T.let(
                :ua_vat,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            AE_TRN =
              T.let(
                :ae_trn,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            US_EIN =
              T.let(
                :us_ein,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            UY_RUC =
              T.let(
                :uy_ruc,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            UZ_TIN =
              T.let(
                :uz_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            UZ_VAT =
              T.let(
                :uz_vat,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            VE_RIF =
              T.let(
                :ve_rif,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            VN_TIN =
              T.let(
                :vn_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            ZM_TIN =
              T.let(
                :zm_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            ZW_TIN =
              T.let(
                :zw_tin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            SR_FIN =
              T.let(
                :sr_fin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            XI_VAT =
              T.let(
                :xi_vat,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # Who calculates and remits tax for the account: `whop` (Whop calculates and
        # remits), `self` (Whop calculates; the account collects and remits), or `none`
        # (neither; the account is responsible). `null` until the account enrolls in the
        # Whop tax service.
        module TaxRemittedBy
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxRemittedBy
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WHOP =
            T.let(
              :whop,
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxRemittedBy::TaggedSymbol
            )
          SELF =
            T.let(
              :self,
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxRemittedBy::TaggedSymbol
            )
          NONE =
            T.let(
              :none,
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxRemittedBy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxRemittedBy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # How tax is applied to the account's prices: `inclusive` (tax included in the
        # listed price) or `exclusive` (tax added on top). Defaults to `exclusive` when
        # unset; `null` only when the account has no payment connection.
        module TaxType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCLUSIVE =
            T.let(
              :inclusive,
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxType::TaggedSymbol
            )
          EXCLUSIVE =
            T.let(
              :exclusive,
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TaxType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class TermsOfService < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService,
                WhopSDK::Internal::AnyHash
              )
            end

          # The file's ID, prefixed `file_`.
          sig { returns(String) }
          attr_accessor :id

          # The file's MIME type, e.g. `application/pdf`.
          sig { returns(T.nilable(String)) }
          attr_accessor :content_type

          # When the file was created, as an ISO 8601 timestamp.
          sig { returns(String) }
          attr_accessor :created_at

          # The original filename, including its extension.
          sig { returns(T.nilable(String)) }
          attr_accessor :filename

          # The type of this object, always `file`.
          sig { returns(String) }
          attr_accessor :object

          # The file size in bytes. `null` until the upload has finished.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :size

          # Where the file is in its upload lifecycle.
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::UploadStatus::TaggedSymbol
            )
          end
          attr_accessor :upload_status

          # A URL to download the file: a permanent CDN URL for public files, a signed
          # expiring URL for private ones. `null` until the upload has finished.
          sig { returns(T.nilable(String)) }
          attr_accessor :url

          # `public` files are served via an unsigned CDN URL; `private` files via a signed,
          # expiring URL.
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::Visibility::TaggedSymbol
            )
          end
          attr_accessor :visibility

          # The byte size each part (except the last) must be. Present only on create, and
          # only for multipart uploads.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :multipart_chunk_size

          # The ID of the multipart upload, passed back to `complete`. Present only on
          # create, and only for multipart uploads.
          sig { returns(T.nilable(String)) }
          attr_accessor :multipart_upload_id

          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::MultipartUploadURL
                ]
              )
            )
          end
          attr_accessor :multipart_upload_urls

          # Headers to send with the upload PUT. Present only on create.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :upload_headers

          sig { params(upload_headers: T.anything).void }
          attr_writer :upload_headers

          # Presigned URL to PUT the file's bytes to. Present only on create, and only for
          # single-part uploads.
          sig { returns(T.nilable(String)) }
          attr_accessor :upload_url

          # The account's terms of service document, or `null` if they have not published
          # one.
          sig do
            params(
              id: String,
              content_type: T.nilable(String),
              created_at: String,
              filename: T.nilable(String),
              object: String,
              size: T.nilable(Integer),
              upload_status:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::UploadStatus::OrSymbol,
              url: T.nilable(String),
              visibility:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::Visibility::OrSymbol,
              multipart_chunk_size: T.nilable(Integer),
              multipart_upload_id: T.nilable(String),
              multipart_upload_urls:
                T.nilable(
                  T::Array[
                    WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::MultipartUploadURL::OrHash
                  ]
                ),
              upload_headers: T.anything,
              upload_url: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The file's ID, prefixed `file_`.
            id:,
            # The file's MIME type, e.g. `application/pdf`.
            content_type:,
            # When the file was created, as an ISO 8601 timestamp.
            created_at:,
            # The original filename, including its extension.
            filename:,
            # The type of this object, always `file`.
            object:,
            # The file size in bytes. `null` until the upload has finished.
            size:,
            # Where the file is in its upload lifecycle.
            upload_status:,
            # A URL to download the file: a permanent CDN URL for public files, a signed
            # expiring URL for private ones. `null` until the upload has finished.
            url:,
            # `public` files are served via an unsigned CDN URL; `private` files via a signed,
            # expiring URL.
            visibility:,
            # The byte size each part (except the last) must be. Present only on create, and
            # only for multipart uploads.
            multipart_chunk_size: nil,
            # The ID of the multipart upload, passed back to `complete`. Present only on
            # create, and only for multipart uploads.
            multipart_upload_id: nil,
            multipart_upload_urls: nil,
            # Headers to send with the upload PUT. Present only on create.
            upload_headers: nil,
            # Presigned URL to PUT the file's bytes to. Present only on create, and only for
            # single-part uploads.
            upload_url: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                content_type: T.nilable(String),
                created_at: String,
                filename: T.nilable(String),
                object: String,
                size: T.nilable(Integer),
                upload_status:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::UploadStatus::TaggedSymbol,
                url: T.nilable(String),
                visibility:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::Visibility::TaggedSymbol,
                multipart_chunk_size: T.nilable(Integer),
                multipart_upload_id: T.nilable(String),
                multipart_upload_urls:
                  T.nilable(
                    T::Array[
                      WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::MultipartUploadURL
                    ]
                  ),
                upload_headers: T.anything,
                upload_url: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # Where the file is in its upload lifecycle.
          module UploadStatus
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::UploadStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::UploadStatus::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :processing,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::UploadStatus::TaggedSymbol
              )
            READY =
              T.let(
                :ready,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::UploadStatus::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::UploadStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::UploadStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # `public` files are served via an unsigned CDN URL; `private` files via a signed,
          # expiring URL.
          module Visibility
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::Visibility
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PUBLIC =
              T.let(
                :public,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::Visibility::TaggedSymbol
              )
            PRIVATE =
              T.let(
                :private,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::Visibility::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::Visibility::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class MultipartUploadURL < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::TermsOfService::MultipartUploadURL,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The 1-based index of this part within the multipart upload.
            sig { returns(Integer) }
            attr_accessor :part_number

            # The presigned URL to PUT this part's bytes to.
            sig { returns(String) }
            attr_accessor :url

            # The presigned URL for each part. Present only on create, and only for multipart
            # uploads.
            sig do
              params(part_number: Integer, url: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # The 1-based index of this part within the multipart upload.
              part_number:,
              # The presigned URL to PUT this part's bytes to.
              url:
            )
            end

            sig { override.returns({ part_number: Integer, url: String }) }
            def to_hash
            end
          end
        end

        # Account-level 3D Secure behavior. `mandate_challenge` requires cardholder
        # verification on supported card payments; `null` uses the standard checkout flow.
        module ThreeDSLevel
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ThreeDSLevel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MANDATE_CHALLENGE =
            T.let(
              :mandate_challenge,
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ThreeDSLevel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::ThreeDSLevel::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Wallet < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Wallet,
                WhopSDK::Internal::AnyHash
              )
            end

          # Wallet ID, prefixed `wallet_`.
          sig { returns(String) }
          attr_accessor :id

          # The on-chain address of the wallet
          sig { returns(String) }
          attr_accessor :address

          # The blockchain network the wallet lives on
          sig do
            returns(
              WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Wallet::Network::TaggedSymbol
            )
          end
          attr_accessor :network

          # Account primary crypto wallet, or `null` if none has been provisioned.
          sig do
            params(
              id: String,
              address: String,
              network:
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Wallet::Network::OrSymbol
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
                network:
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Wallet::Network::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # The blockchain network the wallet lives on
          module Network
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Wallet::Network
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SOLANA =
              T.let(
                :solana,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Wallet::Network::TaggedSymbol
              )
            ETHEREUM =
              T.let(
                :ethereum,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Wallet::Network::TaggedSymbol
              )
            BITCOIN =
              T.let(
                :bitcoin,
                WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Wallet::Network::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountFinancingApprovedWebhookEvent::Data::Wallet::Network::TaggedSymbol
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
end
