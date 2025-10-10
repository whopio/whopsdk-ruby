# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Memberships#list
    class MembershipListResponse < Whopsdk::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the membership
      #
      #   @return [String]
      required :id, String

      # @!attribute cancel_at_period_end
      #   Whether this Membership is set to cancel at the end of the current billing
      #   cycle. Only applies for memberships that have a renewal plan.
      #
      #   @return [Boolean]
      required :cancel_at_period_end, Whopsdk::Internal::Type::Boolean

      # @!attribute canceled_at
      #   The epoch timestamp of when the customer initiated a cancellation.
      #
      #   @return [Integer, nil]
      required :canceled_at, Integer, nil?: true

      # @!attribute cancellation_reason
      #   The reason that the member canceled the membership (filled out by the member).
      #
      #   @return [String, nil]
      required :cancellation_reason, String, nil?: true

      # @!attribute company
      #   The Company this Membership belongs to.
      #
      #   @return [Whopsdk::Models::MembershipListResponse::Company]
      required :company, -> { Whopsdk::Models::MembershipListResponse::Company }

      # @!attribute created_at
      #   The timestamp, in seconds, that this Membership was created at.
      #
      #   @return [Integer]
      required :created_at, Integer

      # @!attribute currency
      #   The available currencies on the platform
      #
      #   @return [Symbol, Whopsdk::Models::Currency, nil]
      required :currency, enum: -> { Whopsdk::Currency }, nil?: true

      # @!attribute license_key
      #   The license key for this Membership. This is only present if the membership
      #   grants access to an instance of the Whop Software app.
      #
      #   @return [String, nil]
      required :license_key, String, nil?: true

      # @!attribute manage_url
      #   The URL for the customer to manage their membership.
      #
      #   @return [String, nil]
      required :manage_url, String, nil?: true

      # @!attribute member
      #   The Member that this Membership belongs to.
      #
      #   @return [Whopsdk::Models::MembershipListResponse::Member, nil]
      required :member, -> { Whopsdk::Models::MembershipListResponse::Member }, nil?: true

      # @!attribute metadata
      #   A JSON object used to store software licensing information. Ex. HWID
      #
      #   @return [Hash{Symbol=>Object}]
      required :metadata, Whopsdk::Internal::Type::HashOf[Whopsdk::Internal::Type::Unknown]

      # @!attribute payment_collection_paused
      #   Whether the membership's payments are currently paused.
      #
      #   @return [Boolean]
      required :payment_collection_paused, Whopsdk::Internal::Type::Boolean

      # @!attribute plan
      #   The Plan this Membership is for.
      #
      #   @return [Whopsdk::Models::MembershipListResponse::Plan]
      required :plan, -> { Whopsdk::Models::MembershipListResponse::Plan }

      # @!attribute promo_code
      #   The Promo Code that is currently applied to this Membership.
      #
      #   @return [Whopsdk::Models::MembershipListResponse::PromoCode, nil]
      required :promo_code, -> { Whopsdk::Models::MembershipListResponse::PromoCode }, nil?: true

      # @!attribute renewal_period_end
      #   The timestamp in seconds at which the current billing cycle for this
      #   subscription ends. Only applies for memberships that have a renewal plan.
      #
      #   @return [Integer, nil]
      required :renewal_period_end, Integer, nil?: true

      # @!attribute renewal_period_start
      #   The timestamp in seconds at which the current billing cycle for this
      #   subscription start. Only applies for memberships that have a renewal plan.
      #
      #   @return [Integer, nil]
      required :renewal_period_start, Integer, nil?: true

      # @!attribute status
      #   The status of the membership.
      #
      #   @return [Symbol, Whopsdk::Models::MembershipStatus]
      required :status, enum: -> { Whopsdk::MembershipStatus }

      # @!attribute updated_at
      #   A timestamp of when the membership was last updated
      #
      #   @return [Integer]
      required :updated_at, Integer

      # @!attribute user
      #   The user this membership belongs to
      #
      #   @return [Whopsdk::Models::MembershipListResponse::User, nil]
      required :user, -> { Whopsdk::Models::MembershipListResponse::User }, nil?: true

      # @!method initialize(id:, cancel_at_period_end:, canceled_at:, cancellation_reason:, company:, created_at:, currency:, license_key:, manage_url:, member:, metadata:, payment_collection_paused:, plan:, promo_code:, renewal_period_end:, renewal_period_start:, status:, updated_at:, user:)
      #   Some parameter documentations has been truncated, see
      #   {Whopsdk::Models::MembershipListResponse} for more details.
      #
      #   A membership represents a purchase between a User and a Company for a specific
      #   Product.
      #
      #   @param id [String] The ID of the membership
      #
      #   @param cancel_at_period_end [Boolean] Whether this Membership is set to cancel at the end of the current billing cycle
      #
      #   @param canceled_at [Integer, nil] The epoch timestamp of when the customer initiated a cancellation.
      #
      #   @param cancellation_reason [String, nil] The reason that the member canceled the membership (filled out by the member).
      #
      #   @param company [Whopsdk::Models::MembershipListResponse::Company] The Company this Membership belongs to.
      #
      #   @param created_at [Integer] The timestamp, in seconds, that this Membership was created at.
      #
      #   @param currency [Symbol, Whopsdk::Models::Currency, nil] The available currencies on the platform
      #
      #   @param license_key [String, nil] The license key for this Membership. This is only present if the membership gran
      #
      #   @param manage_url [String, nil] The URL for the customer to manage their membership.
      #
      #   @param member [Whopsdk::Models::MembershipListResponse::Member, nil] The Member that this Membership belongs to.
      #
      #   @param metadata [Hash{Symbol=>Object}] A JSON object used to store software licensing information. Ex. HWID
      #
      #   @param payment_collection_paused [Boolean] Whether the membership's payments are currently paused.
      #
      #   @param plan [Whopsdk::Models::MembershipListResponse::Plan] The Plan this Membership is for.
      #
      #   @param promo_code [Whopsdk::Models::MembershipListResponse::PromoCode, nil] The Promo Code that is currently applied to this Membership.
      #
      #   @param renewal_period_end [Integer, nil] The timestamp in seconds at which the current billing cycle for this subscriptio
      #
      #   @param renewal_period_start [Integer, nil] The timestamp in seconds at which the current billing cycle for this subscriptio
      #
      #   @param status [Symbol, Whopsdk::Models::MembershipStatus] The status of the membership.
      #
      #   @param updated_at [Integer] A timestamp of when the membership was last updated
      #
      #   @param user [Whopsdk::Models::MembershipListResponse::User, nil] The user this membership belongs to

      # @see Whopsdk::Models::MembershipListResponse#company
      class Company < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The ID (tag) of the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The title of the company.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   The Company this Membership belongs to.
        #
        #   @param id [String] The ID (tag) of the company.
        #
        #   @param title [String] The title of the company.
      end

      # @see Whopsdk::Models::MembershipListResponse#member
      class Member < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the member
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The Member that this Membership belongs to.
        #
        #   @param id [String] The ID of the member
      end

      # @see Whopsdk::Models::MembershipListResponse#plan
      class Plan < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the plan.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The Plan this Membership is for.
        #
        #   @param id [String] The internal ID of the plan.
      end

      # @see Whopsdk::Models::MembershipListResponse#promo_code
      class PromoCode < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the promo.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The Promo Code that is currently applied to this Membership.
        #
        #   @param id [String] The ID of the promo.
      end

      # @see Whopsdk::Models::MembershipListResponse#user
      class User < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The name of the user from their Whop account.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The username of the user from their Whop account.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, username:)
        #   The user this membership belongs to
        #
        #   @param id [String] The internal ID of the user.
        #
        #   @param name [String, nil] The name of the user from their Whop account.
        #
        #   @param username [String] The username of the user from their Whop account.
      end
    end
  end
end
