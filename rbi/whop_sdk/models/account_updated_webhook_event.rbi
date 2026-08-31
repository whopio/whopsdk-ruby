# typed: strong

module WhopSDK
  module Models
    class AccountUpdatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::AccountUpdatedWebhookEvent, WhopSDK::Internal::AnyHash)
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

      sig { returns(WhopSDK::AccountUpdatedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: WhopSDK::AccountUpdatedWebhookEvent::Data::OrHash).void
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
          data: WhopSDK::AccountUpdatedWebhookEvent::Data::OrHash,
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
        type: :"account.updated"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            api_version_date: T.nilable(String),
            data: WhopSDK::AccountUpdatedWebhookEvent::Data,
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
              WhopSDK::AccountUpdatedWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # Account ID, prefixed `biz_`.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(T::Array[WhopSDK::AccountUpdatedWebhookEvent::Data::Balance])
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
        sig do
          returns(
            T.nilable(
              WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType::TaggedSymbol
            )
          )
        end
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
            T.nilable(WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities)
          )
        end
        attr_reader :capabilities

        sig do
          params(
            capabilities:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::OrHash
              )
          ).void
        end
        attr_writer :capabilities

        # Whop Cards application details for the account. Computed only on `retrieve` and
        # `me` for callers with `company:balance:read` scope; `null` otherwise, or when
        # the account has no card application.
        sig do
          returns(T.nilable(WhopSDK::AccountUpdatedWebhookEvent::Data::Cards))
        end
        attr_reader :cards

        sig do
          params(
            cards:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::Cards::OrHash
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
          returns(WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation)
        end
        attr_reader :company_formation

        sig do
          params(
            company_formation:
              WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::OrHash
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

        # Account owner email address.
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # The account's end-user license agreement document, or `null` if they have not
        # published one.
        sig do
          returns(T.nilable(WhopSDK::AccountUpdatedWebhookEvent::Data::Eula))
        end
        attr_reader :eula

        sig do
          params(
            eula:
              T.nilable(WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::OrHash)
          ).void
        end
        attr_writer :eula

        sig do
          returns(
            T::Array[
              WhopSDK::AccountUpdatedWebhookEvent::Data::HomePreference::TaggedSymbol
            ]
          )
        end
        attr_accessor :home_preferences

        # Account industry group. See the
        # [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary)
        # for valid values.
        sig do
          returns(
            T.nilable(
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          )
        end
        attr_accessor :industry_group

        # Specific industry vertical for the account. See the
        # [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary)
        # for valid values.
        sig do
          returns(
            T.nilable(
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          )
        end
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
              WhopSDK::AccountUpdatedWebhookEvent::Data::OnboardingType::TaggedSymbol
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
              WhopSDK::AccountUpdatedWebhookEvent::Data::OpengraphImageVariant::TaggedSymbol
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
        sig { returns(WhopSDK::AccountUpdatedWebhookEvent::Data::Owner) }
        attr_reader :owner

        sig do
          params(
            owner: WhopSDK::AccountUpdatedWebhookEvent::Data::Owner::OrHash
          ).void
        end
        attr_writer :owner

        # Parent account for connected accounts, or `null` for standalone accounts.
        sig do
          returns(
            T.nilable(WhopSDK::AccountUpdatedWebhookEvent::Data::ParentAccount)
          )
        end
        attr_reader :parent_account

        sig do
          params(
            parent_account:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::ParentAccount::OrHash
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
              WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls
            )
          )
        end
        attr_reader :payment_controls

        sig do
          params(
            payment_controls:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::OrHash
              )
          ).void
        end
        attr_writer :payment_controls

        # The account's privacy policy document, or `null` if they have not published one.
        sig do
          returns(
            T.nilable(WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy)
          )
        end
        attr_reader :privacy_policy

        sig do
          params(
            privacy_policy:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::OrHash
              )
          ).void
        end
        attr_writer :privacy_policy

        # Tax classification code applied by default to the account's products, with `id`,
        # `name`, and `product_type`. `null` when no default is set.
        sig { returns(T.nilable(T.anything)) }
        attr_accessor :product_tax_code

        # DEPRECATED: Use the `GET /recommended_actions?account_id={account_id}` endpoint
        # instead.
        sig do
          returns(
            T.nilable(
              T::Array[
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction
              ]
            )
          )
        end
        attr_accessor :required_actions

        # The account's return policy document, or `null` if they have not published one.
        sig do
          returns(
            T.nilable(WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy)
          )
        end
        attr_reader :return_policy

        sig do
          params(
            return_policy:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::OrHash
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
            T::Array[WhopSDK::AccountUpdatedWebhookEvent::Data::SocialLink]
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
          returns(WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig)
        end
        attr_reader :store_page_config

        sig do
          params(
            store_page_config:
              WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::OrHash
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
            T::Array[WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier]
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
              WhopSDK::AccountUpdatedWebhookEvent::Data::TaxRemittedBy::TaggedSymbol
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
              WhopSDK::AccountUpdatedWebhookEvent::Data::TaxType::TaggedSymbol
            )
          )
        end
        attr_accessor :tax_type

        # The account's terms of service document, or `null` if they have not published
        # one.
        sig do
          returns(
            T.nilable(WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService)
          )
        end
        attr_reader :terms_of_service

        sig do
          params(
            terms_of_service:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::OrHash
              )
          ).void
        end
        attr_writer :terms_of_service

        # Account-level 3D Secure behavior. `mandate_challenge` requires cardholder
        # verification on supported card payments; `null` uses the standard checkout flow.
        sig do
          returns(
            T.nilable(
              WhopSDK::AccountUpdatedWebhookEvent::Data::ThreeDSLevel::TaggedSymbol
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
          returns(T.nilable(WhopSDK::AccountUpdatedWebhookEvent::Data::Wallet))
        end
        attr_reader :wallet

        sig do
          params(
            wallet:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::Wallet::OrHash
              )
          ).void
        end
        attr_writer :wallet

        sig do
          params(
            id: String,
            balances:
              T::Array[
                WhopSDK::AccountUpdatedWebhookEvent::Data::Balance::OrHash
              ],
            banner_image_url: T.nilable(String),
            business_address: T.nilable(T.anything),
            business_name: T.nilable(String),
            business_type:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType::OrSymbol
              ),
            can_transfer_pending_balance_to_children: T::Boolean,
            capabilities:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::OrHash
              ),
            cards:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::Cards::OrHash
              ),
            collect_vat_id: T::Boolean,
            company_formation:
              WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::OrHash,
            country: T.nilable(String),
            created_at: String,
            description: T.nilable(String),
            email: T.nilable(String),
            eula:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::OrHash
              ),
            home_preferences:
              T::Array[
                WhopSDK::AccountUpdatedWebhookEvent::Data::HomePreference::OrSymbol
              ],
            industry_group:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::OrSymbol
              ),
            industry_type:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::OrSymbol
              ),
            invoice_prefix: T.nilable(String),
            logo_url: T.nilable(String),
            metadata: T.anything,
            onboarding_type:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::OnboardingType::OrSymbol
              ),
            opengraph_image_url: T.nilable(String),
            opengraph_image_variant:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::OpengraphImageVariant::OrSymbol
              ),
            other_business_description: T.nilable(String),
            other_industry_description: T.nilable(String),
            owner: WhopSDK::AccountUpdatedWebhookEvent::Data::Owner::OrHash,
            parent_account:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::ParentAccount::OrHash
              ),
            payment_controls:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::OrHash
              ),
            privacy_policy:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::OrHash
              ),
            product_tax_code: T.nilable(T.anything),
            recommended_actions:
              T.nilable(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::OrHash
                ]
              ),
            require_2fa: T::Boolean,
            required_actions:
              T.nilable(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::OrHash
                ]
              ),
            return_policy:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::OrHash
              ),
            route: String,
            send_customer_emails: T::Boolean,
            show_joined_whops: T::Boolean,
            show_reviews_dtc: T::Boolean,
            show_user_directory: T::Boolean,
            social_links:
              T::Array[
                WhopSDK::AccountUpdatedWebhookEvent::Data::SocialLink::OrHash
              ],
            stablecoin_rails: T::Boolean,
            status: T.nilable(String),
            status_reason: T.nilable(String),
            store_page_config:
              WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::OrHash,
            target_audience: T.nilable(String),
            tax_collection_enabled_states: T::Array[String],
            tax_identifiers:
              T::Array[
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::OrHash
              ],
            tax_remitted_by:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxRemittedBy::OrSymbol
              ),
            tax_type:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxType::OrSymbol
              ),
            terms_of_service:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::OrHash
              ),
            three_ds_level:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::ThreeDSLevel::OrSymbol
              ),
            title: String,
            total_earned_usd: T.nilable(Float),
            total_usd: T.nilable(String),
            use_logo_as_opengraph_image_fallback: T::Boolean,
            verification: T.anything,
            volume_usd: T.nilable(Float),
            wallet:
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::Wallet::OrHash
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
          # DEPRECATED: Use the `GET /recommended_actions?account_id={account_id}` endpoint
          # instead.
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
                T::Array[WhopSDK::AccountUpdatedWebhookEvent::Data::Balance],
              banner_image_url: T.nilable(String),
              business_address: T.nilable(T.anything),
              business_name: T.nilable(String),
              business_type:
                T.nilable(
                  WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType::TaggedSymbol
                ),
              can_transfer_pending_balance_to_children: T::Boolean,
              capabilities:
                T.nilable(
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities
                ),
              cards:
                T.nilable(WhopSDK::AccountUpdatedWebhookEvent::Data::Cards),
              collect_vat_id: T::Boolean,
              company_formation:
                WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation,
              country: T.nilable(String),
              created_at: String,
              description: T.nilable(String),
              email: T.nilable(String),
              eula: T.nilable(WhopSDK::AccountUpdatedWebhookEvent::Data::Eula),
              home_preferences:
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::HomePreference::TaggedSymbol
                ],
              industry_group:
                T.nilable(
                  WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
                ),
              industry_type:
                T.nilable(
                  WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
                ),
              invoice_prefix: T.nilable(String),
              logo_url: T.nilable(String),
              metadata: T.anything,
              onboarding_type:
                T.nilable(
                  WhopSDK::AccountUpdatedWebhookEvent::Data::OnboardingType::TaggedSymbol
                ),
              opengraph_image_url: T.nilable(String),
              opengraph_image_variant:
                T.nilable(
                  WhopSDK::AccountUpdatedWebhookEvent::Data::OpengraphImageVariant::TaggedSymbol
                ),
              other_business_description: T.nilable(String),
              other_industry_description: T.nilable(String),
              owner: WhopSDK::AccountUpdatedWebhookEvent::Data::Owner,
              parent_account:
                T.nilable(
                  WhopSDK::AccountUpdatedWebhookEvent::Data::ParentAccount
                ),
              payment_controls:
                T.nilable(
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls
                ),
              privacy_policy:
                T.nilable(
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy
                ),
              product_tax_code: T.nilable(T.anything),
              recommended_actions:
                T.nilable(
                  T::Array[
                    WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction
                  ]
                ),
              require_2fa: T::Boolean,
              required_actions:
                T.nilable(
                  T::Array[
                    WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction
                  ]
                ),
              return_policy:
                T.nilable(
                  WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy
                ),
              route: String,
              send_customer_emails: T::Boolean,
              show_joined_whops: T::Boolean,
              show_reviews_dtc: T::Boolean,
              show_user_directory: T::Boolean,
              social_links:
                T::Array[WhopSDK::AccountUpdatedWebhookEvent::Data::SocialLink],
              stablecoin_rails: T::Boolean,
              status: T.nilable(String),
              status_reason: T.nilable(String),
              store_page_config:
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig,
              target_audience: T.nilable(String),
              tax_collection_enabled_states: T::Array[String],
              tax_identifiers:
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier
                ],
              tax_remitted_by:
                T.nilable(
                  WhopSDK::AccountUpdatedWebhookEvent::Data::TaxRemittedBy::TaggedSymbol
                ),
              tax_type:
                T.nilable(
                  WhopSDK::AccountUpdatedWebhookEvent::Data::TaxType::TaggedSymbol
                ),
              terms_of_service:
                T.nilable(
                  WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService
                ),
              three_ds_level:
                T.nilable(
                  WhopSDK::AccountUpdatedWebhookEvent::Data::ThreeDSLevel::TaggedSymbol
                ),
              title: String,
              total_earned_usd: T.nilable(Float),
              total_usd: T.nilable(String),
              use_logo_as_opengraph_image_fallback: T::Boolean,
              verification: T.anything,
              volume_usd: T.nilable(Float),
              wallet:
                T.nilable(WhopSDK::AccountUpdatedWebhookEvent::Data::Wallet)
            }
          )
        end
        def to_hash
        end

        class Balance < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AccountUpdatedWebhookEvent::Data::Balance,
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
              WhopSDK::AccountUpdatedWebhookEvent::Data::Balance::Breakdown
            )
          end
          attr_reader :breakdown

          sig do
            params(
              breakdown:
                WhopSDK::AccountUpdatedWebhookEvent::Data::Balance::Breakdown::OrHash
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::Balance::Breakdown::OrHash,
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Balance::Breakdown,
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Balance::Breakdown,
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Balance::Breakdown::PendingSettlement
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
                    WhopSDK::AccountUpdatedWebhookEvent::Data::Balance::Breakdown::PendingSettlement::OrHash
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
                      WhopSDK::AccountUpdatedWebhookEvent::Data::Balance::Breakdown::PendingSettlement
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
                    WhopSDK::AccountUpdatedWebhookEvent::Data::Balance::Breakdown::PendingSettlement,
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

        # High-level business category for the account. See the
        # [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary)
        # for valid values.
        module BusinessType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EDUCATION_PROGRAM =
            T.let(
              :education_program,
              WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType::TaggedSymbol
            )
          COACHING =
            T.let(
              :coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType::TaggedSymbol
            )
          SOFTWARE =
            T.let(
              :software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType::TaggedSymbol
            )
          PAID_GROUP =
            T.let(
              :paid_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType::TaggedSymbol
            )
          NEWSLETTER =
            T.let(
              :newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType::TaggedSymbol
            )
          AGENCY =
            T.let(
              :agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType::TaggedSymbol
            )
          PHYSICAL_PRODUCTS =
            T.let(
              :physical_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType::TaggedSymbol
            )
          BRICK_AND_MORTAR =
            T.let(
              :brick_and_mortar,
              WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType::TaggedSymbol
            )
          EVENTS =
            T.let(
              :events,
              WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType::TaggedSymbol
            )
          COACHING_AND_COURSES =
            T.let(
              :coaching_and_courses,
              WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType::TaggedSymbol
            )
          SERVICES =
            T.let(
              :services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType::TaggedSymbol
            )
          GIG_ECONOMY =
            T.let(
              :gig_economy,
              WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType::TaggedSymbol
            )
          MARKETPLACE =
            T.let(
              :marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType::TaggedSymbol
            )
          TELEHEALTH =
            T.let(
              :telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType::TaggedSymbol
            )
          CLASS_ACTION_SETTLEMENT =
            T.let(
              :class_action_settlement,
              WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType::TaggedSymbol
            )
          PHYSICAL_PRODUCT =
            T.let(
              :physical_product,
              WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType::TaggedSymbol
            )
          SAAS =
            T.let(
              :saas,
              WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType::TaggedSymbol
            )
          COURSE =
            T.let(
              :course,
              WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType::TaggedSymbol
            )
          COMMUNITY =
            T.let(
              :community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AccountUpdatedWebhookEvent::Data::BusinessType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Capabilities < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities,
                WhopSDK::Internal::AnyHash
              )
            end

          # Bank payins: debits, transfers, and local bank rails
          sig do
            returns(
              WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptBankPayments::TaggedSymbol
            )
          end
          attr_accessor :accept_bank_payments

          # Buy-now-pay-later payins; requires approval
          sig do
            returns(
              WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptBnplPayments::TaggedSymbol
            )
          end
          attr_accessor :accept_bnpl_payments

          # Card payins, including Apple Pay and Google Pay
          sig do
            returns(
              WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptCardPayments::TaggedSymbol
            )
          end
          attr_accessor :accept_card_payments

          # Deposits by bank wire or ACH to the account's virtual bank account
          sig do
            returns(
              WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::BankDeposit::TaggedSymbol
            )
          end
          attr_accessor :bank_deposit

          # Balance top-ups by charging a stored payment method
          sig do
            returns(
              WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CardDeposit::TaggedSymbol
            )
          end
          attr_accessor :card_deposit

          # Issuing Whop cards; requires card application approval
          sig do
            returns(
              WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CardIssuing::TaggedSymbol
            )
          end
          attr_accessor :card_issuing

          # On-chain deposits to the account's crypto wallet
          sig do
            returns(
              WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CryptoDeposit::TaggedSymbol
            )
          end
          attr_accessor :crypto_deposit

          # On-chain payouts to a crypto wallet
          sig do
            returns(
              WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CryptoPayout::TaggedSymbol
            )
          end
          attr_accessor :crypto_payout

          # Instant payouts to an eligible payout destination
          sig do
            returns(
              WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::InstantPayout::TaggedSymbol
            )
          end
          attr_accessor :instant_payout

          # Launching ad campaigns through Whop Ads. `inactive` while a requested ads
          # services agreement is awaiting the account's signature.
          sig do
            returns(
              WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::RunAds::TaggedSymbol
            )
          end
          attr_accessor :run_ads

          # Standard payouts to an external payout destination
          sig do
            returns(
              WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::StandardPayout::TaggedSymbol
            )
          end
          attr_accessor :standard_payout

          # Transfers to other accounts
          sig do
            returns(
              WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::Transfer::TaggedSymbol
            )
          end
          attr_accessor :transfer

          # Payment rails enabled for this account, each `active`, `inactive`, or `pending`
          # (onboarding or review in progress). Computed only on `retrieve` and `me` for
          # callers with `company:balance:read` scope; `null` otherwise.
          sig do
            params(
              accept_bank_payments:
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptBankPayments::OrSymbol,
              accept_bnpl_payments:
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptBnplPayments::OrSymbol,
              accept_card_payments:
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptCardPayments::OrSymbol,
              bank_deposit:
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::BankDeposit::OrSymbol,
              card_deposit:
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CardDeposit::OrSymbol,
              card_issuing:
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CardIssuing::OrSymbol,
              crypto_deposit:
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CryptoDeposit::OrSymbol,
              crypto_payout:
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CryptoPayout::OrSymbol,
              instant_payout:
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::InstantPayout::OrSymbol,
              run_ads:
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::RunAds::OrSymbol,
              standard_payout:
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::StandardPayout::OrSymbol,
              transfer:
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::Transfer::OrSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptBankPayments::TaggedSymbol,
                accept_bnpl_payments:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptBnplPayments::TaggedSymbol,
                accept_card_payments:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptCardPayments::TaggedSymbol,
                bank_deposit:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::BankDeposit::TaggedSymbol,
                card_deposit:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CardDeposit::TaggedSymbol,
                card_issuing:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CardIssuing::TaggedSymbol,
                crypto_deposit:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CryptoDeposit::TaggedSymbol,
                crypto_payout:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CryptoPayout::TaggedSymbol,
                instant_payout:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::InstantPayout::TaggedSymbol,
                run_ads:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::RunAds::TaggedSymbol,
                standard_payout:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::StandardPayout::TaggedSymbol,
                transfer:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::Transfer::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptBankPayments
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptBankPayments::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptBankPayments::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptBankPayments::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptBankPayments::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptBnplPayments
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptBnplPayments::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptBnplPayments::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptBnplPayments::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptBnplPayments::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptCardPayments
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptCardPayments::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptCardPayments::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptCardPayments::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::AcceptCardPayments::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::BankDeposit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::BankDeposit::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::BankDeposit::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::BankDeposit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::BankDeposit::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CardDeposit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CardDeposit::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CardDeposit::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CardDeposit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CardDeposit::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CardIssuing
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CardIssuing::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CardIssuing::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CardIssuing::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CardIssuing::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CryptoDeposit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CryptoDeposit::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CryptoDeposit::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CryptoDeposit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CryptoDeposit::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CryptoPayout
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CryptoPayout::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CryptoPayout::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CryptoPayout::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::CryptoPayout::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::InstantPayout
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::InstantPayout::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::InstantPayout::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::InstantPayout::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::InstantPayout::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::RunAds
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::RunAds::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::RunAds::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::RunAds::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::RunAds::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::StandardPayout
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::StandardPayout::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::StandardPayout::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::StandardPayout::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::StandardPayout::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::Transfer
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::Transfer::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::Transfer::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::Transfer::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Capabilities::Transfer::TaggedSymbol
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::Cards,
                WhopSDK::Internal::AnyHash
              )
            end

          # Whether the card application verifies a business (`business`, KYB) or a person
          # (`individual`, consumer identity). `null` when the application is not yet linked
          # to a verification.
          sig do
            returns(
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::Cards::Kind::TaggedSymbol
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
              WhopSDK::AccountUpdatedWebhookEvent::Data::Cards::Status::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Cards::Kind::OrSymbol
                ),
              status:
                WhopSDK::AccountUpdatedWebhookEvent::Data::Cards::Status::OrSymbol
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
                    WhopSDK::AccountUpdatedWebhookEvent::Data::Cards::Kind::TaggedSymbol
                  ),
                status:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Cards::Status::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Cards::Kind
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INDIVIDUAL =
              T.let(
                :individual,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Cards::Kind::TaggedSymbol
              )
            BUSINESS =
              T.let(
                :business,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Cards::Kind::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Cards::Kind::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Cards::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            APPROVED =
              T.let(
                :approved,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Cards::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Cards::Status::TaggedSymbol
              )
            MANUAL_REVIEW =
              T.let(
                :manual_review,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Cards::Status::TaggedSymbol
              )
            DENIED =
              T.let(
                :denied,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Cards::Status::TaggedSymbol
              )
            LOCKED =
              T.let(
                :locked,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Cards::Status::TaggedSymbol
              )
            CANCELED =
              T.let(
                :canceled,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Cards::Status::TaggedSymbol
              )
            NEEDS_VERIFICATION =
              T.let(
                :needs_verification,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Cards::Status::TaggedSymbol
              )
            NEEDS_INFORMATION =
              T.let(
                :needs_information,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Cards::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Cards::Status::TaggedSymbol
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation,
                WhopSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Document
                ]
              )
            )
          end
          attr_reader :documents

          sig do
            params(
              documents:
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Document::OrHash
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures
              )
            )
          end
          attr_reader :signatures

          sig do
            params(
              signatures:
                WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::OrHash
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Status::OrSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Document::OrHash
                ],
              ein_registered: T::Boolean,
              legal_name: T.nilable(String),
              signatures:
                WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::OrHash,
              state_registered: T::Boolean,
              status:
                WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Status::OrSymbol
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
                    WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Document
                  ],
                ein_registered: T::Boolean,
                legal_name: T.nilable(String),
                signatures:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures,
                state_registered: T::Boolean,
                status:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Status::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          class Document < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Document,
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Signature state for IRS Form 8821, the tax information authorization. Present
            # only while the form still needs the founder's action.
            sig do
              returns(
                T.nilable(
                  WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Form8821
                )
              )
            end
            attr_reader :form8821

            sig do
              params(
                form8821:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Form8821::OrHash
              ).void
            end
            attr_writer :form8821

            # Signature state for IRS Form SS-4, the EIN application. Present only while the
            # form still needs the founder's action.
            sig do
              returns(
                T.nilable(
                  WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Ss4
                )
              )
            end
            attr_reader :ss4

            sig do
              params(
                ss4:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Ss4::OrHash
              ).void
            end
            attr_writer :ss4

            # IRS forms still awaiting a founder's signature, each with a hosted signing URL.
            # Present once `status` leaves `draft`; empty when nothing needs signing.
            sig do
              params(
                form8821:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Form8821::OrHash,
                ss4:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Ss4::OrHash
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
                    WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Form8821,
                  ss4:
                    WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Ss4
                }
              )
            end
            def to_hash
            end

            class Form8821 < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Form8821,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # `pending` when a signing session is ready for the founder; `unknown` when the
              # signature state could not be determined.
              sig do
                returns(
                  WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Form8821::Status::TaggedSymbol
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
                    WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Form8821::Status::OrSymbol,
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
                      WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Form8821::Status::TaggedSymbol,
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
                      WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Form8821::Status
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PENDING =
                  T.let(
                    :pending,
                    WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Form8821::Status::TaggedSymbol
                  )
                UNKNOWN =
                  T.let(
                    :unknown,
                    WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Form8821::Status::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Form8821::Status::TaggedSymbol
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
                    WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Ss4,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # `pending` when a signing session is ready for the founder; `unknown` when the
              # signature state could not be determined.
              sig do
                returns(
                  WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Ss4::Status::TaggedSymbol
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
                    WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Ss4::Status::OrSymbol,
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
                      WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Ss4::Status::TaggedSymbol,
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
                      WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Ss4::Status
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PENDING =
                  T.let(
                    :pending,
                    WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Ss4::Status::TaggedSymbol
                  )
                UNKNOWN =
                  T.let(
                    :unknown,
                    WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Ss4::Status::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Signatures::Ss4::Status::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DRAFT =
              T.let(
                :draft,
                WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Status::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :processing,
                WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Status::TaggedSymbol
              )
            FILED =
              T.let(
                :filed,
                WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Status::TaggedSymbol
              )
            REJECTED =
              T.let(
                :rejected,
                WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::CompanyFormation::Status::TaggedSymbol
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::Eula,
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
              WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::UploadStatus::TaggedSymbol
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
              WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::Visibility::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::MultipartUploadURL
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::UploadStatus::OrSymbol,
              url: T.nilable(String),
              visibility:
                WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::Visibility::OrSymbol,
              multipart_chunk_size: T.nilable(Integer),
              multipart_upload_id: T.nilable(String),
              multipart_upload_urls:
                T.nilable(
                  T::Array[
                    WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::MultipartUploadURL::OrHash
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::UploadStatus::TaggedSymbol,
                url: T.nilable(String),
                visibility:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::Visibility::TaggedSymbol,
                multipart_chunk_size: T.nilable(Integer),
                multipart_upload_id: T.nilable(String),
                multipart_upload_urls:
                  T.nilable(
                    T::Array[
                      WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::MultipartUploadURL
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::UploadStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::UploadStatus::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :processing,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::UploadStatus::TaggedSymbol
              )
            READY =
              T.let(
                :ready,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::UploadStatus::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::UploadStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::UploadStatus::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::Visibility
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PUBLIC =
              T.let(
                :public,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::Visibility::TaggedSymbol
              )
            PRIVATE =
              T.let(
                :private,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::Visibility::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::Visibility::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Eula::MultipartUploadURL,
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::HomePreference
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HIDE_MEMBER_COUNT =
            T.let(
              :hide_member_count,
              WhopSDK::AccountUpdatedWebhookEvent::Data::HomePreference::TaggedSymbol
            )
          HIDE_MEMBERS_CARD =
            T.let(
              :hide_members_card,
              WhopSDK::AccountUpdatedWebhookEvent::Data::HomePreference::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AccountUpdatedWebhookEvent::Data::HomePreference::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Account industry group. See the
        # [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary)
        # for valid values.
        module IndustryGroup
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACADEMIC_AND_TEST_PREP =
            T.let(
              :academic_and_test_prep,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          ACCESSORIES =
            T.let(
              :accessories,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          AGRICULTURE_AND_FARMING =
            T.let(
              :agriculture_and_farming,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          AI_AND_AUTOMATION_AGENCIES =
            T.let(
              :ai_and_automation_agencies,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          AI_AND_AUTOMATION_SOFTWARE =
            T.let(
              :ai_and_automation_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          ARTS_AND_CRAFTS =
            T.let(
              :arts_and_crafts,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          AUTOMOTIVE =
            T.let(
              :automotive,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          B2B_AND_PROFESSIONAL_MARKETPLACES =
            T.let(
              :b2b_and_professional_marketplaces,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          BABY_AND_KIDS =
            T.let(
              :baby_and_kids,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          BARS_AND_BREWERIES =
            T.let(
              :bars_and_breweries,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          BEAUTY_AND_PERSONAL_CARE =
            T.let(
              :beauty_and_personal_care,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          BEAUTY_AND_WELLNESS =
            T.let(
              :beauty_and_wellness,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          BUSINESS_AND_ENTREPRENEURSHIP =
            T.let(
              :business_and_entrepreneurship,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          BUSINESS_AND_MONEY_GROUPS =
            T.let(
              :business_and_money_groups,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          CAFES_AND_QUICK_SERVICE =
            T.let(
              :cafes_and_quick_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          CAREER_AND_PROFESSIONAL =
            T.let(
              :career_and_professional,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          CHARITY_AND_CAUSE_EVENTS =
            T.let(
              :charity_and_cause_events,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          CLASS_ACTION_SETTLEMENT =
            T.let(
              :class_action_settlement,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          CLOTHING_AND_APPAREL =
            T.let(
              :clothing_and_apparel,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          COMMUNICATION_AND_MESSAGING_SOFTWARE =
            T.let(
              :communication_and_messaging_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          COMMUNITY_AND_EDUCATION_SOFTWARE =
            T.let(
              :community_and_education_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          CONFERENCE_AND_EXPO_EVENTS =
            T.let(
              :conference_and_expo_events,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          CONSULTING =
            T.let(
              :consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          CONTENT_AND_CLIPPING_AGENCIES =
            T.let(
              :content_and_clipping_agencies,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          CREATIVE_AND_CONTENT_CREATION =
            T.let(
              :creative_and_content_creation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          CREATIVE_AND_CONTENT_GROUPS =
            T.let(
              :creative_and_content_groups,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          CREATIVE_AND_EDUCATION =
            T.let(
              :creative_and_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          CREATIVE_GIGS =
            T.let(
              :creative_gigs,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          CREATIVE_SERVICES =
            T.let(
              :creative_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          CUSTOMER_SUPPORT_AGENCIES =
            T.let(
              :customer_support_agencies,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          DATING_AND_RELATIONSHIPS =
            T.let(
              :dating_and_relationships,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          DELIVERY_AND_LOGISTICS =
            T.let(
              :delivery_and_logistics,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          DENTAL_AND_VISION =
            T.let(
              :dental_and_vision,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          DERMATOLOGY_AND_SKIN =
            T.let(
              :dermatology_and_skin,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          DESIGN_AND_CREATIVE_AGENCIES =
            T.let(
              :design_and_creative_agencies,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          DEVELOPER_AND_TECHNICAL_TOOLS =
            T.let(
              :developer_and_technical_tools,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          DEVELOPMENT_AGENCIES =
            T.let(
              :development_agencies,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          DIGITAL_AND_EDUCATION_MARKETPLACES =
            T.let(
              :digital_and_education_marketplaces,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          DIGITAL_GOODS_AND_ACCOUNTS =
            T.let(
              :digital_goods_and_accounts,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          E_COMMERCE_SOFTWARE =
            T.let(
              :e_commerce_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          EDUCATION_AND_CHILDCARE =
            T.let(
              :education_and_childcare,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          EDUCATIONAL_TRAINING_EVENTS =
            T.let(
              :educational_training_events,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          ELECTRONICS_AND_GADGETS =
            T.let(
              :electronics_and_gadgets,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          ENTERTAINMENT_AND_LEISURE =
            T.let(
              :entertainment_and_leisure,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          FAMILY_AND_COMMUNITY_EVENTS =
            T.let(
              :family_and_community_events,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          FINANCE_AND_INVESTING =
            T.let(
              :finance_and_investing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          FITNESS_AND_ATHLETICS =
            T.let(
              :fitness_and_athletics,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          FITNESS_AND_HEALTH_GROUPS =
            T.let(
              :fitness_and_health_groups,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          FITNESS_AND_RECREATION =
            T.let(
              :fitness_and_recreation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          FITNESS_EQUIPMENT_AND_GEAR =
            T.let(
              :fitness_equipment_and_gear,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          FOOD_AND_BEVERAGES =
            T.let(
              :food_and_beverages,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          FOOD_AND_HOSPITALITY_MARKETPLACES =
            T.let(
              :food_and_hospitality_marketplaces,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          FUNERAL_AND_DEATH_CARE =
            T.let(
              :funeral_and_death_care,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          GAMING_AND_ENTERTAINMENT_SOFTWARE =
            T.let(
              :gaming_and_entertainment_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          GAMING_GROUPS =
            T.let(
              :gaming_groups,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          GENETIC_AND_SPECIALIZED =
            T.let(
              :genetic_and_specialized,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          GOVERNMENT_AND_PUBLIC =
            T.let(
              :government_and_public,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          HEALTH_AND_WELLNESS =
            T.let(
              :health_and_wellness,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          HEALTH_AND_WELLNESS_SERVICES =
            T.let(
              :health_and_wellness_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          HEALTHCARE =
            T.let(
              :healthcare,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          HEALTHCARE_AND_WELLNESS_SOFTWARE =
            T.let(
              :healthcare_and_wellness_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          HOBBIES_AND_LIFESTYLE =
            T.let(
              :hobbies_and_lifestyle,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          HOBBY_AND_INTEREST_GROUPS =
            T.let(
              :hobby_and_interest_groups,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          HOME_AND_LIVING =
            T.let(
              :home_and_living,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          HOME_AND_TRADE_SERVICES =
            T.let(
              :home_and_trade_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          HOME_AND_TRADE_STOREFRONTS =
            T.let(
              :home_and_trade_storefronts,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          HOME_IMPROVEMENT_AND_TOOLS =
            T.let(
              :home_improvement_and_tools,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          HOME_SERVICES_GIGS =
            T.let(
              :home_services_gigs,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          HOSPITALITY_AND_LODGING =
            T.let(
              :hospitality_and_lodging,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          INDUSTRIAL_AND_MANUFACTURING =
            T.let(
              :industrial_and_manufacturing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          INDUSTRY_SPECIFIC_SOFTWARE =
            T.let(
              :industry_specific_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          LANGUAGE_AND_COMMUNICATION =
            T.let(
              :language_and_communication,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          LEGAL_AND_COMPLIANCE =
            T.let(
              :legal_and_compliance,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          LIFESTYLE_AND_CULTURE =
            T.let(
              :lifestyle_and_culture,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          LIFESTYLE_AND_PERSONAL_GROWTH =
            T.let(
              :lifestyle_and_personal_growth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          LIFESTYLE_AND_PERSONAL_GROWTH_GROUPS =
            T.let(
              :lifestyle_and_personal_growth_groups,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          LIFESTYLE_AND_WELLNESS_EVENTS =
            T.let(
              :lifestyle_and_wellness_events,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          LOGISTICS_AND_TRANSPORTATION_SERVICES =
            T.let(
              :logistics_and_transportation_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          MARKETING_AGENCIES =
            T.let(
              :marketing_agencies,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          MARKETING_AND_ADVERTISING =
            T.let(
              :marketing_and_advertising,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          MARKETING_AND_SALES_SOFTWARE =
            T.let(
              :marketing_and_sales_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          MEDIA_AND_PUBLISHING_COMPANIES =
            T.let(
              :media_and_publishing_companies,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          MENTAL_HEALTH_AND_BEHAVIORAL =
            T.let(
              :mental_health_and_behavioral,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          MISCELLANEOUS =
            T.let(
              :miscellaneous,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          MUSIC_AND_PERFORMING_ARTS =
            T.let(
              :music_and_performing_arts,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          NEWS_AND_POLITICS =
            T.let(
              :news_and_politics,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          NONPROFIT_AND_CHARITY =
            T.let(
              :nonprofit_and_charity,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          OFFICE_AND_BUSINESS_SUPPLIES =
            T.let(
              :office_and_business_supplies,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          OUTDOOR_AND_SPORTS =
            T.let(
              :outdoor_and_sports,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          PERFORMANCE_AND_SHOW_EVENTS =
            T.let(
              :performance_and_show_events,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          PERSONAL_DEVELOPMENT =
            T.let(
              :personal_development,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          PERSONAL_FINANCE =
            T.let(
              :personal_finance,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          PERSONAL_SERVICES =
            T.let(
              :personal_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          PET_SERVICES =
            T.let(
              :pet_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          PETS_AND_ANIMALS =
            T.let(
              :pets_and_animals,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          PRIMARY_AND_GENERAL_CARE =
            T.let(
              :primary_and_general_care,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          PRODUCT_MARKETPLACES =
            T.let(
              :product_marketplaces,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          PRODUCTIVITY_AND_BUSINESS_OPS =
            T.let(
              :productivity_and_business_ops,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          PROFESSIONAL_GIGS =
            T.let(
              :professional_gigs,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          PROFESSIONAL_SERVICES =
            T.let(
              :professional_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          PROFESSIONAL_SERVICES_STOREFRONT =
            T.let(
              :professional_services_storefront,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          PUBLISHING_AND_INFO_PRODUCTS =
            T.let(
              :publishing_and_info_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          REAL_ESTATE =
            T.let(
              :real_estate,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          REAL_ESTATE_SOFTWARE =
            T.let(
              :real_estate_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          RECRUITING_AND_STAFFING =
            T.let(
              :recruiting_and_staffing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          REHABILITATION_AND_THERAPY =
            T.let(
              :rehabilitation_and_therapy,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          RELIGION_AND_FAITH =
            T.let(
              :religion_and_faith,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          RENTAL_MARKETPLACES =
            T.let(
              :rental_marketplaces,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          RESTAURANTS =
            T.let(
              :restaurants,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          RETAIL =
            T.let(
              :retail,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          SALES_AGENCIES =
            T.let(
              :sales_agencies,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          SALES_AND_REVENUE =
            T.let(
              :sales_and_revenue,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          SECURITY_AND_INVESTIGATIONS =
            T.let(
              :security_and_investigations,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          SECURITY_AND_PRIVACY_SOFTWARE =
            T.let(
              :security_and_privacy_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          SERVICE_MARKETPLACES =
            T.let(
              :service_marketplaces,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          SLEEP_AND_CHRONIC_CONDITIONS =
            T.let(
              :sleep_and_chronic_conditions,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          SOCIAL_AND_NETWORKING_EVENTS =
            T.let(
              :social_and_networking_events,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          SOCIAL_ENTERTAINMENT_EVENTS =
            T.let(
              :social_entertainment_events,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          SPECIALIZED_GIGS =
            T.let(
              :specialized_gigs,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          SPECIALTY_MEDICAL_CARE =
            T.let(
              :specialty_medical_care,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          SPIRITUALITY_AND_MINDFULNESS =
            T.let(
              :spirituality_and_mindfulness,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          SPIRITUALITY_AND_PERSONAL_GROWTH =
            T.let(
              :spirituality_and_personal_growth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          SPORTS_AND_FITNESS_EVENTS =
            T.let(
              :sports_and_fitness_events,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          SPORTS_BETTING_AND_GAMBLING =
            T.let(
              :sports_betting_and_gambling,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          SPORTS_BETTING_GROUPS =
            T.let(
              :sports_betting_groups,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          SUPPLEMENTS_AND_NUTRITION =
            T.let(
              :supplements_and_nutrition,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          SUSTAINABILITY_AND_ECO_PRODUCTS =
            T.let(
              :sustainability_and_eco_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          TASK_AND_ERRANDS =
            T.let(
              :task_and_errands,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          TECH_AND_AI =
            T.let(
              :tech_and_ai,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          TECH_AND_DEV_GROUPS =
            T.let(
              :tech_and_dev_groups,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          TECH_AND_DEVELOPMENT =
            T.let(
              :tech_and_development,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          TRADING_AND_FINANCE_SOFTWARE =
            T.let(
              :trading_and_finance_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          TRADING_AND_INVESTING =
            T.let(
              :trading_and_investing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          TRADING_AND_INVESTING_GROUPS =
            T.let(
              :trading_and_investing_groups,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          TRANSPORTATION =
            T.let(
              :transportation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          VETERINARY =
            T.let(
              :veterinary,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          VIDEO_GAMES_AND_ESPORTS =
            T.let(
              :video_games_and_esports,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          WEIGHT_AND_METABOLIC_HEALTH =
            T.let(
              :weight_and_metabolic_health,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          WELLNESS_AND_ALTERNATIVE =
            T.let(
              :wellness_and_alternative,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )
          WOMENS_AND_MENS_HEALTH =
            T.let(
              :womens_and_mens_health,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryGroup::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Specific industry vertical for the account. See the
        # [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary)
        # for valid values.
        module IndustryType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRADING =
            T.let(
              :trading,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPORTS_BETTING =
            T.let(
              :sports_betting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RESELLING =
            T.let(
              :reselling,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FITNESS =
            T.let(
              :fitness,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AMAZON_FBA =
            T.let(
              :amazon_fba,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REAL_ESTATE =
            T.let(
              :real_estate,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          KINDLE_BOOK_PUBLISHING =
            T.let(
              :kindle_book_publishing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DATING =
            T.let(
              :dating,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AGENCIES =
            T.let(
              :agencies,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HEALTH_AND_WELLNESS =
            T.let(
              :health_and_wellness,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SOCIAL_MEDIA =
            T.let(
              :social_media,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SALES =
            T.let(
              :sales,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BUSINESS =
            T.let(
              :business,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ECOMMERCE =
            T.let(
              :ecommerce,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VIDEO_GAMES =
            T.let(
              :video_games,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOME_SERVICES =
            T.let(
              :home_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI =
            T.let(
              :ai,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PUBLIC_SPEAKING =
            T.let(
              :public_speaking,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PERSONAL_FINANCE =
            T.let(
              :personal_finance,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CAREERS =
            T.let(
              :careers,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TRAVEL =
            T.let(
              :travel,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CLIPPING =
            T.let(
              :clipping,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPIRITUALITY =
            T.let(
              :spirituality,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VAS =
            T.let(
              :vas,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PERSONAL_DEVELOPMENT =
            T.let(
              :personal_development,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SOFTWARE =
            T.let(
              :software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MARKETING_AGENCY =
            T.let(
              :marketing_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SALES_AGENCY =
            T.let(
              :sales_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_AGENCY =
            T.let(
              :ai_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DESIGN_AGENCY =
            T.let(
              :design_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COACHING_AGENCY =
            T.let(
              :coaching_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DEVELOPMENT_AGENCY =
            T.let(
              :development_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RECRUITING_AGENCY =
            T.let(
              :recruiting_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CUSTOMER_SUPPORT_AGENCY =
            T.let(
              :customer_support_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CLIPPING_AGENCY =
            T.let(
              :clipping_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CLOTHING =
            T.let(
              :clothing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SUPPLEMENTS =
            T.let(
              :supplements,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BEAUTY_AND_PERSONAL_CARE =
            T.let(
              :beauty_and_personal_care,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FITNESS_GEAR =
            T.let(
              :fitness_gear,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ACCESSORIES =
            T.let(
              :accessories,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOME_GOODS =
            T.let(
              :home_goods,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ELECTRONICS_AND_GADGETS =
            T.let(
              :electronics_and_gadgets,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FOOD_AND_BEVERAGES =
            T.let(
              :food_and_beverages,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GYM =
            T.let(
              :gym,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RESTAURANT =
            T.let(
              :restaurant,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RETAIL_STORE =
            T.let(
              :retail_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COFFEE_SHOP =
            T.let(
              :coffee_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SALON_SPA =
            T.let(
              :salon_spa,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MEDICAL_DENTIST_OFFICE =
            T.let(
              :medical_dentist_office,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOTEL_LODGING =
            T.let(
              :hotel_lodging,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AUTO_REPAIR_SHOP =
            T.let(
              :auto_repair_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MASTERMINDS =
            T.let(
              :masterminds,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WEBINARS =
            T.let(
              :webinars,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BOOTCAMPS =
            T.let(
              :bootcamps,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CONVENTION =
            T.let(
              :convention,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CONCERTS =
            T.let(
              :concerts,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MEETUPS =
            T.let(
              :meetups,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PARTIES =
            T.let(
              :parties,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FOREX_TRADING =
            T.let(
              :forex_trading,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STOCK_TRADING =
            T.let(
              :stock_trading,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OPTIONS_TRADING =
            T.let(
              :options_trading,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CRYPTO_TRADING =
            T.let(
              :crypto_trading,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FUTURES_TRADING =
            T.let(
              :futures_trading,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DAY_TRADING =
            T.let(
              :day_trading,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SWING_TRADING =
            T.let(
              :swing_trading,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ALGORITHMIC_TRADING =
            T.let(
              :algorithmic_trading,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PROP_FIRM_TRADING =
            T.let(
              :prop_firm_trading,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VALUE_INVESTING =
            T.let(
              :value_investing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REAL_ESTATE_INVESTING =
            T.let(
              :real_estate_investing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ALTERNATIVE_INVESTMENTS =
            T.let(
              :alternative_investments,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PENNY_STOCK_TRADING =
            T.let(
              :penny_stock_trading,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DIVIDEND_INVESTING =
            T.let(
              :dividend_investing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INDEX_FUND_INVESTING =
            T.let(
              :index_fund_investing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GOLD_PRECIOUS_METALS =
            T.let(
              :gold_precious_metals,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VENTURE_CAPITAL_EDUCATION =
            T.let(
              :venture_capital_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRIVATE_EQUITY_EDUCATION =
            T.let(
              :private_equity_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TECHNICAL_ANALYSIS =
            T.let(
              :technical_analysis,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FOREX_SCALPING =
            T.let(
              :forex_scalping,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ICT_SMC_TRADING =
            T.let(
              :ict_smc_trading,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PERSONALIZED_INVESTMENT_ADVICE =
            T.let(
              :personalized_investment_advice,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FOREX_SIGNALS_GROUP =
            T.let(
              :forex_signals_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STOCK_SIGNALS_GROUP =
            T.let(
              :stock_signals_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CRYPTO_SIGNALS_GROUP =
            T.let(
              :crypto_signals_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OPTIONS_ALERTS_GROUP =
            T.let(
              :options_alerts_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FUTURES_SIGNALS_GROUP =
            T.let(
              :futures_signals_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TRADING_EDUCATION_GROUP =
            T.let(
              :trading_education_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INVESTING_COMMUNITY =
            T.let(
              :investing_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PREDICTION_MARKETS_GROUP =
            T.let(
              :prediction_markets_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NFT_ALPHA_GROUP =
            T.let(
              :nft_alpha_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PENNY_STOCK_GROUP =
            T.let(
              :penny_stock_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DIVIDEND_INVESTING_GROUP =
            T.let(
              :dividend_investing_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REAL_ESTATE_INVESTING_GROUP =
            T.let(
              :real_estate_investing_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PROP_FIRM_GROUP =
            T.let(
              :prop_firm_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FOREX_TRADING_BOT =
            T.let(
              :forex_trading_bot,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STOCK_TRADING_PLATFORM =
            T.let(
              :stock_trading_platform,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CRYPTO_TRADING_BOT =
            T.let(
              :crypto_trading_bot,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FUTURES_TRADING_BOT =
            T.let(
              :futures_trading_bot,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OPTIONS_FLOW_TOOL =
            T.let(
              :options_flow_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PORTFOLIO_TRACKER =
            T.let(
              :portfolio_tracker,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FINANCIAL_MODELING_SOFTWARE =
            T.let(
              :financial_modeling_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ACCOUNTING_SOFTWARE =
            T.let(
              :accounting_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INVOICING_SOFTWARE =
            T.let(
              :invoicing_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TAX_SOFTWARE =
            T.let(
              :tax_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RISK_MANAGEMENT_SOFTWARE =
            T.let(
              :risk_management_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PROP_TRADING_PLATFORM =
            T.let(
              :prop_trading_platform,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BACKTESTING_SOFTWARE =
            T.let(
              :backtesting_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TRADING_INDICATORS =
            T.let(
              :trading_indicators,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MARKET_DATA_FEED =
            T.let(
              :market_data_feed,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STOCK_RESEARCH_TOOL =
            T.let(
              :stock_research_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BANKING_SOFTWARE =
            T.let(
              :banking_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LENDING_PLATFORM =
            T.let(
              :lending_platform,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INSURANCE_SOFTWARE =
            T.let(
              :insurance_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BNPL_SERVICE =
            T.let(
              :bnpl_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHECK_CASHING_SERVICE =
            T.let(
              :check_cashing_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CLOUD_MINING_SCHEMES =
            T.let(
              :cloud_mining_schemes,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CONSUMER_LENDING =
            T.let(
              :consumer_lending,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CREDIT_REPAIR_SERVICE =
            T.let(
              :credit_repair_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CRYPTO_EXCHANGE_BROKERAGE =
            T.let(
              :crypto_exchange_brokerage,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CRYPTO_TRADING_TOOLS_SOFTWARE =
            T.let(
              :crypto_trading_tools_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DEBT_COLLECTION_AGENCY =
            T.let(
              :debt_collection_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DEBT_RELIEF_SETTLEMENT =
            T.let(
              :debt_relief_settlement,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ESCROW_SERVICE =
            T.let(
              :escrow_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FOREIGN_EXCHANGE_SERVICE =
            T.let(
              :foreign_exchange_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NON_CUSTODIAL_WALLET_TOOLS =
            T.let(
              :non_custodial_wallet_tools,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PAYMENT_FACILITATION =
            T.let(
              :payment_facilitation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PREDICTION_MARKET_EXCHANGE =
            T.let(
              :prediction_market_exchange,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STABLECOIN_ISSUANCE =
            T.let(
              :stablecoin_issuance,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TOKEN_SALES_ICO =
            T.let(
              :token_sales_ico,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TOKENIZED_RWA =
            T.let(
              :tokenized_rwa,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          YIELD_STAKING_PRODUCTS =
            T.let(
              :yield_staking_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPORTS_BETTING_PICKS =
            T.let(
              :sports_betting_picks,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FANTASY_SPORTS =
            T.let(
              :fantasy_sports,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HORSE_RACING =
            T.let(
              :horse_racing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          POKER_COACHING =
            T.let(
              :poker_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ESPORTS_BETTING =
            T.let(
              :esports_betting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPORTS_ANALYTICS =
            T.let(
              :sports_analytics,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NFL_BETTING =
            T.let(
              :nfl_betting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NBA_BETTING =
            T.let(
              :nba_betting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MLB_BETTING =
            T.let(
              :mlb_betting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SOCCER_BETTING =
            T.let(
              :soccer_betting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MMA_UFC_BETTING =
            T.let(
              :mma_ufc_betting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPORTS_PICKS_GROUP =
            T.let(
              :sports_picks_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DFS_GROUP =
            T.let(
              :dfs_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HORSE_RACING_GROUP =
            T.let(
              :horse_racing_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ESPORTS_PICKS_GROUP =
            T.let(
              :esports_picks_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NFL_PICKS_GROUP =
            T.let(
              :nfl_picks_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NBA_PICKS_GROUP =
            T.let(
              :nba_picks_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SOCCER_PICKS_GROUP =
            T.let(
              :soccer_picks_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MLB_PICKS_GROUP =
            T.let(
              :mlb_picks_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MMA_PICKS_GROUP =
            T.let(
              :mma_picks_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PROP_BETS_GROUP =
            T.let(
              :prop_bets_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FANTASY_SPORTS_FREE_TO_PLAY =
            T.let(
              :fantasy_sports_free_to_play,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LICENSED_GAMBLING_OPERATIONS =
            T.let(
              :licensed_gambling_operations,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          UNLICENSED_GAMBLING =
            T.let(
              :unlicensed_gambling,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BODYBUILDING_COACHING =
            T.let(
              :bodybuilding_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STRENGTH_TRAINING =
            T.let(
              :strength_training,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WEIGHT_LOSS_COACHING =
            T.let(
              :weight_loss_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ATHLETIC_PERFORMANCE =
            T.let(
              :athletic_performance,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          YOGA_INSTRUCTION =
            T.let(
              :yoga_instruction,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MARTIAL_ARTS_INSTRUCTION =
            T.let(
              :martial_arts_instruction,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RUNNING_COACHING =
            T.let(
              :running_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CALISTHENICS =
            T.let(
              :calisthenics,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FLEXIBILITY_MOBILITY =
            T.let(
              :flexibility_mobility,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NUTRITION_COACHING =
            T.let(
              :nutrition_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SWIMMING_COACHING =
            T.let(
              :swimming_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CYCLING_COACHING =
            T.let(
              :cycling_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BOXING_COACHING =
            T.let(
              :boxing_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MMA_COACHING =
            T.let(
              :mma_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          JIU_JITSU_COACHING =
            T.let(
              :jiu_jitsu_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WRESTLING_COACHING =
            T.let(
              :wrestling_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GYMNASTICS_COACHING =
            T.let(
              :gymnastics_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PILATES_INSTRUCTION =
            T.let(
              :pilates_instruction,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPORTS_NUTRITION =
            T.let(
              :sports_nutrition,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BODY_RECOMPOSITION =
            T.let(
              :body_recomposition,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GOLF_COACHING =
            T.let(
              :golf_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TENNIS_COACHING =
            T.let(
              :tennis_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BASKETBALL_TRAINING =
            T.let(
              :basketball_training,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SOCCER_TRAINING =
            T.let(
              :soccer_training,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RACKET_SPORTS_COACHING =
            T.let(
              :racket_sports_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FITNESS_ACCOUNTABILITY =
            T.let(
              :fitness_accountability,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NUTRITION_COMMUNITY =
            T.let(
              :nutrition_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WEIGHT_LOSS_GROUP =
            T.let(
              :weight_loss_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BODYBUILDING_COMMUNITY =
            T.let(
              :bodybuilding_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RUNNING_COMMUNITY =
            T.let(
              :running_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MARTIAL_ARTS_COMMUNITY =
            T.let(
              :martial_arts_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MENTAL_HEALTH_GROUP =
            T.let(
              :mental_health_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BIOHACKING_COMMUNITY =
            T.let(
              :biohacking_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ADDICTION_SUPPORT_GROUP =
            T.let(
              :addiction_support_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          YOGA_COMMUNITY =
            T.let(
              :yoga_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CROSSFIT_COMMUNITY =
            T.let(
              :crossfit_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LONGEVITY_COMMUNITY =
            T.let(
              :longevity_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WOMENS_FITNESS_COMMUNITY =
            T.let(
              :womens_fitness_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          POSTPARTUM_FITNESS_GROUP =
            T.let(
              :postpartum_fitness_group,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHRONIC_ILLNESS_SUPPORT =
            T.let(
              :chronic_illness_support,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SKINCARE_COMMUNITY =
            T.let(
              :skincare_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MENTAL_HEALTH_COACHING =
            T.let(
              :mental_health_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LIFE_COACHING =
            T.let(
              :life_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BIOHACKING =
            T.let(
              :biohacking,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOLISTIC_HEALTH =
            T.let(
              :holistic_health,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ADDICTION_RECOVERY_COACHING =
            T.let(
              :addiction_recovery_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BREATHWORK =
            T.let(
              :breathwork,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MEDITATION_MINDFULNESS =
            T.let(
              :meditation_mindfulness,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GUT_HEALTH_COACHING =
            T.let(
              :gut_health_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LONGEVITY_COACHING =
            T.let(
              :longevity_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WOMENS_HEALTH_COACHING =
            T.let(
              :womens_health_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MENS_HEALTH_COACHING =
            T.let(
              :mens_health_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FERTILITY_WELLNESS =
            T.let(
              :fertility_wellness,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STRESS_MANAGEMENT =
            T.let(
              :stress_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GRIEF_COACHING =
            T.let(
              :grief_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TRAUMA_RECOVERY_COACHING =
            T.let(
              :trauma_recovery_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ADHD_COACHING =
            T.let(
              :adhd_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BIOMARKER_HEALTH_COACHING =
            T.let(
              :biomarker_health_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TELEHEALTH_PLATFORM =
            T.let(
              :telehealth_platform,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EHR_SOFTWARE =
            T.let(
              :ehr_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRACTICE_MANAGEMENT =
            T.let(
              :practice_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MENTAL_HEALTH_APP =
            T.let(
              :mental_health_app,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FITNESS_APP =
            T.let(
              :fitness_app,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NUTRITION_TRACKING_APP =
            T.let(
              :nutrition_tracking_app,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WELLNESS_APP =
            T.let(
              :wellness_app,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PATIENT_ENGAGEMENT =
            T.let(
              :patient_engagement,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MEDICAL_BILLING_SOFTWARE =
            T.let(
              :medical_billing_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PHARMACY_MANAGEMENT =
            T.let(
              :pharmacy_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LAB_MANAGEMENT =
            T.let(
              :lab_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CLINICAL_TRIAL_SOFTWARE =
            T.let(
              :clinical_trial_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DENTAL_SOFTWARE =
            T.let(
              :dental_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VETERINARY_SOFTWARE =
            T.let(
              :veterinary_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HEALTH_DATA_PLATFORM =
            T.let(
              :health_data_platform,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FITNESS_NEWSLETTER =
            T.let(
              :fitness_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MENTAL_HEALTH_NEWSLETTER =
            T.let(
              :mental_health_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LONGEVITY_NEWSLETTER =
            T.let(
              :longevity_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MEDICAL_NEWSLETTER =
            T.let(
              :medical_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BIOHACKING_NEWSLETTER =
            T.let(
              :biohacking_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WOMENS_HEALTH_NEWSLETTER =
            T.let(
              :womens_health_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MENS_HEALTH_NEWSLETTER =
            T.let(
              :mens_health_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PHARMA_BIOTECH_NEWSLETTER =
            T.let(
              :pharma_biotech_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ECOMMERCE_EDUCATION =
            T.let(
              :ecommerce_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AMAZON_FBA_COACHING =
            T.let(
              :amazon_fba_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DROPSHIPPING_COACHING =
            T.let(
              :dropshipping_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRINT_ON_DEMAND_COACHING =
            T.let(
              :print_on_demand_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RETAIL_ARBITRAGE =
            T.let(
              :retail_arbitrage,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WHOLESALE_COACHING =
            T.let(
              :wholesale_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STARTUP_COACHING =
            T.let(
              :startup_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BUSINESS_STRATEGY =
            T.let(
              :business_strategy,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AGENCY_BUILDING =
            T.let(
              :agency_building,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SMMA_COACHING =
            T.let(
              :smma_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CONSULTING_BUSINESS =
            T.let(
              :consulting_business,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SAAS_ENTREPRENEURSHIP =
            T.let(
              :saas_entrepreneurship,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LOCAL_BUSINESS_COACHING =
            T.let(
              :local_business_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CLEANING_BUSINESS_COACHING =
            T.let(
              :cleaning_business_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TRUCKING_BUSINESS_COACHING =
            T.let(
              :trucking_business_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VENDING_MACHINE_BUSINESS =
            T.let(
              :vending_machine_business,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ATM_BUSINESS_COACHING =
            T.let(
              :atm_business_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CAR_WASH_BUSINESS =
            T.let(
              :car_wash_business,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AIRBNB_BUSINESS_COACHING =
            T.let(
              :airbnb_business_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRIVATE_LABEL_COACHING =
            T.let(
              :private_label_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ETSY_COACHING =
            T.let(
              :etsy_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MERCH_BUSINESS_COACHING =
            T.let(
              :merch_business_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LICENSING_BUSINESS =
            T.let(
              :licensing_business,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BUSINESS_ACQUISITION =
            T.let(
              :business_acquisition,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WOMEN_ENTREPRENEURSHIP =
            T.let(
              :women_entrepreneurship,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AFFILIATE_MARKETING_EDUCATION =
            T.let(
              :affiliate_marketing_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COACHING_BUSINESS_COACHING =
            T.let(
              :coaching_business_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ECOMMERCE_COMMUNITY =
            T.let(
              :ecommerce_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AGENCY_COMMUNITY =
            T.let(
              :agency_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SAAS_COMMUNITY =
            T.let(
              :saas_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SAAS_MARKETING_COMMUNITY =
            T.let(
              :saas_marketing_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REAL_ESTATE_COMMUNITY =
            T.let(
              :real_estate_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SALES_COMMUNITY =
            T.let(
              :sales_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AFFILIATE_COMMUNITY =
            T.let(
              :affiliate_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RESELLING_COMMUNITY =
            T.let(
              :reselling_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AMAZON_SELLER_COMMUNITY =
            T.let(
              :amazon_seller_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DROPSHIPPING_COMMUNITY =
            T.let(
              :dropshipping_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FREELANCER_COMMUNITY =
            T.let(
              :freelancer_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STARTUP_FOUNDER_COMMUNITY =
            T.let(
              :startup_founder_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CEO_EXECUTIVE_COMMUNITY =
            T.let(
              :ceo_executive_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WOMEN_BUSINESS_COMMUNITY =
            T.let(
              :women_business_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MARKETING_COMMUNITY =
            T.let(
              :marketing_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_BUSINESS_COMMUNITY =
            T.let(
              :ai_business_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CONTENT_BUSINESS_COMMUNITY =
            T.let(
              :content_business_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LOCAL_BUSINESS_COMMUNITY =
            T.let(
              :local_business_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRIVATE_EQUITY_COMMUNITY =
            T.let(
              :private_equity_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WHOLESALING_COMMUNITY =
            T.let(
              :wholesaling_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COACHING_BUSINESS_COMMUNITY =
            T.let(
              :coaching_business_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MAKE_MONEY_ONLINE_COMMUNITY =
            T.let(
              :make_money_online_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STARTUP_NEWSLETTER =
            T.let(
              :startup_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ECOMMERCE_NEWSLETTER =
            T.let(
              :ecommerce_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MARKETING_NEWSLETTER =
            T.let(
              :marketing_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SALES_NEWSLETTER =
            T.let(
              :sales_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SMALL_BUSINESS_NEWSLETTER =
            T.let(
              :small_business_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LEADERSHIP_NEWSLETTER =
            T.let(
              :leadership_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AGENCY_NEWSLETTER =
            T.let(
              :agency_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SAAS_NEWSLETTER =
            T.let(
              :saas_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HR_PEOPLE_NEWSLETTER =
            T.let(
              :hr_people_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LEGAL_BUSINESS_NEWSLETTER =
            T.let(
              :legal_business_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REAL_ESTATE_BUSINESS_NEWSLETTER =
            T.let(
              :real_estate_business_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SOLOPRENEUR_NEWSLETTER =
            T.let(
              :solopreneur_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HIGH_TICKET_SALES =
            T.let(
              :high_ticket_sales,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          B2B_SALES_COACHING =
            T.let(
              :b2b_sales_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DOOR_TO_DOOR_SALES =
            T.let(
              :door_to_door_sales,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SALES_FUNNEL_COACHING =
            T.let(
              :sales_funnel_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          APPOINTMENT_SETTING_COACHING =
            T.let(
              :appointment_setting_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INSURANCE_SALES_COACHING =
            T.let(
              :insurance_sales_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CAR_SALES_COACHING =
            T.let(
              :car_sales_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RETAIL_SALES_COACHING =
            T.let(
              :retail_sales_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SOLAR_SALES_COACHING =
            T.let(
              :solar_sales_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LEAD_GENERATION_AGENCY =
            T.let(
              :lead_generation_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COLD_EMAIL_AGENCY =
            T.let(
              :cold_email_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COLD_CALLING_AGENCY =
            T.let(
              :cold_calling_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SALES_OUTSOURCING =
            T.let(
              :sales_outsourcing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CRM_IMPLEMENTATION =
            T.let(
              :crm_implementation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          APPOINTMENT_SETTING_AGENCY =
            T.let(
              :appointment_setting_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SALES_TRAINING_AGENCY =
            T.let(
              :sales_training_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REVENUE_OPERATIONS_AGENCY =
            T.let(
              :revenue_operations_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INBOUND_TELESERVICES =
            T.let(
              :inbound_teleservices,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OUTBOUND_TELEMARKETING =
            T.let(
              :outbound_telemarketing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FACEBOOK_ADS =
            T.let(
              :facebook_ads,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GOOGLE_ADS =
            T.let(
              :google_ads,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TIKTOK_MARKETING =
            T.let(
              :tiktok_marketing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          YOUTUBE_MARKETING =
            T.let(
              :youtube_marketing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INSTAGRAM_GROWTH =
            T.let(
              :instagram_growth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SEO_COACHING =
            T.let(
              :seo_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EMAIL_MARKETING_COACHING =
            T.let(
              :email_marketing_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COPYWRITING_COACHING =
            T.let(
              :copywriting_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AFFILIATE_MARKETING =
            T.let(
              :affiliate_marketing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LOCAL_SEO =
            T.let(
              :local_seo,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_MARKETING =
            T.let(
              :ai_marketing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WEBINAR_MARKETING =
            T.let(
              :webinar_marketing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EVENT_MARKETING =
            T.let(
              :event_marketing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SAAS_MARKETING_COACHING =
            T.let(
              :saas_marketing_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DIGITAL_MARKETING =
            T.let(
              :digital_marketing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SMMA =
            T.let(
              :smma,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PERFORMANCE_MARKETING_AGENCY =
            T.let(
              :performance_marketing_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SEO_AGENCY =
            T.let(
              :seo_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CONTENT_MARKETING_AGENCY =
            T.let(
              :content_marketing_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EMAIL_MARKETING_AGENCY =
            T.let(
              :email_marketing_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INFLUENCER_MARKETING_AGENCY =
            T.let(
              :influencer_marketing_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PR_AGENCY =
            T.let(
              :pr_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BRANDING_AGENCY =
            T.let(
              :branding_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VIDEO_MARKETING_AGENCY =
            T.let(
              :video_marketing_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AMAZON_MARKETING_AGENCY =
            T.let(
              :amazon_marketing_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PODCAST_MARKETING_AGENCY =
            T.let(
              :podcast_marketing_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TIKTOK_AGENCY =
            T.let(
              :tiktok_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LINKEDIN_AGENCY =
            T.let(
              :linkedin_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LOCAL_MARKETING_AGENCY =
            T.let(
              :local_marketing_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DENTAL_MARKETING_AGENCY =
            T.let(
              :dental_marketing_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REAL_ESTATE_MARKETING_AGENCY =
            T.let(
              :real_estate_marketing_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RESTAURANT_MARKETING_AGENCY =
            T.let(
              :restaurant_marketing_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ECOMMERCE_MARKETING_AGENCY =
            T.let(
              :ecommerce_marketing_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          B2B_MARKETING_AGENCY =
            T.let(
              :b2b_marketing_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GROWTH_MARKETING_AGENCY =
            T.let(
              :growth_marketing_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AFFILIATE_MANAGEMENT_AGENCY =
            T.let(
              :affiliate_management_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CONVERSION_OPTIMIZATION_AGENCY =
            T.let(
              :conversion_optimization_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EVENT_MARKETING_AGENCY =
            T.let(
              :event_marketing_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CLICK_FARM_SERVICE =
            T.let(
              :click_farm_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DATA_SCRAPING_SERVICE =
            T.let(
              :data_scraping_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LEAD_LIST_SALES =
            T.let(
              :lead_list_sales,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SOCIAL_MEDIA_BOT_FARM =
            T.let(
              :social_media_bot_farm,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CRM_SOFTWARE =
            T.let(
              :crm_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EMAIL_MARKETING_SOFTWARE =
            T.let(
              :email_marketing_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SMS_MARKETING_SOFTWARE =
            T.let(
              :sms_marketing_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SEO_TOOL =
            T.let(
              :seo_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LANDING_PAGE_BUILDER =
            T.let(
              :landing_page_builder,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AD_MANAGEMENT_TOOL =
            T.let(
              :ad_management_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AFFILIATE_TRACKING =
            T.let(
              :affiliate_tracking,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REVIEW_MANAGEMENT =
            T.let(
              :review_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ANALYTICS_DASHBOARD =
            T.let(
              :analytics_dashboard,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LEAD_GEN_SOFTWARE =
            T.let(
              :lead_gen_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LINK_IN_BIO_TOOL =
            T.let(
              :link_in_bio_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INFLUENCER_PLATFORM =
            T.let(
              :influencer_platform,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WEBINAR_PLATFORM =
            T.let(
              :webinar_platform,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AB_TESTING_TOOL =
            T.let(
              :ab_testing_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHATBOT_MARKETING =
            T.let(
              :chatbot_marketing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VIDEO_SALES_TOOL =
            T.let(
              :video_sales_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PROPOSAL_SOFTWARE =
            T.let(
              :proposal_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COMPETITIVE_INTELLIGENCE =
            T.let(
              :competitive_intelligence,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SOCIAL_LISTENING_TOOL =
            T.let(
              :social_listening_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WHATSAPP_MARKETING_TOOL =
            T.let(
              :whatsapp_marketing_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STANDALONE_TIPPING =
            T.let(
              :standalone_tipping,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VIDEO_EDITING_EDUCATION =
            T.let(
              :video_editing_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PHOTOGRAPHY_COACHING =
            T.let(
              :photography_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MUSIC_PRODUCTION =
            T.let(
              :music_production,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          UI_UX_DESIGN_EDUCATION =
            T.let(
              :ui_ux_design_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CLIPPING_EDUCATION =
            T.let(
              :clipping_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          UGC_CREATION =
            T.let(
              :ugc_creation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INDUSTRY_TYPE_3D_MODELING_EDUCATION =
            T.let(
              :"3d_modeling_education",
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DJ_EDUCATION =
            T.let(
              :dj_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          YOUTUBE_AUTOMATION =
            T.let(
              :youtube_automation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BLOG_MONETIZATION =
            T.let(
              :blog_monetization,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WEDDING_PHOTOGRAPHY_EDUCATION =
            T.let(
              :wedding_photography_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CALLIGRAPHY_LETTERING =
            T.let(
              :calligraphy_lettering,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ILLUSTRATION_EDUCATION =
            T.let(
              :illustration_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FASHION_DESIGN_EDUCATION =
            T.let(
              :fashion_design_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INTERIOR_DESIGN_EDUCATION =
            T.let(
              :interior_design_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INFLUENCER_EDUCATION =
            T.let(
              :influencer_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_CONTENT_CREATOR_EDUCATION =
            T.let(
              :ai_content_creator_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_NSFW_CONTENT_GENERATION_EDUCATION =
            T.let(
              :ai_nsfw_content_generation_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WEB_DESIGN_AGENCY =
            T.let(
              :web_design_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GRAPHIC_DESIGN_AGENCY =
            T.let(
              :graphic_design_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          UI_UX_AGENCY =
            T.let(
              :ui_ux_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MOTION_DESIGN_AGENCY =
            T.let(
              :motion_design_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRODUCT_DESIGN_AGENCY =
            T.let(
              :product_design_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LOGO_DESIGN_AGENCY =
            T.let(
              :logo_design_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRESENTATION_DESIGN_AGENCY =
            T.let(
              :presentation_design_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INDUSTRY_TYPE_3D_VISUALIZATION_AGENCY =
            T.let(
              :"3d_visualization_agency",
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FASHION_DESIGN_AGENCY =
            T.let(
              :fashion_design_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VIDEO_CLIPPING_AGENCY =
            T.let(
              :video_clipping_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VIDEO_PRODUCTION_AGENCY =
            T.let(
              :video_production_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          UGC_AGENCY =
            T.let(
              :ugc_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CONTENT_WRITING_AGENCY =
            T.let(
              :content_writing_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TRANSLATION_AGENCY =
            T.let(
              :translation_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SOCIAL_MEDIA_MANAGEMENT =
            T.let(
              :social_media_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GHOSTWRITING_AGENCY =
            T.let(
              :ghostwriting_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PODCAST_EDITING_AGENCY =
            T.let(
              :podcast_editing_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          THUMBNAIL_DESIGN_AGENCY =
            T.let(
              :thumbnail_design_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SCRIPTWRITING_AGENCY =
            T.let(
              :scriptwriting_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SEO_CONTENT_AGENCY =
            T.let(
              :seo_content_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TECHNICAL_WRITING_AGENCY =
            T.let(
              :technical_writing_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PHOTOGRAPHY_SERVICE =
            T.let(
              :photography_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VIDEOGRAPHY_SERVICE =
            T.let(
              :videography_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MUSIC_PRODUCTION_SERVICE =
            T.let(
              :music_production_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VOICE_OVER_SERVICE =
            T.let(
              :voice_over_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EVENT_PHOTOGRAPHY =
            T.let(
              :event_photography,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DRONE_SERVICES =
            T.let(
              :drone_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COMMERCIAL_PHOTOGRAPHY =
            T.let(
              :commercial_photography,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PORTRAIT_PHOTOGRAPHY_SERVICE =
            T.let(
              :portrait_photography_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REAL_ESTATE_PHOTOGRAPHY =
            T.let(
              :real_estate_photography,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FOOD_PHOTOGRAPHY_SERVICE =
            T.let(
              :food_photography_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LIVE_EVENT_PRODUCTION =
            T.let(
              :live_event_production,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PODCAST_PRODUCTION_SERVICE =
            T.let(
              :podcast_production_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FREELANCE_DESIGN_GIG =
            T.let(
              :freelance_design_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FREELANCE_WRITING_GIG =
            T.let(
              :freelance_writing_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FREELANCE_DEV_GIG =
            T.let(
              :freelance_dev_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MUSIC_PERFORMANCE_GIG =
            T.let(
              :music_performance_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EVENT_STAFFING_GIG =
            T.let(
              :event_staffing_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MODEL_TALENT_GIG =
            T.let(
              :model_talent_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PHOTOGRAPHY_GIG =
            T.let(
              :photography_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VIDEOGRAPHY_GIG =
            T.let(
              :videography_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VOICEOVER_GIG =
            T.let(
              :voiceover_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ILLUSTRATION_GIG =
            T.let(
              :illustration_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SOCIAL_MEDIA_GIG =
            T.let(
              :social_media_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DJ_GIG =
            T.let(
              :dj_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FACE_PAINTING_GIG =
            T.let(
              :face_painting_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CLIPPING_GIG =
            T.let(
              :clipping_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CONTENT_CREATOR_COMMUNITY =
            T.let(
              :content_creator_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VIDEO_EDITING_COMMUNITY =
            T.let(
              :video_editing_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MUSIC_PRODUCER_COMMUNITY =
            T.let(
              :music_producer_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PHOTOGRAPHY_COMMUNITY =
            T.let(
              :photography_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WRITING_COMMUNITY =
            T.let(
              :writing_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DESIGN_COMMUNITY =
            T.let(
              :design_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          YOUTUBE_CREATOR_COMMUNITY =
            T.let(
              :youtube_creator_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TIKTOK_CREATOR_COMMUNITY =
            T.let(
              :tiktok_creator_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PODCAST_COMMUNITY =
            T.let(
              :podcast_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FILMMAKER_COMMUNITY =
            T.let(
              :filmmaker_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CLIPPING_COMMUNITY =
            T.let(
              :clipping_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          YOUTUBE_AUTOMATION_COMMUNITY =
            T.let(
              :youtube_automation_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PIRATED_DIGITAL_CONTENT =
            T.let(
              :pirated_digital_content,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WEB_DEVELOPMENT_EDUCATION =
            T.let(
              :web_development_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_ML_EDUCATION =
            T.let(
              :ai_ml_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DATA_SCIENCE_EDUCATION =
            T.let(
              :data_science_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CYBERSECURITY_EDUCATION =
            T.let(
              :cybersecurity_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CLOUD_COMPUTING_EDUCATION =
            T.let(
              :cloud_computing_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BLOCKCHAIN_EDUCATION =
            T.let(
              :blockchain_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NO_CODE_EDUCATION =
            T.let(
              :no_code_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AUTOMATION_EDUCATION =
            T.let(
              :automation_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GAME_DEVELOPMENT_EDUCATION =
            T.let(
              :game_development_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PROMPT_ENGINEERING =
            T.let(
              :prompt_engineering,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PYTHON_PROGRAMMING =
            T.let(
              :python_programming,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          JAVASCRIPT_PROGRAMMING =
            T.let(
              :javascript_programming,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REACT_DEVELOPMENT =
            T.let(
              :react_development,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DATABASE_ENGINEERING =
            T.let(
              :database_engineering,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AWS_CERTIFICATION =
            T.let(
              :aws_certification,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DATA_ENGINEERING =
            T.let(
              :data_engineering,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ROBOTICS_EDUCATION =
            T.let(
              :robotics_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VR_AR_DEVELOPMENT =
            T.let(
              :vr_ar_development,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LINUX_SYSADMIN =
            T.let(
              :linux_sysadmin,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WORDPRESS_DEVELOPMENT =
            T.let(
              :wordpress_development,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_AGENT_BUILDING =
            T.let(
              :ai_agent_building,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WEB_DEVELOPMENT_AGENCY =
            T.let(
              :web_development_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MOBILE_APP_AGENCY =
            T.let(
              :mobile_app_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SAAS_DEVELOPMENT_AGENCY =
            T.let(
              :saas_development_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ECOMMERCE_DEVELOPMENT =
            T.let(
              :ecommerce_development,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BLOCKCHAIN_DEVELOPMENT_AGENCY =
            T.let(
              :blockchain_development_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GAME_DEVELOPMENT_AGENCY =
            T.let(
              :game_development_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DEVOPS_AGENCY =
            T.let(
              :devops_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_DEVELOPMENT_AGENCY =
            T.let(
              :ai_development_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WORDPRESS_AGENCY =
            T.let(
              :wordpress_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SHOPIFY_AGENCY =
            T.let(
              :shopify_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          API_INTEGRATION_AGENCY =
            T.let(
              :api_integration_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CYBERSECURITY_AGENCY =
            T.let(
              :cybersecurity_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DATA_ENGINEERING_AGENCY =
            T.let(
              :data_engineering_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VR_AR_DEVELOPMENT_AGENCY =
            T.let(
              :vr_ar_development_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HACKING_TOOLS_MALWARE =
            T.let(
              :hacking_tools_malware,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STALKERWARE_MONITORING =
            T.let(
              :stalkerware_monitoring,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DEVELOPER_COMMUNITY =
            T.let(
              :developer_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_COMMUNITY =
            T.let(
              :ai_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CYBERSECURITY_COMMUNITY =
            T.let(
              :cybersecurity_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NO_CODE_COMMUNITY =
            T.let(
              :no_code_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INDIE_HACKER_COMMUNITY =
            T.let(
              :indie_hacker_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DEVOPS_COMMUNITY =
            T.let(
              :devops_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DATA_SCIENCE_COMMUNITY =
            T.let(
              :data_science_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRODUCT_COMMUNITY =
            T.let(
              :product_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OPEN_SOURCE_COMMUNITY =
            T.let(
              :open_source_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          API_MANAGEMENT =
            T.let(
              :api_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOSTING_PLATFORM =
            T.let(
              :hosting_platform,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DATABASE_TOOL =
            T.let(
              :database_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DEVOPS_TOOL =
            T.let(
              :devops_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MONITORING_TOOL =
            T.let(
              :monitoring_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TESTING_TOOL =
            T.let(
              :testing_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CODE_EDITOR =
            T.let(
              :code_editor,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NO_CODE_BUILDER =
            T.let(
              :no_code_builder,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CDN_PLATFORM =
            T.let(
              :cdn_platform,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ERROR_TRACKING =
            T.let(
              :error_tracking,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DOCUMENTATION_TOOL =
            T.let(
              :documentation_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WEBHOOK_TOOL =
            T.let(
              :webhook_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INDUSTRY_TYPE_3D_WEAPON_FILES =
            T.let(
              :"3d_weapon_files",
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BACKGROUND_CHECK_SERVICES =
            T.let(
              :background_check_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DOCUMENT_FALSIFICATION =
            T.let(
              :document_falsification,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FAKE_ID_SERVICES =
            T.let(
              :fake_id_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FAKE_REFERENCE_SERVICES =
            T.let(
              :fake_reference_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REAL_ESTATE_WHOLESALING =
            T.let(
              :real_estate_wholesaling,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOUSE_FLIPPING =
            T.let(
              :house_flipping,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PROPERTY_DEVELOPMENT =
            T.let(
              :property_development,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RENTAL_PROPERTY =
            T.let(
              :rental_property,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AIRBNB_STR =
            T.let(
              :airbnb_str,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COMMERCIAL_REAL_ESTATE =
            T.let(
              :commercial_real_estate,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LAND_INVESTING =
            T.let(
              :land_investing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SECTION_8_HOUSING =
            T.let(
              :section_8_housing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MOBILE_HOME_INVESTING =
            T.let(
              :mobile_home_investing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MULTIFAMILY_INVESTING =
            T.let(
              :multifamily_investing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SELF_STORAGE_INVESTING =
            T.let(
              :self_storage_investing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PROPERTY_MANAGEMENT_EDUCATION =
            T.let(
              :property_management_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VACATION_RENTAL_MANAGEMENT =
            T.let(
              :vacation_rental_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REAL_ESTATE_CRM =
            T.let(
              :real_estate_crm,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PROPERTY_MANAGEMENT_SOFTWARE =
            T.let(
              :property_management_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DEAL_ANALYSIS_TOOL =
            T.let(
              :deal_analysis_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MLS_SEARCH_TOOL =
            T.let(
              :mls_search_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VIRTUAL_TOUR_SOFTWARE =
            T.let(
              :virtual_tour_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REAL_ESTATE_MARKETING_SOFTWARE =
            T.let(
              :real_estate_marketing_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CONSTRUCTION_MANAGEMENT =
            T.let(
              :construction_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOME_VALUATION_TOOL =
            T.let(
              :home_valuation_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CREDIT_REPAIR_EDUCATION =
            T.let(
              :credit_repair_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BUDGETING_COACHING =
            T.let(
              :budgeting_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TAX_STRATEGY_EDUCATION =
            T.let(
              :tax_strategy_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WEALTH_BUILDING =
            T.let(
              :wealth_building,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STUDENT_LOAN_STRATEGY =
            T.let(
              :student_loan_strategy,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CREDIT_CARD_OPTIMIZATION =
            T.let(
              :credit_card_optimization,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CAREER_COACHING =
            T.let(
              :career_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EXECUTIVE_COACHING =
            T.let(
              :executive_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MANAGEMENT_COACHING =
            T.let(
              :management_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TECH_CAREER_COACHING =
            T.let(
              :tech_career_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MEDICAL_CAREER_COACHING =
            T.let(
              :medical_career_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TRADE_SKILLS_EDUCATION =
            T.let(
              :trade_skills_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VA_TRAINING =
            T.let(
              :va_training,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BOOKKEEPING_EDUCATION =
            T.let(
              :bookkeeping_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DATA_CAREER_COACHING =
            T.let(
              :data_career_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CYBERSECURITY_CAREER =
            T.let(
              :cybersecurity_career,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CONSULTING_CAREER =
            T.let(
              :consulting_career,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INVESTMENT_BANKING_CAREER =
            T.let(
              :investment_banking_career,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LAW_CAREER_COACHING =
            T.let(
              :law_career_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NURSING_CAREER_COACHING =
            T.let(
              :nursing_career_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TEACHING_CAREER_COACHING =
            T.let(
              :teaching_career_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PERSONAL_BRANDING_CAREER =
            T.let(
              :personal_branding_career,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MENS_DATING_COACHING =
            T.let(
              :mens_dating_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WOMENS_DATING_COACHING =
            T.let(
              :womens_dating_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RELATIONSHIP_COACHING =
            T.let(
              :relationship_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MARRIAGE_COACHING =
            T.let(
              :marriage_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COMMUNICATION_COACHING =
            T.let(
              :communication_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MASCULINITY_COACHING =
            T.let(
              :masculinity_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FEMININITY_COACHING =
            T.let(
              :femininity_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BREAKUP_RECOVERY =
            T.let(
              :breakup_recovery,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MANIFESTATION_COACHING =
            T.let(
              :manifestation_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ASTROLOGY_COACHING =
            T.let(
              :astrology_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ENERGY_HEALING =
            T.let(
              :energy_healing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPIRITUAL_COACHING =
            T.let(
              :spiritual_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FAITH_BASED_COACHING =
            T.let(
              :faith_based_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PSYCHIC_DEVELOPMENT =
            T.let(
              :psychic_development,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NUMEROLOGY_COACHING =
            T.let(
              :numerology_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHAKRA_HEALING =
            T.let(
              :chakra_healing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SHAMANIC_HEALING =
            T.let(
              :shamanic_healing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BIBLICAL_COACHING =
            T.let(
              :biblical_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ISLAMIC_COACHING =
            T.let(
              :islamic_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRODUCTIVITY_COACHING =
            T.let(
              :productivity_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PUBLIC_SPEAKING_COACHING =
            T.let(
              :public_speaking_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MINDSET_COACHING =
            T.let(
              :mindset_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STOICISM_PHILOSOPHY =
            T.let(
              :stoicism_philosophy,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MENS_SELF_IMPROVEMENT =
            T.let(
              :mens_self_improvement,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WOMENS_SELF_IMPROVEMENT =
            T.let(
              :womens_self_improvement,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LEADERSHIP_DEVELOPMENT =
            T.let(
              :leadership_development,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ANGER_MANAGEMENT =
            T.let(
              :anger_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NEUROLINGUISTIC_PROGRAMMING =
            T.let(
              :neurolinguistic_programming,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          APPEARANCE_AND_GROOMING_COACHING =
            T.let(
              :appearance_and_grooming_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AMAZON_KDP =
            T.let(
              :amazon_kdp,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SELF_PUBLISHING =
            T.let(
              :self_publishing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AUDIOBOOK_PUBLISHING =
            T.let(
              :audiobook_publishing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COURSE_CREATION =
            T.let(
              :course_creation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DIGITAL_PRODUCT_CREATION =
            T.let(
              :digital_product_creation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GHOSTWRITING_BUSINESS =
            T.let(
              :ghostwriting_business,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TEMPLATE_CREATION =
            T.let(
              :template_creation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_BOOK_PUBLISHING =
            T.let(
              :ai_book_publishing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LANGUAGE_LEARNING =
            T.let(
              :language_learning,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TUTORING =
            T.let(
              :tutoring,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COLLEGE_ADMISSIONS_COACHING =
            T.let(
              :college_admissions_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CPA_EXAM_PREP =
            T.let(
              :cpa_exam_prep,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BAR_EXAM_PREP =
            T.let(
              :bar_exam_prep,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REAL_ESTATE_EXAM_PREP =
            T.let(
              :real_estate_exam_prep,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MEDICAL_BOARD_PREP =
            T.let(
              :medical_board_prep,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PMP_CERTIFICATION_PREP =
            T.let(
              :pmp_certification_prep,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AWS_CERTIFICATION_PREP =
            T.let(
              :aws_certification_prep,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COMPTIA_CERTIFICATION =
            T.let(
              :comptia_certification,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AP_EXAM_PREP =
            T.let(
              :ap_exam_prep,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GRADUATE_SCHOOL_PREP =
            T.let(
              :graduate_school_prep,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SCHOLARSHIP_COACHING =
            T.let(
              :scholarship_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOMESCHOOL_EDUCATION =
            T.let(
              :homeschool_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STEM_EDUCATION =
            T.let(
              :stem_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FINANCIAL_CERTIFICATION =
            T.let(
              :financial_certification,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CODING_BOOTCAMP_PREP =
            T.let(
              :coding_bootcamp_prep,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COOKING_CULINARY =
            T.let(
              :cooking_culinary,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TRAVEL_COACHING =
            T.let(
              :travel_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PARENTING_COACHING =
            T.let(
              :parenting_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PET_TRAINING =
            T.let(
              :pet_training,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GARDENING_EDUCATION =
            T.let(
              :gardening_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DIY_CRAFTS =
            T.let(
              :diy_crafts,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SURVIVAL_PREPPING =
            T.let(
              :survival_prepping,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BAKING_PASTRY =
            T.let(
              :baking_pastry,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WINE_SOMMELIER =
            T.let(
              :wine_sommelier,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BEER_BREWING =
            T.let(
              :beer_brewing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MIXOLOGY_BARTENDING =
            T.let(
              :mixology_bartending,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WOODWORKING =
            T.let(
              :woodworking,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          POTTERY_CERAMICS =
            T.let(
              :pottery_ceramics,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          KNITTING_CROCHETING =
            T.let(
              :knitting_crocheting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          JEWELRY_MAKING =
            T.let(
              :jewelry_making,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AQUARIUM_FISHKEEPING =
            T.let(
              :aquarium_fishkeeping,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BIRD_WATCHING =
            T.let(
              :bird_watching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ASTRONOMY_EDUCATION =
            T.let(
              :astronomy_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MAGIC_ILLUSION =
            T.let(
              :magic_illusion,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CAR_RESTORATION =
            T.let(
              :car_restoration,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MOTORCYCLE_RIDING =
            T.let(
              :motorcycle_riding,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SAILING_BOATING =
            T.let(
              :sailing_boating,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SCUBA_DIVING =
            T.let(
              :scuba_diving,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ROCK_CLIMBING =
            T.let(
              :rock_climbing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SKIING_SNOWBOARDING =
            T.let(
              :skiing_snowboarding,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SURFING_EDUCATION =
            T.let(
              :surfing_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOMESTEADING =
            T.let(
              :homesteading,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TINY_HOUSE_LIVING =
            T.let(
              :tiny_house_living,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VAN_LIFE =
            T.let(
              :van_life,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FASHION_STYLING =
            T.let(
              :fashion_styling,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FLORAL_DESIGN =
            T.let(
              :floral_design,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TRAVEL_PLANNING_SERVICE =
            T.let(
              :travel_planning_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COLLECTIBLES_COACHING =
            T.let(
              :collectibles_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CAR_ENTHUSIAST_COMMUNITY =
            T.let(
              :car_enthusiast_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SNEAKERHEAD_COMMUNITY =
            T.let(
              :sneakerhead_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WATCH_COLLECTOR_COMMUNITY =
            T.let(
              :watch_collector_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WINE_ENTHUSIAST_COMMUNITY =
            T.let(
              :wine_enthusiast_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CIGAR_COMMUNITY =
            T.let(
              :cigar_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COOKING_COMMUNITY =
            T.let(
              :cooking_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GARDENING_COMMUNITY =
            T.let(
              :gardening_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FISHING_COMMUNITY =
            T.let(
              :fishing_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HUNTING_COMMUNITY =
            T.let(
              :hunting_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DIY_MAKER_COMMUNITY =
            T.let(
              :diy_maker_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GOLF_COMMUNITY =
            T.let(
              :golf_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COLLECTIBLES_COMMUNITY =
            T.let(
              :collectibles_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SWEEPSTAKES_RAFFLES =
            T.let(
              :sweepstakes_raffles,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EVENT_TICKET_COMMUNITY =
            T.let(
              :event_ticket_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ESPORTS_COACHING =
            T.let(
              :esports_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GAME_SPECIFIC_COACHING =
            T.let(
              :game_specific_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GAMING_COMMUNITY =
            T.let(
              :gaming_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GAME_ACCOUNT_SELLING =
            T.let(
              :game_account_selling,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          UNAUTHORIZED_INGAME_CURRENCY =
            T.let(
              :unauthorized_ingame_currency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LEGAL_EDUCATION =
            T.let(
              :legal_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MUSIC_THEORY =
            T.let(
              :music_theory,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MUSIC_BUSINESS =
            T.let(
              :music_business,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ACTING_COACHING =
            T.let(
              :acting_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DANCE_INSTRUCTION =
            T.let(
              :dance_instruction,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VOICE_ACTING =
            T.let(
              :voice_acting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ENGLISH_COACHING =
            T.let(
              :english_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPANISH_COACHING =
            T.let(
              :spanish_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MANDARIN_COACHING =
            T.let(
              :mandarin_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FRENCH_COACHING =
            T.let(
              :french_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GERMAN_COACHING =
            T.let(
              :german_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          JAPANESE_COACHING =
            T.let(
              :japanese_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          KOREAN_COACHING =
            T.let(
              :korean_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ARABIC_COACHING =
            T.let(
              :arabic_coaching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SIGN_LANGUAGE_EDUCATION =
            T.let(
              :sign_language_education,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ACCENT_REDUCTION =
            T.let(
              :accent_reduction,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BUSINESS_ENGLISH =
            T.let(
              :business_english,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_CHATBOT_AGENCY =
            T.let(
              :ai_chatbot_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_AUTOMATION_AGENCY =
            T.let(
              :ai_automation_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_CONSULTING =
            T.let(
              :ai_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WORKFLOW_AUTOMATION_AGENCY =
            T.let(
              :workflow_automation_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DATA_ANALYTICS_AGENCY =
            T.let(
              :data_analytics_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_VOICE_AGENT_AGENCY =
            T.let(
              :ai_voice_agent_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_CONTENT_AGENCY =
            T.let(
              :ai_content_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MACHINE_LEARNING_AGENCY =
            T.let(
              :machine_learning_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COMPUTER_VISION_AGENCY =
            T.let(
              :computer_vision_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TECH_RECRUITING_AGENCY =
            T.let(
              :tech_recruiting_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EXECUTIVE_RECRUITING =
            T.let(
              :executive_recruiting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STAFFING_AGENCY =
            T.let(
              :staffing_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REMOTE_STAFFING =
            T.let(
              :remote_staffing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HEALTHCARE_RECRUITING =
            T.let(
              :healthcare_recruiting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VA_PLACEMENT_AGENCY =
            T.let(
              :va_placement_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SALES_RECRUITING =
            T.let(
              :sales_recruiting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CREATIVE_RECRUITING =
            T.let(
              :creative_recruiting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FINANCE_RECRUITING =
            T.let(
              :finance_recruiting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LEGAL_RECRUITING =
            T.let(
              :legal_recruiting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CONSTRUCTION_STAFFING =
            T.let(
              :construction_staffing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOSPITALITY_STAFFING =
            T.let(
              :hospitality_staffing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CUSTOMER_SUPPORT_OUTSOURCING =
            T.let(
              :customer_support_outsourcing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LIVE_CHAT_AGENCY =
            T.let(
              :live_chat_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TECHNICAL_SUPPORT_AGENCY =
            T.let(
              :technical_support_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CALL_CENTER_AGENCY =
            T.let(
              :call_center_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MULTILINGUAL_SUPPORT_AGENCY =
            T.let(
              :multilingual_support_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COMMUNITY_MANAGEMENT_AGENCY =
            T.let(
              :community_management_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MANAGEMENT_CONSULTING =
            T.let(
              :management_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FINANCIAL_CONSULTING =
            T.let(
              :financial_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HR_CONSULTING =
            T.let(
              :hr_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OPERATIONS_CONSULTING =
            T.let(
              :operations_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          IT_CONSULTING =
            T.let(
              :it_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SUSTAINABILITY_CONSULTING =
            T.let(
              :sustainability_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LEGAL_CONSULTING =
            T.let(
              :legal_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COMPLIANCE_CONSULTING =
            T.let(
              :compliance_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SUPPLY_CHAIN_CONSULTING =
            T.let(
              :supply_chain_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHANGE_MANAGEMENT_CONSULTING =
            T.let(
              :change_management_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DIGITAL_TRANSFORMATION_CONSULTING =
            T.let(
              :digital_transformation_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HEALTHCARE_CONSULTING =
            T.let(
              :healthcare_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REAL_ESTATE_CONSULTING =
            T.let(
              :real_estate_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FRANCHISE_CONSULTING =
            T.let(
              :franchise_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EXPORT_TRADE_CONSULTING =
            T.let(
              :export_trade_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NONPROFIT_CONSULTING =
            T.let(
              :nonprofit_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EDUCATION_CONSULTING =
            T.let(
              :education_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CANNABIS_CONSULTING =
            T.let(
              :cannabis_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RESTAURANT_CONSULTING =
            T.let(
              :restaurant_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          M_AND_A_CONSULTING =
            T.let(
              :m_and_a_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRICING_STRATEGY_CONSULTING =
            T.let(
              :pricing_strategy_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BRAND_STRATEGY_CONSULTING =
            T.let(
              :brand_strategy_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SAAS_MARKETING_CONSULTING =
            T.let(
              :saas_marketing_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DONE_FOR_YOU_SERVICES =
            T.let(
              :done_for_you_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PROP_FIRM_PASSING_SERVICE =
            T.let(
              :prop_firm_passing_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TRADING_ACCOUNT_MANAGEMENT =
            T.let(
              :trading_account_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DONE_FOR_YOU_TRADING =
            T.let(
              :done_for_you_trading,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ACCOUNTING_BOOKKEEPING =
            T.let(
              :accounting_bookkeeping,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TAX_PREPARATION =
            T.let(
              :tax_preparation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LEGAL_SERVICES =
            T.let(
              :legal_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NOTARY_SERVICES =
            T.let(
              :notary_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INSURANCE_BROKERAGE =
            T.let(
              :insurance_brokerage,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FINANCIAL_PLANNING_SERVICE =
            T.let(
              :financial_planning_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REAL_ESTATE_SERVICES =
            T.let(
              :real_estate_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PROPERTY_MANAGEMENT =
            T.let(
              :property_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MORTGAGE_BROKERAGE =
            T.let(
              :mortgage_brokerage,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          IMMIGRATION_SERVICES =
            T.let(
              :immigration_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PATENT_TRADEMARK_SERVICES =
            T.let(
              :patent_trademark_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BUSINESS_FORMATION_SERVICES =
            T.let(
              :business_formation_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SHELL_COMPANY_FORMATION =
            T.let(
              :shell_company_formation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PAYROLL_SERVICES =
            T.let(
              :payroll_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AUDIT_SERVICES =
            T.let(
              :audit_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FORENSIC_ACCOUNTING =
            T.let(
              :forensic_accounting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ACTUARIAL_SERVICES =
            T.let(
              :actuarial_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          APPRAISAL_SERVICES =
            T.let(
              :appraisal_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MEDIATION_ARBITRATION =
            T.let(
              :mediation_arbitration,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BAIL_BOND_SERVICES =
            T.let(
              :bail_bond_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CROWDFUNDING_PLATFORM =
            T.let(
              :crowdfunding_platform,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ESSAY_MILL_PAPER_MILL =
            T.let(
              :essay_mill_paper_mill,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GOVERNMENT_SERVICE_FACILITATION =
            T.let(
              :government_service_facilitation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          IMMIGRATION_SERVICES_UNLICENSED =
            T.let(
              :immigration_services_unlicensed,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LICENSED_LEGAL_SERVICES =
            T.let(
              :licensed_legal_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PERSONALIZED_TAX_SERVICES =
            T.let(
              :personalized_tax_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRIVATE_INVESTIGATION =
            T.let(
              :private_investigation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REPOSSESSION_SERVICES =
            T.let(
              :repossession_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          UNLICENSED_LEGAL_SERVICES =
            T.let(
              :unlicensed_legal_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RECORD_LABEL =
            T.let(
              :record_label,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BOOK_PUBLISHING_HOUSE =
            T.let(
              :book_publishing_house,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NEWS_MEDIA_OUTLET =
            T.let(
              :news_media_outlet,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RADIO_BROADCASTING =
            T.let(
              :radio_broadcasting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TV_PRODUCTION_COMPANY =
            T.let(
              :tv_production_company,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FILM_STUDIO =
            T.let(
              :film_studio,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MAGAZINE_PUBLISHER =
            T.let(
              :magazine_publisher,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MUSIC_LICENSING_AGENCY =
            T.let(
              :music_licensing_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TALENT_MANAGEMENT_AGENCY =
            T.let(
              :talent_management_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ADVERTISING_NETWORK =
            T.let(
              :advertising_network,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AD_TECH_PLATFORM =
            T.let(
              :ad_tech_platform,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CLEANING_SERVICE =
            T.let(
              :cleaning_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LANDSCAPING_SERVICE =
            T.let(
              :landscaping_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PLUMBING_SERVICE =
            T.let(
              :plumbing_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ELECTRICAL_SERVICE =
            T.let(
              :electrical_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HVAC_SERVICE =
            T.let(
              :hvac_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ROOFING_SERVICE =
            T.let(
              :roofing_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PAINTING_SERVICE =
            T.let(
              :painting_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MOVING_SERVICE =
            T.let(
              :moving_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HANDYMAN_SERVICE =
            T.let(
              :handyman_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PEST_CONTROL =
            T.let(
              :pest_control,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          POOL_SERVICE =
            T.let(
              :pool_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SOLAR_INSTALLATION =
            T.let(
              :solar_installation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOME_RENOVATION =
            T.let(
              :home_renovation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRESSURE_WASHING =
            T.let(
              :pressure_washing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          JUNK_REMOVAL =
            T.let(
              :junk_removal,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GARAGE_DOOR_SERVICE =
            T.let(
              :garage_door_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FENCING_SERVICE =
            T.let(
              :fencing_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CONCRETE_MASONRY =
            T.let(
              :concrete_masonry,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TREE_SERVICE =
            T.let(
              :tree_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WINDOW_CLEANING =
            T.let(
              :window_cleaning,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GUTTER_SERVICE =
            T.let(
              :gutter_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FLOORING_SERVICE =
            T.let(
              :flooring_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CABINET_COUNTERTOP =
            T.let(
              :cabinet_countertop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOME_INSPECTION =
            T.let(
              :home_inspection,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SEPTIC_SERVICE =
            T.let(
              :septic_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WATERPROOFING_SERVICE =
            T.let(
              :waterproofing_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INSULATION_SERVICE =
            T.let(
              :insulation_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHIMNEY_SERVICE =
            T.let(
              :chimney_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LOCKSMITH_SERVICE =
            T.let(
              :locksmith_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GLASS_WINDOW_SERVICE =
            T.let(
              :glass_window_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EPOXY_COATING =
            T.let(
              :epoxy_coating,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRIVATE_SECURITY_GUARD_SERVICE =
            T.let(
              :private_security_guard_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ARMORED_CAR_TRANSPORT =
            T.let(
              :armored_car_transport,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EXECUTIVE_PROTECTION_BODYGUARD =
            T.let(
              :executive_protection_bodyguard,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EVENT_SECURITY_SERVICE =
            T.let(
              :event_security_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ALARM_SYSTEM_INSTALLATION =
            T.let(
              :alarm_system_installation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CCTV_INSTALLATION =
            T.let(
              :cctv_installation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRIVATE_INVESTIGATION_AGENCY =
            T.let(
              :private_investigation_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BACKGROUND_CHECK_PROVIDER =
            T.let(
              :background_check_provider,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LOCKSMITH_COMMERCIAL =
            T.let(
              :locksmith_commercial,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BOUNTY_HUNTER_BAIL_ENFORCEMENT =
            T.let(
              :bounty_hunter_bail_enforcement,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PERSONAL_STYLING =
            T.let(
              :personal_styling,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PERSONAL_CHEF =
            T.let(
              :personal_chef,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PERSONAL_ASSISTANT_SERVICE =
            T.let(
              :personal_assistant_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TUTORING_SERVICE =
            T.let(
              :tutoring_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PET_SERVICES =
            T.let(
              :pet_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WEDDING_PLANNING =
            T.let(
              :wedding_planning,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CONCIERGE_SERVICE =
            T.let(
              :concierge_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PERSONAL_TRAINING_SERVICE =
            T.let(
              :personal_training_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NANNY_SERVICE =
            T.let(
              :nanny_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ELDER_CARE_SERVICE =
            T.let(
              :elder_care_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ERRAND_SERVICE =
            T.let(
              :errand_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LIFE_ORGANIZATION =
            T.let(
              :life_organization,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RELOCATION_SERVICE =
            T.let(
              :relocation_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ADULT_DATING_SERVICES =
            T.let(
              :adult_dating_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ESCORT_SERVICES =
            T.let(
              :escort_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOTEL_ACCOMMODATION_BOOKINGS =
            T.let(
              :hotel_accommodation_bookings,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MAIL_ORDER_SPOUSE =
            T.let(
              :mail_order_spouse,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PSYCHIC_FORTUNE_TELLING =
            T.let(
              :psychic_fortune_telling,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TIMESHARE_SALES =
            T.let(
              :timeshare_sales,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FREIGHT_BROKERAGE =
            T.let(
              :freight_brokerage,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COURIER_SERVICE =
            T.let(
              :courier_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WAREHOUSING_SERVICE =
            T.let(
              :warehousing_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LAST_MILE_DELIVERY =
            T.let(
              :last_mile_delivery,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AUTO_TRANSPORT =
            T.let(
              :auto_transport,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INTERNATIONAL_SHIPPING =
            T.let(
              :international_shipping,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COLD_CHAIN_LOGISTICS =
            T.let(
              :cold_chain_logistics,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COMMERCIAL_AIRLINE_TICKETS =
            T.let(
              :commercial_airline_tickets,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CRUISE_LINE_BOOKINGS =
            T.let(
              :cruise_line_bookings,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CONTRACT_MANUFACTURING =
            T.let(
              :contract_manufacturing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CNC_MACHINING_SERVICE =
            T.let(
              :cnc_machining_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INDUSTRY_TYPE_3D_PRINTING_SERVICE_COMMERCIAL =
            T.let(
              :"3d_printing_service_commercial",
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PLASTIC_INJECTION_MOLDING =
            T.let(
              :plastic_injection_molding,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          METAL_FABRICATION =
            T.let(
              :metal_fabrication,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PCBA_ASSEMBLY =
            T.let(
              :pcba_assembly,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHEMICAL_MANUFACTURING =
            T.let(
              :chemical_manufacturing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TEXTILE_MANUFACTURING =
            T.let(
              :textile_manufacturing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FOOD_PROCESSING_FACILITY =
            T.let(
              :food_processing_facility,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PACKAGING_MANUFACTURING =
            T.let(
              :packaging_manufacturing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INDUSTRIAL_AUTOMATION_INTEGRATOR =
            T.let(
              :industrial_automation_integrator,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MINING_AND_EXTRACTION =
            T.let(
              :mining_and_extraction,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OIL_AND_GAS_SERVICES =
            T.let(
              :oil_and_gas_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RENEWABLE_ENERGY_GENERATION =
            T.let(
              :renewable_energy_generation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WASTE_MANAGEMENT_RECYCLING =
            T.let(
              :waste_management_recycling,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HAZARDOUS_WASTE_DISPOSAL =
            T.let(
              :hazardous_waste_disposal,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AEROSPACE_DEFENSE_CONTRACTING =
            T.let(
              :aerospace_defense_contracting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PERSONAL_TRAINING_STUDIO =
            T.let(
              :personal_training_studio,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NUTRITION_CONSULTING =
            T.let(
              :nutrition_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MENTAL_HEALTH_COUNSELING =
            T.let(
              :mental_health_counseling,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PHYSICAL_THERAPY_SERVICE =
            T.let(
              :physical_therapy_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OCCUPATIONAL_THERAPY_SERVICE =
            T.let(
              :occupational_therapy_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPEECH_THERAPY_SERVICE =
            T.let(
              :speech_therapy_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHIROPRACTIC_SERVICE =
            T.let(
              :chiropractic_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ACUPUNCTURE_SERVICE =
            T.let(
              :acupuncture_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MASSAGE_THERAPY_SERVICE =
            T.let(
              :massage_therapy_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MIDWIFERY_DOULA =
            T.let(
              :midwifery_doula,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LACTATION_CONSULTING =
            T.let(
              :lactation_consulting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DIETITIAN_SERVICE =
            T.let(
              :dietitian_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ADDICTION_RECOVERY_SERVICES =
            T.let(
              :addiction_recovery_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DTC_LAB_TESTING =
            T.let(
              :dtc_lab_testing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          IV_THERAPY_INFUSION =
            T.let(
              :iv_therapy_infusion,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MEDSPA_AESTHETIC_SERVICES =
            T.let(
              :medspa_aesthetic_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRESCRIPTION_DELIVERY_SERVICES =
            T.let(
              :prescription_delivery_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REGISTERED_DIETITIAN_SERVICES =
            T.let(
              :registered_dietitian_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          UNLICENSED_THERAPY_COUNSELING =
            T.let(
              :unlicensed_therapy_counseling,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STREETWEAR =
            T.let(
              :streetwear,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ATHLEISURE =
            T.let(
              :athleisure,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LUXURY_FASHION =
            T.let(
              :luxury_fashion,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          KIDS_CLOTHING =
            T.let(
              :kids_clothing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CUSTOM_APPAREL =
            T.let(
              :custom_apparel,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WORKWEAR =
            T.let(
              :workwear,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SWIMWEAR =
            T.let(
              :swimwear,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LINGERIE_INTIMATES =
            T.let(
              :lingerie_intimates,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VINTAGE_CLOTHING =
            T.let(
              :vintage_clothing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PLUS_SIZE_FASHION =
            T.let(
              :plus_size_fashion,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MATERNITY_CLOTHING =
            T.let(
              :maternity_clothing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SLEEPWEAR_LOUNGEWEAR =
            T.let(
              :sleepwear_loungewear,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DENIM_BRAND =
            T.let(
              :denim_brand,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OUTERWEAR_JACKETS =
            T.let(
              :outerwear_jackets,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SOCKS_HOSIERY =
            T.let(
              :socks_hosiery,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COSTUMES_COSPLAY =
            T.let(
              :costumes_cosplay,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SCRUBS_MEDICAL_APPAREL =
            T.let(
              :scrubs_medical_apparel,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DANCE_PERFORMANCE_WEAR =
            T.let(
              :dance_performance_wear,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HUNTING_CAMO_APPAREL =
            T.let(
              :hunting_camo_apparel,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CASUAL_EVERYDAY_CLOTHING =
            T.let(
              :casual_everyday_clothing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PROTEIN_SUPPLEMENTS =
            T.let(
              :protein_supplements,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VITAMINS_MINERALS =
            T.let(
              :vitamins_minerals,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRE_WORKOUT =
            T.let(
              :pre_workout,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NOOTROPICS =
            T.let(
              :nootropics,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HERBAL_SUPPLEMENTS =
            T.let(
              :herbal_supplements,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WEIGHT_MANAGEMENT_SUPPLEMENTS =
            T.let(
              :weight_management_supplements,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GUT_HEALTH =
            T.let(
              :gut_health,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CBD_PRODUCTS =
            T.let(
              :cbd_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MUSHROOM_SUPPLEMENTS =
            T.let(
              :mushroom_supplements,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COLLAGEN_SUPPLEMENTS =
            T.let(
              :collagen_supplements,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TESTOSTERONE_BOOSTERS =
            T.let(
              :testosterone_boosters,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SLEEP_SUPPLEMENTS =
            T.let(
              :sleep_supplements,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          IMMUNE_SUPPORT =
            T.let(
              :immune_support,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          JOINT_BONE_HEALTH =
            T.let(
              :joint_bone_health,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GREENS_POWDER =
            T.let(
              :greens_powder,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CREATINE_SUPPLEMENTS =
            T.let(
              :creatine_supplements,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ELECTROLYTE_HYDRATION =
            T.let(
              :electrolyte_hydration,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRENATAL_SUPPLEMENTS =
            T.let(
              :prenatal_supplements,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          KIDS_SUPPLEMENTS =
            T.let(
              :kids_supplements,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PET_SUPPLEMENTS =
            T.let(
              :pet_supplements,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AYURVEDIC_SUPPLEMENTS =
            T.let(
              :ayurvedic_supplements,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          KETO_SUPPLEMENTS =
            T.let(
              :keto_supplements,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CANNABIS_THC_PRODUCTS =
            T.let(
              :cannabis_thc_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CBD_HEMP_PRODUCTS_COMPLIANT =
            T.let(
              :cbd_hemp_products_compliant,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DELTA8_THC_PRODUCTS =
            T.let(
              :delta8_thc_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DIETARY_SUPPLEMENTS =
            T.let(
              :dietary_supplements,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DRUG_PRECURSOR_CHEMICALS =
            T.let(
              :drug_precursor_chemicals,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ILLEGAL_DRUGS =
            T.let(
              :illegal_drugs,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          KRATOM_KAVA_PRODUCTS =
            T.let(
              :kratom_kava_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MEDICAL_TREATMENT_CLAIMS_PRODUCT =
            T.let(
              :medical_treatment_claims_product,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NUTRACEUTICAL_PRODUCTS =
            T.let(
              :nutraceutical_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OTC_MEDICATION_SALES =
            T.let(
              :otc_medication_sales,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PERFORMANCE_ENHANCING_DRUGS =
            T.let(
              :performance_enhancing_drugs,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RESEARCH_CHEMICALS_DANGEROUS =
            T.let(
              :research_chemicals_dangerous,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RESEARCH_PEPTIDES =
            T.let(
              :research_peptides,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SEXUAL_ENHANCEMENT_PRODUCTS =
            T.let(
              :sexual_enhancement_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TOBACCO_PRODUCTS =
            T.let(
              :tobacco_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          UNLICENSED_RX_SALES =
            T.let(
              :unlicensed_rx_sales,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SKINCARE =
            T.let(
              :skincare,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HAIRCARE =
            T.let(
              :haircare,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COSMETICS_MAKEUP =
            T.let(
              :cosmetics_makeup,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MENS_GROOMING =
            T.let(
              :mens_grooming,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FRAGRANCE =
            T.let(
              :fragrance,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ORAL_CARE =
            T.let(
              :oral_care,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SUNSCREEN_SPF =
            T.let(
              :sunscreen_spf,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HAIR_GROWTH_PRODUCTS =
            T.let(
              :hair_growth_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BODY_CARE =
            T.let(
              :body_care,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DEODORANT =
            T.let(
              :deodorant,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LIP_CARE =
            T.let(
              :lip_care,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ACNE_TREATMENT =
            T.let(
              :acne_treatment,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MEN_SKINCARE =
            T.let(
              :men_skincare,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BABY_SKINCARE =
            T.let(
              :baby_skincare,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TATTOO_AFTERCARE =
            T.let(
              :tattoo_aftercare,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INTIMATE_CARE =
            T.let(
              :intimate_care,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOME_GYM_EQUIPMENT =
            T.let(
              :home_gym_equipment,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          YOGA_EQUIPMENT =
            T.let(
              :yoga_equipment,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COMBAT_SPORTS_GEAR =
            T.let(
              :combat_sports_gear,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OUTDOOR_FITNESS_GEAR =
            T.let(
              :outdoor_fitness_gear,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WEARABLE_FITNESS =
            T.let(
              :wearable_fitness,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RECOVERY_EQUIPMENT =
            T.let(
              :recovery_equipment,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WEIGHTLIFTING_EQUIPMENT =
            T.let(
              :weightlifting_equipment,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CARDIO_EQUIPMENT =
            T.let(
              :cardio_equipment,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GYMNASTICS_EQUIPMENT =
            T.let(
              :gymnastics_equipment,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SWIMMING_GEAR =
            T.let(
              :swimming_gear,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          JUMP_ROPE_EQUIPMENT =
            T.let(
              :jump_rope_equipment,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GRIP_STRENGTH_TOOLS =
            T.let(
              :grip_strength_tools,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SAUNA_COLD_PLUNGE =
            T.let(
              :sauna_cold_plunge,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          POSTURE_CORRECTORS =
            T.let(
              :posture_correctors,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          JEWELRY =
            T.let(
              :jewelry,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SUNGLASSES_EYEWEAR =
            T.let(
              :sunglasses_eyewear,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BAGS_WALLETS =
            T.let(
              :bags_wallets,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HATS_HEADWEAR =
            T.let(
              :hats_headwear,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PHONE_ACCESSORIES =
            T.let(
              :phone_accessories,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TRAVEL_ACCESSORIES =
            T.let(
              :travel_accessories,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SCARVES_WRAPS =
            T.let(
              :scarves_wraps,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BELTS =
            T.let(
              :belts,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HAIR_ACCESSORIES =
            T.let(
              :hair_accessories,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TECH_ACCESSORIES =
            T.let(
              :tech_accessories,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          KEYCHAINS_CHARMS =
            T.let(
              :keychains_charms,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CUSTOM_ENGRAVED_ACCESSORIES =
            T.let(
              :custom_engraved_accessories,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CANNABIS_ACCESSORIES_NON_DRUG =
            T.let(
              :cannabis_accessories_non_drug,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DRUG_PARAPHERNALIA =
            T.let(
              :drug_paraphernalia,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HIGH_VALUE_GOODS_OVER_500 =
            T.let(
              :high_value_goods_over_500,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRECIOUS_METALS_STONES =
            T.let(
              :precious_metals_stones,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REPLICA_COUNTERFEIT_GOODS =
            T.let(
              :replica_counterfeit_goods,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOME_DECOR =
            T.let(
              :home_decor,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CANDLES_SCENTS =
            T.let(
              :candles_scents,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          KITCHENWARE =
            T.let(
              :kitchenware,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BEDDING_LINENS =
            T.let(
              :bedding_linens,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SMART_HOME =
            T.let(
              :smart_home,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CLEANING_PRODUCTS =
            T.let(
              :cleaning_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OUTDOOR_FURNITURE =
            T.let(
              :outdoor_furniture,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ORGANIZATION_STORAGE =
            T.let(
              :organization_storage,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WALL_ART_PRINTS =
            T.let(
              :wall_art_prints,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RUGS_CARPETS =
            T.let(
              :rugs_carpets,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LIGHTING_FIXTURES =
            T.let(
              :lighting_fixtures,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PLANTERS_GARDEN_DECOR =
            T.let(
              :planters_garden_decor,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BATHROOM_ACCESSORIES =
            T.let(
              :bathroom_accessories,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LUXURY_HOME_GOODS =
            T.let(
              :luxury_home_goods,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SEASONAL_HOLIDAY_DECOR =
            T.let(
              :seasonal_holiday_decor,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PET_HOME_PRODUCTS =
            T.let(
              :pet_home_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOME_FRAGRANCE_DIFFUSERS =
            T.let(
              :home_fragrance_diffusers,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HAZARDOUS_CHEMICALS_B2C =
            T.let(
              :hazardous_chemicals_b2c,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRE_ORDERS_DELAYED_DELIVERY =
            T.let(
              :pre_orders_delayed_delivery,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AUDIO_EQUIPMENT =
            T.let(
              :audio_equipment,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CAMERA_EQUIPMENT =
            T.let(
              :camera_equipment,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GAMING_HARDWARE =
            T.let(
              :gaming_hardware,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DRONES_ROBOTICS =
            T.let(
              :drones_robotics,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EV_ACCESSORIES =
            T.let(
              :ev_accessories,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHARGING_POWER =
            T.let(
              :charging_power,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SMART_WEARABLES =
            T.let(
              :smart_wearables,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOME_SECURITY_DEVICES =
            T.let(
              :home_security_devices,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INDUSTRY_TYPE_3D_PRINTERS =
            T.let(
              :"3d_printers",
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PROJECTORS_DISPLAYS =
            T.let(
              :projectors_displays,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STREAMING_DEVICES =
            T.let(
              :streaming_devices,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VR_HEADSETS =
            T.let(
              :vr_headsets,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          E_READERS =
            T.let(
              :e_readers,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PORTABLE_TECH =
            T.let(
              :portable_tech,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HARDWARE_WALLETS =
            T.let(
              :hardware_wallets,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REGULATED_MEDICAL_DEVICES =
            T.let(
              :regulated_medical_devices,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SIGNAL_JAMMING_DEVICES =
            T.let(
              :signal_jamming_devices,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPY_CAMERAS_HIDDEN_RECORDING =
            T.let(
              :spy_cameras_hidden_recording,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPECIALTY_COFFEE_TEA =
            T.let(
              :specialty_coffee_tea,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HEALTH_FOOD =
            T.let(
              :health_food,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SNACKS_TREATS =
            T.let(
              :snacks_treats,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SAUCES_CONDIMENTS =
            T.let(
              :sauces_condiments,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ALCOHOL_SPIRITS =
            T.let(
              :alcohol_spirits,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MEAL_KITS =
            T.let(
              :meal_kits,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BAKED_GOODS =
            T.let(
              :baked_goods,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BEVERAGES =
            T.let(
              :beverages,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PET_FOOD_TREATS =
            T.let(
              :pet_food_treats,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PROTEIN_BARS_SNACKS =
            T.let(
              :protein_bars_snacks,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          JERKY_MEAT_SNACKS =
            T.let(
              :jerky_meat_snacks,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHOCOLATE_CONFECTIONS =
            T.let(
              :chocolate_confections,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HONEY_SWEETENERS =
            T.let(
              :honey_sweeteners,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OLIVE_OIL_VINEGAR =
            T.let(
              :olive_oil_vinegar,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOT_SAUCE =
            T.let(
              :hot_sauce,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DRIED_FRUIT_NUTS =
            T.let(
              :dried_fruit_nuts,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BABY_FOOD =
            T.let(
              :baby_food,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PLANT_BASED_FOOD =
            T.let(
              :plant_based_food,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GLUTEN_FREE_FOOD =
            T.let(
              :gluten_free_food,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          KETO_FOOD_PRODUCTS =
            T.let(
              :keto_food_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SUBSCRIPTION_FOOD_BOX =
            T.let(
              :subscription_food_box,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          KOMBUCHA_FERMENTED =
            T.let(
              :kombucha_fermented,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ALCOHOL_SALES =
            T.let(
              :alcohol_sales,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BABY_PRODUCTS =
            T.let(
              :baby_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          KIDS_TOYS =
            T.let(
              :kids_toys,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          KIDS_EDUCATIONAL =
            T.let(
              :kids_educational,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BABY_CLOTHING_ACCESSORIES =
            T.let(
              :baby_clothing_accessories,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NURSERY_DECOR =
            T.let(
              :nursery_decor,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          KIDS_OUTDOOR_PLAY =
            T.let(
              :kids_outdoor_play,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          KIDS_BOOKS =
            T.let(
              :kids_books,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BABY_SAFETY_PRODUCTS =
            T.let(
              :baby_safety_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          KIDS_ARTS_CRAFTS =
            T.let(
              :kids_arts_crafts,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CAMPING_HIKING =
            T.let(
              :camping_hiking,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FISHING_GEAR =
            T.let(
              :fishing_gear,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HUNTING_GEAR =
            T.let(
              :hunting_gear,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CYCLING_GEAR =
            T.let(
              :cycling_gear,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WATER_SPORTS_GEAR =
            T.let(
              :water_sports_gear,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GOLF_EQUIPMENT =
            T.let(
              :golf_equipment,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SNOW_SPORTS_GEAR =
            T.let(
              :snow_sports_gear,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CLIMBING_GEAR =
            T.let(
              :climbing_gear,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ARCHERY_EQUIPMENT =
            T.let(
              :archery_equipment,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SKATEBOARDING_GEAR =
            T.let(
              :skateboarding_gear,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PICKLEBALL_EQUIPMENT =
            T.let(
              :pickleball_equipment,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TENNIS_EQUIPMENT =
            T.let(
              :tennis_equipment,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EQUESTRIAN_GEAR =
            T.let(
              :equestrian_gear,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TACTICAL_GEAR =
            T.let(
              :tactical_gear,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OVERLANDING_GEAR =
            T.let(
              :overlanding_gear,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EXPLOSIVES_FIREWORKS =
            T.let(
              :explosives_fireworks,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FIREARMS_SALES =
            T.let(
              :firearms_sales,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SELF_DEFENSE_PRODUCTS =
            T.let(
              :self_defense_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WEAPON_COMPONENTS =
            T.let(
              :weapon_components,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CRAFT_KITS =
            T.let(
              :craft_kits,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SEWING_TEXTILES =
            T.let(
              :sewing_textiles,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STATIONERY =
            T.let(
              :stationery,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SCRAPBOOKING_SUPPLIES =
            T.let(
              :scrapbooking_supplies,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BEADING_JEWELRY_SUPPLIES =
            T.let(
              :beading_jewelry_supplies,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          POTTERY_SUPPLIES =
            T.let(
              :pottery_supplies,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRINTMAKING_SUPPLIES =
            T.let(
              :printmaking_supplies,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CAR_ACCESSORIES =
            T.let(
              :car_accessories,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DETAILING_PRODUCTS =
            T.let(
              :detailing_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MOTORCYCLE_GEAR =
            T.let(
              :motorcycle_gear,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TRUCK_ACCESSORIES =
            T.let(
              :truck_accessories,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OFF_ROAD_PARTS =
            T.let(
              :off_road_parts,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CAR_AUDIO_ELECTRONICS =
            T.let(
              :car_audio_electronics,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PERFORMANCE_PARTS =
            T.let(
              :performance_parts,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CAR_CARE_PRODUCTS =
            T.let(
              :car_care_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EV_CHARGING_ACCESSORIES =
            T.let(
              :ev_charging_accessories,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AUTO_REPAIR_SERVICE =
            T.let(
              :auto_repair_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AUTO_BODY_SHOP =
            T.let(
              :auto_body_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CAR_DEALERSHIP =
            T.let(
              :car_dealership,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CAR_WASH =
            T.let(
              :car_wash,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TIRE_SHOP =
            T.let(
              :tire_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OIL_CHANGE_SHOP =
            T.let(
              :oil_change_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AUTO_PARTS_STORE =
            T.let(
              :auto_parts_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MOTORCYCLE_SHOP =
            T.let(
              :motorcycle_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EV_CHARGING_STATION =
            T.let(
              :ev_charging_station,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TRANSMISSION_SHOP =
            T.let(
              :transmission_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MUFFLER_EXHAUST_SHOP =
            T.let(
              :muffler_exhaust_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AUTO_GLASS_SHOP =
            T.let(
              :auto_glass_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AUTO_UPHOLSTERY_SHOP =
            T.let(
              :auto_upholstery_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CAR_AUDIO_SHOP =
            T.let(
              :car_audio_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SMOG_EMISSIONS_SHOP =
            T.let(
              :smog_emissions_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TRUCK_REPAIR_SHOP =
            T.let(
              :truck_repair_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RV_REPAIR_SHOP =
            T.let(
              :rv_repair_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BOAT_REPAIR_SHOP =
            T.let(
              :boat_repair_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          USED_CAR_LOT =
            T.let(
              :used_car_lot,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AUTO_AUCTION =
            T.let(
              :auto_auction,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DOG_PRODUCTS =
            T.let(
              :dog_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CAT_PRODUCTS =
            T.let(
              :cat_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AQUARIUM_SUPPLIES =
            T.let(
              :aquarium_supplies,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BIRD_SUPPLIES =
            T.let(
              :bird_supplies,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REPTILE_SUPPLIES =
            T.let(
              :reptile_supplies,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HORSE_SUPPLIES =
            T.let(
              :horse_supplies,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PET_APPAREL =
            T.let(
              :pet_apparel,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PET_TECH =
            T.let(
              :pet_tech,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PET_GROOMING_PRODUCTS =
            T.let(
              :pet_grooming_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HAND_TOOLS =
            T.let(
              :hand_tools,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          POWER_TOOLS_AND_ACCESSORIES =
            T.let(
              :power_tools_and_accessories,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HARDWARE_AND_FASTENERS =
            T.let(
              :hardware_and_fasteners,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WORKSHOP_EQUIPMENT_AND_STORAGE =
            T.let(
              :workshop_equipment_and_storage,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SAFETY_AND_WORK_GEAR =
            T.let(
              :safety_and_work_gear,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PAINTING_AND_BUILDING_SUPPLIES =
            T.let(
              :painting_and_building_supplies,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OFFICE_SUPPLIES =
            T.let(
              :office_supplies,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DESK_ACCESSORIES =
            T.let(
              :desk_accessories,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRINTING_SUPPLIES =
            T.let(
              :printing_supplies,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SHIPPING_PACKAGING =
            T.let(
              :shipping_packaging,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REUSABLE_PRODUCTS =
            T.let(
              :reusable_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SOLAR_POWERED_PRODUCTS =
            T.let(
              :solar_powered_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHRISTIAN_BOOKS_BIBLES =
            T.let(
              :christian_books_bibles,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHRISTIAN_APPAREL =
            T.let(
              :christian_apparel,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHRISTIAN_JEWELRY =
            T.let(
              :christian_jewelry,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHRISTIAN_HOME_DECOR =
            T.let(
              :christian_home_decor,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          JEWISH_JUDAICA =
            T.let(
              :jewish_judaica,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          JEWISH_BOOKS_TORAH =
            T.let(
              :jewish_books_torah,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          JEWISH_APPAREL =
            T.let(
              :jewish_apparel,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ISLAMIC_BOOKS_QURAN =
            T.let(
              :islamic_books_quran,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ISLAMIC_APPAREL =
            T.let(
              :islamic_apparel,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ISLAMIC_PRAYER_GOODS =
            T.let(
              :islamic_prayer_goods,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HINDU_PUJA_SUPPLIES =
            T.let(
              :hindu_puja_supplies,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HINDU_BOOKS_TEXTS =
            T.let(
              :hindu_books_texts,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BUDDHIST_MEDITATION_GOODS =
            T.let(
              :buddhist_meditation_goods,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BUDDHIST_BOOKS_TEXTS =
            T.let(
              :buddhist_books_texts,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SIKH_RELIGIOUS_GOODS =
            T.let(
              :sikh_religious_goods,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OTHER_RELIGIOUS_PRODUCTS =
            T.let(
              :other_religious_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HANDMADE_GOODS_MARKETPLACE =
            T.let(
              :handmade_goods_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VINTAGE_RESALE_MARKETPLACE =
            T.let(
              :vintage_resale_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ELECTRONICS_MARKETPLACE =
            T.let(
              :electronics_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AUTO_PARTS_MARKETPLACE =
            T.let(
              :auto_parts_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LUXURY_GOODS_MARKETPLACE =
            T.let(
              :luxury_goods_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COLLECTIBLES_MARKETPLACE =
            T.let(
              :collectibles_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WHOLESALE_MARKETPLACE =
            T.let(
              :wholesale_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LOCAL_GOODS_MARKETPLACE =
            T.let(
              :local_goods_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SNEAKER_MARKETPLACE =
            T.let(
              :sneaker_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BOOK_MARKETPLACE =
            T.let(
              :book_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FURNITURE_MARKETPLACE =
            T.let(
              :furniture_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MUSICAL_INSTRUMENT_MARKETPLACE =
            T.let(
              :musical_instrument_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ART_MARKETPLACE =
            T.let(
              :art_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TICKET_MARKETPLACE =
            T.let(
              :ticket_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INDUSTRIAL_EQUIPMENT_MARKETPLACE =
            T.let(
              :industrial_equipment_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CRAFT_SUPPLY_MARKETPLACE =
            T.let(
              :craft_supply_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BABY_KIDS_MARKETPLACE =
            T.let(
              :baby_kids_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OUTDOOR_GEAR_MARKETPLACE =
            T.let(
              :outdoor_gear_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PET_MARKETPLACE =
            T.let(
              :pet_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SUSTAINABLE_GOODS_MARKETPLACE =
            T.let(
              :sustainable_goods_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CULTURAL_ARTIFACTS_LOOTED =
            T.let(
              :cultural_artifacts_looted,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DROPSHIPPING_OPERATIONS =
            T.let(
              :dropshipping_operations,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ENDANGERED_ANIMAL_PRODUCTS =
            T.let(
              :endangered_animal_products,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HUMAN_BODY_PARTS_TISSUE =
            T.let(
              :human_body_parts_tissue,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NFT_MARKETPLACE =
            T.let(
              :nft_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PENNY_AUCTION =
            T.let(
              :penny_auction,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRIMARY_EVENT_TICKETING =
            T.let(
              :primary_event_ticketing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FREELANCER_MARKETPLACE =
            T.let(
              :freelancer_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOME_SERVICES_MARKETPLACE =
            T.let(
              :home_services_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TUTORING_MARKETPLACE =
            T.let(
              :tutoring_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LEGAL_SERVICES_MARKETPLACE =
            T.let(
              :legal_services_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HEALTHCARE_MARKETPLACE =
            T.let(
              :healthcare_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WEDDING_SERVICES_MARKETPLACE =
            T.let(
              :wedding_services_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CREATIVE_AND_CONTENT_CREATION_MARKETPLACE =
            T.let(
              :creative_and_content_creation_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BEAUTY_SERVICES_MARKETPLACE =
            T.let(
              :beauty_services_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FITNESS_TRAINER_MARKETPLACE =
            T.let(
              :fitness_trainer_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PET_SERVICES_MARKETPLACE =
            T.let(
              :pet_services_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHILDCARE_MARKETPLACE =
            T.let(
              :childcare_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ELDER_CARE_MARKETPLACE =
            T.let(
              :elder_care_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TRANSLATION_MARKETPLACE =
            T.let(
              :translation_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COACHING_MARKETPLACE =
            T.let(
              :coaching_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          THERAPY_MARKETPLACE =
            T.let(
              :therapy_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PHOTOGRAPHY_MARKETPLACE =
            T.let(
              :photography_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DJ_ENTERTAINMENT_MARKETPLACE =
            T.let(
              :dj_entertainment_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AUTO_SERVICES_MARKETPLACE =
            T.let(
              :auto_services_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FREELANCE_MARKETPLACE_OPERATOR =
            T.let(
              :freelance_marketplace_operator,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EQUIPMENT_RENTAL_MARKETPLACE =
            T.let(
              :equipment_rental_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VEHICLE_RENTAL_MARKETPLACE =
            T.let(
              :vehicle_rental_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPACE_RENTAL_MARKETPLACE =
            T.let(
              :space_rental_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VACATION_RENTAL_MARKETPLACE =
            T.let(
              :vacation_rental_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CLOTHING_RENTAL_MARKETPLACE =
            T.let(
              :clothing_rental_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CAMERA_GEAR_RENTAL =
            T.let(
              :camera_gear_rental,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RV_CAMPER_RENTAL =
            T.let(
              :rv_camper_rental,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BOAT_RENTAL_MARKETPLACE =
            T.let(
              :boat_rental_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STORAGE_RENTAL_MARKETPLACE =
            T.let(
              :storage_rental_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OFFICE_COWORKING_RENTAL =
            T.let(
              :office_coworking_rental,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PARKING_RENTAL_MARKETPLACE =
            T.let(
              :parking_rental_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RESTAURANT_MARKETPLACE =
            T.let(
              :restaurant_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GROCERY_MARKETPLACE =
            T.let(
              :grocery_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CATERING_MARKETPLACE =
            T.let(
              :catering_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOMEMADE_FOOD_MARKETPLACE =
            T.let(
              :homemade_food_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MEAL_PREP_MARKETPLACE =
            T.let(
              :meal_prep_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BAKERY_MARKETPLACE =
            T.let(
              :bakery_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FARM_PRODUCE_MARKETPLACE =
            T.let(
              :farm_produce_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHEF_BOOKING_MARKETPLACE =
            T.let(
              :chef_booking_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COURSE_MARKETPLACE =
            T.let(
              :course_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TEMPLATE_MARKETPLACE =
            T.let(
              :template_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STOCK_MEDIA_MARKETPLACE =
            T.let(
              :stock_media_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MUSIC_BEATS_MARKETPLACE =
            T.let(
              :music_beats_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EBOOK_MARKETPLACE =
            T.let(
              :ebook_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PLUGIN_THEME_MARKETPLACE =
            T.let(
              :plugin_theme_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INDUSTRY_TYPE_3D_MODEL_MARKETPLACE =
            T.let(
              :"3d_model_marketplace",
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PROMPT_MARKETPLACE =
            T.let(
              :prompt_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CODE_SNIPPET_MARKETPLACE =
            T.let(
              :code_snippet_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AFFILIATE_MARKETING_PLATFORM =
            T.let(
              :affiliate_marketing_platform,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GAME_CHEATS_HACKS =
            T.let(
              :game_cheats_hacks,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WEAPON_BLUEPRINT_DISTRIBUTION =
            T.let(
              :weapon_blueprint_distribution,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SAAS_MARKETPLACE =
            T.let(
              :saas_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AGENCY_MARKETPLACE =
            T.let(
              :agency_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MANUFACTURING_MARKETPLACE =
            T.let(
              :manufacturing_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LOGISTICS_MARKETPLACE =
            T.let(
              :logistics_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COMMERCIAL_REAL_ESTATE_MARKETPLACE =
            T.let(
              :commercial_real_estate_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BUSINESS_FOR_SALE_MARKETPLACE =
            T.let(
              :business_for_sale_marketplace,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FOOD_DELIVERY =
            T.let(
              :food_delivery,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GROCERY_DELIVERY =
            T.let(
              :grocery_delivery,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PACKAGE_DELIVERY =
            T.let(
              :package_delivery,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MOVING_LABOR =
            T.let(
              :moving_labor,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ALCOHOL_DELIVERY =
            T.let(
              :alcohol_delivery,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PHARMACY_DELIVERY =
            T.let(
              :pharmacy_delivery,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FLOWER_DELIVERY_GIG =
            T.let(
              :flower_delivery_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FURNITURE_DELIVERY_GIG =
            T.let(
              :furniture_delivery_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CATERING_DELIVERY =
            T.let(
              :catering_delivery,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RIDESHARE =
            T.let(
              :rideshare,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHAUFFEUR_SERVICE =
            T.let(
              :chauffeur_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BIKE_SCOOTER_RENTAL =
            T.let(
              :bike_scooter_rental,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BOAT_CHARTER_GIG =
            T.let(
              :boat_charter_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MOVING_TRUCK_RENTAL_GIG =
            T.let(
              :moving_truck_rental_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ASSEMBLY_INSTALLATION =
            T.let(
              :assembly_installation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WAITING_LINE_SERVICE =
            T.let(
              :waiting_line_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PERSONAL_SHOPPING =
            T.let(
              :personal_shopping,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GROCERY_SHOPPING_GIG =
            T.let(
              :grocery_shopping_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GIFT_WRAPPING_GIG =
            T.let(
              :gift_wrapping_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NOTARY_GIG =
            T.let(
              :notary_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LAUNDRY_GIG =
            T.let(
              :laundry_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CAR_WASH_GIG =
            T.let(
              :car_wash_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CLEANING_GIG =
            T.let(
              :cleaning_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LAWN_CARE_GIG =
            T.let(
              :lawn_care_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HANDYMAN_GIG =
            T.let(
              :handyman_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PET_CARE_GIG =
            T.let(
              :pet_care_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHILDCARE_GIG =
            T.let(
              :childcare_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ELDER_CARE_GIG =
            T.let(
              :elder_care_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PAINTING_GIG =
            T.let(
              :painting_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SNOW_REMOVAL_GIG =
            T.let(
              :snow_removal_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          POOL_CLEANING_GIG =
            T.let(
              :pool_cleaning_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ORGANIZING_GIG =
            T.let(
              :organizing_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRESSURE_WASHING_GIG =
            T.let(
              :pressure_washing_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          JUNK_REMOVAL_GIG =
            T.let(
              :junk_removal_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CONSULTING_GIG =
            T.let(
              :consulting_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ACCOUNTING_GIG =
            T.let(
              :accounting_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LEGAL_GIG =
            T.let(
              :legal_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HEALTHCARE_GIG =
            T.let(
              :healthcare_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TEACHING_GIG =
            T.let(
              :teaching_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TRANSLATION_GIG =
            T.let(
              :translation_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DATA_ENTRY_GIG =
            T.let(
              :data_entry_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RESEARCH_GIG =
            T.let(
              :research_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VIRTUAL_ASSISTANT_GIG =
            T.let(
              :virtual_assistant_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SALES_GIG =
            T.let(
              :sales_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RECRUITING_GIG =
            T.let(
              :recruiting_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MYSTERY_SHOPPING =
            T.let(
              :mystery_shopping,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FOCUS_GROUP_GIG =
            T.let(
              :focus_group_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRODUCT_TESTING_GIG =
            T.let(
              :product_testing_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DRONE_PILOT_GIG =
            T.let(
              :drone_pilot_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FITNESS_INSTRUCTION_GIG =
            T.let(
              :fitness_instruction_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TOUR_GUIDE_GIG =
            T.let(
              :tour_guide_gig,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DATING_COMMUNITY =
            T.let(
              :dating_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PERSONAL_DEVELOPMENT_COMMUNITY =
            T.let(
              :personal_development_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPIRITUALITY_COMMUNITY =
            T.let(
              :spirituality_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PARENTING_COMMUNITY =
            T.let(
              :parenting_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TRAVEL_COMMUNITY =
            T.let(
              :travel_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NETWORKING_COMMUNITY =
            T.let(
              :networking_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FAITH_COMMUNITY =
            T.let(
              :faith_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MENS_COMMUNITY =
            T.let(
              :mens_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WOMENS_COMMUNITY =
            T.let(
              :womens_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EXPAT_COMMUNITY =
            T.let(
              :expat_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ADULT_COMMUNITY_NSFW =
            T.let(
              :adult_community_nsfw,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HATE_VIOLENCE_COMMUNITIES =
            T.let(
              :hate_violence_communities,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PERSONAL_FUNDRAISING =
            T.let(
              :personal_fundraising,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          POLITICAL_FUNDRAISING =
            T.let(
              :political_fundraising,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          POLITICAL_ORGANIZATIONS =
            T.let(
              :political_organizations,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PORNOGRAPHIC_CONTENT =
            T.let(
              :pornographic_content,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REGISTERED_501C3 =
            T.let(
              :registered_501c3,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RELIGIOUS_ORGANIZATION =
            T.let(
              :religious_organization,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          UNREGISTERED_CHARITIES =
            T.let(
              :unregistered_charities,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_OUTREACH_TOOL =
            T.let(
              :ai_outreach_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_CHATBOT_SOFTWARE =
            T.let(
              :ai_chatbot_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_WRITING_TOOL =
            T.let(
              :ai_writing_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_IMAGE_GENERATOR =
            T.let(
              :ai_image_generator,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_VIDEO_TOOL =
            T.let(
              :ai_video_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_VOICE_TOOL =
            T.let(
              :ai_voice_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_DATA_ANALYSIS =
            T.let(
              :ai_data_analysis,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_CODE_ASSISTANT =
            T.let(
              :ai_code_assistant,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_MEETING_ASSISTANT =
            T.let(
              :ai_meeting_assistant,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WORKFLOW_AUTOMATION_SOFTWARE =
            T.let(
              :workflow_automation_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_SALES_TOOL =
            T.let(
              :ai_sales_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_CUSTOMER_SUPPORT =
            T.let(
              :ai_customer_support,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_RECRUITING_TOOL =
            T.let(
              :ai_recruiting_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_TRANSLATION_TOOL =
            T.let(
              :ai_translation_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_MUSIC_TOOL =
            T.let(
              :ai_music_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_PRESENTATION_TOOL =
            T.let(
              :ai_presentation_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_RESEARCH_TOOL =
            T.let(
              :ai_research_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_SEO_TOOL =
            T.let(
              :ai_seo_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_SOCIAL_MEDIA_TOOL =
            T.let(
              :ai_social_media_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_PHONE_AGENT =
            T.let(
              :ai_phone_agent,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_LEGAL_TOOL =
            T.let(
              :ai_legal_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_HEALTHCARE_TOOL =
            T.let(
              :ai_healthcare_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LLM_API_PLATFORM =
            T.let(
              :llm_api_platform,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_AGENT_PLATFORM =
            T.let(
              :ai_agent_platform,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GENERATIVE_AI_PLATFORM =
            T.let(
              :generative_ai_platform,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CELEBRITY_IMPERSONATION =
            T.let(
              :celebrity_impersonation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DEEPFAKE_SERVICE =
            T.let(
              :deepfake_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_NSFW_CONTENT_GENERATOR =
            T.let(
              :ai_nsfw_content_generator,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ECOMMERCE_PLATFORM =
            T.let(
              :ecommerce_platform,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRODUCT_RESEARCH_TOOL =
            T.let(
              :product_research_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRICE_TRACKER =
            T.let(
              :price_tracker,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SHIPPING_SOFTWARE =
            T.let(
              :shipping_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRINT_ON_DEMAND_SOFTWARE =
            T.let(
              :print_on_demand_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MARKETPLACE_SELLER_TOOL =
            T.let(
              :marketplace_seller_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RESALE_ARBITRAGE_TOOL =
            T.let(
              :resale_arbitrage_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RESELLER_MANAGEMENT_TOOL =
            T.let(
              :reseller_management_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRODUCT_REVIEW_SOFTWARE =
            T.let(
              :product_review_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RETURNS_MANAGEMENT =
            T.let(
              :returns_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRODUCT_FEED_MANAGEMENT =
            T.let(
              :product_feed_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHECKOUT_OPTIMIZATION =
            T.let(
              :checkout_optimization,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WHOLESALE_ORDERING =
            T.let(
              :wholesale_ordering,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PROJECT_MANAGEMENT_SOFTWARE =
            T.let(
              :project_management_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TEAM_COMMUNICATION =
            T.let(
              :team_communication,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VIDEO_CONFERENCING =
            T.let(
              :video_conferencing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DOCUMENT_COLLABORATION =
            T.let(
              :document_collaboration,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TIME_TRACKING_SOFTWARE =
            T.let(
              :time_tracking_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SCHEDULING_SOFTWARE =
            T.let(
              :scheduling_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HR_SOFTWARE =
            T.let(
              :hr_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          KNOWLEDGE_BASE_SOFTWARE =
            T.let(
              :knowledge_base_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FORM_SURVEY_BUILDER =
            T.let(
              :form_survey_builder,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NOTE_TAKING_APP =
            T.let(
              :note_taking_app,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TASK_MANAGEMENT =
            T.let(
              :task_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CONTRACT_MANAGEMENT =
            T.let(
              :contract_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EXPENSE_MANAGEMENT =
            T.let(
              :expense_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OKR_GOAL_TRACKING =
            T.let(
              :okr_goal_tracking,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EMPLOYEE_ENGAGEMENT =
            T.let(
              :employee_engagement,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ONBOARDING_SOFTWARE =
            T.let(
              :onboarding_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          APPLICANT_TRACKING =
            T.let(
              :applicant_tracking,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ASSET_MANAGEMENT =
            T.let(
              :asset_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FACILITY_MANAGEMENT =
            T.let(
              :facility_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VISITOR_MANAGEMENT =
            T.let(
              :visitor_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COMMUNITY_PLATFORM =
            T.let(
              :community_platform,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EVENT_MANAGEMENT_SOFTWARE =
            T.let(
              :event_management_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WEBINAR_SOFTWARE =
            T.let(
              :webinar_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SCHOOL_MANAGEMENT =
            T.let(
              :school_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NEWSLETTER_PLATFORM =
            T.let(
              :newsletter_platform,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PODCAST_HOSTING =
            T.let(
              :podcast_hosting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FORUM_SOFTWARE =
            T.let(
              :forum_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VIRTUAL_CLASSROOM =
            T.let(
              :virtual_classroom,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RESTAURANT_POS =
            T.let(
              :restaurant_pos,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SALON_SOFTWARE =
            T.let(
              :salon_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GYM_MANAGEMENT_SOFTWARE =
            T.let(
              :gym_management_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AUTO_SHOP_SOFTWARE =
            T.let(
              :auto_shop_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LEGAL_PRACTICE_SOFTWARE =
            T.let(
              :legal_practice_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHURCH_MANAGEMENT =
            T.let(
              :church_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NONPROFIT_SOFTWARE =
            T.let(
              :nonprofit_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LOGISTICS_SOFTWARE =
            T.let(
              :logistics_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AGRICULTURE_SOFTWARE =
            T.let(
              :agriculture_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FIELD_SERVICE_SOFTWARE =
            T.let(
              :field_service_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MARINA_MANAGEMENT =
            T.let(
              :marina_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOTEL_PMS =
            T.let(
              :hotel_pms,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHILDCARE_MANAGEMENT =
            T.let(
              :childcare_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CLEANING_BUSINESS_SOFTWARE =
            T.let(
              :cleaning_business_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ROOFING_SOFTWARE =
            T.let(
              :roofing_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LANDSCAPING_SOFTWARE =
            T.let(
              :landscaping_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PEST_CONTROL_SOFTWARE =
            T.let(
              :pest_control_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TATTOO_STUDIO_SOFTWARE =
            T.let(
              :tattoo_studio_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CANNABIS_SOFTWARE =
            T.let(
              :cannabis_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PASSWORD_MANAGER =
            T.let(
              :password_manager,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CYBERSECURITY_SOFTWARE =
            T.let(
              :cybersecurity_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          IDENTITY_VERIFICATION =
            T.let(
              :identity_verification,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BACKUP_RECOVERY =
            T.let(
              :backup_recovery,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ENDPOINT_PROTECTION =
            T.let(
              :endpoint_protection,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EMAIL_SECURITY =
            T.let(
              :email_security,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ACCESS_MANAGEMENT =
            T.let(
              :access_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COMPLIANCE_SOFTWARE =
            T.let(
              :compliance_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DATA_PRIVACY_TOOL =
            T.let(
              :data_privacy_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VPN_SERVICES =
            T.let(
              :vpn_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PEOPLE_SEARCH_TOOL =
            T.let(
              :people_search_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GAME_MOD_TOOL =
            T.let(
              :game_mod_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STREAMING_TOOL =
            T.let(
              :streaming_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GAME_SERVER_HOSTING =
            T.let(
              :game_server_hosting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MUSIC_SOFTWARE =
            T.let(
              :music_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VIDEO_EDITING_SOFTWARE =
            T.let(
              :video_editing_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PHOTO_EDITING_SOFTWARE =
            T.let(
              :photo_editing_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ANIMATION_SOFTWARE =
            T.let(
              :animation_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AUDIO_EDITING_SOFTWARE =
            T.let(
              :audio_editing_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SCREEN_RECORDING_SOFTWARE =
            T.let(
              :screen_recording_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPORTS_BETTING_TOOL =
            T.let(
              :sports_betting_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FANTASY_SPORTS_PAID_ENTRY =
            T.let(
              :fantasy_sports_paid_entry,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          IPTV_PIRATED_STREAMING =
            T.let(
              :iptv_pirated_streaming,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LOOT_BOXES_GACHA =
            T.let(
              :loot_boxes_gacha,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SKILL_CONTESTS_FREE_ENTRY =
            T.let(
              :skill_contests_free_entry,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SKILL_CONTESTS_PAID_ENTRY =
            T.let(
              :skill_contests_paid_entry,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ONLY_FANS_MANAGEMENT_SOFTWARE =
            T.let(
              :only_fans_management_software,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PORNOGRAPHY_PLATFORM =
            T.let(
              :pornography_platform,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BUSINESS_PHONE_SYSTEM =
            T.let(
              :business_phone_system,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CUSTOMER_MESSAGING =
            T.let(
              :customer_messaging,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DIGITAL_KEY_RESELLING =
            T.let(
              :digital_key_reselling,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STREAMING_ACCOUNT_RESELLING =
            T.let(
              :streaming_account_reselling,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SUBSCRIPTION_ACCOUNT_SHARING =
            T.let(
              :subscription_account_sharing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ACCOUNT_GENERATION_TOOL =
            T.let(
              :account_generation_tool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRIMARY_CARE_TELEHEALTH =
            T.let(
              :primary_care_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          URGENT_CARE_TELEHEALTH =
            T.let(
              :urgent_care_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PEDIATRIC_TELEHEALTH =
            T.let(
              :pediatric_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GERIATRIC_TELEHEALTH =
            T.let(
              :geriatric_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FAMILY_MEDICINE_TELEHEALTH =
            T.let(
              :family_medicine_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INTERNAL_MEDICINE_TELEHEALTH =
            T.let(
              :internal_medicine_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PREVENTIVE_CARE_TELEHEALTH =
            T.let(
              :preventive_care_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LICENSED_ONLINE_PHARMACY =
            T.let(
              :licensed_online_pharmacy,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TELEMEDICINE_PRACTITIONER_SERVICES =
            T.let(
              :telemedicine_practitioner_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DERMATOLOGY_TELEHEALTH =
            T.let(
              :dermatology_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ACNE_TELEHEALTH =
            T.let(
              :acne_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PSORIASIS_ECZEMA_TELEHEALTH =
            T.let(
              :psoriasis_eczema_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SKIN_CANCER_SCREENING_TELE =
            T.let(
              :skin_cancer_screening_tele,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COSMETIC_DERMATOLOGY_TELE =
            T.let(
              :cosmetic_dermatology_tele,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          THERAPY_TELEHEALTH =
            T.let(
              :therapy_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PSYCHIATRY_TELEHEALTH =
            T.let(
              :psychiatry_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ADDICTION_TELEHEALTH =
            T.let(
              :addiction_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COUPLES_THERAPY_TELEHEALTH =
            T.let(
              :couples_therapy_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHILD_PSYCHOLOGY_TELEHEALTH =
            T.let(
              :child_psychology_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EATING_DISORDER_TELEHEALTH =
            T.let(
              :eating_disorder_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PTSD_TRAUMA_TELEHEALTH =
            T.let(
              :ptsd_trauma_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ADHD_TELEHEALTH =
            T.let(
              :adhd_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ANXIETY_DEPRESSION_TELEHEALTH =
            T.let(
              :anxiety_depression_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OCD_TELEHEALTH =
            T.let(
              :ocd_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GRIEF_COUNSELING_TELEHEALTH =
            T.let(
              :grief_counseling_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ANGER_MANAGEMENT_TELEHEALTH =
            T.let(
              :anger_management_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FAMILY_THERAPY_TELEHEALTH =
            T.let(
              :family_therapy_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GROUP_THERAPY_TELEHEALTH =
            T.let(
              :group_therapy_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LICENSED_PSYCHEDELIC_THERAPY =
            T.let(
              :licensed_psychedelic_therapy,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WOMENS_HEALTH_TELEHEALTH =
            T.let(
              :womens_health_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MENS_HEALTH_TELEHEALTH =
            T.let(
              :mens_health_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SEXUAL_HEALTH_TELEHEALTH =
            T.let(
              :sexual_health_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FERTILITY_TELEHEALTH =
            T.let(
              :fertility_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HORMONE_THERAPY_TELEHEALTH =
            T.let(
              :hormone_therapy_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MENOPAUSE_TELEHEALTH =
            T.let(
              :menopause_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRENATAL_TELEHEALTH =
            T.let(
              :prenatal_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          POSTPARTUM_TELEHEALTH =
            T.let(
              :postpartum_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ERECTILE_DYSFUNCTION_TELE =
            T.let(
              :erectile_dysfunction_tele,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HAIR_LOSS_TELEHEALTH =
            T.let(
              :hair_loss_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BIRTH_CONTROL_TELEHEALTH =
            T.let(
              :birth_control_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STI_TESTING_TELEHEALTH =
            T.let(
              :sti_testing_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DENTAL_TELEHEALTH =
            T.let(
              :dental_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ORTHODONTICS_TELEHEALTH =
            T.let(
              :orthodontics_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OPTOMETRY_TELEHEALTH =
            T.let(
              :optometry_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ORAL_SURGERY_CONSULTATION =
            T.let(
              :oral_surgery_consultation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VISION_THERAPY_TELEHEALTH =
            T.let(
              :vision_therapy_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CARDIOLOGY_TELEHEALTH =
            T.let(
              :cardiology_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ENDOCRINOLOGY_TELEHEALTH =
            T.let(
              :endocrinology_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NEUROLOGY_TELEHEALTH =
            T.let(
              :neurology_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ORTHOPEDIC_TELEHEALTH =
            T.let(
              :orthopedic_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ALLERGY_TELEHEALTH =
            T.let(
              :allergy_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ENT_TELEHEALTH =
            T.let(
              :ent_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RHEUMATOLOGY_TELEHEALTH =
            T.let(
              :rheumatology_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GASTROENTEROLOGY_TELEHEALTH =
            T.let(
              :gastroenterology_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INFECTIOUS_DISEASE_TELEHEALTH =
            T.let(
              :infectious_disease_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PULMONOLOGY_TELEHEALTH =
            T.let(
              :pulmonology_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NEPHROLOGY_TELEHEALTH =
            T.let(
              :nephrology_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ONCOLOGY_TELEHEALTH =
            T.let(
              :oncology_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HEMATOLOGY_TELEHEALTH =
            T.let(
              :hematology_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          UROLOGY_TELEHEALTH =
            T.let(
              :urology_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WEIGHT_MANAGEMENT_TELEHEALTH =
            T.let(
              :weight_management_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GLP1_WEIGHT_LOSS_TELE =
            T.let(
              :glp1_weight_loss_tele,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DIABETES_MANAGEMENT_TELE =
            T.let(
              :diabetes_management_tele,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          METABOLIC_HEALTH_TELE =
            T.let(
              :metabolic_health_tele,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BARIATRIC_TELEHEALTH =
            T.let(
              :bariatric_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PHYSICAL_THERAPY_TELEHEALTH =
            T.let(
              :physical_therapy_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OCCUPATIONAL_THERAPY_TELE =
            T.let(
              :occupational_therapy_tele,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPEECH_THERAPY_TELEHEALTH =
            T.let(
              :speech_therapy_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PAIN_MANAGEMENT_TELEHEALTH =
            T.let(
              :pain_management_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CARDIAC_REHAB_TELEHEALTH =
            T.let(
              :cardiac_rehab_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PELVIC_FLOOR_TELEHEALTH =
            T.let(
              :pelvic_floor_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VESTIBULAR_TELEHEALTH =
            T.let(
              :vestibular_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SLEEP_MEDICINE_TELEHEALTH =
            T.let(
              :sleep_medicine_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHRONIC_DISEASE_MANAGEMENT =
            T.let(
              :chronic_disease_management,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHRONIC_PAIN_TELEHEALTH =
            T.let(
              :chronic_pain_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MIGRAINE_TELEHEALTH =
            T.let(
              :migraine_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ASTHMA_COPD_TELEHEALTH =
            T.let(
              :asthma_copd_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NUTRITION_TELEHEALTH =
            T.let(
              :nutrition_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NATUROPATHIC_TELEHEALTH =
            T.let(
              :naturopathic_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FUNCTIONAL_MEDICINE_TELEHEALTH =
            T.let(
              :functional_medicine_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ACUPUNCTURE_TELEHEALTH =
            T.let(
              :acupuncture_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HEALTH_COACHING_TELEHEALTH =
            T.let(
              :health_coaching_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INTEGRATIVE_MEDICINE_TELE =
            T.let(
              :integrative_medicine_tele,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AYURVEDIC_TELEHEALTH =
            T.let(
              :ayurvedic_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GENETIC_COUNSELING_TELEHEALTH =
            T.let(
              :genetic_counseling_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PHARMACOGENOMICS_TELE =
            T.let(
              :pharmacogenomics_tele,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RARE_DISEASE_TELEHEALTH =
            T.let(
              :rare_disease_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SECOND_OPINION_TELEHEALTH =
            T.let(
              :second_opinion_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VET_TELEHEALTH =
            T.let(
              :vet_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PET_BEHAVIOR_TELEHEALTH =
            T.let(
              :pet_behavior_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EXOTIC_PET_TELEHEALTH =
            T.let(
              :exotic_pet_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EQUINE_TELEHEALTH =
            T.let(
              :equine_telehealth,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VETERINARY_SERVICES =
            T.let(
              :veterinary_services,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CLASS_ACTION_SETTLEMENT =
            T.let(
              :class_action_settlement,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MASTERMIND_EVENT =
            T.let(
              :mastermind_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WEBINAR_EVENT =
            T.let(
              :webinar_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VIRTUAL_SUMMIT =
            T.let(
              :virtual_summit,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BOOTCAMP_EVENT =
            T.let(
              :bootcamp_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WORKSHOP_SEMINAR =
            T.let(
              :workshop_seminar,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HACKATHON =
            T.let(
              :hackathon,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CORPORATE_TRAINING_EVENT =
            T.let(
              :corporate_training_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TRAINING_CERTIFICATION_EVENT =
            T.let(
              :training_certification_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CONVENTION_EXPO =
            T.let(
              :convention_expo,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CONFERENCE_SUMMIT =
            T.let(
              :conference_summit,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INDUSTRY_AWARDS_EVENT =
            T.let(
              :industry_awards_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRODUCT_LAUNCH_EVENT =
            T.let(
              :product_launch_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INVESTOR_DEMO_DAY =
            T.let(
              :investor_demo_day,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PANEL_DISCUSSION_EVENT =
            T.let(
              :panel_discussion_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PITCH_COMPETITION =
            T.let(
              :pitch_competition,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MEETUP_EVENT =
            T.let(
              :meetup_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DINNER_EVENT =
            T.let(
              :dinner_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ALUMNI_EVENT =
            T.let(
              :alumni_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COMMUNITY_GATHERING =
            T.let(
              :community_gathering,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SINGLES_EVENT =
            T.let(
              :singles_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PROFESSIONAL_HAPPY_HOUR =
            T.let(
              :professional_happy_hour,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WOMEN_NETWORKING_EVENT =
            T.let(
              :women_networking_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FOUNDERS_DINNER =
            T.let(
              :founders_dinner,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INDUSTRY_MIXER =
            T.let(
              :industry_mixer,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CONCERT_EVENT =
            T.let(
              :concert_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COMEDY_SHOW =
            T.let(
              :comedy_show,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          THEATER_PERFORMANCE =
            T.let(
              :theater_performance,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FILM_SCREENING =
            T.let(
              :film_screening,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MUSIC_FESTIVAL =
            T.let(
              :music_festival,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CULTURAL_FESTIVAL =
            T.let(
              :cultural_festival,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FASHION_SHOW =
            T.let(
              :fashion_show,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DRAG_SHOW =
            T.let(
              :drag_show,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MAGIC_SHOW =
            T.let(
              :magic_show,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DANCE_PERFORMANCE =
            T.let(
              :dance_performance,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          POETRY_SPOKEN_WORD =
            T.let(
              :poetry_spoken_word,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ART_EXHIBITION =
            T.let(
              :art_exhibition,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PARTY_EVENT =
            T.let(
              :party_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TRIVIA_NIGHT =
            T.let(
              :trivia_night,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WINE_TASTING_EVENT =
            T.let(
              :wine_tasting_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BEER_FESTIVAL =
            T.let(
              :beer_festival,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CAR_SHOW =
            T.let(
              :car_show,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FOOD_FESTIVAL =
            T.let(
              :food_festival,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FITNESS_CHALLENGE_EVENT =
            T.let(
              :fitness_challenge_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MARATHON_RACE =
            T.let(
              :marathon_race,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TOURNAMENT_EVENT =
            T.let(
              :tournament_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FIGHT_EVENT =
            T.let(
              :fight_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          YOGA_RETREAT_EVENT =
            T.let(
              :yoga_retreat_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OUTDOOR_ADVENTURE_EVENT =
            T.let(
              :outdoor_adventure_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ESPORTS_TOURNAMENT =
            T.let(
              :esports_tournament,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OBSTACLE_COURSE_RACE =
            T.let(
              :obstacle_course_race,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CYCLING_EVENT =
            T.let(
              :cycling_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SWIM_MEET =
            T.let(
              :swim_meet,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GOLF_TOURNAMENT =
            T.let(
              :golf_tournament,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PICKLEBALL_TOURNAMENT =
            T.let(
              :pickleball_tournament,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CROSSFIT_COMPETITION =
            T.let(
              :crossfit_competition,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MARTIAL_ARTS_TOURNAMENT =
            T.let(
              :martial_arts_tournament,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SURFING_COMPETITION =
            T.let(
              :surfing_competition,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WELLNESS_RETREAT =
            T.let(
              :wellness_retreat,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPIRITUAL_RETREAT =
            T.let(
              :spiritual_retreat,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COUPLES_RETREAT =
            T.let(
              :couples_retreat,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PLANT_MEDICINE_RETREAT =
            T.let(
              :plant_medicine_retreat,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LUXURY_EXPERIENCE_EVENT =
            T.let(
              :luxury_experience_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DETOX_RETREAT =
            T.let(
              :detox_retreat,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SILENT_RETREAT =
            T.let(
              :silent_retreat,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CREATIVE_RETREAT =
            T.let(
              :creative_retreat,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LEADERSHIP_RETREAT =
            T.let(
              :leadership_retreat,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MENS_RETREAT =
            T.let(
              :mens_retreat,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WOMENS_RETREAT =
            T.let(
              :womens_retreat,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DIGITAL_DETOX_RETREAT =
            T.let(
              :digital_detox_retreat,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FUNDRAISER_EVENT =
            T.let(
              :fundraiser_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AWARENESS_EVENT =
            T.let(
              :awareness_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VOLUNTEER_EVENT =
            T.let(
              :volunteer_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHARITY_AUCTION =
            T.let(
              :charity_auction,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BENEFIT_CONCERT =
            T.let(
              :benefit_concert,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHARITY_RUN_WALK =
            T.let(
              :charity_run_walk,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ENVIRONMENTAL_CLEANUP =
            T.let(
              :environmental_cleanup,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FAMILY_FESTIVAL =
            T.let(
              :family_festival,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          KIDS_EVENT =
            T.let(
              :kids_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOLIDAY_EVENT =
            T.let(
              :holiday_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FARMERS_MARKET_EVENT =
            T.let(
              :farmers_market_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BLOCK_PARTY =
            T.let(
              :block_party,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GRADUATION_CEREMONY =
            T.let(
              :graduation_ceremony,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MEMORIAL_EVENT =
            T.let(
              :memorial_event,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STOCK_MARKET_NEWSLETTER =
            T.let(
              :stock_market_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CRYPTO_NEWSLETTER =
            T.let(
              :crypto_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PERSONAL_FINANCE_NEWSLETTER =
            T.let(
              :personal_finance_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REAL_ESTATE_NEWSLETTER =
            T.let(
              :real_estate_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FINTECH_NEWSLETTER =
            T.let(
              :fintech_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VENTURE_CAPITAL_NEWSLETTER =
            T.let(
              :venture_capital_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OPTIONS_TRADING_NEWSLETTER =
            T.let(
              :options_trading_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FOREX_NEWSLETTER =
            T.let(
              :forex_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MACRO_ECONOMICS_NEWSLETTER =
            T.let(
              :macro_economics_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ALTERNATIVE_INVESTING_NEWSLETTER =
            T.let(
              :alternative_investing_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TAX_STRATEGY_NEWSLETTER =
            T.let(
              :tax_strategy_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AI_NEWSLETTER =
            T.let(
              :ai_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TECH_INDUSTRY_NEWSLETTER =
            T.let(
              :tech_industry_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CYBERSECURITY_NEWSLETTER =
            T.let(
              :cybersecurity_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DEVELOPER_NEWSLETTER =
            T.let(
              :developer_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRODUCT_NEWSLETTER =
            T.let(
              :product_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DEVOPS_NEWSLETTER =
            T.let(
              :devops_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OPEN_SOURCE_NEWSLETTER =
            T.let(
              :open_source_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ROBOTICS_NEWSLETTER =
            T.let(
              :robotics_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CLIMATE_TECH_NEWSLETTER =
            T.let(
              :climate_tech_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TRAVEL_NEWSLETTER =
            T.let(
              :travel_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FASHION_NEWSLETTER =
            T.let(
              :fashion_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PARENTING_NEWSLETTER =
            T.let(
              :parenting_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPORTS_NEWSLETTER =
            T.let(
              :sports_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GAMING_NEWSLETTER =
            T.let(
              :gaming_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MUSIC_ENTERTAINMENT_NEWSLETTER =
            T.let(
              :music_entertainment_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BOOK_READING_NEWSLETTER =
            T.let(
              :book_reading_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DATING_RELATIONSHIPS_NEWSLETTER =
            T.let(
              :dating_relationships_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOME_DESIGN_NEWSLETTER =
            T.let(
              :home_design_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PET_NEWSLETTER =
            T.let(
              :pet_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WINE_SPIRITS_NEWSLETTER =
            T.let(
              :wine_spirits_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AUTOMOTIVE_NEWSLETTER =
            T.let(
              :automotive_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          POLITICAL_NEWSLETTER =
            T.let(
              :political_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GEOPOLITICS_NEWSLETTER =
            T.let(
              :geopolitics_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MEDIA_JOURNALISM_NEWSLETTER =
            T.let(
              :media_journalism_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DEFENSE_SECURITY_NEWSLETTER =
            T.let(
              :defense_security_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LEGAL_POLICY_NEWSLETTER =
            T.let(
              :legal_policy_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DESIGN_NEWSLETTER =
            T.let(
              :design_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EDUCATION_NEWSLETTER =
            T.let(
              :education_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SCIENCE_NEWSLETTER =
            T.let(
              :science_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PHILOSOPHY_NEWSLETTER =
            T.let(
              :philosophy_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SUSTAINABILITY_NEWSLETTER =
            T.let(
              :sustainability_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ARCHITECTURE_NEWSLETTER =
            T.let(
              :architecture_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HISTORY_NEWSLETTER =
            T.let(
              :history_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PSYCHOLOGY_NEWSLETTER =
            T.let(
              :psychology_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CAREER_NEWSLETTER =
            T.let(
              :career_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPIRITUALITY_NEWSLETTER =
            T.let(
              :spirituality_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SELF_IMPROVEMENT_NEWSLETTER =
            T.let(
              :self_improvement_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRODUCTIVITY_NEWSLETTER =
            T.let(
              :productivity_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FAITH_NEWSLETTER =
            T.let(
              :faith_newsletter,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GYM_FACILITY =
            T.let(
              :gym_facility,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CROSSFIT_BOX =
            T.let(
              :crossfit_box,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          YOGA_STUDIO =
            T.let(
              :yoga_studio,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PILATES_STUDIO =
            T.let(
              :pilates_studio,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MARTIAL_ARTS_GYM =
            T.let(
              :martial_arts_gym,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BOXING_GYM =
            T.let(
              :boxing_gym,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CLIMBING_GYM =
            T.let(
              :climbing_gym,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DANCE_STUDIO =
            T.let(
              :dance_studio,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SWIMMING_POOL =
            T.let(
              :swimming_pool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPORTS_FACILITY =
            T.let(
              :sports_facility,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GOLF_COURSE =
            T.let(
              :golf_course,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BOWLING_ALLEY =
            T.let(
              :bowling_alley,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SKATING_RINK =
            T.let(
              :skating_rink,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TRAMPOLINE_PARK =
            T.let(
              :trampoline_park,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TENNIS_CLUB =
            T.let(
              :tennis_club,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PICKLEBALL_FACILITY =
            T.let(
              :pickleball_facility,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GYMNASTICS_CENTER =
            T.let(
              :gymnastics_center,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPIN_STUDIO =
            T.let(
              :spin_studio,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BARRE_STUDIO =
            T.let(
              :barre_studio,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PERSONAL_TRAINING_STUDIO_BM =
            T.let(
              :personal_training_studio_bm,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RECOVERY_STUDIO =
            T.let(
              :recovery_studio,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INDOOR_SOCCER =
            T.let(
              :indoor_soccer,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BATTING_CAGE =
            T.let(
              :batting_cage,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SHOOTING_RANGE =
            T.let(
              :shooting_range,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ARCHERY_RANGE =
            T.let(
              :archery_range,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EQUESTRIAN_CENTER =
            T.let(
              :equestrian_center,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FINE_DINING =
            T.let(
              :fine_dining,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FAST_CASUAL_RESTAURANT =
            T.let(
              :fast_casual_restaurant,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STEAKHOUSE =
            T.let(
              :steakhouse,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SEAFOOD_RESTAURANT =
            T.let(
              :seafood_restaurant,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PIZZA_SHOP =
            T.let(
              :pizza_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SUSHI_RESTAURANT =
            T.let(
              :sushi_restaurant,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DELI_SANDWICH_SHOP =
            T.let(
              :deli_sandwich_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BBQ_RESTAURANT =
            T.let(
              :bbq_restaurant,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MEXICAN_RESTAURANT =
            T.let(
              :mexican_restaurant,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ITALIAN_RESTAURANT =
            T.let(
              :italian_restaurant,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHINESE_RESTAURANT =
            T.let(
              :chinese_restaurant,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INDIAN_RESTAURANT =
            T.let(
              :indian_restaurant,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          THAI_RESTAURANT =
            T.let(
              :thai_restaurant,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          KOREAN_RESTAURANT =
            T.let(
              :korean_restaurant,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MEDITERRANEAN_RESTAURANT =
            T.let(
              :mediterranean_restaurant,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VEGAN_VEGETARIAN_RESTAURANT =
            T.let(
              :vegan_vegetarian_restaurant,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BRUNCH_RESTAURANT =
            T.let(
              :brunch_restaurant,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RAMEN_NOODLE_SHOP =
            T.let(
              :ramen_noodle_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          POKE_BOWL_SHOP =
            T.let(
              :poke_bowl_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ETHNIC_RESTAURANT =
            T.let(
              :ethnic_restaurant,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COFFEE_SHOP_CAFE =
            T.let(
              :coffee_shop_cafe,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BAKERY =
            T.let(
              :bakery,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          JUICE_SMOOTHIE_BAR =
            T.let(
              :juice_smoothie_bar,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ICE_CREAM_SHOP =
            T.let(
              :ice_cream_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DONUT_SHOP =
            T.let(
              :donut_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BUBBLE_TEA_SHOP =
            T.let(
              :bubble_tea_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FOOD_TRUCK =
            T.let(
              :food_truck,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FAST_FOOD =
            T.let(
              :fast_food,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GHOST_KITCHEN =
            T.let(
              :ghost_kitchen,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FOOD_HALL_VENDOR =
            T.let(
              :food_hall_vendor,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CATERING_KITCHEN =
            T.let(
              :catering_kitchen,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BUTCHER_SHOP =
            T.let(
              :butcher_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHEESE_SHOP =
            T.let(
              :cheese_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FARMERS_MARKET_STALL =
            T.let(
              :farmers_market_stall,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BAR_LOUNGE =
            T.let(
              :bar_lounge,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BREWERY_TAPROOM =
            T.let(
              :brewery_taproom,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WINERY_TASTING =
            T.let(
              :winery_tasting,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WINE_BAR =
            T.let(
              :wine_bar,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COCKTAIL_BAR =
            T.let(
              :cocktail_bar,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPORTS_BAR =
            T.let(
              :sports_bar,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOOKAH_LOUNGE =
            T.let(
              :hookah_lounge,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DISTILLERY =
            T.let(
              :distillery,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COMMERCIAL_FARMING =
            T.let(
              :commercial_farming,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LIVESTOCK_RANCHING =
            T.let(
              :livestock_ranching,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HYDROPONIC_VERTICAL_FARMING =
            T.let(
              :hydroponic_vertical_farming,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FORESTRY_LOGGING =
            T.let(
              :forestry_logging,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AQUACULTURE_FISHERIES =
            T.let(
              :aquaculture_fisheries,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VINEYARD_WINERY_PRODUCTION =
            T.let(
              :vineyard_winery_production,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CANNABIS_CULTIVATION =
            T.let(
              :cannabis_cultivation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HEMP_FARMING =
            T.let(
              :hemp_farming,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GRAIN_PRODUCTION =
            T.let(
              :grain_production,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AGRICULTURAL_COOPERATIVE =
            T.let(
              :agricultural_cooperative,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FERTILIZER_PESTICIDE_SALES =
            T.let(
              :fertilizer_pesticide_sales,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FARM_EQUIPMENT_SALES =
            T.let(
              :farm_equipment_sales,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BOUTIQUE_STORE =
            T.let(
              :boutique_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CLOTHING_STORE =
            T.let(
              :clothing_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SHOE_STORE =
            T.let(
              :shoe_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          JEWELRY_STORE =
            T.let(
              :jewelry_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ELECTRONICS_STORE =
            T.let(
              :electronics_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BOOKSTORE =
            T.let(
              :bookstore,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PET_STORE =
            T.let(
              :pet_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TOY_STORE =
            T.let(
              :toy_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPORTING_GOODS_STORE =
            T.let(
              :sporting_goods_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          THRIFT_STORE =
            T.let(
              :thrift_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SMOKE_SHOP =
            T.let(
              :smoke_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CANNABIS_DISPENSARY =
            T.let(
              :cannabis_dispensary,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CONVENIENCE_STORE =
            T.let(
              :convenience_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GROCERY_STORE =
            T.let(
              :grocery_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LIQUOR_STORE =
            T.let(
              :liquor_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FLORIST =
            T.let(
              :florist,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GIFT_SHOP =
            T.let(
              :gift_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FURNITURE_STORE =
            T.let(
              :furniture_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOME_IMPROVEMENT_STORE =
            T.let(
              :home_improvement_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ART_GALLERY_RETAIL =
            T.let(
              :art_gallery_retail,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MUSIC_INSTRUMENT_STORE =
            T.let(
              :music_instrument_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OUTDOOR_RECREATION_STORE =
            T.let(
              :outdoor_recreation_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PHONE_REPAIR_STORE =
            T.let(
              :phone_repair_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WATCH_STORE =
            T.let(
              :watch_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BRIDAL_SHOP =
            T.let(
              :bridal_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MATERNITY_STORE =
            T.let(
              :maternity_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          KIDS_STORE =
            T.let(
              :kids_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SNEAKER_STORE =
            T.let(
              :sneaker_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VINTAGE_STORE =
            T.let(
              :vintage_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COMIC_BOOK_STORE =
            T.let(
              :comic_book_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RECORD_STORE =
            T.let(
              :record_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CRAFT_SUPPLY_STORE =
            T.let(
              :craft_supply_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FABRIC_STORE =
            T.let(
              :fabric_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HEALTH_FOOD_STORE =
            T.let(
              :health_food_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VITAMIN_SUPPLEMENT_STORE =
            T.let(
              :vitamin_supplement_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OPTICAL_STORE =
            T.let(
              :optical_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MATTRESS_STORE =
            T.let(
              :mattress_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          APPLIANCE_STORE =
            T.let(
              :appliance_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          KITCHEN_BATH_STORE =
            T.let(
              :kitchen_bath_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TILE_FLOORING_STORE =
            T.let(
              :tile_flooring_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PAINT_STORE =
            T.let(
              :paint_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GARDEN_CENTER =
            T.let(
              :garden_center,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GUN_STORE =
            T.let(
              :gun_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PAWN_SHOP =
            T.let(
              :pawn_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DOLLAR_STORE =
            T.let(
              :dollar_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HAIR_SALON =
            T.let(
              :hair_salon,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NAIL_SALON =
            T.let(
              :nail_salon,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DAY_SPA =
            T.let(
              :day_spa,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MED_SPA =
            T.let(
              :med_spa,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MASSAGE_STUDIO =
            T.let(
              :massage_studio,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TATTOO_PARLOR =
            T.let(
              :tattoo_parlor,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TANNING_SALON =
            T.let(
              :tanning_salon,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BEAUTY_SUPPLY_STORE =
            T.let(
              :beauty_supply_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LASH_BROW_STUDIO =
            T.let(
              :lash_brow_studio,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WAXING_STUDIO =
            T.let(
              :waxing_studio,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SAUNA_BATHHOUSE =
            T.let(
              :sauna_bathhouse,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CRYOTHERAPY_STUDIO =
            T.let(
              :cryotherapy_studio,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FLOAT_SENSORY_STUDIO =
            T.let(
              :float_sensory_studio,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          IV_THERAPY_LOUNGE =
            T.let(
              :iv_therapy_lounge,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TEETH_WHITENING_STUDIO =
            T.let(
              :teeth_whitening_studio,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MICROBLADING_STUDIO =
            T.let(
              :microblading_studio,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPRAY_TAN_STUDIO =
            T.let(
              :spray_tan_studio,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BLOWOUT_BAR =
            T.let(
              :blowout_bar,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MENS_BARBERSHOP =
            T.let(
              :mens_barbershop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          KIDS_SALON =
            T.let(
              :kids_salon,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MEDICAL_OFFICE =
            T.let(
              :medical_office,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DENTAL_OFFICE =
            T.let(
              :dental_office,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHIROPRACTIC_OFFICE =
            T.let(
              :chiropractic_office,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PHYSICAL_THERAPY_CLINIC =
            T.let(
              :physical_therapy_clinic,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OPTOMETRY_OFFICE =
            T.let(
              :optometry_office,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DERMATOLOGY_CLINIC =
            T.let(
              :dermatology_clinic,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          URGENT_CARE_CLINIC =
            T.let(
              :urgent_care_clinic,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PHARMACY =
            T.let(
              :pharmacy,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VETERINARY_CLINIC =
            T.let(
              :veterinary_clinic,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MENTAL_HEALTH_CLINIC =
            T.let(
              :mental_health_clinic,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FERTILITY_CLINIC =
            T.let(
              :fertility_clinic,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ACUPUNCTURE_CLINIC =
            T.let(
              :acupuncture_clinic,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HEARING_AID_CENTER =
            T.let(
              :hearing_aid_center,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ORTHOPEDIC_CLINIC =
            T.let(
              :orthopedic_clinic,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PEDIATRIC_CLINIC =
            T.let(
              :pediatric_clinic,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COSMETIC_SURGERY_CENTER =
            T.let(
              :cosmetic_surgery_center,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ALLERGY_CLINIC =
            T.let(
              :allergy_clinic,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PAIN_MANAGEMENT_CLINIC =
            T.let(
              :pain_management_clinic,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DIALYSIS_CENTER =
            T.let(
              :dialysis_center,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          IMAGING_CENTER =
            T.let(
              :imaging_center,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LAB_TESTING_CENTER =
            T.let(
              :lab_testing_center,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SLEEP_CLINIC =
            T.let(
              :sleep_clinic,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WEIGHT_LOSS_CLINIC =
            T.let(
              :weight_loss_clinic,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HORMONE_THERAPY_CLINIC =
            T.let(
              :hormone_therapy_clinic,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ADDICTION_TREATMENT_CENTER =
            T.let(
              :addiction_treatment_center,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REHABILITATION_CENTER =
            T.let(
              :rehabilitation_center,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OCCUPATIONAL_THERAPY_CLINIC =
            T.let(
              :occupational_therapy_clinic,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPEECH_THERAPY_CLINIC =
            T.let(
              :speech_therapy_clinic,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WOUND_CARE_CENTER =
            T.let(
              :wound_care_center,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FUNERAL_HOME_MORTUARY =
            T.let(
              :funeral_home_mortuary,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CREMATORY_SERVICE =
            T.let(
              :crematory_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CEMETERY_MEMORIAL_PARK =
            T.let(
              :cemetery_memorial_park,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CASKET_URN_RETAILER =
            T.let(
              :casket_urn_retailer,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PET_CREMATION_SERVICE =
            T.let(
              :pet_cremation_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BIOHAZARD_CLEANUP =
            T.let(
              :biohazard_cleanup,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ESTATE_LIQUIDATION =
            T.let(
              :estate_liquidation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOTEL =
            T.let(
              :hotel,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MOTEL =
            T.let(
              :motel,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BOUTIQUE_HOTEL =
            T.let(
              :boutique_hotel,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BED_AND_BREAKFAST =
            T.let(
              :bed_and_breakfast,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOSTEL =
            T.let(
              :hostel,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RESORT =
            T.let(
              :resort,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CAMPGROUND_RV =
            T.let(
              :campground_rv,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VACATION_RENTAL_PROPERTY =
            T.let(
              :vacation_rental_property,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EXTENDED_STAY =
            T.let(
              :extended_stay,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GLAMPING_SITE =
            T.let(
              :glamping_site,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CABIN_RENTAL =
            T.let(
              :cabin_rental,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ECO_LODGE =
            T.let(
              :eco_lodge,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RETREAT_CENTER =
            T.let(
              :retreat_center,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TUTORING_CENTER =
            T.let(
              :tutoring_center,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DAYCARE_CENTER =
            T.let(
              :daycare_center,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRESCHOOL =
            T.let(
              :preschool,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LEARNING_CENTER =
            T.let(
              :learning_center,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MUSIC_SCHOOL =
            T.let(
              :music_school,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ART_SCHOOL =
            T.let(
              :art_school,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DRIVING_SCHOOL =
            T.let(
              :driving_school,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LANGUAGE_SCHOOL =
            T.let(
              :language_school,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TRADE_SCHOOL =
            T.let(
              :trade_school,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CODING_BOOTCAMP_LOCATION =
            T.let(
              :coding_bootcamp_location,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MONTESSORI_SCHOOL =
            T.let(
              :montessori_school,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AFTER_SCHOOL_PROGRAM =
            T.let(
              :after_school_program,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SWIM_SCHOOL =
            T.let(
              :swim_school,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COOKING_SCHOOL =
            T.let(
              :cooking_school,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TEST_PREP_CENTER =
            T.let(
              :test_prep_center,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SPECIAL_NEEDS_CENTER =
            T.let(
              :special_needs_center,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ADULT_EDUCATION_CENTER =
            T.let(
              :adult_education_center,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FLIGHT_SCHOOL =
            T.let(
              :flight_school,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COSMETOLOGY_SCHOOL =
            T.let(
              :cosmetology_school,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MOVIE_THEATER =
            T.let(
              :movie_theater,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ESCAPE_ROOM =
            T.let(
              :escape_room,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ARCADE =
            T.let(
              :arcade,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MINI_GOLF =
            T.let(
              :mini_golf,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LASER_TAG =
            T.let(
              :laser_tag,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GO_KART =
            T.let(
              :go_kart,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AMUSEMENT_PARK =
            T.let(
              :amusement_park,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MUSEUM =
            T.let(
              :museum,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ZOO_AQUARIUM =
            T.let(
              :zoo_aquarium,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          THEATER_VENUE =
            T.let(
              :theater_venue,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NIGHTCLUB =
            T.let(
              :nightclub,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          KARAOKE_BAR =
            T.let(
              :karaoke_bar,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COMEDY_CLUB =
            T.let(
              :comedy_club,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LIVE_MUSIC_VENUE =
            T.let(
              :live_music_venue,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AXE_THROWING =
            T.let(
              :axe_throwing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VIRTUAL_REALITY_ARCADE =
            T.let(
              :virtual_reality_arcade,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BOARD_GAME_CAFE =
            T.let(
              :board_game_cafe,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CAT_CAFE =
            T.let(
              :cat_cafe,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HAUNTED_HOUSE =
            T.let(
              :haunted_house,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WATER_PARK =
            T.let(
              :water_park,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INDOOR_PLAYGROUND =
            T.let(
              :indoor_playground,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CONCERT_VENUE =
            T.let(
              :concert_venue,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DRIVE_IN_THEATER =
            T.let(
              :drive_in_theater,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BILLIARDS_HALL =
            T.let(
              :billiards_hall,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DART_BAR =
            T.let(
              :dart_bar,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INDOOR_SKYDIVING =
            T.let(
              :indoor_skydiving,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LAW_OFFICE =
            T.let(
              :law_office,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          REAL_ESTATE_OFFICE =
            T.let(
              :real_estate_office,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INSURANCE_OFFICE =
            T.let(
              :insurance_office,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ACCOUNTING_OFFICE =
            T.let(
              :accounting_office,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BANK_CREDIT_UNION =
            T.let(
              :bank_credit_union,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PRINTING_SHOP =
            T.let(
              :printing_shop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SHIPPING_CENTER =
            T.let(
              :shipping_center,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DRY_CLEANER =
            T.let(
              :dry_cleaner,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          LAUNDROMAT =
            T.let(
              :laundromat,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STORAGE_FACILITY =
            T.let(
              :storage_facility,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COWORKING_SPACE =
            T.let(
              :coworking_space,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHECK_CASHING =
            T.let(
              :check_cashing,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TITLE_COMPANY =
            T.let(
              :title_company,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          TRAVEL_AGENCY_STOREFRONT =
            T.let(
              :travel_agency_storefront,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          STAFFING_OFFICE =
            T.let(
              :staffing_office,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FINANCIAL_ADVISOR_OFFICE =
            T.let(
              :financial_advisor_office,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          IMMIGRATION_OFFICE =
            T.let(
              :immigration_office,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BAIL_BONDS_OFFICE =
            T.let(
              :bail_bonds_office,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PET_GROOMING =
            T.let(
              :pet_grooming,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DOG_DAYCARE =
            T.let(
              :dog_daycare,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PET_BOARDING =
            T.let(
              :pet_boarding,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DOG_TRAINING_FACILITY =
            T.let(
              :dog_training_facility,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PET_SPA =
            T.let(
              :pet_spa,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          AQUATIC_PET_STORE =
            T.let(
              :aquatic_pet_store,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PET_BAKERY =
            T.let(
              :pet_bakery,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PET_PHOTOGRAPHY_STUDIO =
            T.let(
              :pet_photography_studio,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PLUMBING_SHOWROOM =
            T.let(
              :plumbing_showroom,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HVAC_SHOWROOM =
            T.let(
              :hvac_showroom,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SOLAR_SHOWROOM =
            T.let(
              :solar_showroom,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          KITCHEN_DESIGN_SHOWROOM =
            T.let(
              :kitchen_design_showroom,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          BATH_DESIGN_SHOWROOM =
            T.let(
              :bath_design_showroom,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          WINDOW_DOOR_SHOWROOM =
            T.let(
              :window_door_showroom,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          POOL_SPA_SHOWROOM =
            T.let(
              :pool_spa_showroom,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FIREPLACE_SHOWROOM =
            T.let(
              :fireplace_showroom,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COUNTERTOP_SHOWROOM =
            T.let(
              :countertop_showroom,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NONPROFIT_ORGANIZATION =
            T.let(
              :nonprofit_organization,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          CHARITY_FOUNDATION =
            T.let(
              :charity_foundation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          POLITICAL_CAMPAIGN =
            T.let(
              :political_campaign,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COMMUNITY_ORGANIZATION =
            T.let(
              :community_organization,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ENVIRONMENTAL_NONPROFIT =
            T.let(
              :environmental_nonprofit,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EDUCATION_NONPROFIT =
            T.let(
              :education_nonprofit,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HEALTH_NONPROFIT =
            T.let(
              :health_nonprofit,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ANIMAL_WELFARE_NONPROFIT =
            T.let(
              :animal_welfare_nonprofit,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          ARTS_CULTURE_NONPROFIT =
            T.let(
              :arts_culture_nonprofit,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SOCIAL_JUSTICE_NONPROFIT =
            T.let(
              :social_justice_nonprofit,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          VETERANS_NONPROFIT =
            T.let(
              :veterans_nonprofit,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          YOUTH_NONPROFIT =
            T.let(
              :youth_nonprofit,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          DISASTER_RELIEF_NONPROFIT =
            T.let(
              :disaster_relief_nonprofit,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FOOD_BANK =
            T.let(
              :food_bank,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOUSING_NONPROFIT =
            T.let(
              :housing_nonprofit,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          GOVERNMENT_AGENCY =
            T.let(
              :government_agency,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PUBLIC_UTILITY =
            T.let(
              :public_utility,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PUBLIC_LIBRARY =
            T.let(
              :public_library,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          PUBLIC_SCHOOL =
            T.let(
              :public_school,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MUNICIPAL_SERVICE =
            T.let(
              :municipal_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MILITARY_INSTALLATION =
            T.let(
              :military_installation,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          EMBASSY_CONSULATE =
            T.let(
              :embassy_consulate,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NICHE_SERVICE =
            T.let(
              :niche_service,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          NICHE_PRODUCT =
            T.let(
              :niche_product,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HYBRID_BUSINESS =
            T.let(
              :hybrid_business,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          OTHER_GENERAL =
            T.let(
              :other_general,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          HOLDING_COMPANY =
            T.let(
              :holding_company,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          FAMILY_OFFICE =
            T.let(
              :family_office,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COOPERATIVE =
            T.let(
              :cooperative,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          SOCIAL_ENTERPRISE =
            T.let(
              :social_enterprise,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          INCUBATOR_ACCELERATOR =
            T.let(
              :incubator_accelerator,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          COWORKING_COMMUNITY =
            T.let(
              :coworking_community,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          MEDIA_COMPANY =
            T.let(
              :media_company,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )
          RESEARCH_LAB =
            T.let(
              :research_lab,
              WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AccountUpdatedWebhookEvent::Data::IndustryType::TaggedSymbol
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::OnboardingType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PLATFORM =
            T.let(
              :platform,
              WhopSDK::AccountUpdatedWebhookEvent::Data::OnboardingType::TaggedSymbol
            )
          SELLER =
            T.let(
              :seller,
              WhopSDK::AccountUpdatedWebhookEvent::Data::OnboardingType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AccountUpdatedWebhookEvent::Data::OnboardingType::TaggedSymbol
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::OpengraphImageVariant
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WHITE =
            T.let(
              :white,
              WhopSDK::AccountUpdatedWebhookEvent::Data::OpengraphImageVariant::TaggedSymbol
            )
          BLACK =
            T.let(
              :black,
              WhopSDK::AccountUpdatedWebhookEvent::Data::OpengraphImageVariant::TaggedSymbol
            )
          ORANGE =
            T.let(
              :orange,
              WhopSDK::AccountUpdatedWebhookEvent::Data::OpengraphImageVariant::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AccountUpdatedWebhookEvent::Data::OpengraphImageVariant::TaggedSymbol
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::Owner,
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
              WhopSDK::AccountUpdatedWebhookEvent::Data::Owner::ProfilePicture
            )
          end
          attr_reader :profile_picture

          sig do
            params(
              profile_picture:
                WhopSDK::AccountUpdatedWebhookEvent::Data::Owner::ProfilePicture::OrHash
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::Owner::ProfilePicture::OrHash,
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Owner::ProfilePicture,
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Owner::ProfilePicture,
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::ParentAccount,
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

          # Parent account for connected accounts, or `null` for standalone accounts.
          sig do
            params(
              id: String,
              logo_url: T.nilable(String),
              route: String,
              title: String
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
            title:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                logo_url: T.nilable(String),
                route: String,
                title: String
              }
            )
          end
          def to_hash
          end
        end

        class PaymentControls < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls,
                WhopSDK::Internal::AnyHash
              )
            end

          # Automatic refund settings for pre-chargeback dispute alerts.
          sig do
            returns(
              WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::DisputeAlertAutoRefund
            )
          end
          attr_reader :dispute_alert_auto_refund

          sig do
            params(
              dispute_alert_auto_refund:
                WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::DisputeAlertAutoRefund::OrHash
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
              WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::Reserve
            )
          end
          attr_reader :reserve

          sig do
            params(
              reserve:
                WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::Reserve::OrHash
            ).void
          end
          attr_writer :reserve

          # Automatic refund settings for resolution center cases.
          sig do
            returns(
              WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::ResolutionCenterAutoRefund
            )
          end
          attr_reader :resolution_center_auto_refund

          sig do
            params(
              resolution_center_auto_refund:
                WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::ResolutionCenterAutoRefund::OrHash
            ).void
          end
          attr_writer :resolution_center_auto_refund

          sig do
            returns(
              T::Array[
                WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::RestrictedPaymentMethod::TaggedSymbol
              ]
            )
          end
          attr_accessor :restricted_payment_methods

          # Why pending funds without a settlement date aren't moving yet, when it's
          # something the merchant can act on. `null` when there's no reason to show (still
          # clearing, or the account is held for a reason that isn't merchant-actionable).
          sig do
            returns(
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::UndatedPendingReason::TaggedSymbol
              )
            )
          end
          attr_accessor :undated_pending_reason

          # How the account's balance automatically withdraws.
          sig do
            returns(
              WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::WithdrawalSchedule
            )
          end
          attr_reader :withdrawal_schedule

          sig do
            params(
              withdrawal_schedule:
                WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::OrHash
            ).void
          end
          attr_writer :withdrawal_schedule

          # Payment health controls currently applied to the account. Computed only on
          # `retrieve` and `me` for callers with `company:balance:read` scope; `null`
          # otherwise.
          sig do
            params(
              dispute_alert_auto_refund:
                WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::DisputeAlertAutoRefund::OrHash,
              dispute_alert_fee_usd: T.nilable(Float),
              enforce_3ds: T::Boolean,
              financing_disabled: T::Boolean,
              high_risk_processing_fee_percentage: Float,
              pending_auto_topup_fee_percentage: Float,
              pending_balance_delay_days: Integer,
              reserve:
                WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::Reserve::OrHash,
              resolution_center_auto_refund:
                WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::ResolutionCenterAutoRefund::OrHash,
              restricted_payment_methods:
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::RestrictedPaymentMethod::OrSymbol
                ],
              undated_pending_reason:
                T.nilable(
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::UndatedPendingReason::OrSymbol
                ),
              withdrawal_schedule:
                WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::OrHash
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
            # Why pending funds without a settlement date aren't moving yet, when it's
            # something the merchant can act on. `null` when there's no reason to show (still
            # clearing, or the account is held for a reason that isn't merchant-actionable).
            undated_pending_reason:,
            # How the account's balance automatically withdraws.
            withdrawal_schedule:
          )
          end

          sig do
            override.returns(
              {
                dispute_alert_auto_refund:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::DisputeAlertAutoRefund,
                dispute_alert_fee_usd: T.nilable(Float),
                enforce_3ds: T::Boolean,
                financing_disabled: T::Boolean,
                high_risk_processing_fee_percentage: Float,
                pending_auto_topup_fee_percentage: Float,
                pending_balance_delay_days: Integer,
                reserve:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::Reserve,
                resolution_center_auto_refund:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::ResolutionCenterAutoRefund,
                restricted_payment_methods:
                  T::Array[
                    WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::RestrictedPaymentMethod::TaggedSymbol
                  ],
                undated_pending_reason:
                  T.nilable(
                    WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::UndatedPendingReason::TaggedSymbol
                  ),
                withdrawal_schedule:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::WithdrawalSchedule
              }
            )
          end
          def to_hash
          end

          class DisputeAlertAutoRefund < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::DisputeAlertAutoRefund,
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::Reserve,
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::ResolutionCenterAutoRefund,
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::RestrictedPaymentMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CARD_VISA =
              T.let(
                :card_visa,
                WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::RestrictedPaymentMethod::TaggedSymbol
              )
            CARD_MASTERCARD =
              T.let(
                :card_mastercard,
                WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::RestrictedPaymentMethod::TaggedSymbol
              )
            CARD_AMERICAN_EXPRESS =
              T.let(
                :card_american_express,
                WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::RestrictedPaymentMethod::TaggedSymbol
              )
            CARD_DISCOVER_GLOBAL_NETWORK =
              T.let(
                :card_discover_global_network,
                WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::RestrictedPaymentMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::RestrictedPaymentMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Why pending funds without a settlement date aren't moving yet, when it's
          # something the merchant can act on. `null` when there's no reason to show (still
          # clearing, or the account is held for a reason that isn't merchant-actionable).
          module UndatedPendingReason
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::UndatedPendingReason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            KYC_INCOMPLETE =
              T.let(
                :kyc_incomplete,
                WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::UndatedPendingReason::TaggedSymbol
              )
            PENDING_INFORMATION_REQUEST =
              T.let(
                :pending_information_request,
                WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::UndatedPendingReason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::UndatedPendingReason::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::WithdrawalSchedule,
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::Frequency::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::Frequency::OrSymbol,
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
                    WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::Frequency::TaggedSymbol,
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
                    WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::Frequency
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MANUAL =
                T.let(
                  :manual,
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::Frequency::TaggedSymbol
                )
              DAILY =
                T.let(
                  :daily,
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::Frequency::TaggedSymbol
                )
              WEEKLY =
                T.let(
                  :weekly,
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::Frequency::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::Frequency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::AccountUpdatedWebhookEvent::Data::PaymentControls::WithdrawalSchedule::Frequency::TaggedSymbol
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy,
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
              WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::UploadStatus::TaggedSymbol
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
              WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::Visibility::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::MultipartUploadURL
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::UploadStatus::OrSymbol,
              url: T.nilable(String),
              visibility:
                WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::Visibility::OrSymbol,
              multipart_chunk_size: T.nilable(Integer),
              multipart_upload_id: T.nilable(String),
              multipart_upload_urls:
                T.nilable(
                  T::Array[
                    WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::MultipartUploadURL::OrHash
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::UploadStatus::TaggedSymbol,
                url: T.nilable(String),
                visibility:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::Visibility::TaggedSymbol,
                multipart_chunk_size: T.nilable(Integer),
                multipart_upload_id: T.nilable(String),
                multipart_upload_urls:
                  T.nilable(
                    T::Array[
                      WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::MultipartUploadURL
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::UploadStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::UploadStatus::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :processing,
                WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::UploadStatus::TaggedSymbol
              )
            READY =
              T.let(
                :ready,
                WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::UploadStatus::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::UploadStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::UploadStatus::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::Visibility
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PUBLIC =
              T.let(
                :public,
                WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::Visibility::TaggedSymbol
              )
            PRIVATE =
              T.let(
                :private,
                WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::Visibility::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::Visibility::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::PrivacyPolicy::MultipartUploadURL,
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction,
                WhopSDK::Internal::AnyHash
              )
            end

          # The recommendation; new values may be added, so handle unknown actions
          # gracefully
          sig do
            returns(
              WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
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
              WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # Headline for the recommendation
          sig { returns(String) }
          attr_accessor :title

          # Deprecated: use the `GET /recommended_actions?account_id={account_id}` endpoint
          # instead. Optional actions that unlock capabilities or grow the account, same
          # shape as `required_actions`. Computed only on `retrieve` and `me`; `null`
          # otherwise.
          sig do
            params(
              action:
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action::OrSymbol,
              blocked_capabilities: T::Array[String],
              cta: String,
              cta_label: String,
              description: String,
              icon_url: T.nilable(String),
              impact_score: T.nilable(Integer),
              reasoning: T.nilable(String),
              status:
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Status::OrSymbol,
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol,
                blocked_capabilities: T::Array[String],
                cta: String,
                cta_label: String,
                description: String,
                icon_url: T.nilable(String),
                impact_score: T.nilable(Integer),
                reasoning: T.nilable(String),
                status:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Status::TaggedSymbol,
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            THEME_BUSINESS =
              T.let(
                :theme_business,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            CREATE_PRODUCT =
              T.let(
                :create_product,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            CREATE_PLAN =
              T.let(
                :create_plan,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            VERIFY_IDENTITY =
              T.let(
                :verify_identity,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            CONNECT_AFFILIATE_PROGRAM =
              T.let(
                :connect_affiliate_program,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            CREATE_PROMOTION =
              T.let(
                :create_promotion,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            MIGRATE_FROM_STRIPE =
              T.let(
                :migrate_from_stripe,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            ACCEPT_FIRST_PAYMENT =
              T.let(
                :accept_first_payment,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            LAUNCH_FIRST_AD =
              T.let(
                :launch_first_ad,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            LAUNCH_DRAFT_CAMPAIGN =
              T.let(
                :launch_draft_campaign,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            INCREASE_AD_BUDGET =
              T.let(
                :increase_ad_budget,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            REFRESH_AD_CREATIVES =
              T.let(
                :refresh_ad_creatives,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            FIX_AD_BILLING =
              T.let(
                :fix_ad_billing,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            EXCLUDE_CUSTOMERS_FROM_ADS =
              T.let(
                :exclude_customers_from_ads,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            RETARGET_ABANDONED_CHECKOUTS =
              T.let(
                :retarget_abandoned_checkouts,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            FIX_FUNNEL_DROPOFF =
              T.let(
                :fix_funnel_dropoff,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            INVITE_TEAM_MEMBER =
              T.let(
                :invite_team_member,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            ENABLE_TAX_COLLECTION =
              T.let(
                :enable_tax_collection,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            CREATE_CARD =
              T.let(
                :create_card,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )
            APPLY_FOR_FINANCING =
              T.let(
                :apply_for_financing,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Action::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OPTIONAL =
              T.let(
                :optional,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::RecommendedAction::Status::TaggedSymbol
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction,
                WhopSDK::Internal::AnyHash
              )
            end

          # What the holder must do; new values may be added, so handle unknown actions
          # gracefully
          sig do
            returns(
              WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
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
              WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Status::TaggedSymbol
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Action::OrSymbol,
              blocked_capabilities: T::Array[String],
              cta: T.nilable(String),
              cta_label: String,
              description: String,
              icon_url: T.nilable(String),
              status:
                WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Status::OrSymbol,
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol,
                blocked_capabilities: T::Array[String],
                cta: T.nilable(String),
                cta_label: String,
                description: String,
                icon_url: T.nilable(String),
                status:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Status::TaggedSymbol,
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Action
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DEPOSIT_FUNDS =
              T.let(
                :deposit_funds,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
              )
            SUBMIT_INFORMATION_REQUEST =
              T.let(
                :submit_information_request,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
              )
            REAUTHORIZE_PAYOUT_METHODS =
              T.let(
                :reauthorize_payout_methods,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
              )
            UPDATE_PAYOUT_PROFILE =
              T.let(
                :update_payout_profile,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
              )
            CARD_USAGE_REVIEW =
              T.let(
                :card_usage_review,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
              )
            VERIFY_IDENTITY =
              T.let(
                :verify_identity,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
              )
            SIGN_FORMATION_DOCUMENTS =
              T.let(
                :sign_formation_documents,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
              )
            CONNECT_FULFILLMENT_TRACKER =
              T.let(
                :connect_fulfillment_tracker,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
              )
            SETUP_APPLE_PAY_DOMAINS =
              T.let(
                :setup_apple_pay_domains,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
              )
            CONFIGURE_TAX_REMITTER =
              T.let(
                :configure_tax_remitter,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
              )
            ADD_VAT_REGISTRATION =
              T.let(
                :add_vat_registration,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Action::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            REQUIRED =
              T.let(
                :required,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::RequiredAction::Status::TaggedSymbol
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy,
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
              WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::UploadStatus::TaggedSymbol
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
              WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::Visibility::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::MultipartUploadURL
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::UploadStatus::OrSymbol,
              url: T.nilable(String),
              visibility:
                WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::Visibility::OrSymbol,
              multipart_chunk_size: T.nilable(Integer),
              multipart_upload_id: T.nilable(String),
              multipart_upload_urls:
                T.nilable(
                  T::Array[
                    WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::MultipartUploadURL::OrHash
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::UploadStatus::TaggedSymbol,
                url: T.nilable(String),
                visibility:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::Visibility::TaggedSymbol,
                multipart_chunk_size: T.nilable(Integer),
                multipart_upload_id: T.nilable(String),
                multipart_upload_urls:
                  T.nilable(
                    T::Array[
                      WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::MultipartUploadURL
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::UploadStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::UploadStatus::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :processing,
                WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::UploadStatus::TaggedSymbol
              )
            READY =
              T.let(
                :ready,
                WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::UploadStatus::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::UploadStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::UploadStatus::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::Visibility
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PUBLIC =
              T.let(
                :public,
                WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::Visibility::TaggedSymbol
              )
            PRIVATE =
              T.let(
                :private,
                WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::Visibility::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::Visibility::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::ReturnPolicy::MultipartUploadURL,
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::SocialLink,
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
              WhopSDK::AccountUpdatedWebhookEvent::Data::SocialLink::Website::TaggedSymbol
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::SocialLink::Website::OrSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::SocialLink::Website::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::SocialLink::Website
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            X =
              T.let(
                :x,
                WhopSDK::AccountUpdatedWebhookEvent::Data::SocialLink::Website::TaggedSymbol
              )
            INSTAGRAM =
              T.let(
                :instagram,
                WhopSDK::AccountUpdatedWebhookEvent::Data::SocialLink::Website::TaggedSymbol
              )
            FACEBOOK =
              T.let(
                :facebook,
                WhopSDK::AccountUpdatedWebhookEvent::Data::SocialLink::Website::TaggedSymbol
              )
            TIKTOK =
              T.let(
                :tiktok,
                WhopSDK::AccountUpdatedWebhookEvent::Data::SocialLink::Website::TaggedSymbol
              )
            YOUTUBE =
              T.let(
                :youtube,
                WhopSDK::AccountUpdatedWebhookEvent::Data::SocialLink::Website::TaggedSymbol
              )
            LINKEDIN =
              T.let(
                :linkedin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::SocialLink::Website::TaggedSymbol
              )
            TWITCH =
              T.let(
                :twitch,
                WhopSDK::AccountUpdatedWebhookEvent::Data::SocialLink::Website::TaggedSymbol
              )
            WEBSITE =
              T.let(
                :website,
                WhopSDK::AccountUpdatedWebhookEvent::Data::SocialLink::Website::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :custom,
                WhopSDK::AccountUpdatedWebhookEvent::Data::SocialLink::Website::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::SocialLink::Website::TaggedSymbol
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig,
                WhopSDK::Internal::AnyHash
              )
            end

          # Accent color used on the account store page.
          sig do
            returns(
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            )
          end
          attr_accessor :accent_color

          # Layout used on the account store page.
          sig do
            returns(
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::Layout::TaggedSymbol
              )
            )
          end
          attr_accessor :layout

          # Profile presentation used on the account store page.
          sig do
            returns(
              T.nilable(
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::ProfileVariant::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::OrSymbol
                ),
              layout:
                T.nilable(
                  WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::Layout::OrSymbol
                ),
              profile_variant:
                T.nilable(
                  WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::ProfileVariant::OrSymbol
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
                    WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
                  ),
                layout:
                  T.nilable(
                    WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::Layout::TaggedSymbol
                  ),
                profile_variant:
                  T.nilable(
                    WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::ProfileVariant::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            RUBY =
              T.let(
                :ruby,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            TOMATO =
              T.let(
                :tomato,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            RED =
              T.let(
                :red,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            CRIMSON =
              T.let(
                :crimson,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            PINK =
              T.let(
                :pink,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            PLUM =
              T.let(
                :plum,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            PURPLE =
              T.let(
                :purple,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            VIOLET =
              T.let(
                :violet,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            IRIS =
              T.let(
                :iris,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            CYAN =
              T.let(
                :cyan,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            TEAL =
              T.let(
                :teal,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            JADE =
              T.let(
                :jade,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            GREEN =
              T.let(
                :green,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            GRASS =
              T.let(
                :grass,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            BROWN =
              T.let(
                :brown,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            BLUE =
              T.let(
                :blue,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            ORANGE =
              T.let(
                :orange,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            INDIGO =
              T.let(
                :indigo,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            SKY =
              T.let(
                :sky,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            MINT =
              T.let(
                :mint,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            YELLOW =
              T.let(
                :yellow,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            AMBER =
              T.let(
                :amber,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            LIME =
              T.let(
                :lime,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            LEMON =
              T.let(
                :lemon,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            MAGENTA =
              T.let(
                :magenta,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            GOLD =
              T.let(
                :gold,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            BRONZE =
              T.let(
                :bronze,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )
            GRAY =
              T.let(
                :gray,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::AccentColor::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::Layout
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FEATURED =
              T.let(
                :featured,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::Layout::TaggedSymbol
              )
            COMPACT =
              T.let(
                :compact,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::Layout::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::Layout::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::ProfileVariant
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PERSONAL =
              T.let(
                :personal,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::ProfileVariant::TaggedSymbol
              )
            BUSINESS =
              T.let(
                :business,
                WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::ProfileVariant::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::StorePageConfig::ProfileVariant::TaggedSymbol
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier,
                WhopSDK::Internal::AnyHash
              )
            end

          # Tax identifier ID.
          sig { returns(String) }
          attr_accessor :id

          # Tax ID type.
          sig do
            returns(
              WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::OrSymbol,
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol,
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AD_NRT =
              T.let(
                :ad_nrt,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            AO_TIN =
              T.let(
                :ao_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            AR_CUIT =
              T.let(
                :ar_cuit,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            AL_TIN =
              T.let(
                :al_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            AM_TIN =
              T.let(
                :am_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            AW_TIN =
              T.let(
                :aw_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            AU_ABN =
              T.let(
                :au_abn,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            AU_ARN =
              T.let(
                :au_arn,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            EU_VAT =
              T.let(
                :eu_vat,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            AZ_TIN =
              T.let(
                :az_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            BS_TIN =
              T.let(
                :bs_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            BH_VAT =
              T.let(
                :bh_vat,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            BD_BIN =
              T.let(
                :bd_bin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            BB_TIN =
              T.let(
                :bb_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            BY_TIN =
              T.let(
                :by_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            BJ_IFU =
              T.let(
                :bj_ifu,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            BO_TIN =
              T.let(
                :bo_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            BA_TIN =
              T.let(
                :ba_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            BR_CNPJ =
              T.let(
                :br_cnpj,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            BR_CPF =
              T.let(
                :br_cpf,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            BG_UIC =
              T.let(
                :bg_uic,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            BF_IFU =
              T.let(
                :bf_ifu,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            KH_TIN =
              T.let(
                :kh_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CM_NIU =
              T.let(
                :cm_niu,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CA_BN =
              T.let(
                :ca_bn,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CA_GST_HST =
              T.let(
                :ca_gst_hst,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CA_PST_BC =
              T.let(
                :ca_pst_bc,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CA_PST_MB =
              T.let(
                :ca_pst_mb,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CA_PST_SK =
              T.let(
                :ca_pst_sk,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CA_QST =
              T.let(
                :ca_qst,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CV_NIF =
              T.let(
                :cv_nif,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CL_TIN =
              T.let(
                :cl_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CN_TIN =
              T.let(
                :cn_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CO_NIT =
              T.let(
                :co_nit,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CD_NIF =
              T.let(
                :cd_nif,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CR_TIN =
              T.let(
                :cr_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            HR_OIB =
              T.let(
                :hr_oib,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            DO_RCN =
              T.let(
                :do_rcn,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            EC_RUC =
              T.let(
                :ec_ruc,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            EG_TIN =
              T.let(
                :eg_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            SV_NIT =
              T.let(
                :sv_nit,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            ET_TIN =
              T.let(
                :et_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            EU_OSS_VAT =
              T.let(
                :eu_oss_vat,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            GE_VAT =
              T.let(
                :ge_vat,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            GH_TIN =
              T.let(
                :gh_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            DE_STN =
              T.let(
                :de_stn,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            GB_VAT =
              T.let(
                :gb_vat,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            GN_NIF =
              T.let(
                :gn_nif,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            HK_BR =
              T.let(
                :hk_br,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            HU_TIN =
              T.let(
                :hu_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            IS_VAT =
              T.let(
                :is_vat,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            IN_GST =
              T.let(
                :in_gst,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            ID_NPWP =
              T.let(
                :id_npwp,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            IL_VAT =
              T.let(
                :il_vat,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            JP_CN =
              T.let(
                :jp_cn,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            JP_RN =
              T.let(
                :jp_rn,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            JP_TRN =
              T.let(
                :jp_trn,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            KZ_BIN =
              T.let(
                :kz_bin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            KE_PIN =
              T.let(
                :ke_pin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            KG_TIN =
              T.let(
                :kg_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            LA_TIN =
              T.let(
                :la_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            LI_UID =
              T.let(
                :li_uid,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            LI_VAT =
              T.let(
                :li_vat,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            MY_FRP =
              T.let(
                :my_frp,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            MY_ITN =
              T.let(
                :my_itn,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            MY_SST =
              T.let(
                :my_sst,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            MR_NIF =
              T.let(
                :mr_nif,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            MX_RFC =
              T.let(
                :mx_rfc,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            MD_VAT =
              T.let(
                :md_vat,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            ME_PIB =
              T.let(
                :me_pib,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            MA_VAT =
              T.let(
                :ma_vat,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            NP_PAN =
              T.let(
                :np_pan,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            NZ_GST =
              T.let(
                :nz_gst,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            NG_TIN =
              T.let(
                :ng_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            MK_VAT =
              T.let(
                :mk_vat,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            NO_VAT =
              T.let(
                :no_vat,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            NO_VOEC =
              T.let(
                :no_voec,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            OM_VAT =
              T.let(
                :om_vat,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            PE_RUC =
              T.let(
                :pe_ruc,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            PH_TIN =
              T.let(
                :ph_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            PL_NIP =
              T.let(
                :pl_nip,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            RO_TIN =
              T.let(
                :ro_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            RU_INN =
              T.let(
                :ru_inn,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            RU_KPP =
              T.let(
                :ru_kpp,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            SA_VAT =
              T.let(
                :sa_vat,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            SN_NINEA =
              T.let(
                :sn_ninea,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            RS_PIB =
              T.let(
                :rs_pib,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            SG_GST =
              T.let(
                :sg_gst,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            SG_UEN =
              T.let(
                :sg_uen,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            SI_TIN =
              T.let(
                :si_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            ZA_VAT =
              T.let(
                :za_vat,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            KR_BRN =
              T.let(
                :kr_brn,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            ES_CIF =
              T.let(
                :es_cif,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CH_UID =
              T.let(
                :ch_uid,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            CH_VAT =
              T.let(
                :ch_vat,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            TW_VAT =
              T.let(
                :tw_vat,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            TJ_TIN =
              T.let(
                :tj_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            TZ_VAT =
              T.let(
                :tz_vat,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            TH_VAT =
              T.let(
                :th_vat,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            TR_TIN =
              T.let(
                :tr_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            UG_TIN =
              T.let(
                :ug_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            UA_VAT =
              T.let(
                :ua_vat,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            AE_TRN =
              T.let(
                :ae_trn,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            US_EIN =
              T.let(
                :us_ein,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            UY_RUC =
              T.let(
                :uy_ruc,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            UZ_TIN =
              T.let(
                :uz_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            UZ_VAT =
              T.let(
                :uz_vat,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            VE_RIF =
              T.let(
                :ve_rif,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            VN_TIN =
              T.let(
                :vn_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            ZM_TIN =
              T.let(
                :zm_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            ZW_TIN =
              T.let(
                :zw_tin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            SR_FIN =
              T.let(
                :sr_fin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )
            XI_VAT =
              T.let(
                :xi_vat,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::TaxIdentifier::TaxIDType::TaggedSymbol
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxRemittedBy
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WHOP =
            T.let(
              :whop,
              WhopSDK::AccountUpdatedWebhookEvent::Data::TaxRemittedBy::TaggedSymbol
            )
          SELF =
            T.let(
              :self,
              WhopSDK::AccountUpdatedWebhookEvent::Data::TaxRemittedBy::TaggedSymbol
            )
          NONE =
            T.let(
              :none,
              WhopSDK::AccountUpdatedWebhookEvent::Data::TaxRemittedBy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxRemittedBy::TaggedSymbol
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
              T.all(Symbol, WhopSDK::AccountUpdatedWebhookEvent::Data::TaxType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCLUSIVE =
            T.let(
              :inclusive,
              WhopSDK::AccountUpdatedWebhookEvent::Data::TaxType::TaggedSymbol
            )
          EXCLUSIVE =
            T.let(
              :exclusive,
              WhopSDK::AccountUpdatedWebhookEvent::Data::TaxType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AccountUpdatedWebhookEvent::Data::TaxType::TaggedSymbol
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService,
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
              WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::UploadStatus::TaggedSymbol
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
              WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::Visibility::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::MultipartUploadURL
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::UploadStatus::OrSymbol,
              url: T.nilable(String),
              visibility:
                WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::Visibility::OrSymbol,
              multipart_chunk_size: T.nilable(Integer),
              multipart_upload_id: T.nilable(String),
              multipart_upload_urls:
                T.nilable(
                  T::Array[
                    WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::MultipartUploadURL::OrHash
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::UploadStatus::TaggedSymbol,
                url: T.nilable(String),
                visibility:
                  WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::Visibility::TaggedSymbol,
                multipart_chunk_size: T.nilable(Integer),
                multipart_upload_id: T.nilable(String),
                multipart_upload_urls:
                  T.nilable(
                    T::Array[
                      WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::MultipartUploadURL
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::UploadStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::UploadStatus::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :processing,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::UploadStatus::TaggedSymbol
              )
            READY =
              T.let(
                :ready,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::UploadStatus::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::UploadStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::UploadStatus::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::Visibility
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PUBLIC =
              T.let(
                :public,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::Visibility::TaggedSymbol
              )
            PRIVATE =
              T.let(
                :private,
                WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::Visibility::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::Visibility::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::TermsOfService::MultipartUploadURL,
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::ThreeDSLevel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MANDATE_CHALLENGE =
            T.let(
              :mandate_challenge,
              WhopSDK::AccountUpdatedWebhookEvent::Data::ThreeDSLevel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AccountUpdatedWebhookEvent::Data::ThreeDSLevel::TaggedSymbol
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
                WhopSDK::AccountUpdatedWebhookEvent::Data::Wallet,
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
              WhopSDK::AccountUpdatedWebhookEvent::Data::Wallet::Network::TaggedSymbol
            )
          end
          attr_accessor :network

          # Account primary crypto wallet, or `null` if none has been provisioned.
          sig do
            params(
              id: String,
              address: String,
              network:
                WhopSDK::AccountUpdatedWebhookEvent::Data::Wallet::Network::OrSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Wallet::Network::TaggedSymbol
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
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Wallet::Network
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SOLANA =
              T.let(
                :solana,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Wallet::Network::TaggedSymbol
              )
            ETHEREUM =
              T.let(
                :ethereum,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Wallet::Network::TaggedSymbol
              )
            BITCOIN =
              T.let(
                :bitcoin,
                WhopSDK::AccountUpdatedWebhookEvent::Data::Wallet::Network::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AccountUpdatedWebhookEvent::Data::Wallet::Network::TaggedSymbol
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
