# frozen_string_literal: true

module WhopSDK
  module Models
    class RefundCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   A unique ID for every single webhook request
      #
      #   @return [String]
      required :id, String

      # @!attribute api_version
      #   The API version for this webhook
      #
      #   @return [Symbol, :v1]
      required :api_version, const: :v1

      # @!attribute data
      #   A refund represents a full or partial reversal of a payment, including the
      #   amount, status, and payment provider.
      #
      #   @return [WhopSDK::Models::RefundCreatedWebhookEvent::Data]
      required :data, -> { WhopSDK::RefundCreatedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"refund.created"]
      required :type, const: :"refund.created"

      # @!attribute company_id
      #   The company ID that this webhook event is associated with
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!method initialize(id:, data:, timestamp:, company_id: nil, api_version: :v1, type: :"refund.created")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::RefundCreatedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param data [WhopSDK::Models::RefundCreatedWebhookEvent::Data] A refund represents a full or partial reversal of a payment, including the amoun
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param company_id [String, nil] The company ID that this webhook event is associated with
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"refund.created"] The webhook event type

      # @see WhopSDK::Models::RefundCreatedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the refund.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   The refunded amount as a decimal in the specified currency, such as 10.43 for
        #   $10.43 USD.
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute created_at
        #   The datetime the refund was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute currency
        #   The three-letter ISO currency code for the refunded amount.
        #
        #   @return [Symbol, WhopSDK::Models::Currency]
        required :currency, enum: -> { WhopSDK::Currency }

        # @!attribute payment
        #   The original payment that this refund was issued against. Null if the payment is
        #   no longer available.
        #
        #   @return [WhopSDK::Models::RefundCreatedWebhookEvent::Data::Payment, nil]
        required :payment, -> { WhopSDK::RefundCreatedWebhookEvent::Data::Payment }, nil?: true

        # @!attribute provider
        #   The payment provider that processed the refund.
        #
        #   @return [Symbol, WhopSDK::Models::PaymentProvider]
        required :provider, enum: -> { WhopSDK::PaymentProvider }

        # @!attribute provider_created_at
        #   The timestamp when the refund was created in the payment provider's system. Null
        #   if not available from the provider.
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
        #   The tracking reference value from the payment processor, used to trace the
        #   refund through banking networks. Null if no reference was provided.
        #
        #   @return [String, nil]
        required :reference_value, String, nil?: true

        # @!attribute status
        #   The current processing status of the refund, such as pending, succeeded, or
        #   failed.
        #
        #   @return [Symbol, WhopSDK::Models::RefundStatus]
        required :status, enum: -> { WhopSDK::RefundStatus }

        # @!method initialize(id:, amount:, created_at:, currency:, payment:, provider:, provider_created_at:, reference_status:, reference_type:, reference_value:, status:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::RefundCreatedWebhookEvent::Data} for more details.
        #
        #   A refund represents a full or partial reversal of a payment, including the
        #   amount, status, and payment provider.
        #
        #   @param id [String] The unique identifier for the refund.
        #
        #   @param amount [Float] The refunded amount as a decimal in the specified currency, such as 10.43 for $1
        #
        #   @param created_at [Time] The datetime the refund was created.
        #
        #   @param currency [Symbol, WhopSDK::Models::Currency] The three-letter ISO currency code for the refunded amount.
        #
        #   @param payment [WhopSDK::Models::RefundCreatedWebhookEvent::Data::Payment, nil] The original payment that this refund was issued against. Null if the payment is
        #
        #   @param provider [Symbol, WhopSDK::Models::PaymentProvider] The payment provider that processed the refund.
        #
        #   @param provider_created_at [Time, nil] The timestamp when the refund was created in the payment provider's system. Null
        #
        #   @param reference_status [Symbol, WhopSDK::Models::RefundReferenceStatus, nil] The status of the refund reference.
        #
        #   @param reference_type [Symbol, WhopSDK::Models::RefundReferenceType, nil] The type of refund reference that was made available by the payment provider.
        #
        #   @param reference_value [String, nil] The tracking reference value from the payment processor, used to trace the refun
        #
        #   @param status [Symbol, WhopSDK::Models::RefundStatus] The current processing status of the refund, such as pending, succeeded, or fail

        # @see WhopSDK::Models::RefundCreatedWebhookEvent::Data#payment
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
          #   The last four digits of the card used to make this payment. Null if the payment
          #   was not made with a card.
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
          #   @return [WhopSDK::Models::RefundCreatedWebhookEvent::Data::Payment::Member, nil]
          required :member, -> { WhopSDK::RefundCreatedWebhookEvent::Data::Payment::Member }, nil?: true

          # @!attribute membership
          #   The membership attached to this payment.
          #
          #   @return [WhopSDK::Models::RefundCreatedWebhookEvent::Data::Payment::Membership, nil]
          required :membership,
                   -> {
                     WhopSDK::RefundCreatedWebhookEvent::Data::Payment::Membership
                   },
                   nil?: true

          # @!attribute paid_at
          #   The time at which this payment was successfully collected. Null if the payment
          #   has not yet succeeded. As a Unix timestamp.
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

          # @!attribute tax_amount
          #   The calculated amount of the sales/VAT tax (if applicable).
          #
          #   @return [Float, nil]
          required :tax_amount, Float, nil?: true

          # @!attribute tax_behavior
          #   The type of tax inclusivity applied to the receipt, for determining whether the
          #   tax is included in the final price, or paid on top.
          #
          #   @return [Symbol, WhopSDK::Models::RefundCreatedWebhookEvent::Data::Payment::TaxBehavior, nil]
          required :tax_behavior,
                   enum: -> { WhopSDK::RefundCreatedWebhookEvent::Data::Payment::TaxBehavior },
                   nil?: true

          # @!attribute tax_refunded_amount
          #   The amount of tax that has been refunded (if applicable).
          #
          #   @return [Float, nil]
          required :tax_refunded_amount, Float, nil?: true

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
          #   @return [WhopSDK::Models::RefundCreatedWebhookEvent::Data::Payment::User, nil]
          required :user, -> { WhopSDK::RefundCreatedWebhookEvent::Data::Payment::User }, nil?: true

          # @!method initialize(id:, billing_reason:, card_brand:, card_last4:, created_at:, currency:, dispute_alerted_at:, member:, membership:, paid_at:, payment_method_type:, subtotal:, tax_amount:, tax_behavior:, tax_refunded_amount:, total:, usd_total:, user:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::RefundCreatedWebhookEvent::Data::Payment} for more details.
          #
          #   The original payment that this refund was issued against. Null if the payment is
          #   no longer available.
          #
          #   @param id [String] The unique identifier for the payment.
          #
          #   @param billing_reason [Symbol, WhopSDK::Models::BillingReasons, nil] The reason why a specific payment was billed
          #
          #   @param card_brand [Symbol, WhopSDK::Models::CardBrands, nil] Possible card brands that a payment token can have
          #
          #   @param card_last4 [String, nil] The last four digits of the card used to make this payment. Null if the payment
          #
          #   @param created_at [Time] The datetime the payment was created.
          #
          #   @param currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
          #
          #   @param dispute_alerted_at [Time, nil] When an alert came in that this transaction will be disputed
          #
          #   @param member [WhopSDK::Models::RefundCreatedWebhookEvent::Data::Payment::Member, nil] The member attached to this payment.
          #
          #   @param membership [WhopSDK::Models::RefundCreatedWebhookEvent::Data::Payment::Membership, nil] The membership attached to this payment.
          #
          #   @param paid_at [Time, nil] The time at which this payment was successfully collected. Null if the payment h
          #
          #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes, nil] The different types of payment methods that can be used.
          #
          #   @param subtotal [Float, nil] The subtotal to show to the creator (excluding buyer fees).
          #
          #   @param tax_amount [Float, nil] The calculated amount of the sales/VAT tax (if applicable).
          #
          #   @param tax_behavior [Symbol, WhopSDK::Models::RefundCreatedWebhookEvent::Data::Payment::TaxBehavior, nil] The type of tax inclusivity applied to the receipt, for determining whether the
          #
          #   @param tax_refunded_amount [Float, nil] The amount of tax that has been refunded (if applicable).
          #
          #   @param total [Float, nil] The total to show to the creator (excluding buyer fees).
          #
          #   @param usd_total [Float, nil] The total in USD to show to the creator (excluding buyer fees).
          #
          #   @param user [WhopSDK::Models::RefundCreatedWebhookEvent::Data::Payment::User, nil] The user that made this payment.

          # @see WhopSDK::Models::RefundCreatedWebhookEvent::Data::Payment#member
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

          # @see WhopSDK::Models::RefundCreatedWebhookEvent::Data::Payment#membership
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

          # The type of tax inclusivity applied to the receipt, for determining whether the
          # tax is included in the final price, or paid on top.
          #
          # @see WhopSDK::Models::RefundCreatedWebhookEvent::Data::Payment#tax_behavior
          module TaxBehavior
            extend WhopSDK::Internal::Type::Enum

            EXCLUSIVE = :exclusive
            INCLUSIVE = :inclusive
            UNSPECIFIED = :unspecified
            UNABLE_TO_COLLECT = :unable_to_collect

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::RefundCreatedWebhookEvent::Data::Payment#user
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
            #   {WhopSDK::Models::RefundCreatedWebhookEvent::Data::Payment::User} for more
            #   details.
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
end
