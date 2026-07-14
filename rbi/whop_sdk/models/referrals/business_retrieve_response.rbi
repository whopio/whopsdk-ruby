# typed: strong

module WhopSDK
  module Models
    module Referrals
      class BusinessRetrieveResponse < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::Referrals::BusinessRetrieveResponse,
              WhopSDK::Internal::AnyHash
            )
          end

        # Business referral ID.
        sig { returns(String) }
        attr_accessor :id

        # Referred account.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account
            )
          )
        end
        attr_reader :account

        sig do
          params(
            account:
              T.nilable(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::OrHash
              )
          ).void
        end
        attr_writer :account

        # When the business referral was created.
        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(
            WhopSDK::Models::Referrals::BusinessRetrieveResponse::EarningsUsd
          )
        end
        attr_reader :earnings_usd

        sig do
          params(
            earnings_usd:
              WhopSDK::Models::Referrals::BusinessRetrieveResponse::EarningsUsd::OrHash
          ).void
        end
        attr_writer :earnings_usd

        # The partner who referred the business owner onto Whop (first tier). Null if
        # there is no active first-tier partner.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::Referrals::BusinessRetrieveResponse::FirstTierPartner
            )
          )
        end
        attr_reader :first_tier_partner

        sig do
          params(
            first_tier_partner:
              T.nilable(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::FirstTierPartner::OrHash
              )
          ).void
        end
        attr_writer :first_tier_partner

        # Which tier the caller earns on for this business: `first` (they referred the
        # owner) or `second` (they referred the first-tier partner).
        sig do
          returns(
            WhopSDK::Models::Referrals::BusinessRetrieveResponse::MyPartnerTier::TaggedSymbol
          )
        end
        attr_accessor :my_partner_tier

        sig do
          returns(
            WhopSDK::Models::Referrals::BusinessRetrieveResponse::Object::TaggedSymbol
          )
        end
        attr_accessor :object

        # The owner of the referred business.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::Referrals::BusinessRetrieveResponse::Owner
            )
          )
        end
        attr_reader :owner

        sig do
          params(
            owner:
              T.nilable(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Owner::OrHash
              )
          ).void
        end
        attr_writer :owner

        # Referrer's share of Whop gross profit, as a fraction (0.3 = 30%). Second-tier
        # referrals earn a flat 0.1.
        sig { returns(Float) }
        attr_accessor :payout_percentage

        # When the referral expires.
        sig { returns(T.nilable(Time)) }
        attr_accessor :referral_expires_at

        # When the referral became active.
        sig { returns(T.nilable(Time)) }
        attr_accessor :referral_started_at

        # Current referral status.
        sig do
          returns(
            WhopSDK::Models::Referrals::BusinessRetrieveResponse::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig do
          returns(
            WhopSDK::Models::Referrals::BusinessRetrieveResponse::VolumeUsd
          )
        end
        attr_reader :volume_usd

        sig do
          params(
            volume_usd:
              WhopSDK::Models::Referrals::BusinessRetrieveResponse::VolumeUsd::OrHash
          ).void
        end
        attr_writer :volume_usd

        sig do
          params(
            id: String,
            account:
              T.nilable(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::OrHash
              ),
            created_at: Time,
            earnings_usd:
              WhopSDK::Models::Referrals::BusinessRetrieveResponse::EarningsUsd::OrHash,
            first_tier_partner:
              T.nilable(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::FirstTierPartner::OrHash
              ),
            my_partner_tier:
              WhopSDK::Models::Referrals::BusinessRetrieveResponse::MyPartnerTier::OrSymbol,
            object:
              WhopSDK::Models::Referrals::BusinessRetrieveResponse::Object::OrSymbol,
            owner:
              T.nilable(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Owner::OrHash
              ),
            payout_percentage: Float,
            referral_expires_at: T.nilable(Time),
            referral_started_at: T.nilable(Time),
            status:
              WhopSDK::Models::Referrals::BusinessRetrieveResponse::Status::OrSymbol,
            volume_usd:
              WhopSDK::Models::Referrals::BusinessRetrieveResponse::VolumeUsd::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Business referral ID.
          id:,
          # Referred account.
          account:,
          # When the business referral was created.
          created_at:,
          earnings_usd:,
          # The partner who referred the business owner onto Whop (first tier). Null if
          # there is no active first-tier partner.
          first_tier_partner:,
          # Which tier the caller earns on for this business: `first` (they referred the
          # owner) or `second` (they referred the first-tier partner).
          my_partner_tier:,
          object:,
          # The owner of the referred business.
          owner:,
          # Referrer's share of Whop gross profit, as a fraction (0.3 = 30%). Second-tier
          # referrals earn a flat 0.1.
          payout_percentage:,
          # When the referral expires.
          referral_expires_at:,
          # When the referral became active.
          referral_started_at:,
          # Current referral status.
          status:,
          volume_usd:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              account:
                T.nilable(
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account
                ),
              created_at: Time,
              earnings_usd:
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::EarningsUsd,
              first_tier_partner:
                T.nilable(
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::FirstTierPartner
                ),
              my_partner_tier:
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::MyPartnerTier::TaggedSymbol,
              object:
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Object::TaggedSymbol,
              owner:
                T.nilable(
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Owner
                ),
              payout_percentage: Float,
              referral_expires_at: T.nilable(Time),
              referral_started_at: T.nilable(Time),
              status:
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Status::TaggedSymbol,
              volume_usd:
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::VolumeUsd
            }
          )
        end
        def to_hash
        end

        class Account < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account,
                WhopSDK::Internal::AnyHash
              )
            end

          # Referred account ID.
          sig { returns(String) }
          attr_accessor :id

          sig do
            returns(
              T.nilable(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities
              )
            )
          end
          attr_reader :capabilities

          sig do
            params(
              capabilities:
                T.nilable(
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::OrHash
                )
            ).void
          end
          attr_writer :capabilities

          # Referred account logo URL.
          sig { returns(T.nilable(String)) }
          attr_accessor :logo_url

          # Optional actions that unlock capabilities or grow the referred account.
          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction
                ]
              )
            )
          end
          attr_accessor :recommended_actions

          # Actions the referred account owner must take to unblock capabilities.
          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction
                ]
              )
            )
          end
          attr_accessor :required_actions

          # Referred account route.
          sig { returns(String) }
          attr_accessor :route

          # Referred account display name.
          sig { returns(String) }
          attr_accessor :title

          # Referred account.
          sig do
            params(
              id: String,
              capabilities:
                T.nilable(
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::OrHash
                ),
              logo_url: T.nilable(String),
              recommended_actions:
                T.nilable(
                  T::Array[
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::OrHash
                  ]
                ),
              required_actions:
                T.nilable(
                  T::Array[
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction::OrHash
                  ]
                ),
              route: String,
              title: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Referred account ID.
            id:,
            capabilities:,
            # Referred account logo URL.
            logo_url:,
            # Optional actions that unlock capabilities or grow the referred account.
            recommended_actions:,
            # Actions the referred account owner must take to unblock capabilities.
            required_actions:,
            # Referred account route.
            route:,
            # Referred account display name.
            title:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                capabilities:
                  T.nilable(
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities
                  ),
                logo_url: T.nilable(String),
                recommended_actions:
                  T.nilable(
                    T::Array[
                      WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction
                    ]
                  ),
                required_actions:
                  T.nilable(
                    T::Array[
                      WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction
                    ]
                  ),
                route: String,
                title: String
              }
            )
          end
          def to_hash
          end

          class Capabilities < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Bank payins: debits, transfers, and local bank rails
            sig do
              returns(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptBankPayments::TaggedSymbol
              )
            end
            attr_accessor :accept_bank_payments

            # Buy-now-pay-later payins; requires approval
            sig do
              returns(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptBnplPayments::TaggedSymbol
              )
            end
            attr_accessor :accept_bnpl_payments

            # Card payins, including Apple Pay and Google Pay
            sig do
              returns(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptCardPayments::TaggedSymbol
              )
            end
            attr_accessor :accept_card_payments

            # Deposits by bank wire or ACH to the account's virtual bank account
            sig do
              returns(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::BankDeposit::TaggedSymbol
              )
            end
            attr_accessor :bank_deposit

            # Balance top-ups by charging a stored payment method
            sig do
              returns(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CardDeposit::TaggedSymbol
              )
            end
            attr_accessor :card_deposit

            # Issuing Whop cards; requires card application approval
            sig do
              returns(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CardIssuing::TaggedSymbol
              )
            end
            attr_accessor :card_issuing

            # On-chain deposits to the account's crypto wallet
            sig do
              returns(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CryptoDeposit::TaggedSymbol
              )
            end
            attr_accessor :crypto_deposit

            # On-chain payouts to a crypto wallet
            sig do
              returns(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CryptoPayout::TaggedSymbol
              )
            end
            attr_accessor :crypto_payout

            # Instant payouts to an eligible payout destination
            sig do
              returns(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::InstantPayout::TaggedSymbol
              )
            end
            attr_accessor :instant_payout

            # Standard payouts to an external payout destination
            sig do
              returns(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::StandardPayout::TaggedSymbol
              )
            end
            attr_accessor :standard_payout

            # Transfers to other accounts
            sig do
              returns(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::Transfer::TaggedSymbol
              )
            end
            attr_accessor :transfer

            sig do
              params(
                accept_bank_payments:
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptBankPayments::OrSymbol,
                accept_bnpl_payments:
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptBnplPayments::OrSymbol,
                accept_card_payments:
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptCardPayments::OrSymbol,
                bank_deposit:
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::BankDeposit::OrSymbol,
                card_deposit:
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CardDeposit::OrSymbol,
                card_issuing:
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CardIssuing::OrSymbol,
                crypto_deposit:
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CryptoDeposit::OrSymbol,
                crypto_payout:
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CryptoPayout::OrSymbol,
                instant_payout:
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::InstantPayout::OrSymbol,
                standard_payout:
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::StandardPayout::OrSymbol,
                transfer:
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::Transfer::OrSymbol
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
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptBankPayments::TaggedSymbol,
                  accept_bnpl_payments:
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptBnplPayments::TaggedSymbol,
                  accept_card_payments:
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptCardPayments::TaggedSymbol,
                  bank_deposit:
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::BankDeposit::TaggedSymbol,
                  card_deposit:
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CardDeposit::TaggedSymbol,
                  card_issuing:
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CardIssuing::TaggedSymbol,
                  crypto_deposit:
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CryptoDeposit::TaggedSymbol,
                  crypto_payout:
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CryptoPayout::TaggedSymbol,
                  instant_payout:
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::InstantPayout::TaggedSymbol,
                  standard_payout:
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::StandardPayout::TaggedSymbol,
                  transfer:
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::Transfer::TaggedSymbol
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
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptBankPayments
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACTIVE =
                T.let(
                  :active,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptBankPayments::TaggedSymbol
                )
              INACTIVE =
                T.let(
                  :inactive,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptBankPayments::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptBankPayments::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptBankPayments::TaggedSymbol
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
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptBnplPayments
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACTIVE =
                T.let(
                  :active,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptBnplPayments::TaggedSymbol
                )
              INACTIVE =
                T.let(
                  :inactive,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptBnplPayments::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptBnplPayments::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptBnplPayments::TaggedSymbol
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
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptCardPayments
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACTIVE =
                T.let(
                  :active,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptCardPayments::TaggedSymbol
                )
              INACTIVE =
                T.let(
                  :inactive,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptCardPayments::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptCardPayments::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptCardPayments::TaggedSymbol
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
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::BankDeposit
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACTIVE =
                T.let(
                  :active,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::BankDeposit::TaggedSymbol
                )
              INACTIVE =
                T.let(
                  :inactive,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::BankDeposit::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::BankDeposit::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::BankDeposit::TaggedSymbol
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
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CardDeposit
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACTIVE =
                T.let(
                  :active,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CardDeposit::TaggedSymbol
                )
              INACTIVE =
                T.let(
                  :inactive,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CardDeposit::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CardDeposit::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CardDeposit::TaggedSymbol
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
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CardIssuing
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACTIVE =
                T.let(
                  :active,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CardIssuing::TaggedSymbol
                )
              INACTIVE =
                T.let(
                  :inactive,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CardIssuing::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CardIssuing::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CardIssuing::TaggedSymbol
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
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CryptoDeposit
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACTIVE =
                T.let(
                  :active,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CryptoDeposit::TaggedSymbol
                )
              INACTIVE =
                T.let(
                  :inactive,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CryptoDeposit::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CryptoDeposit::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CryptoDeposit::TaggedSymbol
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
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CryptoPayout
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACTIVE =
                T.let(
                  :active,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CryptoPayout::TaggedSymbol
                )
              INACTIVE =
                T.let(
                  :inactive,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CryptoPayout::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CryptoPayout::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CryptoPayout::TaggedSymbol
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
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::InstantPayout
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACTIVE =
                T.let(
                  :active,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::InstantPayout::TaggedSymbol
                )
              INACTIVE =
                T.let(
                  :inactive,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::InstantPayout::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::InstantPayout::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::InstantPayout::TaggedSymbol
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
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::StandardPayout
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACTIVE =
                T.let(
                  :active,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::StandardPayout::TaggedSymbol
                )
              INACTIVE =
                T.let(
                  :inactive,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::StandardPayout::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::StandardPayout::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::StandardPayout::TaggedSymbol
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
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::Transfer
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACTIVE =
                T.let(
                  :active,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::Transfer::TaggedSymbol
                )
              INACTIVE =
                T.let(
                  :inactive,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::Transfer::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::Transfer::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::Transfer::TaggedSymbol
                  ]
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
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The recommendation; new values may be added, so handle unknown actions
            # gracefully
            sig do
              returns(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Action::TaggedSymbol
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

            # Estimated revenue impact from 0-100, comparable across accounts, or `null` when
            # not ranked
            sig { returns(T.nilable(Integer)) }
            attr_accessor :impact_score

            # Why this action was recommended for this account, or `null`
            sig { returns(T.nilable(String)) }
            attr_accessor :reasoning

            # Always optional — never blocking
            sig do
              returns(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            # Headline for the recommendation
            sig { returns(String) }
            attr_accessor :title

            sig do
              params(
                action:
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Action::OrSymbol,
                blocked_capabilities: T::Array[String],
                cta: String,
                cta_label: String,
                description: String,
                icon_url: T.nilable(String),
                impact_score: T.nilable(Integer),
                reasoning: T.nilable(String),
                status:
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Status::OrSymbol,
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
                  action:
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Action::TaggedSymbol,
                  blocked_capabilities: T::Array[String],
                  cta: String,
                  cta_label: String,
                  description: String,
                  icon_url: T.nilable(String),
                  impact_score: T.nilable(Integer),
                  reasoning: T.nilable(String),
                  status:
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Status::TaggedSymbol,
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
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Action
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              THEME_BUSINESS =
                T.let(
                  :theme_business,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Action::TaggedSymbol
                )
              CREATE_PRODUCT =
                T.let(
                  :create_product,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Action::TaggedSymbol
                )
              CREATE_PLAN =
                T.let(
                  :create_plan,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Action::TaggedSymbol
                )
              VERIFY_IDENTITY =
                T.let(
                  :verify_identity,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Action::TaggedSymbol
                )
              CONNECT_AFFILIATE_PROGRAM =
                T.let(
                  :connect_affiliate_program,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Action::TaggedSymbol
                )
              CREATE_PROMOTION =
                T.let(
                  :create_promotion,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Action::TaggedSymbol
                )
              SETUP_TRACKING_PIXEL =
                T.let(
                  :setup_tracking_pixel,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Action::TaggedSymbol
                )
              MIGRATE_FROM_STRIPE =
                T.let(
                  :migrate_from_stripe,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Action::TaggedSymbol
                )
              ACCEPT_FIRST_PAYMENT =
                T.let(
                  :accept_first_payment,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Action::TaggedSymbol
                )
              LAUNCH_FIRST_AD =
                T.let(
                  :launch_first_ad,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Action::TaggedSymbol
                )
              INVITE_TEAM_MEMBER =
                T.let(
                  :invite_team_member,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Action::TaggedSymbol
                )
              ENABLE_TAX_COLLECTION =
                T.let(
                  :enable_tax_collection,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Action::TaggedSymbol
                )
              CREATE_CARD =
                T.let(
                  :create_card,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Action::TaggedSymbol
                )
              JOIN_WHOP_UNIVERSITY =
                T.let(
                  :join_whop_university,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Action::TaggedSymbol
                )
              APPLY_FOR_FINANCING =
                T.let(
                  :apply_for_financing,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Action::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Action::TaggedSymbol
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
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              OPTIONAL =
                T.let(
                  :optional,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Status::TaggedSymbol
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
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction,
                  WhopSDK::Internal::AnyHash
                )
              end

            # What the holder must do; new values may be added, so handle unknown actions
            # gracefully
            sig do
              returns(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction::Action::TaggedSymbol
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
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            # Headline for the action
            sig { returns(String) }
            attr_accessor :title

            sig do
              params(
                action:
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction::Action::OrSymbol,
                blocked_capabilities: T::Array[String],
                cta: T.nilable(String),
                cta_label: String,
                description: String,
                icon_url: T.nilable(String),
                status:
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction::Status::OrSymbol,
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
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction::Action::TaggedSymbol,
                  blocked_capabilities: T::Array[String],
                  cta: T.nilable(String),
                  cta_label: String,
                  description: String,
                  icon_url: T.nilable(String),
                  status:
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction::Status::TaggedSymbol,
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
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction::Action
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DEPOSIT_FUNDS =
                T.let(
                  :deposit_funds,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction::Action::TaggedSymbol
                )
              SUBMIT_INFORMATION_REQUEST =
                T.let(
                  :submit_information_request,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction::Action::TaggedSymbol
                )
              VERIFY_IDENTITY =
                T.let(
                  :verify_identity,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction::Action::TaggedSymbol
                )
              CONNECT_FULFILLMENT_TRACKER =
                T.let(
                  :connect_fulfillment_tracker,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction::Action::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction::Action::TaggedSymbol
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
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              REQUIRED =
                T.let(
                  :required,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction::Status::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction::Status::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class EarningsUsd < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::EarningsUsd,
                WhopSDK::Internal::AnyHash
              )
            end

          # Commission already paid out, in USD.
          sig { returns(String) }
          attr_accessor :completed

          # Commission scheduled but not yet paid, in USD.
          sig { returns(String) }
          attr_accessor :pending

          # Pending + completed commission, in USD.
          sig { returns(String) }
          attr_accessor :total

          sig do
            params(completed: String, pending: String, total: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Commission already paid out, in USD.
            completed:,
            # Commission scheduled but not yet paid, in USD.
            pending:,
            # Pending + completed commission, in USD.
            total:
          )
          end

          sig do
            override.returns(
              { completed: String, pending: String, total: String }
            )
          end
          def to_hash
          end
        end

        class FirstTierPartner < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::FirstTierPartner,
                WhopSDK::Internal::AnyHash
              )
            end

          # User ID, prefixed `user_`.
          sig { returns(String) }
          attr_accessor :id

          # The user's display name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The user's profile picture.
          sig do
            returns(
              WhopSDK::Models::Referrals::BusinessRetrieveResponse::FirstTierPartner::ProfilePicture
            )
          end
          attr_reader :profile_picture

          sig do
            params(
              profile_picture:
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::FirstTierPartner::ProfilePicture::OrHash
            ).void
          end
          attr_writer :profile_picture

          # The user's unique username.
          sig { returns(String) }
          attr_accessor :username

          # The partner who referred the business owner onto Whop (first tier). Null if
          # there is no active first-tier partner.
          sig do
            params(
              id: String,
              name: T.nilable(String),
              profile_picture:
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::FirstTierPartner::ProfilePicture::OrHash,
              username: String
            ).returns(T.attached_class)
          end
          def self.new(
            # User ID, prefixed `user_`.
            id:,
            # The user's display name.
            name:,
            # The user's profile picture.
            profile_picture:,
            # The user's unique username.
            username:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                name: T.nilable(String),
                profile_picture:
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::FirstTierPartner::ProfilePicture,
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
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::FirstTierPartner::ProfilePicture,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The user's profile picture URL.
            sig { returns(String) }
            attr_accessor :url

            # The user's profile picture.
            sig { params(url: String).returns(T.attached_class) }
            def self.new(
              # The user's profile picture URL.
              url:
            )
            end

            sig { override.returns({ url: String }) }
            def to_hash
            end
          end
        end

        # Which tier the caller earns on for this business: `first` (they referred the
        # owner) or `second` (they referred the first-tier partner).
        module MyPartnerTier
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::MyPartnerTier
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FIRST =
            T.let(
              :first,
              WhopSDK::Models::Referrals::BusinessRetrieveResponse::MyPartnerTier::TaggedSymbol
            )
          SECOND =
            T.let(
              :second,
              WhopSDK::Models::Referrals::BusinessRetrieveResponse::MyPartnerTier::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::MyPartnerTier::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Object
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Object
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BUSINESS_REFERRAL =
            T.let(
              :business_referral,
              WhopSDK::Models::Referrals::BusinessRetrieveResponse::Object::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Object::TaggedSymbol
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
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Owner,
                WhopSDK::Internal::AnyHash
              )
            end

          # User ID, prefixed `user_`.
          sig { returns(String) }
          attr_accessor :id

          # The user's display name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The user's profile picture.
          sig do
            returns(
              WhopSDK::Models::Referrals::BusinessRetrieveResponse::Owner::ProfilePicture
            )
          end
          attr_reader :profile_picture

          sig do
            params(
              profile_picture:
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Owner::ProfilePicture::OrHash
            ).void
          end
          attr_writer :profile_picture

          # The user's unique username.
          sig { returns(String) }
          attr_accessor :username

          # The owner of the referred business.
          sig do
            params(
              id: String,
              name: T.nilable(String),
              profile_picture:
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Owner::ProfilePicture::OrHash,
              username: String
            ).returns(T.attached_class)
          end
          def self.new(
            # User ID, prefixed `user_`.
            id:,
            # The user's display name.
            name:,
            # The user's profile picture.
            profile_picture:,
            # The user's unique username.
            username:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                name: T.nilable(String),
                profile_picture:
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Owner::ProfilePicture,
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
                  WhopSDK::Models::Referrals::BusinessRetrieveResponse::Owner::ProfilePicture,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The user's profile picture URL.
            sig { returns(String) }
            attr_accessor :url

            # The user's profile picture.
            sig { params(url: String).returns(T.attached_class) }
            def self.new(
              # The user's profile picture URL.
              url:
            )
            end

            sig { override.returns({ url: String }) }
            def to_hash
            end
          end
        end

        # Current referral status.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              WhopSDK::Models::Referrals::BusinessRetrieveResponse::Status::TaggedSymbol
            )
          REMOVED =
            T.let(
              :removed,
              WhopSDK::Models::Referrals::BusinessRetrieveResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class VolumeUsd < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::Referrals::BusinessRetrieveResponse::VolumeUsd,
                WhopSDK::Internal::AnyHash
              )
            end

          # Credited GMV (awaiting_settlement + settled); excludes canceled and reversed, in
          # USD.
          sig { returns(String) }
          attr_accessor :attributed

          # GMV awaiting settlement (commission not yet computed), in USD.
          sig { returns(String) }
          attr_accessor :awaiting_settlement

          # GMV of pending + completed payments, in USD.
          sig { returns(String) }
          attr_accessor :settled

          sig do
            params(
              attributed: String,
              awaiting_settlement: String,
              settled: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Credited GMV (awaiting_settlement + settled); excludes canceled and reversed, in
            # USD.
            attributed:,
            # GMV awaiting settlement (commission not yet computed), in USD.
            awaiting_settlement:,
            # GMV of pending + completed payments, in USD.
            settled:
          )
          end

          sig do
            override.returns(
              {
                attributed: String,
                awaiting_settlement: String,
                settled: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
