# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Refunds#retrieve
    class RefundRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the refund.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   The amount of the refund. Provided as a number in the specified currency. Eg:
      #   10.43 for $10.43 USD.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute created_at
      #   The datetime the refund was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The currency of the refund.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute payment
      #   The payment associated with the refund.
      #
      #   @return [WhopSDK::Models::RefundRetrieveResponse::Payment, nil]
      required :payment, -> { WhopSDK::Models::RefundRetrieveResponse::Payment }, nil?: true

      # @!attribute provider
      #   The provider of the refund.
      #
      #   @return [Symbol, WhopSDK::Models::PaymentProvider]
      required :provider, enum: -> { WhopSDK::PaymentProvider }

      # @!attribute provider_created_at
      #   The time the refund was created by the provider.
      #
      #   @return [Time, nil]
      required :provider_created_at, Time, nil?: true

      # @!attribute reference_status
      #   The status of the refund reference.
      #
      #   @return [Symbol, WhopSDK::Models::RefundReferenceStatus, nil]
      required :reference_status, enum: -> { WhopSDK::RefundReferenceStatus }, nil?: true

      # @!attribute reference_type
      #   The type of refund reference that was made available by the payment provider.
      #
      #   @return [Symbol, WhopSDK::Models::RefundReferenceType, nil]
      required :reference_type, enum: -> { WhopSDK::RefundReferenceType }, nil?: true

      # @!attribute reference_value
      #   The value of the reference.
      #
      #   @return [String, nil]
      required :reference_value, String, nil?: true

      # @!attribute status
      #   The status of the refund.
      #
      #   @return [Symbol, WhopSDK::Models::RefundStatus]
      required :status, enum: -> { WhopSDK::RefundStatus }

      # @!method initialize(id:, amount:, created_at:, currency:, payment:, provider:, provider_created_at:, reference_status:, reference_type:, reference_value:, status:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::RefundRetrieveResponse} for more details.
      #
      #   A refund represents a full or partial reversal of a payment, including the
      #   amount, status, and payment provider.
      #
      #   @param id [String] The unique identifier for the refund.
      #
      #   @param amount [Float] The amount of the refund. Provided as a number in the specified currency. Eg: 10
      #
      #   @param created_at [Time] The datetime the refund was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The currency of the refund.
      #
      #   @param payment [WhopSDK::Models::RefundRetrieveResponse::Payment, nil] The payment associated with the refund.
      #
      #   @param provider [Symbol, WhopSDK::Models::PaymentProvider] The provider of the refund.
      #
      #   @param provider_created_at [Time, nil] The time the refund was created by the provider.
      #
      #   @param reference_status [Symbol, WhopSDK::Models::RefundReferenceStatus, nil] The status of the refund reference.
      #
      #   @param reference_type [Symbol, WhopSDK::Models::RefundReferenceType, nil] The type of refund reference that was made available by the payment provider.
      #
      #   @param reference_value [String, nil] The value of the reference.
      #
      #   @param status [Symbol, WhopSDK::Models::RefundStatus] The status of the refund.

      # @see WhopSDK::Models::RefundRetrieveResponse#payment
      class Payment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the payment.
        #
        #   @return [String]
        required :id, String

        # @!attribute billing_reason
        #   The reason why a specific payment was billed
        #
        #   @return [Symbol, WhopSDK::Models::BillingReasons, nil]
        required :billing_reason, enum: -> { WhopSDK::BillingReasons }, nil?: true

        # @!attribute card_brand
        #   Possible card brands that a payment token can have
        #
        #   @return [Symbol, WhopSDK::Models::CardBrands, nil]
        required :card_brand, enum: -> { WhopSDK::CardBrands }, nil?: true

        # @!attribute card_last4
        #   The last 4 digits of the card used to make the payment.
        #
        #   @return [String, nil]
        required :card_last4, String, nil?: true

        # @!attribute created_at
        #   The datetime the payment was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute currency
        #   The available currencies on the platform
        #
        #   @return [Symbol, WhopSDK::Models::Currency, nil]
        required :currency, enum: -> { WhopSDK::Currency }, nil?: true

        # @!attribute dispute_alerted_at
        #   When an alert came in that this transaction will be disputed
        #
        #   @return [Time, nil]
        required :dispute_alerted_at, Time, nil?: true

        # @!attribute member
        #   The member attached to this payment.
        #
        #   @return [WhopSDK::Models::RefundRetrieveResponse::Payment::Member, nil]
        required :member, -> { WhopSDK::Models::RefundRetrieveResponse::Payment::Member }, nil?: true

        # @!attribute membership
        #   The membership attached to this payment.
        #
        #   @return [WhopSDK::Models::RefundRetrieveResponse::Payment::Membership, nil]
        required :membership, -> { WhopSDK::Models::RefundRetrieveResponse::Payment::Membership }, nil?: true

        # @!attribute paid_at
        #   The datetime the payment was paid
        #
        #   @return [Time, nil]
        required :paid_at, Time, nil?: true

        # @!attribute payment_method_type
        #   The different types of payment methods that can be used.
        #
        #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes, nil]
        required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }, nil?: true

        # @!attribute subtotal
        #   The subtotal to show to the creator (excluding buyer fees).
        #
        #   @return [Float, nil]
        required :subtotal, Float, nil?: true

        # @!attribute total
        #   The total to show to the creator (excluding buyer fees).
        #
        #   @return [Float, nil]
        required :total, Float, nil?: true

        # @!attribute usd_total
        #   The total in USD to show to the creator (excluding buyer fees).
        #
        #   @return [Float, nil]
        required :usd_total, Float, nil?: true

        # @!attribute user
        #   The user that made this payment.
        #
        #   @return [WhopSDK::Models::RefundRetrieveResponse::Payment::User, nil]
        required :user, -> { WhopSDK::Models::RefundRetrieveResponse::Payment::User }, nil?: true

        # @!method initialize(id:, billing_reason:, card_brand:, card_last4:, created_at:, currency:, dispute_alerted_at:, member:, membership:, paid_at:, payment_method_type:, subtotal:, total:, usd_total:, user:)
        #   The payment associated with the refund.
        #
        #   @param id [String] The unique identifier for the payment.
        #
        #   @param billing_reason [Symbol, WhopSDK::Models::BillingReasons, nil] The reason why a specific payment was billed
        #
        #   @param card_brand [Symbol, WhopSDK::Models::CardBrands, nil] Possible card brands that a payment token can have
        #
        #   @param card_last4 [String, nil] The last 4 digits of the card used to make the payment.
        #
        #   @param created_at [Time] The datetime the payment was created.
        #
        #   @param currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
        #
        #   @param dispute_alerted_at [Time, nil] When an alert came in that this transaction will be disputed
        #
        #   @param member [WhopSDK::Models::RefundRetrieveResponse::Payment::Member, nil] The member attached to this payment.
        #
        #   @param membership [WhopSDK::Models::RefundRetrieveResponse::Payment::Membership, nil] The membership attached to this payment.
        #
        #   @param paid_at [Time, nil] The datetime the payment was paid
        #
        #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes, nil] The different types of payment methods that can be used.
        #
        #   @param subtotal [Float, nil] The subtotal to show to the creator (excluding buyer fees).
        #
        #   @param total [Float, nil] The total to show to the creator (excluding buyer fees).
        #
        #   @param usd_total [Float, nil] The total in USD to show to the creator (excluding buyer fees).
        #
        #   @param user [WhopSDK::Models::RefundRetrieveResponse::Payment::User, nil] The user that made this payment.

        # @see WhopSDK::Models::RefundRetrieveResponse::Payment#member
        class Member < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the company member.
          #
          #   @return [String]
          required :id, String

          # @!attribute phone
          #   The phone number for the member, if available.
          #
          #   @return [String, nil]
          required :phone, String, nil?: true

          # @!method initialize(id:, phone:)
          #   The member attached to this payment.
          #
          #   @param id [String] The unique identifier for the company member.
          #
          #   @param phone [String, nil] The phone number for the member, if available.
        end

        # @see WhopSDK::Models::RefundRetrieveResponse::Payment#membership
        class Membership < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the membership.
          #
          #   @return [String]
          required :id, String

          # @!attribute status
          #   The state of the membership.
          #
          #   @return [Symbol, WhopSDK::Models::MembershipStatus]
          required :status, enum: -> { WhopSDK::MembershipStatus }

          # @!method initialize(id:, status:)
          #   The membership attached to this payment.
          #
          #   @param id [String] The unique identifier for the membership.
          #
          #   @param status [Symbol, WhopSDK::Models::MembershipStatus] The state of the membership.
        end

        # @see WhopSDK::Models::RefundRetrieveResponse::Payment#user
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
          #   {WhopSDK::Models::RefundRetrieveResponse::Payment::User} for more details.
          #
          #   The user that made this payment.
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
end
