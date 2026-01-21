# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Memberships#list
    class MembershipListResponse < WhopSDK::Internal::Type::BaseModel
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
      required :cancel_at_period_end, WhopSDK::Internal::Type::Boolean

      # @!attribute cancel_option
      #   The different reasons a user can choose for why they are canceling their
      #   membership.
      #
      #   @return [Symbol, WhopSDK::Models::MembershipListResponse::CancelOption, nil]
      required :cancel_option, enum: -> { WhopSDK::Models::MembershipListResponse::CancelOption }, nil?: true

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
      #   @return [WhopSDK::Models::MembershipListResponse::Company]
      required :company, -> { WhopSDK::Models::MembershipListResponse::Company }

      # @!attribute created_at
      #   The timestamp, in seconds, that this Membership was created at.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The available currencies on the platform
      #
      #   @return [Symbol, WhopSDK::Models::Currency, nil]
      required :currency, enum: -> { WhopSDK::Currency }, nil?: true

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
      #   @return [WhopSDK::Models::MembershipListResponse::Member, nil]
      required :member, -> { WhopSDK::Models::MembershipListResponse::Member }, nil?: true

      # @!attribute metadata
      #   A JSON object used to store software licensing information. Ex. HWID
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
      #   @return [WhopSDK::Models::MembershipListResponse::Plan]
      required :plan, -> { WhopSDK::Models::MembershipListResponse::Plan }

      # @!attribute product
      #   The Product this Membership grants access to.
      #
      #   @return [WhopSDK::Models::MembershipListResponse::Product]
      required :product, -> { WhopSDK::Models::MembershipListResponse::Product }

      # @!attribute promo_code
      #   The Promo Code that is currently applied to this Membership.
      #
      #   @return [WhopSDK::Models::MembershipListResponse::PromoCode, nil]
      required :promo_code, -> { WhopSDK::Models::MembershipListResponse::PromoCode }, nil?: true

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
      #   A timestamp of when the membership was last updated
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute user
      #   The user this membership belongs to
      #
      #   @return [WhopSDK::Models::MembershipListResponse::User, nil]
      required :user, -> { WhopSDK::Models::MembershipListResponse::User }, nil?: true

      # @!method initialize(id:, cancel_at_period_end:, cancel_option:, canceled_at:, cancellation_reason:, company:, created_at:, currency:, license_key:, manage_url:, member:, metadata:, payment_collection_paused:, plan:, product:, promo_code:, renewal_period_end:, renewal_period_start:, status:, updated_at:, user:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::MembershipListResponse} for more details.
      #
      #   A membership represents a purchase between a User and a Company for a specific
      #   Product.
      #
      #   @param id [String] The ID of the membership
      #
      #   @param cancel_at_period_end [Boolean] Whether this Membership is set to cancel at the end of the current billing cycle
      #
      #   @param cancel_option [Symbol, WhopSDK::Models::MembershipListResponse::CancelOption, nil] The different reasons a user can choose for why they are canceling their members
      #
      #   @param canceled_at [Time, nil] The epoch timestamp of when the customer initiated a cancellation.
      #
      #   @param cancellation_reason [String, nil] The reason that the member canceled the membership (filled out by the member).
      #
      #   @param company [WhopSDK::Models::MembershipListResponse::Company] The Company this Membership belongs to.
      #
      #   @param created_at [Time] The timestamp, in seconds, that this Membership was created at.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      #
      #   @param license_key [String, nil] The license key for this Membership. This is only present if the membership gran
      #
      #   @param manage_url [String, nil] The URL for the customer to manage their membership.
      #
      #   @param member [WhopSDK::Models::MembershipListResponse::Member, nil] The Member that this Membership belongs to.
      #
      #   @param metadata [Hash{Symbol=>Object}] A JSON object used to store software licensing information. Ex. HWID
      #
      #   @param payment_collection_paused [Boolean] Whether the membership's payments are currently paused.
      #
      #   @param plan [WhopSDK::Models::MembershipListResponse::Plan] The Plan this Membership is for.
      #
      #   @param product [WhopSDK::Models::MembershipListResponse::Product] The Product this Membership grants access to.
      #
      #   @param promo_code [WhopSDK::Models::MembershipListResponse::PromoCode, nil] The Promo Code that is currently applied to this Membership.
      #
      #   @param renewal_period_end [Time, nil] The timestamp in seconds at which the current billing cycle for this subscriptio
      #
      #   @param renewal_period_start [Time, nil] The timestamp in seconds at which the current billing cycle for this subscriptio
      #
      #   @param status [Symbol, WhopSDK::Models::MembershipStatus] The status of the membership.
      #
      #   @param updated_at [Time] A timestamp of when the membership was last updated
      #
      #   @param user [WhopSDK::Models::MembershipListResponse::User, nil] The user this membership belongs to

      # The different reasons a user can choose for why they are canceling their
      # membership.
      #
      # @see WhopSDK::Models::MembershipListResponse#cancel_option
      module CancelOption
        extend WhopSDK::Internal::Type::Enum

        TOO_EXPENSIVE = :too_expensive
        SWITCHING = :switching
        MISSING_FEATURES = :missing_features
        TECHNICAL_ISSUES = :technical_issues
        BAD_EXPERIENCE = :bad_experience
        OTHER = :other
        TESTING = :testing

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::MembershipListResponse#company
      class Company < WhopSDK::Internal::Type::BaseModel
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

      # @see WhopSDK::Models::MembershipListResponse#member
      class Member < WhopSDK::Internal::Type::BaseModel
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

      # @see WhopSDK::Models::MembershipListResponse#plan
      class Plan < WhopSDK::Internal::Type::BaseModel
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

      # @see WhopSDK::Models::MembershipListResponse#product
      class Product < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the public product.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The title of the product. Use for Whop 4.0.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   The Product this Membership grants access to.
        #
        #   @param id [String] The internal ID of the public product.
        #
        #   @param title [String] The title of the product. Use for Whop 4.0.
      end

      # @see WhopSDK::Models::MembershipListResponse#promo_code
      class PromoCode < WhopSDK::Internal::Type::BaseModel
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

      # @see WhopSDK::Models::MembershipListResponse#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute email
        #   The email of the user
        #
        #   @return [String, nil]
        required :email, String, nil?: true

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

        # @!method initialize(id:, email:, name:, username:)
        #   The user this membership belongs to
        #
        #   @param id [String] The internal ID of the user.
        #
        #   @param email [String, nil] The email of the user
        #
        #   @param name [String, nil] The name of the user from their Whop account.
        #
        #   @param username [String] The username of the user from their Whop account.
      end
    end
  end
end
