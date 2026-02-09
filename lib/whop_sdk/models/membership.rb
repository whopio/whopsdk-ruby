# frozen_string_literal: true

module WhopSDK
  module Models
    class Membership < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the membership.
      #
      #   @return [String]
      required :id, String

      # @!attribute cancel_at_period_end
      #   Whether this Membership is set to cancel at the end of the current billing
      #   cycle. Only applies for memberships that have a renewal plan.
      #
      #   @return [Boolean]
      required :cancel_at_period_end, WhopSDK::Internal::Type::Boolean

      # @!attribute cancel_option
      #   The different reasons a user can choose for why they are canceling their
      #   membership.
      #
      #   @return [Symbol, WhopSDK::Models::CancelOptions, nil]
      required :cancel_option, enum: -> { WhopSDK::CancelOptions }, nil?: true

      # @!attribute canceled_at
      #   The epoch timestamp of when the customer initiated a cancellation.
      #
      #   @return [Time, nil]
      required :canceled_at, Time, nil?: true

      # @!attribute cancellation_reason
      #   The reason that the member canceled the membership (filled out by the member).
      #
      #   @return [String, nil]
      required :cancellation_reason, String, nil?: true

      # @!attribute company
      #   The Company this Membership belongs to.
      #
      #   @return [WhopSDK::Models::Membership::Company]
      required :company, -> { WhopSDK::Membership::Company }

      # @!attribute created_at
      #   The datetime the membership was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The available currencies on the platform
      #
      #   @return [Symbol, WhopSDK::Models::Currency, nil]
      required :currency, enum: -> { WhopSDK::Currency }, nil?: true

      # @!attribute custom_field_responses
      #   The responses to custom checkout questions for this membership.
      #
      #   @return [Array<WhopSDK::Models::Membership::CustomFieldResponse>]
      required :custom_field_responses,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Membership::CustomFieldResponse] }

      # @!attribute joined_at
      #   When the member joined the company.
      #
      #   @return [Time, nil]
      required :joined_at, Time, nil?: true

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
      #   @return [WhopSDK::Models::Membership::Member, nil]
      required :member, -> { WhopSDK::Membership::Member }, nil?: true

      # @!attribute metadata
      #   Custom key-value pairs for the membership (commonly used for software licensing,
      #   e.g., HWID). Max 50 keys, 500 chars per key, 5000 chars per value.
      #
      #   @return [Hash{Symbol=>Object}]
      required :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]

      # @!attribute payment_collection_paused
      #   Whether the membership's payments are currently paused.
      #
      #   @return [Boolean]
      required :payment_collection_paused, WhopSDK::Internal::Type::Boolean

      # @!attribute plan
      #   The Plan this Membership is for.
      #
      #   @return [WhopSDK::Models::Membership::Plan]
      required :plan, -> { WhopSDK::Membership::Plan }

      # @!attribute product
      #   The Product this Membership grants access to.
      #
      #   @return [WhopSDK::Models::Membership::Product]
      required :product, -> { WhopSDK::Membership::Product }

      # @!attribute promo_code
      #   The Promo Code that is currently applied to this Membership.
      #
      #   @return [WhopSDK::Models::Membership::PromoCode, nil]
      required :promo_code, -> { WhopSDK::Membership::PromoCode }, nil?: true

      # @!attribute renewal_period_end
      #   The timestamp in seconds at which the current billing cycle for this
      #   subscription ends. Only applies for memberships that have a renewal plan.
      #
      #   @return [Time, nil]
      required :renewal_period_end, Time, nil?: true

      # @!attribute renewal_period_start
      #   The timestamp in seconds at which the current billing cycle for this
      #   subscription start. Only applies for memberships that have a renewal plan.
      #
      #   @return [Time, nil]
      required :renewal_period_start, Time, nil?: true

      # @!attribute status
      #   The status of the membership.
      #
      #   @return [Symbol, WhopSDK::Models::MembershipStatus]
      required :status, enum: -> { WhopSDK::MembershipStatus }

      # @!attribute updated_at
      #   The datetime the membership was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute user
      #   The user this membership belongs to
      #
      #   @return [WhopSDK::Models::Membership::User, nil]
      required :user, -> { WhopSDK::Membership::User }, nil?: true

      # @!method initialize(id:, cancel_at_period_end:, cancel_option:, canceled_at:, cancellation_reason:, company:, created_at:, currency:, custom_field_responses:, joined_at:, license_key:, manage_url:, member:, metadata:, payment_collection_paused:, plan:, product:, promo_code:, renewal_period_end:, renewal_period_start:, status:, updated_at:, user:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::Membership} for more details.
      #
      #   A membership represents an active relationship between a user and a product. It
      #   tracks the user's access, billing status, and renewal schedule.
      #
      #   @param id [String] The unique identifier for the membership.
      #
      #   @param cancel_at_period_end [Boolean] Whether this Membership is set to cancel at the end of the current billing cycle
      #
      #   @param cancel_option [Symbol, WhopSDK::Models::CancelOptions, nil] The different reasons a user can choose for why they are canceling their members
      #
      #   @param canceled_at [Time, nil] The epoch timestamp of when the customer initiated a cancellation.
      #
      #   @param cancellation_reason [String, nil] The reason that the member canceled the membership (filled out by the member).
      #
      #   @param company [WhopSDK::Models::Membership::Company] The Company this Membership belongs to.
      #
      #   @param created_at [Time] The datetime the membership was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      #
      #   @param custom_field_responses [Array<WhopSDK::Models::Membership::CustomFieldResponse>] The responses to custom checkout questions for this membership.
      #
      #   @param joined_at [Time, nil] When the member joined the company.
      #
      #   @param license_key [String, nil] The license key for this Membership. This is only present if the membership gran
      #
      #   @param manage_url [String, nil] The URL for the customer to manage their membership.
      #
      #   @param member [WhopSDK::Models::Membership::Member, nil] The Member that this Membership belongs to.
      #
      #   @param metadata [Hash{Symbol=>Object}] Custom key-value pairs for the membership (commonly used for software licensing,
      #
      #   @param payment_collection_paused [Boolean] Whether the membership's payments are currently paused.
      #
      #   @param plan [WhopSDK::Models::Membership::Plan] The Plan this Membership is for.
      #
      #   @param product [WhopSDK::Models::Membership::Product] The Product this Membership grants access to.
      #
      #   @param promo_code [WhopSDK::Models::Membership::PromoCode, nil] The Promo Code that is currently applied to this Membership.
      #
      #   @param renewal_period_end [Time, nil] The timestamp in seconds at which the current billing cycle for this subscriptio
      #
      #   @param renewal_period_start [Time, nil] The timestamp in seconds at which the current billing cycle for this subscriptio
      #
      #   @param status [Symbol, WhopSDK::Models::MembershipStatus] The status of the membership.
      #
      #   @param updated_at [Time] The datetime the membership was last updated.
      #
      #   @param user [WhopSDK::Models::Membership::User, nil] The user this membership belongs to

      # @see WhopSDK::Models::Membership#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The display name of the company shown to customers.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   The Company this Membership belongs to.
        #
        #   @param id [String] The unique identifier for the company.
        #
        #   @param title [String] The display name of the company shown to customers.
      end

      class CustomFieldResponse < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the custom field response.
        #
        #   @return [String]
        required :id, String

        # @!attribute answer
        #   The response a user gave to the specific question or field.
        #
        #   @return [String]
        required :answer, String

        # @!attribute question
        #   The question asked by the custom field
        #
        #   @return [String]
        required :question, String

        # @!method initialize(id:, answer:, question:)
        #   The response from a custom field on checkout
        #
        #   @param id [String] The unique identifier for the custom field response.
        #
        #   @param answer [String] The response a user gave to the specific question or field.
        #
        #   @param question [String] The question asked by the custom field
      end

      # @see WhopSDK::Models::Membership#member
      class Member < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the member.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The Member that this Membership belongs to.
        #
        #   @param id [String] The unique identifier for the member.
      end

      # @see WhopSDK::Models::Membership#plan
      class Plan < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the plan.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The Plan this Membership is for.
        #
        #   @param id [String] The unique identifier for the plan.
      end

      # @see WhopSDK::Models::Membership#product
      class Product < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the product.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The display name of the product shown to customers on the product page and in
        #   search results.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Membership::Product} for more details.
        #
        #   The Product this Membership grants access to.
        #
        #   @param id [String] The unique identifier for the product.
        #
        #   @param title [String] The display name of the product shown to customers on the product page and in se
      end

      # @see WhopSDK::Models::Membership#promo_code
      class PromoCode < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the promo code.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The Promo Code that is currently applied to this Membership.
        #
        #   @param id [String] The unique identifier for the promo code.
      end

      # @see WhopSDK::Models::Membership#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute email
        #   The user's email address. Requires the member:email:read permission to access.
        #   Null if not authorized.
        #
        #   @return [String, nil]
        required :email, String, nil?: true

        # @!attribute name
        #   The user's display name shown on their public profile.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The user's unique username shown on their public profile.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, email:, name:, username:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Membership::User} for more details.
        #
        #   The user this membership belongs to
        #
        #   @param id [String] The unique identifier for the user.
        #
        #   @param email [String, nil] The user's email address. Requires the member:email:read permission to access. N
        #
        #   @param name [String, nil] The user's display name shown on their public profile.
        #
        #   @param username [String] The user's unique username shown on their public profile.
      end
    end
  end
end
