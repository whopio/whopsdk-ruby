# frozen_string_literal: true

module WhopSDK
  module Models
    class Payment < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The payment ID
      #
      #   @return [String]
      required :id, String

      # @!attribute amount_after_fees
      #   How much the payment is for after fees
      #
      #   @return [Float]
      required :amount_after_fees, Float

      # @!attribute application_fee
      #   The application fee charged on this payment.
      #
      #   @return [WhopSDK::Models::Payment::ApplicationFee, nil]
      required :application_fee, -> { WhopSDK::Payment::ApplicationFee }, nil?: true

      # @!attribute auto_refunded
      #   Whether this payment was auto refunded or not
      #
      #   @return [Boolean]
      required :auto_refunded, WhopSDK::Internal::Type::Boolean

      # @!attribute billing_address
      #   The address of the user who made the payment.
      #
      #   @return [WhopSDK::Models::Payment::BillingAddress, nil]
      required :billing_address, -> { WhopSDK::Payment::BillingAddress }, nil?: true

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

      # @!attribute company
      #   The company for the payment.
      #
      #   @return [WhopSDK::Models::Payment::Company, nil]
      required :company, -> { WhopSDK::Payment::Company }, nil?: true

      # @!attribute created_at
      #   The datetime the payment was created
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

      # @!attribute failure_message
      #   If the payment failed, the reason for the failure.
      #
      #   @return [String, nil]
      required :failure_message, String, nil?: true

      # @!attribute last_payment_attempt
      #   The time of the last payment attempt.
      #
      #   @return [Time, nil]
      required :last_payment_attempt, Time, nil?: true

      # @!attribute member
      #   The member attached to this payment.
      #
      #   @return [WhopSDK::Models::Payment::Member, nil]
      required :member, -> { WhopSDK::Payment::Member }, nil?: true

      # @!attribute membership
      #   The membership attached to this payment.
      #
      #   @return [WhopSDK::Models::Payment::Membership, nil]
      required :membership, -> { WhopSDK::Payment::Membership }, nil?: true

      # @!attribute metadata
      #   The custom metadata stored on this payment. This will be copied over to the
      #   checkout configuration for which this payment was made
      #
      #   @return [Hash{Symbol=>Object}, nil]
      required :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute next_payment_attempt
      #   The time of the next schedule payment retry.
      #
      #   @return [Time, nil]
      required :next_payment_attempt, Time, nil?: true

      # @!attribute paid_at
      #   The datetime the payment was paid
      #
      #   @return [Time, nil]
      required :paid_at, Time, nil?: true

      # @!attribute payment_method
      #   The payment method used for the payment, if available.
      #
      #   @return [WhopSDK::Models::Payment::PaymentMethod, nil]
      required :payment_method, -> { WhopSDK::Payment::PaymentMethod }, nil?: true

      # @!attribute payment_method_type
      #   The different types of payment methods that can be used.
      #
      #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes, nil]
      required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }, nil?: true

      # @!attribute payments_failed
      #   The number of failed payment attempts for the payment.
      #
      #   @return [Integer, nil]
      required :payments_failed, Integer, nil?: true

      # @!attribute plan
      #   The plan attached to this payment.
      #
      #   @return [WhopSDK::Models::Payment::Plan, nil]
      required :plan, -> { WhopSDK::Payment::Plan }, nil?: true

      # @!attribute product
      #   The product this payment was made for
      #
      #   @return [WhopSDK::Models::Payment::Product, nil]
      required :product, -> { WhopSDK::Payment::Product }, nil?: true

      # @!attribute promo_code
      #   The promo code used for this payment.
      #
      #   @return [WhopSDK::Models::Payment::PromoCode, nil]
      required :promo_code, -> { WhopSDK::Payment::PromoCode }, nil?: true

      # @!attribute refundable
      #   True only for payments that are `paid`, have not been fully refunded, and were
      #   processed by a payment processor that allows refunds.
      #
      #   @return [Boolean]
      required :refundable, WhopSDK::Internal::Type::Boolean

      # @!attribute refunded_amount
      #   The payment refund amount(if applicable).
      #
      #   @return [Float, nil]
      required :refunded_amount, Float, nil?: true

      # @!attribute refunded_at
      #   When the payment was refunded (if applicable).
      #
      #   @return [Time, nil]
      required :refunded_at, Time, nil?: true

      # @!attribute retryable
      #   True when the payment status is `open` and its membership is in one of the
      #   retry-eligible states (`active`, `trialing`, `completed`, or `past_due`);
      #   otherwise false. Used to decide if Whop can attempt the charge again.
      #
      #   @return [Boolean]
      required :retryable, WhopSDK::Internal::Type::Boolean

      # @!attribute status
      #   The status of a receipt
      #
      #   @return [Symbol, WhopSDK::Models::ReceiptStatus, nil]
      required :status, enum: -> { WhopSDK::ReceiptStatus }, nil?: true

      # @!attribute substatus
      #   The friendly status of the payment.
      #
      #   @return [Symbol, WhopSDK::Models::FriendlyReceiptStatus]
      required :substatus, enum: -> { WhopSDK::FriendlyReceiptStatus }

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
      #   @return [WhopSDK::Models::Payment::User, nil]
      required :user, -> { WhopSDK::Payment::User }, nil?: true

      # @!attribute voidable
      #   True when the payment is tied to a membership in `past_due`, the payment status
      #   is `open`, and the processor allows voiding payments; otherwise false.
      #
      #   @return [Boolean]
      required :voidable, WhopSDK::Internal::Type::Boolean

      # @!method initialize(id:, amount_after_fees:, application_fee:, auto_refunded:, billing_address:, billing_reason:, card_brand:, card_last4:, company:, created_at:, currency:, dispute_alerted_at:, failure_message:, last_payment_attempt:, member:, membership:, metadata:, next_payment_attempt:, paid_at:, payment_method:, payment_method_type:, payments_failed:, plan:, product:, promo_code:, refundable:, refunded_amount:, refunded_at:, retryable:, status:, substatus:, subtotal:, total:, usd_total:, user:, voidable:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::Payment}
      #   for more details.
      #
      #   An object representing a receipt for a membership.
      #
      #   @param id [String] The payment ID
      #
      #   @param amount_after_fees [Float] How much the payment is for after fees
      #
      #   @param application_fee [WhopSDK::Models::Payment::ApplicationFee, nil] The application fee charged on this payment.
      #
      #   @param auto_refunded [Boolean] Whether this payment was auto refunded or not
      #
      #   @param billing_address [WhopSDK::Models::Payment::BillingAddress, nil] The address of the user who made the payment.
      #
      #   @param billing_reason [Symbol, WhopSDK::Models::BillingReasons, nil] The reason why a specific payment was billed
      #
      #   @param card_brand [Symbol, WhopSDK::Models::CardBrands, nil] Possible card brands that a payment token can have
      #
      #   @param card_last4 [String, nil] The last 4 digits of the card used to make the payment.
      #
      #   @param company [WhopSDK::Models::Payment::Company, nil] The company for the payment.
      #
      #   @param created_at [Time] The datetime the payment was created
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      #
      #   @param dispute_alerted_at [Time, nil] When an alert came in that this transaction will be disputed
      #
      #   @param failure_message [String, nil] If the payment failed, the reason for the failure.
      #
      #   @param last_payment_attempt [Time, nil] The time of the last payment attempt.
      #
      #   @param member [WhopSDK::Models::Payment::Member, nil] The member attached to this payment.
      #
      #   @param membership [WhopSDK::Models::Payment::Membership, nil] The membership attached to this payment.
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] The custom metadata stored on this payment. This will be copied over to the chec
      #
      #   @param next_payment_attempt [Time, nil] The time of the next schedule payment retry.
      #
      #   @param paid_at [Time, nil] The datetime the payment was paid
      #
      #   @param payment_method [WhopSDK::Models::Payment::PaymentMethod, nil] The payment method used for the payment, if available.
      #
      #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes, nil] The different types of payment methods that can be used.
      #
      #   @param payments_failed [Integer, nil] The number of failed payment attempts for the payment.
      #
      #   @param plan [WhopSDK::Models::Payment::Plan, nil] The plan attached to this payment.
      #
      #   @param product [WhopSDK::Models::Payment::Product, nil] The product this payment was made for
      #
      #   @param promo_code [WhopSDK::Models::Payment::PromoCode, nil] The promo code used for this payment.
      #
      #   @param refundable [Boolean] True only for payments that are `paid`, have not been fully refunded, and were p
      #
      #   @param refunded_amount [Float, nil] The payment refund amount(if applicable).
      #
      #   @param refunded_at [Time, nil] When the payment was refunded (if applicable).
      #
      #   @param retryable [Boolean] True when the payment status is `open` and its membership is in one of the retry
      #
      #   @param status [Symbol, WhopSDK::Models::ReceiptStatus, nil] The status of a receipt
      #
      #   @param substatus [Symbol, WhopSDK::Models::FriendlyReceiptStatus] The friendly status of the payment.
      #
      #   @param subtotal [Float, nil] The subtotal to show to the creator (excluding buyer fees).
      #
      #   @param total [Float, nil] The total to show to the creator (excluding buyer fees).
      #
      #   @param usd_total [Float, nil] The total in USD to show to the creator (excluding buyer fees).
      #
      #   @param user [WhopSDK::Models::Payment::User, nil] The user that made this payment.
      #
      #   @param voidable [Boolean] True when the payment is tied to a membership in `past_due`, the payment status

      # @see WhopSDK::Models::Payment#application_fee
      class ApplicationFee < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the application fee.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   The application fee amount.
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute amount_captured
        #   The amount of the application fee that has been captured.
        #
        #   @return [Float]
        required :amount_captured, Float

        # @!attribute amount_refunded
        #   The amount of the application fee that has been refunded.
        #
        #   @return [Float]
        required :amount_refunded, Float

        # @!attribute created_at
        #   When the application fee was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute currency
        #   The currency of the application fee.
        #
        #   @return [Symbol, WhopSDK::Models::Currency]
        required :currency, enum: -> { WhopSDK::Currency }

        # @!method initialize(id:, amount:, amount_captured:, amount_refunded:, created_at:, currency:)
        #   The application fee charged on this payment.
        #
        #   @param id [String] The unique identifier for the application fee.
        #
        #   @param amount [Float] The application fee amount.
        #
        #   @param amount_captured [Float] The amount of the application fee that has been captured.
        #
        #   @param amount_refunded [Float] The amount of the application fee that has been refunded.
        #
        #   @param created_at [Time] When the application fee was created.
        #
        #   @param currency [Symbol, WhopSDK::Models::Currency] The currency of the application fee.
      end

      # @see WhopSDK::Models::Payment#billing_address
      class BillingAddress < WhopSDK::Internal::Type::BaseModel
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

      # @see WhopSDK::Models::Payment#company
      class Company < WhopSDK::Internal::Type::BaseModel
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
        #   The company for the payment.
        #
        #   @param id [String] The ID of the company
        #
        #   @param route [String] The slug/route of the company on the Whop site.
        #
        #   @param title [String] The written name of the company.
      end

      # @see WhopSDK::Models::Payment#member
      class Member < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the member
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
        #   @param id [String] The ID of the member
        #
        #   @param phone [String, nil] The phone number for the member, if available.
      end

      # @see WhopSDK::Models::Payment#membership
      class Membership < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the membership.
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
        #   @param id [String] The internal ID of the membership.
        #
        #   @param status [Symbol, WhopSDK::Models::MembershipStatus] The state of the membership.
      end

      # @see WhopSDK::Models::Payment#payment_method
      class PaymentMethod < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the payment method
        #
        #   @return [String]
        required :id, String

        # @!attribute card
        #   The card data associated with the payment method, if its a debit or credit card.
        #
        #   @return [WhopSDK::Models::Payment::PaymentMethod::Card, nil]
        required :card, -> { WhopSDK::Payment::PaymentMethod::Card }, nil?: true

        # @!attribute created_at
        #   The date and time the payment method was created
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute payment_method_type
        #   The payment method type of the payment method
        #
        #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes]
        required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }

        # @!method initialize(id:, card:, created_at:, payment_method_type:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Payment::PaymentMethod} for more details.
        #
        #   The payment method used for the payment, if available.
        #
        #   @param id [String] The ID of the payment method
        #
        #   @param card [WhopSDK::Models::Payment::PaymentMethod::Card, nil] The card data associated with the payment method, if its a debit or credit card.
        #
        #   @param created_at [Time] The date and time the payment method was created
        #
        #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The payment method type of the payment method

        # @see WhopSDK::Models::Payment::PaymentMethod#card
        class Card < WhopSDK::Internal::Type::BaseModel
          # @!attribute brand
          #   Possible card brands that a payment token can have
          #
          #   @return [Symbol, WhopSDK::Models::CardBrands, nil]
          required :brand, enum: -> { WhopSDK::CardBrands }, nil?: true

          # @!attribute exp_month
          #   Card expiration month, like 03 for March.
          #
          #   @return [Integer, nil]
          required :exp_month, Integer, nil?: true

          # @!attribute exp_year
          #   Card expiration year, like 27 for 2027.
          #
          #   @return [Integer, nil]
          required :exp_year, Integer, nil?: true

          # @!attribute last4
          #   Last four digits of the card.
          #
          #   @return [String, nil]
          required :last4, String, nil?: true

          # @!method initialize(brand:, exp_month:, exp_year:, last4:)
          #   The card data associated with the payment method, if its a debit or credit card.
          #
          #   @param brand [Symbol, WhopSDK::Models::CardBrands, nil] Possible card brands that a payment token can have
          #
          #   @param exp_month [Integer, nil] Card expiration month, like 03 for March.
          #
          #   @param exp_year [Integer, nil] Card expiration year, like 27 for 2027.
          #
          #   @param last4 [String, nil] Last four digits of the card.
        end
      end

      # @see WhopSDK::Models::Payment#plan
      class Plan < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the plan.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The plan attached to this payment.
        #
        #   @param id [String] The internal ID of the plan.
      end

      # @see WhopSDK::Models::Payment#product
      class Product < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the public product.
        #
        #   @return [String]
        required :id, String

        # @!attribute route
        #   The route of the product.
        #
        #   @return [String]
        required :route, String

        # @!attribute title
        #   The title of the product. Use for Whop 4.0.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, route:, title:)
        #   The product this payment was made for
        #
        #   @param id [String] The internal ID of the public product.
        #
        #   @param route [String] The route of the product.
        #
        #   @param title [String] The title of the product. Use for Whop 4.0.
      end

      # @see WhopSDK::Models::Payment#promo_code
      class PromoCode < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the promo.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount_off
        #   The discount amount. Interpretation depends on promo_type: if 'percentage', this
        #   is the percentage (e.g., 20 means 20% off); if 'flat_amount', this is dollars
        #   off (e.g., 10.00 means $10.00 off).
        #
        #   @return [Float]
        required :amount_off, Float

        # @!attribute base_currency
        #   The monetary currency of the promo code.
        #
        #   @return [Symbol, WhopSDK::Models::Currency]
        required :base_currency, enum: -> { WhopSDK::Currency }

        # @!attribute code
        #   The specific code used to apply the promo at checkout.
        #
        #   @return [String, nil]
        required :code, String, nil?: true

        # @!attribute number_of_intervals
        #   The number of months the promo is applied for.
        #
        #   @return [Integer, nil]
        required :number_of_intervals, Integer, nil?: true

        # @!attribute promo_type
        #   The type (% or flat amount) of the promo.
        #
        #   @return [Symbol, WhopSDK::Models::PromoType]
        required :promo_type, enum: -> { WhopSDK::PromoType }

        # @!method initialize(id:, amount_off:, base_currency:, code:, number_of_intervals:, promo_type:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Payment::PromoCode} for more details.
        #
        #   The promo code used for this payment.
        #
        #   @param id [String] The ID of the promo.
        #
        #   @param amount_off [Float] The discount amount. Interpretation depends on promo_type: if 'percentage', this
        #
        #   @param base_currency [Symbol, WhopSDK::Models::Currency] The monetary currency of the promo code.
        #
        #   @param code [String, nil] The specific code used to apply the promo at checkout.
        #
        #   @param number_of_intervals [Integer, nil] The number of months the promo is applied for.
        #
        #   @param promo_type [Symbol, WhopSDK::Models::PromoType] The type (% or flat amount) of the promo.
      end

      # @see WhopSDK::Models::Payment#user
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
