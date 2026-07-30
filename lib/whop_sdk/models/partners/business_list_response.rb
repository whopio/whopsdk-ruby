# frozen_string_literal: true

module WhopSDK
  module Models
    module Partners
      # @see WhopSDK::Resources::Partners::Businesses#list
      class BusinessListResponse < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Partner business ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute account
        #   Referred account.
        #
        #   @return [WhopSDK::Models::Partners::BusinessListResponse::Account, nil]
        required :account, -> { WhopSDK::Models::Partners::BusinessListResponse::Account }, nil?: true

        # @!attribute created_at
        #   When the partner business was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute earnings_usd
        #
        #   @return [WhopSDK::Models::Partners::BusinessListResponse::EarningsUsd]
        required :earnings_usd, -> { WhopSDK::Models::Partners::BusinessListResponse::EarningsUsd }

        # @!attribute first_tier_partner
        #   The partner who referred the business owner onto Whop (first tier). Null if
        #   there is no active first-tier partner.
        #
        #   @return [WhopSDK::Models::Partners::BusinessListResponse::FirstTierPartner, nil]
        required :first_tier_partner,
                 -> { WhopSDK::Models::Partners::BusinessListResponse::FirstTierPartner },
                 nil?: true

        # @!attribute my_partner_tier
        #   Which tier the caller earns on for this business: `first` (they referred the
        #   owner) or `second` (they referred the first-tier partner).
        #
        #   @return [Symbol, WhopSDK::Models::Partners::BusinessListResponse::MyPartnerTier]
        required :my_partner_tier, enum: -> { WhopSDK::Models::Partners::BusinessListResponse::MyPartnerTier }

        # @!attribute object
        #
        #   @return [Symbol, WhopSDK::Models::Partners::BusinessListResponse::Object]
        required :object, enum: -> { WhopSDK::Models::Partners::BusinessListResponse::Object }

        # @!attribute owner
        #   The owner of the referred business.
        #
        #   @return [WhopSDK::Models::Partners::BusinessListResponse::Owner, nil]
        required :owner, -> { WhopSDK::Models::Partners::BusinessListResponse::Owner }, nil?: true

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
        #   @return [Symbol, WhopSDK::Models::Partners::BusinessListResponse::Status]
        required :status, enum: -> { WhopSDK::Models::Partners::BusinessListResponse::Status }

        # @!attribute volume_usd
        #
        #   @return [WhopSDK::Models::Partners::BusinessListResponse::VolumeUsd]
        required :volume_usd, -> { WhopSDK::Models::Partners::BusinessListResponse::VolumeUsd }

        # @!method initialize(id:, account:, created_at:, earnings_usd:, first_tier_partner:, my_partner_tier:, object:, owner:, payout_percentage:, referral_expires_at:, referral_started_at:, status:, volume_usd:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Partners::BusinessListResponse} for more details.
        #
        #   @param id [String] Partner business ID.
        #
        #   @param account [WhopSDK::Models::Partners::BusinessListResponse::Account, nil] Referred account.
        #
        #   @param created_at [Time] When the partner business was created.
        #
        #   @param earnings_usd [WhopSDK::Models::Partners::BusinessListResponse::EarningsUsd]
        #
        #   @param first_tier_partner [WhopSDK::Models::Partners::BusinessListResponse::FirstTierPartner, nil] The partner who referred the business owner onto Whop (first tier). Null if ther
        #
        #   @param my_partner_tier [Symbol, WhopSDK::Models::Partners::BusinessListResponse::MyPartnerTier] Which tier the caller earns on for this business: `first` (they referred the own
        #
        #   @param object [Symbol, WhopSDK::Models::Partners::BusinessListResponse::Object]
        #
        #   @param owner [WhopSDK::Models::Partners::BusinessListResponse::Owner, nil] The owner of the referred business.
        #
        #   @param payout_percentage [Float] Referrer's share of Whop gross profit, as a fraction (0.3 = 30%). Second-tier re
        #
        #   @param referral_expires_at [Time, nil] When the referral expires.
        #
        #   @param referral_started_at [Time, nil] When the referral became active.
        #
        #   @param status [Symbol, WhopSDK::Models::Partners::BusinessListResponse::Status] Current referral status.
        #
        #   @param volume_usd [WhopSDK::Models::Partners::BusinessListResponse::VolumeUsd]

        # @see WhopSDK::Models::Partners::BusinessListResponse#account
        class Account < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   Referred account ID.
          #
          #   @return [String]
          required :id, String

          # @!attribute logo_url
          #   Referred account logo URL.
          #
          #   @return [String, nil]
          required :logo_url, String, nil?: true

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

          # @!method initialize(id:, logo_url:, route:, title:)
          #   Referred account.
          #
          #   @param id [String] Referred account ID.
          #
          #   @param logo_url [String, nil] Referred account logo URL.
          #
          #   @param route [String] Referred account route.
          #
          #   @param title [String] Referred account display name.
        end

        # @see WhopSDK::Models::Partners::BusinessListResponse#earnings_usd
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

        # @see WhopSDK::Models::Partners::BusinessListResponse#first_tier_partner
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
          #   @return [WhopSDK::Models::Partners::BusinessListResponse::FirstTierPartner::ProfilePicture]
          required :profile_picture,
                   -> { WhopSDK::Models::Partners::BusinessListResponse::FirstTierPartner::ProfilePicture }

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
          #   @param profile_picture [WhopSDK::Models::Partners::BusinessListResponse::FirstTierPartner::ProfilePicture] The user's profile picture.
          #
          #   @param username [String] The user's unique username.

          # @see WhopSDK::Models::Partners::BusinessListResponse::FirstTierPartner#profile_picture
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
        # @see WhopSDK::Models::Partners::BusinessListResponse#my_partner_tier
        module MyPartnerTier
          extend WhopSDK::Internal::Type::Enum

          FIRST = :first
          SECOND = :second

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::Partners::BusinessListResponse#object
        module Object
          extend WhopSDK::Internal::Type::Enum

          PARTNER_BUSINESS = :partner_business

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::Partners::BusinessListResponse#owner
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
          #   @return [WhopSDK::Models::Partners::BusinessListResponse::Owner::ProfilePicture]
          required :profile_picture, -> { WhopSDK::Models::Partners::BusinessListResponse::Owner::ProfilePicture }

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
          #   @param profile_picture [WhopSDK::Models::Partners::BusinessListResponse::Owner::ProfilePicture] The user's profile picture.
          #
          #   @param username [String] The user's unique username.

          # @see WhopSDK::Models::Partners::BusinessListResponse::Owner#profile_picture
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
        # @see WhopSDK::Models::Partners::BusinessListResponse#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          ACTIVE = :active
          REMOVED = :removed

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::Partners::BusinessListResponse#volume_usd
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
          #   {WhopSDK::Models::Partners::BusinessListResponse::VolumeUsd} for more details.
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
