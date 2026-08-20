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

      # @!attribute card_exp_month
      #   The expiration month (1-12) of the card used for this payment. Falls back to the
      #   declined card on failed payments with no saved card. Null when the payment was
      #   not made with a card or the expiry is unavailable.
      #
      #   @return [Integer, nil]
      required :card_exp_month, Integer, nil?: true

      # @!attribute card_exp_year
      #   The four-digit expiration year of the card used for this payment. Falls back to
      #   the declined card on failed payments with no saved card. Null when the payment
      #   was not made with a card or the expiry is unavailable.
      #
      #   @return [Integer, nil]
      required :card_exp_year, Integer, nil?: true

      # @!attribute card_last4
      #   The last four digits of the card used to make this payment. Null if the payment
      #   was not made with a card.
      #
      #   @return [String, nil]
      required :card_last4, String, nil?: true

      # @!attribute checkout_configuration_id
      #   The ID of the checkout session/configuration that produced this payment, if any.
      #   Use this to map payments back to the checkout configuration that created them.
      #
      #   @return [String, nil]
      required :checkout_configuration_id, String, nil?: true

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
      #   The three-letter ISO currency code for this payment (e.g., 'usd', 'eur').
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute customer_phone
      #   Phone number the customer provided at checkout, or their verified phone number
      #   when your checkout requires phone verification. `null` when no phone number was
      #   collected.
      #
      #   @return [String, nil]
      required :customer_phone, String, nil?: true

      # @!attribute decline_code
      #   The reason a payment was declined.
      #
      #   @return [Symbol, WhopSDK::Models::Payment::DeclineCode, nil]
      required :decline_code, enum: -> { WhopSDK::Payment::DeclineCode }, nil?: true

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

      # @!attribute needs_tracking
      #   Whether this payment is holding funds until the order ships and has no tracking
      #   number yet.
      #
      #   @return [Boolean, nil]
      required :needs_tracking, WhopSDK::Internal::Type::Boolean, nil?: true

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

      # @!attribute payment_instrument
      #   The instrument this payment was made with, shaped for display: the method type,
      #   a buyer-facing name, the standard icon set, and the card facts when it was a
      #   card. Null when the receipt names no payment method.
      #
      #   @return [WhopSDK::Models::Payment::PaymentInstrument, nil]
      required :payment_instrument, -> { WhopSDK::Payment::PaymentInstrument }, nil?: true

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

      # @!attribute refunds
      #   The refunds issued against this payment, newest first, including failed and
      #   canceled refund attempts. Limited to the 100 most recent.
      #
      #   @return [Array<WhopSDK::Models::Payment::Refund>]
      required :refunds, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Payment::Refund] }

      # @!attribute resolutions
      #   The resolution center cases opened by the customer on this payment. Null if the
      #   actor in context does not have the payment:resolution_center_case:read
      #   permission.
      #
      #   @return [Array<WhopSDK::Models::Payment::Resolution>, nil]
      required :resolutions, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Payment::Resolution] }, nil?: true

      # @!attribute retryable
      #   True when the payment status is `open` and its membership is in one of the
      #   retry-eligible states (`active`, `trialing`, `completed`, or `past_due`), or
      #   when it is a failed initial billing-engine payment on a `drafted` membership
      #   with an unlimited-stock plan; otherwise false. Used to decide if Whop can
      #   attempt the charge again.
      #
      #   @return [Boolean]
      required :retryable, WhopSDK::Internal::Type::Boolean

      # @!attribute risk_score
      #   Whop's in-house fraud risk score for this payment, from 0 (lowest risk) to 100
      #   (highest risk). Null when the payment has not been scored or scoring has not yet
      #   completed.
      #
      #   @return [Integer, nil]
      required :risk_score, Integer, nil?: true

      # @!attribute risk_signals
      #   A curated set of factors behind the risk score, grouped by category (business
      #   transaction history, buyer, device). Each entry has a key, human-readable label,
      #   category, and value. Null when there is no risk assessment for this payment.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      required :risk_signals, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute settlement_amount
      #   The total amount charged to the customer for this payment, including taxes and
      #   after any discounts. In the currency specified by the currency field.
      #
      #   @return [Float]
      required :settlement_amount, Float

      # @!attribute settlement_currency
      #   The three-letter ISO currency code for this payment (e.g., 'usd', 'eur').
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :settlement_currency, enum: -> { WhopSDK::Currency }

      # @!attribute settlement_exchange_rate
      #   Deprecated. Always returns null.
      #
      #   @return [Float, nil]
      required :settlement_exchange_rate, Float, nil?: true

      # @!attribute settlement_time_at
      #   When this payment's funds post to the company's available balance, at midnight
      #   UTC. Known at payment time and never changes. The
      #   `ledger_account.funds_available` webhook carries the same `settlement_time_at`
      #   when that batch posts — match them to know these funds are now withdrawable.
      #
      #   @return [Time, nil]
      required :settlement_time_at, Time, nil?: true

      # @!attribute shipment
      #   The shipment attached to this payment.
      #
      #   @return [WhopSDK::Models::Payment::Shipment, nil]
      required :shipment, -> { WhopSDK::Payment::Shipment }, nil?: true

      # @!attribute shipping_address
      #   The shipping address provided by the customer for physical goods. Null if no
      #   shipping address was collected.
      #
      #   @return [WhopSDK::Models::Payment::ShippingAddress, nil]
      required :shipping_address, -> { WhopSDK::Payment::ShippingAddress }, nil?: true

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

      # @!attribute tax_amount
      #   The calculated amount of the sales/VAT tax (if applicable).
      #
      #   @return [Float, nil]
      required :tax_amount, Float, nil?: true

      # @!attribute tax_behavior
      #   The type of tax inclusivity applied to the receipt, for determining whether the
      #   tax is included in the final price, or paid on top.
      #
      #   @return [Symbol, WhopSDK::Models::ReceiptTaxBehavior, nil]
      required :tax_behavior, enum: -> { WhopSDK::ReceiptTaxBehavior }, nil?: true

      # @!attribute tax_refunded_amount
      #   The amount of tax that has been refunded (if applicable).
      #
      #   @return [Float, nil]
      required :tax_refunded_amount, Float, nil?: true

      # @!attribute three_ds_verified
      #   Whether 3D Secure authentication was completed for this payment.
      #
      #   @return [Boolean]
      required :three_ds_verified, WhopSDK::Internal::Type::Boolean

      # @!attribute total
      #   The total to show to the creator (excluding buyer fees).
      #
      #   @return [Float, nil]
      required :total, Float, nil?: true

      # @!attribute updated_at
      #   The datetime the payment was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

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

      # @!attribute verification_checks
      #   The issuer's address and card security code check results for this payment. Null
      #   when the processor returned none.
      #
      #   @return [WhopSDK::Models::Payment::VerificationChecks, nil]
      required :verification_checks, -> { WhopSDK::Payment::VerificationChecks }, nil?: true

      # @!attribute voidable
      #   True when the payment is tied to a membership in `past_due`, the payment status
      #   is `open`, and the processor allows voiding payments; otherwise false.
      #
      #   @return [Boolean]
      required :voidable, WhopSDK::Internal::Type::Boolean

      # @!method initialize(id:, amount_after_fees:, application_fee:, auto_refunded:, billing_address:, billing_reason:, card_brand:, card_exp_month:, card_exp_year:, card_last4:, checkout_configuration_id:, company:, created_at:, currency:, customer_phone:, decline_code:, dispute_alerted_at:, disputes:, failure_message:, financing_installments_count:, financing_transactions:, last_payment_attempt:, member:, membership:, metadata:, needs_tracking:, next_payment_attempt:, paid_at:, payment_instrument:, payment_method:, payment_method_type:, payments_failed:, plan:, product:, promo_code:, refundable:, refunded_amount:, refunded_at:, refunds:, resolutions:, retryable:, risk_score:, risk_signals:, settlement_amount:, settlement_currency:, settlement_exchange_rate:, settlement_time_at:, shipment:, shipping_address:, status:, substatus:, subtotal:, tax_amount:, tax_behavior:, tax_refunded_amount:, three_ds_verified:, total:, updated_at:, usd_total:, user:, verification_checks:, voidable:)
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
      #   @param card_exp_month [Integer, nil] The expiration month (1-12) of the card used for this payment. Falls back to the
      #
      #   @param card_exp_year [Integer, nil] The four-digit expiration year of the card used for this payment. Falls back to
      #
      #   @param card_last4 [String, nil] The last four digits of the card used to make this payment. Null if the payment
      #
      #   @param checkout_configuration_id [String, nil] The ID of the checkout session/configuration that produced this payment, if any.
      #
      #   @param company [WhopSDK::Models::Payment::Company, nil] The company for the payment.
      #
      #   @param created_at [Time] The datetime the payment was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The three-letter ISO currency code for this payment (e.g., 'usd', 'eur').
      #
      #   @param customer_phone [String, nil] Phone number the customer provided at checkout, or their verified phone number w
      #
      #   @param decline_code [Symbol, WhopSDK::Models::Payment::DeclineCode, nil] The reason a payment was declined.
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
      #   @param needs_tracking [Boolean, nil] Whether this payment is holding funds until the order ships and has no tracking
      #
      #   @param next_payment_attempt [Time, nil] The time of the next schedule payment retry.
      #
      #   @param paid_at [Time, nil] The time at which this payment was successfully collected. Null if the payment h
      #
      #   @param payment_instrument [WhopSDK::Models::Payment::PaymentInstrument, nil] The instrument this payment was made with, shaped for display: the method type,
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
      #   @param refunds [Array<WhopSDK::Models::Payment::Refund>] The refunds issued against this payment, newest first, including failed and canc
      #
      #   @param resolutions [Array<WhopSDK::Models::Payment::Resolution>, nil] The resolution center cases opened by the customer on this payment. Null if the
      #
      #   @param retryable [Boolean] True when the payment status is `open` and its membership is in one of the retry
      #
      #   @param risk_score [Integer, nil] Whop's in-house fraud risk score for this payment, from 0 (lowest risk) to 100 (
      #
      #   @param risk_signals [Hash{Symbol=>Object}, nil] A curated set of factors behind the risk score, grouped by category (business tr
      #
      #   @param settlement_amount [Float] The total amount charged to the customer for this payment, including taxes and a
      #
      #   @param settlement_currency [Symbol, WhopSDK::Models::Currency] The three-letter ISO currency code for this payment (e.g., 'usd', 'eur').
      #
      #   @param settlement_exchange_rate [Float, nil] Deprecated. Always returns null.
      #
      #   @param settlement_time_at [Time, nil] When this payment's funds post to the company's available balance, at midnight U
      #
      #   @param shipment [WhopSDK::Models::Payment::Shipment, nil] The shipment attached to this payment.
      #
      #   @param shipping_address [WhopSDK::Models::Payment::ShippingAddress, nil] The shipping address provided by the customer for physical goods. Null if no shi
      #
      #   @param status [Symbol, WhopSDK::Models::ReceiptStatus, nil] The status of a receipt
      #
      #   @param substatus [Symbol, WhopSDK::Models::FriendlyReceiptStatus] The friendly status of the payment.
      #
      #   @param subtotal [Float, nil] The subtotal to show to the creator (excluding buyer fees).
      #
      #   @param tax_amount [Float, nil] The calculated amount of the sales/VAT tax (if applicable).
      #
      #   @param tax_behavior [Symbol, WhopSDK::Models::ReceiptTaxBehavior, nil] The type of tax inclusivity applied to the receipt, for determining whether the
      #
      #   @param tax_refunded_amount [Float, nil] The amount of tax that has been refunded (if applicable).
      #
      #   @param three_ds_verified [Boolean] Whether 3D Secure authentication was completed for this payment.
      #
      #   @param total [Float, nil] The total to show to the creator (excluding buyer fees).
      #
      #   @param updated_at [Time] The datetime the payment was last updated.
      #
      #   @param usd_total [Float, nil] The total in USD to show to the creator (excluding buyer fees).
      #
      #   @param user [WhopSDK::Models::Payment::User, nil] The user that made this payment.
      #
      #   @param verification_checks [WhopSDK::Models::Payment::VerificationChecks, nil] The issuer's address and card security code check results for this payment. Null
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

      # The reason a payment was declined.
      #
      # @see WhopSDK::Models::Payment#decline_code
      module DeclineCode
        extend WhopSDK::Internal::Type::Enum

        INSUFFICIENT_FUNDS = :insufficient_funds
        LOST_CARD = :lost_card
        STOLEN_CARD = :stolen_card
        EXPIRED_CARD = :expired_card
        SUSPECTED_FRAUD = :suspected_fraud
        INVALID_CARD_NUMBER = :invalid_card_number
        INVALID_CVC = :invalid_cvc
        INVALID_CVC_OR_EXPIRATION = :invalid_cvc_or_expiration
        INCORRECT_PIN = :incorrect_pin
        AUTHENTICATION_REQUIRED = :authentication_required
        CARD_NOT_SUPPORTED = :card_not_supported
        CURRENCY_NOT_SUPPORTED = :currency_not_supported
        DUPLICATE_TRANSACTION = :duplicate_transaction
        GENERIC_DECLINE = :generic_decline
        INVALID_ACCOUNT = :invalid_account
        INVALID_AMOUNT = :invalid_amount
        PROCESSING_ERROR = :processing_error
        RESTRICTED_CARD = :restricted_card
        CARD_VELOCITY_EXCEEDED = :card_velocity_exceeded
        CONTACT_ISSUER = :contact_issuer
        BANK_DECLINED = :bank_declined
        REGULATORY_BLOCKED = :regulatory_blocked
        TRANSACTION_NOT_PERMITTED = :transaction_not_permitted
        TRANSACTION_STOPPED = :transaction_stopped
        CARD_TYPE_NOT_SUPPORTED = :card_type_not_supported
        ISSUER_NOT_FOUND = :issuer_not_found
        CLOSED_ACCOUNT = :closed_account
        ISSUER_UNAVAILABLE = :issuer_unavailable
        INVALID_ZIP = :invalid_zip
        INVALID_EXPIRY_MONTH = :invalid_expiry_month
        INVALID_EXPIRY_YEAR = :invalid_expiry_year
        INVALID_EXPIRY = :invalid_expiry
        INVALID_TRANSACTION = :invalid_transaction
        CANNOT_AUTHORIZE = :cannot_authorize
        PIN_REQUIRED = :pin_required
        PIN_TRY_EXCEEDED = :pin_try_exceeded
        PROVIDER_DECLINED = :provider_declined
        HIGH_RISK = :high_risk
        TEST_MODE_DECLINE = :test_mode_decline
        MERCHANT_BLACKLIST = :merchant_blacklist
        REENTER_TRANSACTION = :reenter_transaction
        INVALID_PIN = :invalid_pin
        PIN_REQUIRED_AS = :pin_required_as
        WITHDRAWAL_COUNT_LIMIT_EXCEEDED = :withdrawal_count_limit_exceeded
        INVALID_COUNTRY = :invalid_country
        ISSUER_ERROR = :issuer_error
        INVALID_CARD_HOLDER_NAME = :invalid_card_holder_name
        NO_ACCOUNTS = :no_accounts
        TRANSACTION_CANCELLED = :transaction_cancelled
        THREE_D_SECURE_SUCCESS = :three_d_secure_success
        THREE_D_SECURE_CANCELED = :three_d_secure_canceled
        THREE_D_SECURE_INVALID_CARD_NUMBER = :three_d_secure_invalid_card_number
        THREE_D_SECURE_GENERIC_ERROR = :three_d_secure_generic_error
        THREE_D_SECURE_TIMEOUT = :three_d_secure_timeout
        THREE_D_SECURE_FAILED = :three_d_secure_failed
        THREE_D_SECURE_CARD_NOT_ENROLLED = :three_d_secure_card_not_enrolled
        THREE_D_SECURE_FRAUD = :three_d_secure_fraud
        THREE_D_SECURE_TOO_MANY_ATTEMPTS = :three_d_secure_too_many_attempts
        THREE_D_SECURE_REJECTED_BY_BANK = :three_d_secure_rejected_by_bank
        THREE_D_SECURE_REPORTED_LOST_OR_STOLEN = :three_d_secure_reported_lost_or_stolen
        BLOCKED_BY_CARDHOLDER = :blocked_by_cardholder
        TEST_MODE_TEST_CARD = :test_mode_test_card
        TRY_AGAIN_LATER = :try_again_later
        TRANSACTION_NOT_ALLOWED = :transaction_not_allowed
        BANK_INSUFFICIENT_FUNDS = :bank_insufficient_funds
        BANK_ACCOUNT_NOT_FOUND = :bank_account_not_found
        BANK_ACCOUNT_CLOSED = :bank_account_closed
        BANK_ACCOUNT_FROZEN = :bank_account_frozen
        BANK_INVALID_ROUTING_NUMBER = :bank_invalid_routing_number
        BANK_NON_TRANSACTION_ACCOUNT = :bank_non_transaction_account
        BANK_AUTHORIZATION_REVOKED = :bank_authorization_revoked
        BANK_PAYMENT_STOPPED = :bank_payment_stopped
        BANK_NOT_AUTHORIZED = :bank_not_authorized
        BANK_ACCOUNT_HOLDER_DECEASED = :bank_account_holder_deceased
        BANK_DUPLICATE = :bank_duplicate
        BANK_AMOUNT_ERROR = :bank_amount_error
        BANK_REGULATORY_BLOCKED = :bank_regulatory_blocked
        BANK_DETAILS_INVALID = :bank_details_invalid
        BANK_PROCESSING_ERROR = :bank_processing_error
        BANK_GENERIC_DECLINE = :bank_generic_decline
        SEPA_INVALID_IBAN = :sepa_invalid_iban
        SEPA_NO_MANDATE = :sepa_no_mandate
        SEPA_MANDATE_DATA_INVALID = :sepa_mandate_data_invalid
        SEPA_DISPUTED = :sepa_disputed
        SEPA_REFUSED_BY_CUSTOMER = :sepa_refused_by_customer
        SEPA_GENERIC_DECLINE = :sepa_generic_decline

        # @!method self.values
        #   @return [Array<Symbol>]
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
        #   Whether the dispute evidence can still be edited and submitted.
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
        #   @param editable [Boolean, nil] Whether the dispute evidence can still be edited and submitted.
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
          CANCELED = :canceled

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
          CANCELED = :canceled
          VERIFY = :verify
          CHARGEBACK = :chargeback
          PRE_CHARGEBACK = :pre_chargeback
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

        # @!attribute phone_number
        #   The phone number associated with this membership.
        #
        #   @return [String, nil]
        required :phone_number, String, nil?: true

        # @!attribute status
        #   The state of the membership.
        #
        #   @return [Symbol, WhopSDK::Models::MembershipStatus]
        required :status, enum: -> { WhopSDK::MembershipStatus }

        # @!method initialize(id:, phone_number:, status:)
        #   The membership attached to this payment.
        #
        #   @param id [String] The unique identifier for the membership.
        #
        #   @param phone_number [String, nil] The phone number associated with this membership.
        #
        #   @param status [Symbol, WhopSDK::Models::MembershipStatus] The state of the membership.
      end

      # @see WhopSDK::Models::Payment#payment_instrument
      class PaymentInstrument < WhopSDK::Internal::Type::BaseModel
        # @!attribute card
        #   Card payments only: the card's network and last four.
        #
        #   @return [WhopSDK::Models::Payment::PaymentInstrument::Card, nil]
        required :card, -> { WhopSDK::Payment::PaymentInstrument::Card }, nil?: true

        # @!attribute display_name
        #   Buyer-facing instrument name — "Visa •••• 4242" when the card surfaced, else the
        #   method's own name ("Klarna").
        #
        #   @return [String]
        required :display_name, String

        # @!attribute icons
        #   The standard icon set: square and card shapes, each in light and dark colorways.
        #
        #   @return [WhopSDK::Models::Payment::PaymentInstrument::Icons]
        required :icons, -> { WhopSDK::Payment::PaymentInstrument::Icons }

        # @!attribute installment_count
        #   Installment methods only: how many payments the charge splits into. Data, not
        #   copy — compose and translate the label client-side.
        #
        #   @return [Integer, nil]
        required :installment_count, Integer, nil?: true

        # @!attribute payment_method_type
        #   The payment method type identifier, e.g. `card`, `klarna`, `apple_pay`.
        #
        #   @return [String]
        required :payment_method_type, String

        # @!method initialize(card:, display_name:, icons:, installment_count:, payment_method_type:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Payment::PaymentInstrument} for more details.
        #
        #   The instrument this payment was made with, shaped for display: the method type,
        #   a buyer-facing name, the standard icon set, and the card facts when it was a
        #   card. Null when the receipt names no payment method.
        #
        #   @param card [WhopSDK::Models::Payment::PaymentInstrument::Card, nil] Card payments only: the card's network and last four.
        #
        #   @param display_name [String] Buyer-facing instrument name — "Visa •••• 4242" when the card surfaced, else the
        #
        #   @param icons [WhopSDK::Models::Payment::PaymentInstrument::Icons] The standard icon set: square and card shapes, each in light and dark colorways.
        #
        #   @param installment_count [Integer, nil] Installment methods only: how many payments the charge splits into. Data, not co
        #
        #   @param payment_method_type [String] The payment method type identifier, e.g. `card`, `klarna`, `apple_pay`.

        # @see WhopSDK::Models::Payment::PaymentInstrument#card
        class Card < WhopSDK::Internal::Type::BaseModel
          # @!attribute brand
          #   The network identifier (`visa`, `amex`, …), matching `card.networks` entries and
          #   saved card payment methods.
          #
          #   @return [String]
          required :brand, String

          # @!attribute last4
          #   The card's last four digits, when captured.
          #
          #   @return [String, nil]
          required :last4, String, nil?: true

          # @!method initialize(brand:, last4:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Payment::PaymentInstrument::Card} for more details.
          #
          #   Card payments only: the card's network and last four.
          #
          #   @param brand [String] The network identifier (`visa`, `amex`, …), matching `card.networks` entries and
          #
          #   @param last4 [String, nil] The card's last four digits, when captured.
        end

        # @see WhopSDK::Models::Payment::PaymentInstrument#icons
        class Icons < WhopSDK::Internal::Type::BaseModel
          # @!attribute card
          #   The credit-card-proportioned tile (48x30).
          #
          #   @return [WhopSDK::Models::Payment::PaymentInstrument::Icons::Card]
          required :card, -> { WhopSDK::Payment::PaymentInstrument::Icons::Card }

          # @!attribute square
          #   The square tile (32x32).
          #
          #   @return [WhopSDK::Models::Payment::PaymentInstrument::Icons::Square]
          required :square, -> { WhopSDK::Payment::PaymentInstrument::Icons::Square }

          # @!method initialize(card:, square:)
          #   The standard icon set: square and card shapes, each in light and dark colorways.
          #
          #   @param card [WhopSDK::Models::Payment::PaymentInstrument::Icons::Card] The credit-card-proportioned tile (48x30).
          #
          #   @param square [WhopSDK::Models::Payment::PaymentInstrument::Icons::Square] The square tile (32x32).

          # @see WhopSDK::Models::Payment::PaymentInstrument::Icons#card
          class Card < WhopSDK::Internal::Type::BaseModel
            # @!attribute dark
            #   The colorway for dark surfaces.
            #
            #   @return [WhopSDK::Models::Payment::PaymentInstrument::Icons::Card::Dark]
            required :dark, -> { WhopSDK::Payment::PaymentInstrument::Icons::Card::Dark }

            # @!attribute light
            #   The colorway for light surfaces.
            #
            #   @return [WhopSDK::Models::Payment::PaymentInstrument::Icons::Card::Light]
            required :light, -> { WhopSDK::Payment::PaymentInstrument::Icons::Card::Light }

            # @!method initialize(dark:, light:)
            #   The credit-card-proportioned tile (48x30).
            #
            #   @param dark [WhopSDK::Models::Payment::PaymentInstrument::Icons::Card::Dark] The colorway for dark surfaces.
            #
            #   @param light [WhopSDK::Models::Payment::PaymentInstrument::Icons::Card::Light] The colorway for light surfaces.

            # @see WhopSDK::Models::Payment::PaymentInstrument::Icons::Card#dark
            class Dark < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for dark surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end

            # @see WhopSDK::Models::Payment::PaymentInstrument::Icons::Card#light
            class Light < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for light surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end
          end

          # @see WhopSDK::Models::Payment::PaymentInstrument::Icons#square
          class Square < WhopSDK::Internal::Type::BaseModel
            # @!attribute dark
            #   The colorway for dark surfaces.
            #
            #   @return [WhopSDK::Models::Payment::PaymentInstrument::Icons::Square::Dark]
            required :dark, -> { WhopSDK::Payment::PaymentInstrument::Icons::Square::Dark }

            # @!attribute light
            #   The colorway for light surfaces.
            #
            #   @return [WhopSDK::Models::Payment::PaymentInstrument::Icons::Square::Light]
            required :light, -> { WhopSDK::Payment::PaymentInstrument::Icons::Square::Light }

            # @!method initialize(dark:, light:)
            #   The square tile (32x32).
            #
            #   @param dark [WhopSDK::Models::Payment::PaymentInstrument::Icons::Square::Dark] The colorway for dark surfaces.
            #
            #   @param light [WhopSDK::Models::Payment::PaymentInstrument::Icons::Square::Light] The colorway for light surfaces.

            # @see WhopSDK::Models::Payment::PaymentInstrument::Icons::Square#dark
            class Dark < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for dark surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end

            # @see WhopSDK::Models::Payment::PaymentInstrument::Icons::Square#light
            class Light < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for light surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end
          end
        end
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

          # @!attribute fingerprint
          #   A stable identifier for the underlying card. Two payment methods with the same
          #   fingerprint are the same card. Null if not available.
          #
          #   @return [String, nil]
          required :fingerprint, String, nil?: true

          # @!attribute last4
          #   The last four digits of the card number. Null if not available.
          #
          #   @return [String, nil]
          required :last4, String, nil?: true

          # @!method initialize(brand:, exp_month:, exp_year:, fingerprint:, last4:)
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
          #   @param fingerprint [String, nil] A stable identifier for the underlying card. Two payment methods with the same f
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

        # @!attribute internal_notes
        #   A personal description or notes section for the business.
        #
        #   @return [String, nil]
        required :internal_notes, String, nil?: true

        # @!attribute metadata
        #   Custom key-value pairs stored on the plan. Included in webhook payloads for
        #   payment and membership events. Max 50 keys, 100 chars per key, 500 chars per
        #   string value. The reserved keys `custom_cta` and `custom_cta_url`, when set,
        #   override the product's checkout call to action for this plan.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        required :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

        # @!method initialize(id:, internal_notes:, metadata:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Payment::Plan} for more details.
        #
        #   The plan attached to this payment.
        #
        #   @param id [String] The unique identifier for the plan.
        #
        #   @param internal_notes [String, nil] A personal description or notes section for the business.
        #
        #   @param metadata [Hash{Symbol=>Object}, nil] Custom key-value pairs stored on the plan. Included in webhook payloads for paym
      end

      # @see WhopSDK::Models::Payment#product
      class Product < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the product.
        #
        #   @return [String]
        required :id, String

        # @!attribute metadata
        #   Custom key-value pairs stored on the product and included in payment and
        #   membership webhook payloads. Max 50 keys, 100 characters per key, 500 characters
        #   per string value.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        required :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

        # @!attribute route
        #   URL slug in the product's public link, e.g. `pickaxe-analytics` in
        #   whop.com/company/pickaxe-analytics.
        #
        #   @return [String]
        required :route, String

        # @!attribute title
        #   The display name of the product shown to customers on the product page and in
        #   search results.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, metadata:, route:, title:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Payment::Product} for more details.
        #
        #   The product this payment was made for
        #
        #   @param id [String] The unique identifier for the product.
        #
        #   @param metadata [Hash{Symbol=>Object}, nil] Custom key-value pairs stored on the product and included in payment and members
        #
        #   @param route [String] URL slug in the product's public link, e.g. `pickaxe-analytics` in whop.com/comp
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

      class Refund < WhopSDK::Internal::Type::BaseModel
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

        # @!attribute status
        #   The current processing status of the refund, such as pending, succeeded, or
        #   failed.
        #
        #   @return [Symbol, WhopSDK::Models::RefundStatus]
        required :status, enum: -> { WhopSDK::RefundStatus }

        # @!method initialize(id:, amount:, created_at:, currency:, status:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Payment::Refund} for more details.
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
        #   @param status [Symbol, WhopSDK::Models::RefundStatus] The current processing status of the refund, such as pending, succeeded, or fail
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
        #   @return [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseCustomerResponse>]
        required :customer_response_actions,
                 -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::ResolutionCenterCaseCustomerResponse] }

        # @!attribute due_date
        #   The deadline by which the next response is required. Null if no deadline is
        #   currently active. As a Unix timestamp.
        #
        #   @return [Time, nil]
        required :due_date, Time, nil?: true

        # @!attribute issue
        #   The category of the dispute.
        #
        #   @return [Symbol, WhopSDK::Models::ResolutionCenterCaseIssueType]
        required :issue, enum: -> { WhopSDK::ResolutionCenterCaseIssueType }

        # @!attribute merchant_appealed
        #   Whether the merchant has filed an appeal after the initial resolution decision.
        #
        #   @return [Boolean]
        required :merchant_appealed, WhopSDK::Internal::Type::Boolean

        # @!attribute merchant_response_actions
        #   The list of actions currently available to the merchant.
        #
        #   @return [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseMerchantResponse>]
        required :merchant_response_actions,
                 -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::ResolutionCenterCaseMerchantResponse] }

        # @!attribute platform_response_actions
        #   The list of actions currently available to the Whop platform for moderating this
        #   resolution.
        #
        #   @return [Array<Symbol, WhopSDK::Models::ResolutionCenterCasePlatformResponse>]
        required :platform_response_actions,
                 -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::ResolutionCenterCasePlatformResponse] }

        # @!attribute status
        #   The current status of the resolution case, indicating which party needs to
        #   respond or if the case is closed.
        #
        #   @return [Symbol, WhopSDK::Models::ResolutionCenterCaseStatus]
        required :status, enum: -> { WhopSDK::ResolutionCenterCaseStatus }

        # @!method initialize(id:, customer_appealed:, customer_response_actions:, due_date:, issue:, merchant_appealed:, merchant_response_actions:, platform_response_actions:, status:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Payment::Resolution} for more details.
        #
        #   A resolution center case is a dispute or support case between a user and a
        #   company, tracking the issue, status, and outcome.
        #
        #   @param id [String] The unique identifier for the resolution.
        #
        #   @param customer_appealed [Boolean] Whether the customer has filed an appeal after the initial resolution decision.
        #
        #   @param customer_response_actions [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseCustomerResponse>] The list of actions currently available to the customer.
        #
        #   @param due_date [Time, nil] The deadline by which the next response is required. Null if no deadline is curr
        #
        #   @param issue [Symbol, WhopSDK::Models::ResolutionCenterCaseIssueType] The category of the dispute.
        #
        #   @param merchant_appealed [Boolean] Whether the merchant has filed an appeal after the initial resolution decision.
        #
        #   @param merchant_response_actions [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseMerchantResponse>] The list of actions currently available to the merchant.
        #
        #   @param platform_response_actions [Array<Symbol, WhopSDK::Models::ResolutionCenterCasePlatformResponse>] The list of actions currently available to the Whop platform for moderating this
        #
        #   @param status [Symbol, WhopSDK::Models::ResolutionCenterCaseStatus] The current status of the resolution case, indicating which party needs to respo
      end

      # @see WhopSDK::Models::Payment#shipment
      class Shipment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the shipment.
        #
        #   @return [String]
        required :id, String

        # @!attribute carrier
        #   The shipping carrier detected for this shipment. Null until a tracking update
        #   identifies it.
        #
        #   @return [String, nil]
        required :carrier, String, nil?: true

        # @!attribute status
        #   The current delivery status of this shipment.
        #
        #   @return [Symbol, WhopSDK::Models::ShipmentStatus]
        required :status, enum: -> { WhopSDK::ShipmentStatus }

        # @!attribute tracking_number
        #   The carrier-assigned tracking number used to look up shipment progress.
        #
        #   @return [String]
        required :tracking_number, String

        # @!attribute tracking_url
        #   A customer-facing URL to track this shipment's progress.
        #
        #   @return [String]
        required :tracking_url, String

        # @!method initialize(id:, carrier:, status:, tracking_number:, tracking_url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Payment::Shipment} for more details.
        #
        #   The shipment attached to this payment.
        #
        #   @param id [String] The unique identifier for the shipment.
        #
        #   @param carrier [String, nil] The shipping carrier detected for this shipment. Null until a tracking update id
        #
        #   @param status [Symbol, WhopSDK::Models::ShipmentStatus] The current delivery status of this shipment.
        #
        #   @param tracking_number [String] The carrier-assigned tracking number used to look up shipment progress.
        #
        #   @param tracking_url [String] A customer-facing URL to track this shipment's progress.
      end

      # @see WhopSDK::Models::Payment#shipping_address
      class ShippingAddress < WhopSDK::Internal::Type::BaseModel
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
        #   The shipping address provided by the customer for physical goods. Null if no
        #   shipping address was collected.
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

      # @see WhopSDK::Models::Payment#verification_checks
      class VerificationChecks < WhopSDK::Internal::Type::BaseModel
        # @!attribute address_line1
        #   Whether the billing street address the customer entered matched the address the
        #   issuer has on file.
        #
        #   @return [String, nil]
        required :address_line1, String, nil?: true

        # @!attribute card_holder_name
        #   Whether the cardholder name the customer entered matched the name the issuer has
        #   on file.
        #
        #   @return [String, nil]
        required :card_holder_name, String, nil?: true

        # @!attribute card_security_code
        #   Whether the CVV / CVC the customer entered matched the card.
        #
        #   @return [String, nil]
        required :card_security_code, String, nil?: true

        # @!attribute zip_code
        #   Whether the billing postal code the customer entered matched the postal code the
        #   issuer has on file.
        #
        #   @return [String, nil]
        required :zip_code, String, nil?: true

        # @!method initialize(address_line1:, card_holder_name:, card_security_code:, zip_code:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Payment::VerificationChecks} for more details.
        #
        #   The issuer's address and card security code check results for this payment. Null
        #   when the processor returned none.
        #
        #   @param address_line1 [String, nil] Whether the billing street address the customer entered matched the address the
        #
        #   @param card_holder_name [String, nil] Whether the cardholder name the customer entered matched the name the issuer has
        #
        #   @param card_security_code [String, nil] Whether the CVV / CVC the customer entered matched the card.
        #
        #   @param zip_code [String, nil] Whether the billing postal code the customer entered matched the postal code the
      end
    end
  end
end
