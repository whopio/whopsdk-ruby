# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Payments#list
    class PaymentListResponse < Whopsdk::Internal::Type::BaseModel
      # @!attribute id
      #   The receipt ID
      #
      #   @return [String]
      required :id, String

      # @!attribute amount_after_fees
      #   How much the receipt is for after fees
      #
      #   @return [Float]
      required :amount_after_fees, Float

      # @!attribute auto_refunded
      #   Whether this payment was auto refunded or not
      #
      #   @return [Boolean]
      required :auto_refunded, Whopsdk::Internal::Type::Boolean

      # @!attribute billing_address
      #   The address of the user who made the payment.
      #
      #   @return [Whopsdk::Models::PaymentListResponse::BillingAddress, nil]
      required :billing_address, -> { Whopsdk::Models::PaymentListResponse::BillingAddress }, nil?: true

      # @!attribute billing_reason
      #   The billing reason
      #
      #   @return [String, nil]
      required :billing_reason, String, nil?: true

      # @!attribute card_brand
      #   The type of card used as the payment method.
      #
      #   @return [String, nil]
      required :card_brand, String, nil?: true

      # @!attribute card_last4
      #   The last 4 digits of the card used to make the payment.
      #
      #   @return [String, nil]
      required :card_last4, String, nil?: true

      # @!attribute company
      #   The company for the receipt.
      #
      #   @return [Whopsdk::Models::PaymentListResponse::Company, nil]
      required :company, -> { Whopsdk::Models::PaymentListResponse::Company }, nil?: true

      # @!attribute created_at
      #   The datetime the receipt was created
      #
      #   @return [Integer]
      required :created_at, Integer

      # @!attribute currency
      #   The available currencies on the platform
      #
      #   @return [Symbol, Whopsdk::Models::Currency, nil]
      required :currency, enum: -> { Whopsdk::Currency }, nil?: true

      # @!attribute dispute_alerted_at
      #   When an alert came in that this transaction will be disputed
      #
      #   @return [Integer, nil]
      required :dispute_alerted_at, Integer, nil?: true

      # @!attribute failure_message
      #   If the payment failed, the reason for the failure.
      #
      #   @return [String, nil]
      required :failure_message, String, nil?: true

      # @!attribute last_payment_attempt
      #   The time of the last payment attempt.
      #
      #   @return [Integer, nil]
      required :last_payment_attempt, Integer, nil?: true

      # @!attribute membership
      #   The membership attached to this receipt.
      #
      #   @return [Whopsdk::Models::PaymentListResponse::Membership, nil]
      required :membership, -> { Whopsdk::Models::PaymentListResponse::Membership }, nil?: true

      # @!attribute paid_at
      #   The datetime the receipt was paid
      #
      #   @return [Integer, nil]
      required :paid_at, Integer, nil?: true

      # @!attribute payment_method_type
      #   Returns the type of payment method used for the payment, if available. Ex.
      #   klarna, affirm, card, cashapp
      #
      #   @return [String, nil]
      required :payment_method_type, String, nil?: true

      # @!attribute plan
      #   The plan attached to this receipt.
      #
      #   @return [Whopsdk::Models::PaymentListResponse::Plan, nil]
      required :plan, -> { Whopsdk::Models::PaymentListResponse::Plan }, nil?: true

      # @!attribute product
      #   The access pass attached to this receipt.
      #
      #   @return [Whopsdk::Models::PaymentListResponse::Product, nil]
      required :product, -> { Whopsdk::Models::PaymentListResponse::Product }, nil?: true

      # @!attribute promo_code
      #   The promo code used for this receipt.
      #
      #   @return [Whopsdk::Models::PaymentListResponse::PromoCode, nil]
      required :promo_code, -> { Whopsdk::Models::PaymentListResponse::PromoCode }, nil?: true

      # @!attribute refundable
      #   Whether the payment can be refunded.
      #
      #   @return [Boolean]
      required :refundable, Whopsdk::Internal::Type::Boolean

      # @!attribute refunded_amount
      #   The payment refund amount(if applicable).
      #
      #   @return [Float, nil]
      required :refunded_amount, Float, nil?: true

      # @!attribute refunded_at
      #   When the payment was refunded (if applicable).
      #
      #   @return [Integer, nil]
      required :refunded_at, Integer, nil?: true

      # @!attribute retryable
      #   Whether the payment can be retried.
      #
      #   @return [Boolean]
      required :retryable, Whopsdk::Internal::Type::Boolean

      # @!attribute status
      #   The status of a receipt
      #
      #   @return [Symbol, Whopsdk::Models::ReceiptStatus, nil]
      required :status, enum: -> { Whopsdk::ReceiptStatus }, nil?: true

      # @!attribute substatus
      #   The friendly status of the receipt.
      #
      #   @return [Symbol, Whopsdk::Models::FriendlyReceiptStatus]
      required :substatus, enum: -> { Whopsdk::FriendlyReceiptStatus }

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
      #   @return [Whopsdk::Models::PaymentListResponse::User, nil]
      required :user, -> { Whopsdk::Models::PaymentListResponse::User }, nil?: true

      # @!method initialize(id:, amount_after_fees:, auto_refunded:, billing_address:, billing_reason:, card_brand:, card_last4:, company:, created_at:, currency:, dispute_alerted_at:, failure_message:, last_payment_attempt:, membership:, paid_at:, payment_method_type:, plan:, product:, promo_code:, refundable:, refunded_amount:, refunded_at:, retryable:, status:, substatus:, subtotal:, total:, usd_total:, user:)
      #   Some parameter documentations has been truncated, see
      #   {Whopsdk::Models::PaymentListResponse} for more details.
      #
      #   An object representing a receipt for a membership.
      #
      #   @param id [String] The receipt ID
      #
      #   @param amount_after_fees [Float] How much the receipt is for after fees
      #
      #   @param auto_refunded [Boolean] Whether this payment was auto refunded or not
      #
      #   @param billing_address [Whopsdk::Models::PaymentListResponse::BillingAddress, nil] The address of the user who made the payment.
      #
      #   @param billing_reason [String, nil] The billing reason
      #
      #   @param card_brand [String, nil] The type of card used as the payment method.
      #
      #   @param card_last4 [String, nil] The last 4 digits of the card used to make the payment.
      #
      #   @param company [Whopsdk::Models::PaymentListResponse::Company, nil] The company for the receipt.
      #
      #   @param created_at [Integer] The datetime the receipt was created
      #
      #   @param currency [Symbol, Whopsdk::Models::Currency, nil] The available currencies on the platform
      #
      #   @param dispute_alerted_at [Integer, nil] When an alert came in that this transaction will be disputed
      #
      #   @param failure_message [String, nil] If the payment failed, the reason for the failure.
      #
      #   @param last_payment_attempt [Integer, nil] The time of the last payment attempt.
      #
      #   @param membership [Whopsdk::Models::PaymentListResponse::Membership, nil] The membership attached to this receipt.
      #
      #   @param paid_at [Integer, nil] The datetime the receipt was paid
      #
      #   @param payment_method_type [String, nil] Returns the type of payment method used for the payment, if available. Ex. klarn
      #
      #   @param plan [Whopsdk::Models::PaymentListResponse::Plan, nil] The plan attached to this receipt.
      #
      #   @param product [Whopsdk::Models::PaymentListResponse::Product, nil] The access pass attached to this receipt.
      #
      #   @param promo_code [Whopsdk::Models::PaymentListResponse::PromoCode, nil] The promo code used for this receipt.
      #
      #   @param refundable [Boolean] Whether the payment can be refunded.
      #
      #   @param refunded_amount [Float, nil] The payment refund amount(if applicable).
      #
      #   @param refunded_at [Integer, nil] When the payment was refunded (if applicable).
      #
      #   @param retryable [Boolean] Whether the payment can be retried.
      #
      #   @param status [Symbol, Whopsdk::Models::ReceiptStatus, nil] The status of a receipt
      #
      #   @param substatus [Symbol, Whopsdk::Models::FriendlyReceiptStatus] The friendly status of the receipt.
      #
      #   @param subtotal [Float, nil] The subtotal to show to the creator (excluding buyer fees).
      #
      #   @param total [Float, nil] The total to show to the creator (excluding buyer fees).
      #
      #   @param usd_total [Float, nil] The total in USD to show to the creator (excluding buyer fees).
      #
      #   @param user [Whopsdk::Models::PaymentListResponse::User, nil] The user that made this payment.

      # @see Whopsdk::Models::PaymentListResponse#billing_address
      class BillingAddress < Whopsdk::Internal::Type::BaseModel
        # @!attribute city
        #   The city of the address.
        #
        #   @return [String, nil]
        required :city, String, nil?: true

        # @!attribute country
        #   The country of the address.
        #
        #   @return [String, nil]
        required :country, String, nil?: true

        # @!attribute line1
        #   The line 1 of the address.
        #
        #   @return [String, nil]
        required :line1, String, nil?: true

        # @!attribute line2
        #   The line 2 of the address.
        #
        #   @return [String, nil]
        required :line2, String, nil?: true

        # @!attribute name
        #   The name of the customer.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute postal_code
        #   The postal code of the address.
        #
        #   @return [String, nil]
        required :postal_code, String, nil?: true

        # @!attribute state
        #   The state of the address.
        #
        #   @return [String, nil]
        required :state, String, nil?: true

        # @!method initialize(city:, country:, line1:, line2:, name:, postal_code:, state:)
        #   The address of the user who made the payment.
        #
        #   @param city [String, nil] The city of the address.
        #
        #   @param country [String, nil] The country of the address.
        #
        #   @param line1 [String, nil] The line 1 of the address.
        #
        #   @param line2 [String, nil] The line 2 of the address.
        #
        #   @param name [String, nil] The name of the customer.
        #
        #   @param postal_code [String, nil] The postal code of the address.
        #
        #   @param state [String, nil] The state of the address.
      end

      # @see Whopsdk::Models::PaymentListResponse#company
      class Company < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the company
        #
        #   @return [String]
        required :id, String

        # @!attribute route
        #   The slug/route of the company on the Whop site.
        #
        #   @return [String]
        required :route, String

        # @!attribute title
        #   The written name of the company.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, route:, title:)
        #   The company for the receipt.
        #
        #   @param id [String] The ID of the company
        #
        #   @param route [String] The slug/route of the company on the Whop site.
        #
        #   @param title [String] The written name of the company.
      end

      # @see Whopsdk::Models::PaymentListResponse#membership
      class Membership < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the membership.
        #
        #   @return [String]
        required :id, String

        # @!attribute status
        #   The state of the membership.
        #
        #   @return [Symbol, Whopsdk::Models::MembershipStatus]
        required :status, enum: -> { Whopsdk::MembershipStatus }

        # @!method initialize(id:, status:)
        #   The membership attached to this receipt.
        #
        #   @param id [String] The internal ID of the membership.
        #
        #   @param status [Symbol, Whopsdk::Models::MembershipStatus] The state of the membership.
      end

      # @see Whopsdk::Models::PaymentListResponse#plan
      class Plan < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the plan.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The plan attached to this receipt.
        #
        #   @param id [String] The internal ID of the plan.
      end

      # @see Whopsdk::Models::PaymentListResponse#product
      class Product < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the public access pass.
        #
        #   @return [String]
        required :id, String

        # @!attribute route
        #   The route of the access pass.
        #
        #   @return [String]
        required :route, String

        # @!attribute title
        #   The title of the access pass. Use for Whop 4.0.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, route:, title:)
        #   The access pass attached to this receipt.
        #
        #   @param id [String] The internal ID of the public access pass.
        #
        #   @param route [String] The route of the access pass.
        #
        #   @param title [String] The title of the access pass. Use for Whop 4.0.
      end

      # @see Whopsdk::Models::PaymentListResponse#promo_code
      class PromoCode < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the promo.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount_off
        #   The amount off (% or flat amount) for the promo.
        #
        #   @return [Float]
        required :amount_off, Float

        # @!attribute base_currency
        #   The monetary currency of the promo code.
        #
        #   @return [Symbol, Whopsdk::Models::Currency]
        required :base_currency, enum: -> { Whopsdk::Currency }

        # @!attribute code
        #   The specific code used to apply the promo at checkout.
        #
        #   @return [String, nil]
        required :code, String, nil?: true

        # @!attribute number_of_intervals
        #   The number of billing cycles the promo is applied for.
        #
        #   @return [Integer, nil]
        required :number_of_intervals, Integer, nil?: true

        # @!attribute promo_type
        #   The type (% or flat amount) of the promo.
        #
        #   @return [Symbol, Whopsdk::Models::PromoType]
        required :promo_type, enum: -> { Whopsdk::PromoType }

        # @!method initialize(id:, amount_off:, base_currency:, code:, number_of_intervals:, promo_type:)
        #   The promo code used for this receipt.
        #
        #   @param id [String] The ID of the promo.
        #
        #   @param amount_off [Float] The amount off (% or flat amount) for the promo.
        #
        #   @param base_currency [Symbol, Whopsdk::Models::Currency] The monetary currency of the promo code.
        #
        #   @param code [String, nil] The specific code used to apply the promo at checkout.
        #
        #   @param number_of_intervals [Integer, nil] The number of billing cycles the promo is applied for.
        #
        #   @param promo_type [Symbol, Whopsdk::Models::PromoType] The type (% or flat amount) of the promo.
      end

      # @see Whopsdk::Models::PaymentListResponse#user
      class User < Whopsdk::Internal::Type::BaseModel
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
        #   The user that made this payment.
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
