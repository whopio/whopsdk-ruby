# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Memberships#list
    class MembershipListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the membership.
      #
      #   @return [String]
      required :id, String

      # @!attribute cancel_at_period_end
      #   Whether this membership is set to cancel at the end of the current billing
      #   cycle. Only applies to memberships with a recurring plan.
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
      #   The time the customer initiated cancellation of this membership. As a Unix
      #   timestamp. Null if the membership has not been canceled.
      #
      #   @return [Time, nil]
      required :canceled_at, Time, nil?: true

      # @!attribute cancellation_reason
      #   Free-text explanation provided by the customer when canceling. Null if the
      #   customer did not provide a reason.
      #
      #   @return [String, nil]
      required :cancellation_reason, String, nil?: true

      # @!attribute company
      #   The company this membership belongs to.
      #
      #   @return [WhopSDK::Models::MembershipListResponse::Company]
      required :company, -> { WhopSDK::Models::MembershipListResponse::Company }

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

      # @!attribute joined_at
      #   The time the user first joined the company associated with this membership. As a
      #   Unix timestamp. Null if the member record does not exist.
      #
      #   @return [Time, nil]
      required :joined_at, Time, nil?: true

      # @!attribute license_key
      #   The software license key associated with this membership. Only present if the
      #   product includes a Whop Software Licensing experience. Null otherwise.
      #
      #   @return [String, nil]
      required :license_key, String, nil?: true

      # @!attribute manage_url
      #   The URL where the customer can view and manage this membership, including
      #   cancellation and plan changes. Null if no member record exists.
      #
      #   @return [String, nil]
      required :manage_url, String, nil?: true

      # @!attribute member
      #   The member record linking the user to the company for this membership. Null if
      #   the member record has not been created yet.
      #
      #   @return [WhopSDK::Models::MembershipListResponse::Member, nil]
      required :member, -> { WhopSDK::Models::MembershipListResponse::Member }, nil?: true

      # @!attribute metadata
      #   Custom key-value pairs for the membership (commonly used for software licensing,
      #   e.g., HWID). Max 50 keys, 500 chars per key, 5000 chars per value.
      #
      #   @return [Hash{Symbol=>Object}]
      required :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]

      # @!attribute payment_collection_paused
      #   Whether recurring payment collection for this membership is temporarily paused
      #   by the company.
      #
      #   @return [Boolean]
      required :payment_collection_paused, WhopSDK::Internal::Type::Boolean

      # @!attribute plan
      #   The plan the customer purchased to create this membership.
      #
      #   @return [WhopSDK::Models::MembershipListResponse::Plan]
      required :plan, -> { WhopSDK::Models::MembershipListResponse::Plan }

      # @!attribute product
      #   The product this membership grants access to.
      #
      #   @return [WhopSDK::Models::MembershipListResponse::Product]
      required :product, -> { WhopSDK::Models::MembershipListResponse::Product }

      # @!attribute promo_code
      #   The promotional code currently applied to this membership's billing. Null if no
      #   promo code is active.
      #
      #   @return [WhopSDK::Models::MembershipListResponse::PromoCode, nil]
      required :promo_code, -> { WhopSDK::Models::MembershipListResponse::PromoCode }, nil?: true

      # @!attribute renewal_period_end
      #   The end of the current billing period for this recurring membership. As a Unix
      #   timestamp. Null if the membership is not recurring.
      #
      #   @return [Time, nil]
      required :renewal_period_end, Time, nil?: true

      # @!attribute renewal_period_start
      #   The start of the current billing period for this recurring membership. As a Unix
      #   timestamp. Null if the membership is not recurring.
      #
      #   @return [Time, nil]
      required :renewal_period_start, Time, nil?: true

      # @!attribute status
      #   The current lifecycle status of the membership (e.g., active, trialing,
      #   past_due, canceled, expired, completed).
      #
      #   @return [Symbol, WhopSDK::Models::MembershipStatus]
      required :status, enum: -> { WhopSDK::MembershipStatus }

      # @!attribute updated_at
      #   The datetime the membership was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute user
      #   The user who owns this membership. Null if the user account has been deleted.
      #
      #   @return [WhopSDK::Models::MembershipListResponse::User, nil]
      required :user, -> { WhopSDK::Models::MembershipListResponse::User }, nil?: true

      # @!method initialize(id:, cancel_at_period_end:, cancel_option:, canceled_at:, cancellation_reason:, company:, created_at:, currency:, joined_at:, license_key:, manage_url:, member:, metadata:, payment_collection_paused:, plan:, product:, promo_code:, renewal_period_end:, renewal_period_start:, status:, updated_at:, user:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::MembershipListResponse} for more details.
      #
      #   A membership represents an active relationship between a user and a product. It
      #   tracks the user's access, billing status, and renewal schedule.
      #
      #   @param id [String] The unique identifier for the membership.
      #
      #   @param cancel_at_period_end [Boolean] Whether this membership is set to cancel at the end of the current billing cycle
      #
      #   @param cancel_option [Symbol, WhopSDK::Models::CancelOptions, nil] The different reasons a user can choose for why they are canceling their members
      #
      #   @param canceled_at [Time, nil] The time the customer initiated cancellation of this membership. As a Unix times
      #
      #   @param cancellation_reason [String, nil] Free-text explanation provided by the customer when canceling. Null if the custo
      #
      #   @param company [WhopSDK::Models::MembershipListResponse::Company] The company this membership belongs to.
      #
      #   @param created_at [Time] The datetime the membership was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      #
      #   @param joined_at [Time, nil] The time the user first joined the company associated with this membership. As a
      #
      #   @param license_key [String, nil] The software license key associated with this membership. Only present if the pr
      #
      #   @param manage_url [String, nil] The URL where the customer can view and manage this membership, including cancel
      #
      #   @param member [WhopSDK::Models::MembershipListResponse::Member, nil] The member record linking the user to the company for this membership. Null if t
      #
      #   @param metadata [Hash{Symbol=>Object}] Custom key-value pairs for the membership (commonly used for software licensing,
      #
      #   @param payment_collection_paused [Boolean] Whether recurring payment collection for this membership is temporarily paused b
      #
      #   @param plan [WhopSDK::Models::MembershipListResponse::Plan] The plan the customer purchased to create this membership.
      #
      #   @param product [WhopSDK::Models::MembershipListResponse::Product] The product this membership grants access to.
      #
      #   @param promo_code [WhopSDK::Models::MembershipListResponse::PromoCode, nil] The promotional code currently applied to this membership's billing. Null if no
      #
      #   @param renewal_period_end [Time, nil] The end of the current billing period for this recurring membership. As a Unix t
      #
      #   @param renewal_period_start [Time, nil] The start of the current billing period for this recurring membership. As a Unix
      #
      #   @param status [Symbol, WhopSDK::Models::MembershipStatus] The current lifecycle status of the membership (e.g., active, trialing, past_due
      #
      #   @param updated_at [Time] The datetime the membership was last updated.
      #
      #   @param user [WhopSDK::Models::MembershipListResponse::User, nil] The user who owns this membership. Null if the user account has been deleted.

      # @see WhopSDK::Models::MembershipListResponse#company
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
        #   The company this membership belongs to.
        #
        #   @param id [String] The unique identifier for the company.
        #
        #   @param title [String] The display name of the company shown to customers.
      end

      # @see WhopSDK::Models::MembershipListResponse#member
      class Member < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the member.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The member record linking the user to the company for this membership. Null if
        #   the member record has not been created yet.
        #
        #   @param id [String] The unique identifier for the member.
      end

      # @see WhopSDK::Models::MembershipListResponse#plan
      class Plan < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the plan.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The plan the customer purchased to create this membership.
        #
        #   @param id [String] The unique identifier for the plan.
      end

      # @see WhopSDK::Models::MembershipListResponse#product
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
        #   {WhopSDK::Models::MembershipListResponse::Product} for more details.
        #
        #   The product this membership grants access to.
        #
        #   @param id [String] The unique identifier for the product.
        #
        #   @param title [String] The display name of the product shown to customers on the product page and in se
      end

      # @see WhopSDK::Models::MembershipListResponse#promo_code
      class PromoCode < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the promo code.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The promotional code currently applied to this membership's billing. Null if no
        #   promo code is active.
        #
        #   @param id [String] The unique identifier for the promo code.
      end

      # @see WhopSDK::Models::MembershipListResponse#user
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
        #   {WhopSDK::Models::MembershipListResponse::User} for more details.
        #
        #   The user who owns this membership. Null if the user account has been deleted.
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
