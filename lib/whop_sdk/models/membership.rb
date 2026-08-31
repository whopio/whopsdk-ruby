# frozen_string_literal: true

module WhopSDK
  module Models
    class Membership < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Membership ID, prefixed `mem_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute account
      #   The account (seller) this membership belongs to.
      #
      #   @return [WhopSDK::Models::Membership::Account]
      required :account, -> { WhopSDK::Membership::Account }

      # @!attribute cancel_at_period_end
      #   Whether the membership is set to cancel when the current billing period ends.
      #   Only meaningful for recurring plans.
      #
      #   @return [Boolean]
      required :cancel_at_period_end, WhopSDK::Internal::Type::Boolean

      # @!attribute created_at
      #   When the membership was created, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute current_period_end
      #   When the current billing period renews, or when a non-renewing membership
      #   expires, as an ISO 8601 timestamp. `null` for one-time purchases with no
      #   expiration.
      #
      #   @return [String, nil]
      required :current_period_end, String, nil?: true

      # @!attribute license_key
      #   The software license key for this membership. Only present when the product
      #   includes a software licensing experience.
      #
      #   @return [String, nil]
      required :license_key, String, nil?: true

      # @!attribute member
      #   The caller's member row on the account. Present only when the membership belongs
      #   to the caller; `null` on seller-side reads.
      #
      #   @return [WhopSDK::Models::Membership::Member, nil]
      required :member, -> { WhopSDK::Membership::Member }, nil?: true

      # @!attribute metadata
      #   Custom key-value pairs stored on the membership, commonly used for software
      #   licensing.
      #
      #   @return [Object]
      required :metadata, WhopSDK::Internal::Type::Unknown

      # @!attribute phone_number
      #   The buyer's phone number recorded for this membership, or `null`. The number
      #   collected (or verified) at checkout when the seller's phone collection is on;
      #   falls back to the buyer's account number when they have shared one with this
      #   seller.
      #
      #   @return [String, nil]
      required :phone_number, String, nil?: true

      # @!attribute plan_id
      #   The plan the buyer purchased, prefixed `plan_`.
      #
      #   @return [String]
      required :plan_id, String

      # @!attribute product_id
      #   The product this membership grants access to, prefixed `prod_`.
      #
      #   @return [String]
      required :product_id, String

      # @!attribute status
      #   Billing state of the membership. `active`/`trialing` memberships grant access;
      #   `past_due` is the grace period after a failed payment; `completed` one-time
      #   purchases keep access; `canceled`/`expired` do not.
      #
      #   @return [Symbol, WhopSDK::Models::Membership::Status]
      required :status, enum: -> { WhopSDK::Membership::Status }

      # @!attribute user_id
      #   The buyer, prefixed `user_`. `null` when the buyer is another business or the
      #   membership is unclaimed.
      #
      #   @return [String, nil]
      required :user_id, String, nil?: true

      # @!method initialize(id:, account:, cancel_at_period_end:, created_at:, current_period_end:, license_key:, member:, metadata:, phone_number:, plan_id:, product_id:, status:, user_id:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::Membership} for more details.
      #
      #   @param id [String] Membership ID, prefixed `mem_`.
      #
      #   @param account [WhopSDK::Models::Membership::Account] The account (seller) this membership belongs to.
      #
      #   @param cancel_at_period_end [Boolean] Whether the membership is set to cancel when the current billing period ends. On
      #
      #   @param created_at [String] When the membership was created, as an ISO 8601 timestamp.
      #
      #   @param current_period_end [String, nil] When the current billing period renews, or when a non-renewing membership expire
      #
      #   @param license_key [String, nil] The software license key for this membership. Only present when the product incl
      #
      #   @param member [WhopSDK::Models::Membership::Member, nil] The caller's member row on the account. Present only when the membership belongs
      #
      #   @param metadata [Object] Custom key-value pairs stored on the membership, commonly used for software lice
      #
      #   @param phone_number [String, nil] The buyer's phone number recorded for this membership, or `null`. The number col
      #
      #   @param plan_id [String] The plan the buyer purchased, prefixed `plan_`.
      #
      #   @param product_id [String] The product this membership grants access to, prefixed `prod_`.
      #
      #   @param status [Symbol, WhopSDK::Models::Membership::Status] Billing state of the membership. `active`/`trialing` memberships grant access; `
      #
      #   @param user_id [String, nil] The buyer, prefixed `user_`. `null` when the buyer is another business or the me

      # @see WhopSDK::Models::Membership#account
      class Account < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Account ID, prefixed `biz_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute logo_url
        #   Account logo image URL. `null` when the account has not set one.
        #
        #   @return [String, nil]
        required :logo_url, String, nil?: true

        # @!attribute route
        #   Account public route identifier — the `whop.com/{route}` storefront path.
        #
        #   @return [String]
        required :route, String

        # @!attribute title
        #   Account display name.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, logo_url:, route:, title:)
        #   The account (seller) this membership belongs to.
        #
        #   @param id [String] Account ID, prefixed `biz_`.
        #
        #   @param logo_url [String, nil] Account logo image URL. `null` when the account has not set one.
        #
        #   @param route [String] Account public route identifier — the `whop.com/{route}` storefront path.
        #
        #   @param title [String] Account display name.
      end

      # @see WhopSDK::Models::Membership#member
      class Member < WhopSDK::Internal::Type::BaseModel
        # @!attribute access_level
        #   What the member can reach on the account: `customer` for paying members, `admin`
        #   for team members, `no_access` once every grant has lapsed.
        #
        #   @return [Symbol, WhopSDK::Models::Membership::Member::AccessLevel]
        required :access_level, enum: -> { WhopSDK::Membership::Member::AccessLevel }

        # @!attribute last_accessed_at
        #   When the member last opened the account's content, as an ISO 8601 timestamp.
        #   `null` if they never have.
        #
        #   @return [String, nil]
        required :last_accessed_at, String, nil?: true

        # @!attribute position
        #   The member's sort position in the buyer's own account list. `null` until they
        #   arrange it.
        #
        #   @return [Float, nil]
        required :position, Float, nil?: true

        # @!method initialize(access_level:, last_accessed_at:, position:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Membership::Member} for more details.
        #
        #   The caller's member row on the account. Present only when the membership belongs
        #   to the caller; `null` on seller-side reads.
        #
        #   @param access_level [Symbol, WhopSDK::Models::Membership::Member::AccessLevel] What the member can reach on the account: `customer` for paying members, `admin`
        #
        #   @param last_accessed_at [String, nil] When the member last opened the account's content, as an ISO 8601 timestamp. `nu
        #
        #   @param position [Float, nil] The member's sort position in the buyer's own account list. `null` until they ar

        # What the member can reach on the account: `customer` for paying members, `admin`
        # for team members, `no_access` once every grant has lapsed.
        #
        # @see WhopSDK::Models::Membership::Member#access_level
        module AccessLevel
          extend WhopSDK::Internal::Type::Enum

          NO_ACCESS = :no_access
          ADMIN = :admin
          CUSTOMER = :customer

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Billing state of the membership. `active`/`trialing` memberships grant access;
      # `past_due` is the grace period after a failed payment; `completed` one-time
      # purchases keep access; `canceled`/`expired` do not.
      #
      # @see WhopSDK::Models::Membership#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        TRIALING = :trialing
        ACTIVE = :active
        PAST_DUE = :past_due
        COMPLETED = :completed
        CANCELED = :canceled
        EXPIRED = :expired
        UNRESOLVED = :unresolved

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
