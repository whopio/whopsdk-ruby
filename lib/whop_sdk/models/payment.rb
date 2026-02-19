# frozen_string_literal: true

module WhopSDK
  module Models
    class Payment < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the payment.
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
      #   The last four digits of the card used to make this payment. Null if the payment
      #   was not made with a card.
      #
      #   @return [String, nil]
      required :card_last4, String, nil?: true

      # @!attribute company
      #   The company for the payment.
      #
      #   @return [WhopSDK::Models::Payment::Company, nil]
      required :company, -> { WhopSDK::Payment::Company }, nil?: true

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

      # @!attribute disputes
      #   The disputes attached to this payment. Null if the actor in context does not
      #   have the payment:dispute:read permission.
      #
      #   @return [Array<WhopSDK::Models::Payment::Dispute>, nil]
      required :disputes, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Payment::Dispute] }, nil?: true

      # @!attribute failure_message
      #   If the payment failed, the reason for the failure.
      #
      #   @return [String, nil]
      required :failure_message, String, nil?: true

      # @!attribute financing_installments_count
      #   The number of financing installments for the payment. Present if the payment is
      #   a financing payment (e.g. Splitit, Klarna, etc.).
      #
      #   @return [Integer, nil]
      required :financing_installments_count, Integer, nil?: true

      # @!attribute financing_transactions
      #   The financing transactions attached to this payment. Present if the payment is a
      #   financing payment (e.g. Splitit, Klarna, etc.).
      #
      #   @return [Array<WhopSDK::Models::Payment::FinancingTransaction>]
      required :financing_transactions,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Payment::FinancingTransaction] }

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
      #   The time at which this payment was successfully collected. Null if the payment
      #   has not yet succeeded. As a Unix timestamp.
      #
      #   @return [Time, nil]
      required :paid_at, Time, nil?: true

      # @!attribute payment_method
      #   The tokenized payment method reference used for this payment. Null if no token
      #   was used.
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

      # @!attribute resolutions
      #   The resolution center cases opened by the customer on this payment. Null if the
      #   actor in context does not have the payment:resolution_center_case:read
      #   permission.
      #
      #   @return [Array<WhopSDK::Models::Payment::Resolution>, nil]
      required :resolutions, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Payment::Resolution] }, nil?: true

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

      # @!method initialize(id:, amount_after_fees:, application_fee:, auto_refunded:, billing_address:, billing_reason:, card_brand:, card_last4:, company:, created_at:, currency:, dispute_alerted_at:, disputes:, failure_message:, financing_installments_count:, financing_transactions:, last_payment_attempt:, member:, membership:, metadata:, next_payment_attempt:, paid_at:, payment_method:, payment_method_type:, payments_failed:, plan:, product:, promo_code:, refundable:, refunded_amount:, refunded_at:, resolutions:, retryable:, status:, substatus:, subtotal:, total:, usd_total:, user:, voidable:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::Payment}
      #   for more details.
      #
      #   A payment represents a completed or attempted charge. Payments track the amount,
      #   status, currency, and payment method used.
      #
      #   @param id [String] The unique identifier for the payment.
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
      #   @param card_last4 [String, nil] The last four digits of the card used to make this payment. Null if the payment
      #
      #   @param company [WhopSDK::Models::Payment::Company, nil] The company for the payment.
      #
      #   @param created_at [Time] The datetime the payment was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      #
      #   @param dispute_alerted_at [Time, nil] When an alert came in that this transaction will be disputed
      #
      #   @param disputes [Array<WhopSDK::Models::Payment::Dispute>, nil] The disputes attached to this payment. Null if the actor in context does not hav
      #
      #   @param failure_message [String, nil] If the payment failed, the reason for the failure.
      #
      #   @param financing_installments_count [Integer, nil] The number of financing installments for the payment. Present if the payment is
      #
      #   @param financing_transactions [Array<WhopSDK::Models::Payment::FinancingTransaction>] The financing transactions attached to this payment. Present if the payment is a
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
      #   @param paid_at [Time, nil] The time at which this payment was successfully collected. Null if the payment h
      #
      #   @param payment_method [WhopSDK::Models::Payment::PaymentMethod, nil] The tokenized payment method reference used for this payment. Null if no token w
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
      #   @param resolutions [Array<WhopSDK::Models::Payment::Resolution>, nil] The resolution center cases opened by the customer on this payment. Null if the
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
        #   The datetime the application fee was created.
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
        #   @param created_at [Time] The datetime the application fee was created.
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
        #   The unique identifier for the company.
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
        #   @param id [String] The unique identifier for the company.
        #
        #   @param route [String] The slug/route of the company on the Whop site.
        #
        #   @param title [String] The written name of the company.
      end

      class Dispute < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the dispute.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   The disputed amount in the specified currency, formatted as a decimal.
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute currency
        #   The three-letter ISO currency code for the disputed amount.
        #
        #   @return [Symbol, WhopSDK::Models::Currency]
        required :currency, enum: -> { WhopSDK::Currency }

        # @!attribute editable
        #   Whether the dispute evidence can still be edited and submitted. Returns true
        #   only when the dispute status requires a response.
        #
        #   @return [Boolean, nil]
        required :editable, WhopSDK::Internal::Type::Boolean, nil?: true

        # @!attribute needs_response_by
        #   The deadline by which dispute evidence must be submitted. Null if no response
        #   deadline is set.
        #
        #   @return [Time, nil]
        required :needs_response_by, Time, nil?: true

        # @!attribute notes
        #   Additional freeform notes submitted by the company as part of the dispute
        #   evidence.
        #
        #   @return [String, nil]
        required :notes, String, nil?: true

        # @!attribute reason
        #   A human-readable reason for the dispute.
        #
        #   @return [String, nil]
        required :reason, String, nil?: true

        # @!attribute status
        #   The current status of the dispute lifecycle, such as needs_response,
        #   under_review, won, or lost.
        #
        #   @return [Symbol, WhopSDK::Models::DisputeStatuses]
        required :status, enum: -> { WhopSDK::DisputeStatuses }

        # @!method initialize(id:, amount:, currency:, editable:, needs_response_by:, notes:, reason:, status:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Payment::Dispute} for more details.
        #
        #   A dispute is a chargeback or payment challenge filed against a company,
        #   including evidence and response status.
        #
        #   @param id [String] The unique identifier for the dispute.
        #
        #   @param amount [Float] The disputed amount in the specified currency, formatted as a decimal.
        #
        #   @param currency [Symbol, WhopSDK::Models::Currency] The three-letter ISO currency code for the disputed amount.
        #
        #   @param editable [Boolean, nil] Whether the dispute evidence can still be edited and submitted. Returns true onl
        #
        #   @param needs_response_by [Time, nil] The deadline by which dispute evidence must be submitted. Null if no response de
        #
        #   @param notes [String, nil] Additional freeform notes submitted by the company as part of the dispute eviden
        #
        #   @param reason [String, nil] A human-readable reason for the dispute.
        #
        #   @param status [Symbol, WhopSDK::Models::DisputeStatuses] The current status of the dispute lifecycle, such as needs_response, under_revie
      end

      class FinancingTransaction < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the payment transaction.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   The amount of the payment transaction.
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute created_at
        #   The date and time the payment transaction was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute status
        #   The status of the payment transaction.
        #
        #   @return [Symbol, WhopSDK::Models::Payment::FinancingTransaction::Status]
        required :status, enum: -> { WhopSDK::Payment::FinancingTransaction::Status }

        # @!attribute transaction_type
        #   The type of the payment transaction.
        #
        #   @return [Symbol, WhopSDK::Models::Payment::FinancingTransaction::TransactionType]
        required :transaction_type, enum: -> { WhopSDK::Payment::FinancingTransaction::TransactionType }

        # @!method initialize(id:, amount:, created_at:, status:, transaction_type:)
        #   A payment transaction.
        #
        #   @param id [String] The unique identifier for the payment transaction.
        #
        #   @param amount [Float] The amount of the payment transaction.
        #
        #   @param created_at [Time] The date and time the payment transaction was created.
        #
        #   @param status [Symbol, WhopSDK::Models::Payment::FinancingTransaction::Status] The status of the payment transaction.
        #
        #   @param transaction_type [Symbol, WhopSDK::Models::Payment::FinancingTransaction::TransactionType] The type of the payment transaction.

        # The status of the payment transaction.
        #
        # @see WhopSDK::Models::Payment::FinancingTransaction#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          SUCCEEDED = :succeeded
          DECLINED = :declined
          ERROR = :error
          PENDING = :pending
          CREATED = :created
          EXPIRED = :expired
          WON = :won
          REJECTED = :rejected
          LOST = :lost
          PREVENTED = :prevented

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of the payment transaction.
        #
        # @see WhopSDK::Models::Payment::FinancingTransaction#transaction_type
        module TransactionType
          extend WhopSDK::Internal::Type::Enum

          PURCHASE = :purchase
          AUTHORIZE = :authorize
          CAPTURE = :capture
          REFUND = :refund
          CANCEL = :cancel
          VERIFY = :verify
          CHARGEBACK = :chargeback
          THREE_D_SECURE = :three_d_secure
          FRAUD_SCREENING = :fraud_screening
          AUTHORIZATION = :authorization
          INSTALLMENT = :installment

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see WhopSDK::Models::Payment#member
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

      # @see WhopSDK::Models::Payment#membership
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

      # @see WhopSDK::Models::Payment#payment_method
      class PaymentMethod < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the payment token.
        #
        #   @return [String]
        required :id, String

        # @!attribute card
        #   The card data associated with the payment method, if its a debit or credit card.
        #
        #   @return [WhopSDK::Models::Payment::PaymentMethod::Card, nil]
        required :card, -> { WhopSDK::Payment::PaymentMethod::Card }, nil?: true

        # @!attribute created_at
        #   The datetime the payment token was created.
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
        #   The tokenized payment method reference used for this payment. Null if no token
        #   was used.
        #
        #   @param id [String] The unique identifier for the payment token.
        #
        #   @param card [WhopSDK::Models::Payment::PaymentMethod::Card, nil] The card data associated with the payment method, if its a debit or credit card.
        #
        #   @param created_at [Time] The datetime the payment token was created.
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
          #   The two-digit expiration month of the card (1-12). Null if not available.
          #
          #   @return [Integer, nil]
          required :exp_month, Integer, nil?: true

          # @!attribute exp_year
          #   The two-digit expiration year of the card (e.g., 27 for 2027). Null if not
          #   available.
          #
          #   @return [Integer, nil]
          required :exp_year, Integer, nil?: true

          # @!attribute last4
          #   The last four digits of the card number. Null if not available.
          #
          #   @return [String, nil]
          required :last4, String, nil?: true

          # @!method initialize(brand:, exp_month:, exp_year:, last4:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Payment::PaymentMethod::Card} for more details.
          #
          #   The card data associated with the payment method, if its a debit or credit card.
          #
          #   @param brand [Symbol, WhopSDK::Models::CardBrands, nil] Possible card brands that a payment token can have
          #
          #   @param exp_month [Integer, nil] The two-digit expiration month of the card (1-12). Null if not available.
          #
          #   @param exp_year [Integer, nil] The two-digit expiration year of the card (e.g., 27 for 2027). Null if not avail
          #
          #   @param last4 [String, nil] The last four digits of the card number. Null if not available.
        end
      end

      # @see WhopSDK::Models::Payment#plan
      class Plan < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the plan.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The plan attached to this payment.
        #
        #   @param id [String] The unique identifier for the plan.
      end

      # @see WhopSDK::Models::Payment#product
      class Product < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the product.
        #
        #   @return [String]
        required :id, String

        # @!attribute route
        #   The URL slug used in the product's public link (e.g., 'my-product' in
        #   whop.com/company/my-product).
        #
        #   @return [String]
        required :route, String

        # @!attribute title
        #   The display name of the product shown to customers on the product page and in
        #   search results.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, route:, title:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Payment::Product} for more details.
        #
        #   The product this payment was made for
        #
        #   @param id [String] The unique identifier for the product.
        #
        #   @param route [String] The URL slug used in the product's public link (e.g., 'my-product' in whop.com/c
        #
        #   @param title [String] The display name of the product shown to customers on the product page and in se
      end

      # @see WhopSDK::Models::Payment#promo_code
      class PromoCode < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the promo code.
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
        #   @param id [String] The unique identifier for the promo code.
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

      class Resolution < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the resolution.
        #
        #   @return [String]
        required :id, String

        # @!attribute customer_appealed
        #   Whether the customer has filed an appeal after the initial resolution decision.
        #
        #   @return [Boolean]
        required :customer_appealed, WhopSDK::Internal::Type::Boolean

        # @!attribute customer_response_actions
        #   The list of actions currently available to the customer.
        #
        #   @return [Array<Symbol, WhopSDK::Models::Payment::Resolution::CustomerResponseAction>]
        required :customer_response_actions,
                 -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Payment::Resolution::CustomerResponseAction] }

        # @!attribute due_date
        #   The deadline by which the next response is required. Null if no deadline is
        #   currently active. As a Unix timestamp.
        #
        #   @return [Time, nil]
        required :due_date, Time, nil?: true

        # @!attribute issue
        #   The category of the dispute.
        #
        #   @return [Symbol, WhopSDK::Models::Payment::Resolution::Issue]
        required :issue, enum: -> { WhopSDK::Payment::Resolution::Issue }

        # @!attribute merchant_appealed
        #   Whether the merchant has filed an appeal after the initial resolution decision.
        #
        #   @return [Boolean]
        required :merchant_appealed, WhopSDK::Internal::Type::Boolean

        # @!attribute merchant_response_actions
        #   The list of actions currently available to the merchant.
        #
        #   @return [Array<Symbol, WhopSDK::Models::Payment::Resolution::MerchantResponseAction>]
        required :merchant_response_actions,
                 -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Payment::Resolution::MerchantResponseAction] }

        # @!attribute platform_response_actions
        #   The list of actions currently available to the Whop platform for moderating this
        #   resolution.
        #
        #   @return [Array<Symbol, WhopSDK::Models::Payment::Resolution::PlatformResponseAction>]
        required :platform_response_actions,
                 -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Payment::Resolution::PlatformResponseAction] }

        # @!attribute status
        #   The current status of the resolution case, indicating which party needs to
        #   respond or if the case is closed.
        #
        #   @return [Symbol, WhopSDK::Models::Payment::Resolution::Status]
        required :status, enum: -> { WhopSDK::Payment::Resolution::Status }

        # @!method initialize(id:, customer_appealed:, customer_response_actions:, due_date:, issue:, merchant_appealed:, merchant_response_actions:, platform_response_actions:, status:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Payment::Resolution} for more details.
        #
        #   A resolution is a dispute or support case between a buyer and seller, tracking
        #   the issue, status, and outcome.
        #
        #   @param id [String] The unique identifier for the resolution.
        #
        #   @param customer_appealed [Boolean] Whether the customer has filed an appeal after the initial resolution decision.
        #
        #   @param customer_response_actions [Array<Symbol, WhopSDK::Models::Payment::Resolution::CustomerResponseAction>] The list of actions currently available to the customer.
        #
        #   @param due_date [Time, nil] The deadline by which the next response is required. Null if no deadline is curr
        #
        #   @param issue [Symbol, WhopSDK::Models::Payment::Resolution::Issue] The category of the dispute.
        #
        #   @param merchant_appealed [Boolean] Whether the merchant has filed an appeal after the initial resolution decision.
        #
        #   @param merchant_response_actions [Array<Symbol, WhopSDK::Models::Payment::Resolution::MerchantResponseAction>] The list of actions currently available to the merchant.
        #
        #   @param platform_response_actions [Array<Symbol, WhopSDK::Models::Payment::Resolution::PlatformResponseAction>] The list of actions currently available to the Whop platform for moderating this
        #
        #   @param status [Symbol, WhopSDK::Models::Payment::Resolution::Status] The current status of the resolution case, indicating which party needs to respo

        # The types of responses a customer can make to a resolution.
        module CustomerResponseAction
          extend WhopSDK::Internal::Type::Enum

          RESPOND = :respond
          APPEAL = :appeal
          WITHDRAW = :withdraw

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The category of the dispute.
        #
        # @see WhopSDK::Models::Payment::Resolution#issue
        module Issue
          extend WhopSDK::Internal::Type::Enum

          FORGOT_TO_CANCEL = :forgot_to_cancel
          ITEM_NOT_RECEIVED = :item_not_received
          SIGNIFICANTLY_NOT_AS_DESCRIBED = :significantly_not_as_described
          UNAUTHORIZED_TRANSACTION = :unauthorized_transaction
          PRODUCT_UNACCEPTABLE = :product_unacceptable

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The types of responses a merchant can make to a resolution.
        module MerchantResponseAction
          extend WhopSDK::Internal::Type::Enum

          ACCEPT = :accept
          DENY = :deny
          REQUEST_MORE_INFO = :request_more_info
          APPEAL = :appeal
          RESPOND = :respond

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The types of responses the platform can make to a resolution.
        module PlatformResponseAction
          extend WhopSDK::Internal::Type::Enum

          REQUEST_BUYER_INFO = :request_buyer_info
          REQUEST_MERCHANT_INFO = :request_merchant_info
          MERCHANT_WINS = :merchant_wins
          PLATFORM_REFUND = :platform_refund
          MERCHANT_REFUND = :merchant_refund

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The current status of the resolution case, indicating which party needs to
        # respond or if the case is closed.
        #
        # @see WhopSDK::Models::Payment::Resolution#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          MERCHANT_RESPONSE_NEEDED = :merchant_response_needed
          CUSTOMER_RESPONSE_NEEDED = :customer_response_needed
          MERCHANT_INFO_NEEDED = :merchant_info_needed
          CUSTOMER_INFO_NEEDED = :customer_info_needed
          UNDER_PLATFORM_REVIEW = :under_platform_review
          CUSTOMER_WON = :customer_won
          MERCHANT_WON = :merchant_won
          CUSTOMER_WITHDREW = :customer_withdrew

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see WhopSDK::Models::Payment#user
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
        #   {WhopSDK::Models::Payment::User} for more details.
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
