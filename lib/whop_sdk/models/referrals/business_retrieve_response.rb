# frozen_string_literal: true

module WhopSDK
  module Models
    module Referrals
      # @see WhopSDK::Resources::Referrals::Businesses#retrieve
      class BusinessRetrieveResponse < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Business referral ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute account
        #   Referred account.
        #
        #   @return [WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account, nil]
        required :account, -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account }, nil?: true

        # @!attribute created_at
        #   When the business referral was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute earnings_usd
        #
        #   @return [WhopSDK::Models::Referrals::BusinessRetrieveResponse::EarningsUsd]
        required :earnings_usd, -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::EarningsUsd }

        # @!attribute first_tier_partner
        #   The partner who referred the business owner onto Whop (first tier). Null if
        #   there is no active first-tier partner.
        #
        #   @return [WhopSDK::Models::Referrals::BusinessRetrieveResponse::FirstTierPartner, nil]
        required :first_tier_partner,
                 -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::FirstTierPartner },
                 nil?: true

        # @!attribute my_partner_tier
        #   Which tier the caller earns on for this business: `first` (they referred the
        #   owner) or `second` (they referred the first-tier partner).
        #
        #   @return [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::MyPartnerTier]
        required :my_partner_tier,
                 enum: -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::MyPartnerTier }

        # @!attribute object
        #
        #   @return [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Object]
        required :object, enum: -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::Object }

        # @!attribute owner
        #   The owner of the referred business.
        #
        #   @return [WhopSDK::Models::Referrals::BusinessRetrieveResponse::Owner, nil]
        required :owner, -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::Owner }, nil?: true

        # @!attribute payout_percentage
        #   Referrer's share of Whop gross profit, as a fraction (0.3 = 30%). Second-tier
        #   referrals earn a flat 0.1.
        #
        #   @return [Float]
        required :payout_percentage, Float

        # @!attribute referral_expires_at
        #   When the referral expires.
        #
        #   @return [Time, nil]
        required :referral_expires_at, Time, nil?: true

        # @!attribute referral_started_at
        #   When the referral became active.
        #
        #   @return [Time, nil]
        required :referral_started_at, Time, nil?: true

        # @!attribute status
        #   Current referral status.
        #
        #   @return [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Status]
        required :status, enum: -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::Status }

        # @!attribute volume_usd
        #
        #   @return [WhopSDK::Models::Referrals::BusinessRetrieveResponse::VolumeUsd]
        required :volume_usd, -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::VolumeUsd }

        # @!method initialize(id:, account:, created_at:, earnings_usd:, first_tier_partner:, my_partner_tier:, object:, owner:, payout_percentage:, referral_expires_at:, referral_started_at:, status:, volume_usd:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Referrals::BusinessRetrieveResponse} for more details.
        #
        #   @param id [String] Business referral ID.
        #
        #   @param account [WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account, nil] Referred account.
        #
        #   @param created_at [Time] When the business referral was created.
        #
        #   @param earnings_usd [WhopSDK::Models::Referrals::BusinessRetrieveResponse::EarningsUsd]
        #
        #   @param first_tier_partner [WhopSDK::Models::Referrals::BusinessRetrieveResponse::FirstTierPartner, nil] The partner who referred the business owner onto Whop (first tier). Null if ther
        #
        #   @param my_partner_tier [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::MyPartnerTier] Which tier the caller earns on for this business: `first` (they referred the own
        #
        #   @param object [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Object]
        #
        #   @param owner [WhopSDK::Models::Referrals::BusinessRetrieveResponse::Owner, nil] The owner of the referred business.
        #
        #   @param payout_percentage [Float] Referrer's share of Whop gross profit, as a fraction (0.3 = 30%). Second-tier re
        #
        #   @param referral_expires_at [Time, nil] When the referral expires.
        #
        #   @param referral_started_at [Time, nil] When the referral became active.
        #
        #   @param status [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Status] Current referral status.
        #
        #   @param volume_usd [WhopSDK::Models::Referrals::BusinessRetrieveResponse::VolumeUsd]

        # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse#account
        class Account < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   Referred account ID.
          #
          #   @return [String]
          required :id, String

          # @!attribute capabilities
          #
          #   @return [WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities, nil]
          required :capabilities,
                   -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities },
                   nil?: true

          # @!attribute logo_url
          #   Referred account logo URL.
          #
          #   @return [String, nil]
          required :logo_url, String, nil?: true

          # @!attribute recommended_actions
          #   Optional actions that unlock capabilities or grow the referred account.
          #
          #   @return [Array<WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction>, nil]
          required :recommended_actions,
                   -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction] },
                   nil?: true

          # @!attribute required_actions
          #   Actions the referred account owner must take to unblock capabilities.
          #
          #   @return [Array<WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction>, nil]
          required :required_actions,
                   -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction] },
                   nil?: true

          # @!attribute route
          #   Referred account route.
          #
          #   @return [String]
          required :route, String

          # @!attribute title
          #   Referred account display name.
          #
          #   @return [String]
          required :title, String

          # @!method initialize(id:, capabilities:, logo_url:, recommended_actions:, required_actions:, route:, title:)
          #   Referred account.
          #
          #   @param id [String] Referred account ID.
          #
          #   @param capabilities [WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities, nil]
          #
          #   @param logo_url [String, nil] Referred account logo URL.
          #
          #   @param recommended_actions [Array<WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction>, nil] Optional actions that unlock capabilities or grow the referred account.
          #
          #   @param required_actions [Array<WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction>, nil] Actions the referred account owner must take to unblock capabilities.
          #
          #   @param route [String] Referred account route.
          #
          #   @param title [String] Referred account display name.

          # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account#capabilities
          class Capabilities < WhopSDK::Internal::Type::BaseModel
            # @!attribute accept_bank_payments
            #   Bank payins: debits, transfers, and local bank rails
            #
            #   @return [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptBankPayments]
            required :accept_bank_payments,
                     enum: -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptBankPayments }

            # @!attribute accept_bnpl_payments
            #   Buy-now-pay-later payins; requires approval
            #
            #   @return [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptBnplPayments]
            required :accept_bnpl_payments,
                     enum: -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptBnplPayments }

            # @!attribute accept_card_payments
            #   Card payins, including Apple Pay and Google Pay
            #
            #   @return [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptCardPayments]
            required :accept_card_payments,
                     enum: -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptCardPayments }

            # @!attribute bank_deposit
            #   Deposits by bank wire or ACH to the account's virtual bank account
            #
            #   @return [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::BankDeposit]
            required :bank_deposit,
                     enum: -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::BankDeposit }

            # @!attribute card_deposit
            #   Balance top-ups by charging a stored payment method
            #
            #   @return [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CardDeposit]
            required :card_deposit,
                     enum: -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CardDeposit }

            # @!attribute card_issuing
            #   Issuing Whop cards; requires card application approval
            #
            #   @return [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CardIssuing]
            required :card_issuing,
                     enum: -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CardIssuing }

            # @!attribute crypto_deposit
            #   On-chain deposits to the account's crypto wallet
            #
            #   @return [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CryptoDeposit]
            required :crypto_deposit,
                     enum: -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CryptoDeposit }

            # @!attribute crypto_payout
            #   On-chain payouts to a crypto wallet
            #
            #   @return [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CryptoPayout]
            required :crypto_payout,
                     enum: -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CryptoPayout }

            # @!attribute instant_payout
            #   Instant payouts to an eligible payout destination
            #
            #   @return [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::InstantPayout]
            required :instant_payout,
                     enum: -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::InstantPayout }

            # @!attribute standard_payout
            #   Standard payouts to an external payout destination
            #
            #   @return [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::StandardPayout]
            required :standard_payout,
                     enum: -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::StandardPayout }

            # @!attribute transfer
            #   Transfers to other accounts
            #
            #   @return [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::Transfer]
            required :transfer,
                     enum: -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::Transfer }

            # @!method initialize(accept_bank_payments:, accept_bnpl_payments:, accept_card_payments:, bank_deposit:, card_deposit:, card_issuing:, crypto_deposit:, crypto_payout:, instant_payout:, standard_payout:, transfer:)
            #   @param accept_bank_payments [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptBankPayments] Bank payins: debits, transfers, and local bank rails
            #
            #   @param accept_bnpl_payments [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptBnplPayments] Buy-now-pay-later payins; requires approval
            #
            #   @param accept_card_payments [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::AcceptCardPayments] Card payins, including Apple Pay and Google Pay
            #
            #   @param bank_deposit [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::BankDeposit] Deposits by bank wire or ACH to the account's virtual bank account
            #
            #   @param card_deposit [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CardDeposit] Balance top-ups by charging a stored payment method
            #
            #   @param card_issuing [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CardIssuing] Issuing Whop cards; requires card application approval
            #
            #   @param crypto_deposit [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CryptoDeposit] On-chain deposits to the account's crypto wallet
            #
            #   @param crypto_payout [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::CryptoPayout] On-chain payouts to a crypto wallet
            #
            #   @param instant_payout [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::InstantPayout] Instant payouts to an eligible payout destination
            #
            #   @param standard_payout [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::StandardPayout] Standard payouts to an external payout destination
            #
            #   @param transfer [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities::Transfer] Transfers to other accounts

            # Bank payins: debits, transfers, and local bank rails
            #
            # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities#accept_bank_payments
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
            # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities#accept_bnpl_payments
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
            # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities#accept_card_payments
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
            # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities#bank_deposit
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
            # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities#card_deposit
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
            # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities#card_issuing
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
            # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities#crypto_deposit
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
            # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities#crypto_payout
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
            # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities#instant_payout
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
            # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities#standard_payout
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
            # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::Capabilities#transfer
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
            #   @return [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Action]
            required :action,
                     enum: -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Action }

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
            #   @return [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Status]
            required :status,
                     enum: -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Status }

            # @!attribute title
            #   Headline for the recommendation
            #
            #   @return [String]
            required :title, String

            # @!method initialize(action:, blocked_capabilities:, cta:, cta_label:, description:, icon_url:, impact_score:, reasoning:, status:, title:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction}
            #   for more details.
            #
            #   @param action [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Action] The recommendation; new values may be added, so handle unknown actions gracefull
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
            #   @param status [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction::Status] Always optional — never blocking
            #
            #   @param title [String] Headline for the recommendation

            # The recommendation; new values may be added, so handle unknown actions
            # gracefully
            #
            # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction#action
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
            # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RecommendedAction#status
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
            #   @return [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction::Action]
            required :action,
                     enum: -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction::Action }

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
            #   @return [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction::Status]
            required :status,
                     enum: -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction::Status }

            # @!attribute title
            #   Headline for the action
            #
            #   @return [String]
            required :title, String

            # @!method initialize(action:, blocked_capabilities:, cta:, cta_label:, description:, icon_url:, status:, title:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction}
            #   for more details.
            #
            #   @param action [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction::Action] What the holder must do; new values may be added, so handle unknown actions grac
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
            #   @param status [Symbol, WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction::Status] required (act now) or pending (under review)
            #
            #   @param title [String] Headline for the action

            # What the holder must do; new values may be added, so handle unknown actions
            # gracefully
            #
            # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction#action
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
            # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account::RequiredAction#status
            module Status
              extend WhopSDK::Internal::Type::Enum

              REQUIRED = :required
              PENDING = :pending

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse#earnings_usd
        class EarningsUsd < WhopSDK::Internal::Type::BaseModel
          # @!attribute completed
          #   Commission already paid out, in USD.
          #
          #   @return [String]
          required :completed, String

          # @!attribute pending
          #   Commission scheduled but not yet paid, in USD.
          #
          #   @return [String]
          required :pending, String

          # @!attribute total
          #   Pending + completed commission, in USD.
          #
          #   @return [String]
          required :total, String

          # @!method initialize(completed:, pending:, total:)
          #   @param completed [String] Commission already paid out, in USD.
          #
          #   @param pending [String] Commission scheduled but not yet paid, in USD.
          #
          #   @param total [String] Pending + completed commission, in USD.
        end

        # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse#first_tier_partner
        class FirstTierPartner < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   User ID, prefixed `user_`.
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #   The user's display name.
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute profile_picture
          #   The user's profile picture.
          #
          #   @return [WhopSDK::Models::Referrals::BusinessRetrieveResponse::FirstTierPartner::ProfilePicture]
          required :profile_picture,
                   -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::FirstTierPartner::ProfilePicture }

          # @!attribute username
          #   The user's unique username.
          #
          #   @return [String]
          required :username, String

          # @!method initialize(id:, name:, profile_picture:, username:)
          #   The partner who referred the business owner onto Whop (first tier). Null if
          #   there is no active first-tier partner.
          #
          #   @param id [String] User ID, prefixed `user_`.
          #
          #   @param name [String, nil] The user's display name.
          #
          #   @param profile_picture [WhopSDK::Models::Referrals::BusinessRetrieveResponse::FirstTierPartner::ProfilePicture] The user's profile picture.
          #
          #   @param username [String] The user's unique username.

          # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse::FirstTierPartner#profile_picture
          class ProfilePicture < WhopSDK::Internal::Type::BaseModel
            # @!attribute url
            #   The user's profile picture URL.
            #
            #   @return [String]
            required :url, String

            # @!method initialize(url:)
            #   The user's profile picture.
            #
            #   @param url [String] The user's profile picture URL.
          end
        end

        # Which tier the caller earns on for this business: `first` (they referred the
        # owner) or `second` (they referred the first-tier partner).
        #
        # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse#my_partner_tier
        module MyPartnerTier
          extend WhopSDK::Internal::Type::Enum

          FIRST = :first
          SECOND = :second

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse#object
        module Object
          extend WhopSDK::Internal::Type::Enum

          BUSINESS_REFERRAL = :business_referral

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse#owner
        class Owner < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   User ID, prefixed `user_`.
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #   The user's display name.
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute profile_picture
          #   The user's profile picture.
          #
          #   @return [WhopSDK::Models::Referrals::BusinessRetrieveResponse::Owner::ProfilePicture]
          required :profile_picture,
                   -> { WhopSDK::Models::Referrals::BusinessRetrieveResponse::Owner::ProfilePicture }

          # @!attribute username
          #   The user's unique username.
          #
          #   @return [String]
          required :username, String

          # @!method initialize(id:, name:, profile_picture:, username:)
          #   The owner of the referred business.
          #
          #   @param id [String] User ID, prefixed `user_`.
          #
          #   @param name [String, nil] The user's display name.
          #
          #   @param profile_picture [WhopSDK::Models::Referrals::BusinessRetrieveResponse::Owner::ProfilePicture] The user's profile picture.
          #
          #   @param username [String] The user's unique username.

          # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse::Owner#profile_picture
          class ProfilePicture < WhopSDK::Internal::Type::BaseModel
            # @!attribute url
            #   The user's profile picture URL.
            #
            #   @return [String]
            required :url, String

            # @!method initialize(url:)
            #   The user's profile picture.
            #
            #   @param url [String] The user's profile picture URL.
          end
        end

        # Current referral status.
        #
        # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          ACTIVE = :active
          REMOVED = :removed

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::Referrals::BusinessRetrieveResponse#volume_usd
        class VolumeUsd < WhopSDK::Internal::Type::BaseModel
          # @!attribute attributed
          #   Credited GMV (awaiting_settlement + settled); excludes canceled and reversed, in
          #   USD.
          #
          #   @return [String]
          required :attributed, String

          # @!attribute awaiting_settlement
          #   GMV awaiting settlement (commission not yet computed), in USD.
          #
          #   @return [String]
          required :awaiting_settlement, String

          # @!attribute settled
          #   GMV of pending + completed payments, in USD.
          #
          #   @return [String]
          required :settled, String

          # @!method initialize(attributed:, awaiting_settlement:, settled:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Referrals::BusinessRetrieveResponse::VolumeUsd} for more
          #   details.
          #
          #   @param attributed [String] Credited GMV (awaiting_settlement + settled); excludes canceled and reversed, in
          #
          #   @param awaiting_settlement [String] GMV awaiting settlement (commission not yet computed), in USD.
          #
          #   @param settled [String] GMV of pending + completed payments, in USD.
        end
      end
    end
  end
end
