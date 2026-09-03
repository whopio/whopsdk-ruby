# frozen_string_literal: true

module WhopSDK
  module Models
    class Payment < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Payment ID, prefixed `pay_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   The account that received the payment, prefixed `biz_`.
      #
      #   @return [String, nil]
      required :account_id, String, nil?: true

      # @!attribute amount_after_fees
      #   What the account keeps: the total less Whop's fees.
      #
      #   @return [WhopSDK::Models::Payment::AmountAfterFees]
      required :amount_after_fees, -> { WhopSDK::Payment::AmountAfterFees }

      # @!attribute auto_refunded
      #   True when Whop refunded the payment automatically, for example on a dispute
      #   alert.
      #
      #   @return [Boolean]
      required :auto_refunded, WhopSDK::Internal::Type::Boolean

      # @!attribute billing_address
      #   The billing address the buyer entered, or null.
      #
      #   @return [WhopSDK::Models::Payment::BillingAddress, nil]
      required :billing_address, -> { WhopSDK::Payment::BillingAddress }, nil?: true

      # @!attribute billing_reason
      #   The reason why a specific payment was billed
      #
      #   @return [Symbol, WhopSDK::Models::BillingReasons, nil]
      required :billing_reason, enum: -> { WhopSDK::BillingReasons }, nil?: true

      # @!attribute checkout_configuration_id
      #   The checkout configuration the buyer paid through, prefixed `ch_`, or null.
      #
      #   @return [String, nil]
      required :checkout_configuration_id, String, nil?: true

      # @!attribute client_secret
      #   The credential a buyer's surface presents to poll this payment and set its
      #   return URL. Only on payments created from a confirmation token, and always null
      #   in list responses — retrieve the payment for it.
      #
      #   @return [String, nil]
      required :client_secret, String, nil?: true

      # @!attribute created_at
      #   When the payment was created, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute currency
      #   The currency the payment settles in, lowercase ISO 4217. Every money field below
      #   is stated in it unless it says otherwise.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute customer_phone
      #   The phone number the buyer gave at checkout, when one was collected.
      #
      #   @return [String, nil]
      required :customer_phone, String, nil?: true

      # @!attribute decline_code
      #   The reason a payment was declined.
      #
      #   @return [Symbol, WhopSDK::Models::Payment::DeclineCode, nil]
      required :decline_code, enum: -> { WhopSDK::Payment::DeclineCode }, nil?: true

      # @!attribute dispute_alerted_at
      #   When an issuer warned that this payment will be disputed, or null.
      #
      #   @return [String, nil]
      required :dispute_alerted_at, String, nil?: true

      # @!attribute failure_message
      #   Why the most recent attempt failed, in plain words, or null.
      #
      #   @return [String, nil]
      required :failure_message, String, nil?: true

      # @!attribute financing_installments_count
      #   For installment methods, how many payments the charge splits into.
      #
      #   @return [Float, nil]
      required :financing_installments_count, Float, nil?: true

      # @!attribute last_payment_attempt_at
      #   When the most recent charge attempt ran, or null.
      #
      #   @return [String, nil]
      required :last_payment_attempt_at, String, nil?: true

      # @!attribute member_id
      #   The buyer's member record on the account, prefixed `mber_`. Null without the
      #   member:basic:read permission.
      #
      #   @return [String, nil]
      required :member_id, String, nil?: true

      # @!attribute membership_id
      #   The membership this payment is billed against, prefixed `mem_`. Null for one-off
      #   purchases or without the member:basic:read permission.
      #
      #   @return [String, nil]
      required :membership_id, String, nil?: true

      # @!attribute metadata
      #   Your own key-value data attached when the payment was created.
      #
      #   @return [Object, nil]
      required :metadata, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute needs_tracking
      #   True when funds are held until the order ships and no tracking number has been
      #   added yet. Null without the shipment:basic:read permission.
      #
      #   @return [Boolean, nil]
      required :needs_tracking, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute next_payment_attempt_at
      #   When the next automatic retry is scheduled, or null.
      #
      #   @return [String, nil]
      required :next_payment_attempt_at, String, nil?: true

      # @!attribute paid_at
      #   When the money was collected, or null while it has not been.
      #
      #   @return [String, nil]
      required :paid_at, String, nil?: true

      # @!attribute payment_instrument
      #   The instrument shaped for display: a buyer-facing name, the standard icon set,
      #   and the card's brand and last four when it was a card.
      #
      #   @return [WhopSDK::Models::Payment::PaymentInstrument, nil]
      required :payment_instrument, -> { WhopSDK::Payment::PaymentInstrument }, nil?: true

      # @!attribute payment_method_id
      #   The stored payment method that was charged, prefixed `payt_`. Null when the
      #   method was not saved.
      #
      #   @return [String, nil]
      required :payment_method_id, String, nil?: true

      # @!attribute payment_method_type
      #   The different types of payment methods that can be used.
      #
      #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes, nil]
      required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }, nil?: true

      # @!attribute payments_failed
      #   How many charge attempts have failed on this payment.
      #
      #   @return [Float]
      required :payments_failed, Float

      # @!attribute plan_id
      #   The plan that was charged, prefixed `plan_`.
      #
      #   @return [String, nil]
      required :plan_id, String, nil?: true

      # @!attribute product_id
      #   The product the plan belongs to, prefixed `prod_`. Null for a plan with no
      #   product.
      #
      #   @return [String, nil]
      required :product_id, String, nil?: true

      # @!attribute promo_code_id
      #   The promo code applied at checkout, prefixed `promo_`, or null.
      #
      #   @return [String, nil]
      required :promo_code_id, String, nil?: true

      # @!attribute refundable
      #   True when the payment is `paid`, not yet fully refunded, and its processor
      #   supports refunds.
      #
      #   @return [Boolean]
      required :refundable, WhopSDK::Internal::Type::Boolean

      # @!attribute refunded_amount
      #   How much has been refunded so far, as it settled — refunds convert at the rate
      #   in force when each one was issued, not the payment's original rate.
      #
      #   @return [WhopSDK::Models::Payment::RefundedAmount, nil]
      required :refunded_amount, -> { WhopSDK::Payment::RefundedAmount }, nil?: true

      # @!attribute refunded_at
      #   When the payment was refunded, or null.
      #
      #   @return [String, nil]
      required :refunded_at, String, nil?: true

      # @!attribute retryable
      #   True when the payment is `open` and Whop can attempt the charge again — see
      #   `POST /payments/{id}/retry`.
      #
      #   @return [Boolean]
      required :retryable, WhopSDK::Internal::Type::Boolean

      # @!attribute risk_score
      #   Whop's fraud risk score from 0 (lowest) to 100 (highest), or null when the
      #   payment was not scored.
      #
      #   @return [Float, nil]
      required :risk_score, Float, nil?: true

      # @!attribute risk_signals
      #   The factors behind `risk_score`, grouped by category, or null.
      #
      #   @return [Object, nil]
      required :risk_signals, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute settlement_time_at
      #   When the funds post to the account's available balance, at midnight UTC. The
      #   `ledger_account.funds_available` webhook carries the same value. Null until the
      #   payment is paid, and always null in list responses — retrieve the payment for
      #   it.
      #
      #   @return [String, nil]
      required :settlement_time_at, String, nil?: true

      # @!attribute shipment_id
      #   The shipment fulfilling this payment, prefixed `ship_`. Null when nothing ships
      #   or without the shipment:basic:read permission.
      #
      #   @return [String, nil]
      required :shipment_id, String, nil?: true

      # @!attribute shipping_address
      #   The shipping address for physical goods, or null.
      #
      #   @return [WhopSDK::Models::Payment::ShippingAddress, nil]
      required :shipping_address, -> { WhopSDK::Payment::ShippingAddress }, nil?: true

      # @!attribute status
      #   The lifecycle state of the charge: `open` while collection is outstanding,
      #   `paid` once the money moved, `pending` while a settlement rail clears,
      #   `void`/`uncollectible` when it ended without collecting.
      #
      #   @return [Symbol, WhopSDK::Models::ReceiptStatus]
      required :status, enum: -> { WhopSDK::ReceiptStatus }

      # @!attribute substatus
      #   The dashboard's finer-grained reading of the payment, folding in refunds,
      #   disputes and Resolution Center cases.
      #
      #   @return [Symbol, WhopSDK::Models::FriendlyReceiptStatus]
      required :substatus, enum: -> { WhopSDK::FriendlyReceiptStatus }

      # @!attribute subtotal
      #   The price before discounts, tax and fees.
      #
      #   @return [WhopSDK::Models::Payment::Subtotal, nil]
      required :subtotal, -> { WhopSDK::Payment::Subtotal }, nil?: true

      # @!attribute tax_amount
      #   The sales tax or VAT collected. Null when no tax applied.
      #
      #   @return [WhopSDK::Models::Payment::TaxAmount, nil]
      required :tax_amount, -> { WhopSDK::Payment::TaxAmount }, nil?: true

      # @!attribute tax_behavior
      #   The type of tax inclusivity applied to the receipt, for determining whether the
      #   tax is included in the final price, or paid on top.
      #
      #   @return [Symbol, WhopSDK::Models::ReceiptTaxBehavior, nil]
      required :tax_behavior, enum: -> { WhopSDK::ReceiptTaxBehavior }, nil?: true

      # @!attribute tax_refunded_amount
      #   How much of the collected tax has been returned to the buyer so far. Zero when
      #   the payment carried no tax, or when nothing has been refunded.
      #
      #   @return [WhopSDK::Models::Payment::TaxRefundedAmount]
      required :tax_refunded_amount, -> { WhopSDK::Payment::TaxRefundedAmount }

      # @!attribute three_ds_verified
      #   True when the buyer completed 3D Secure for this payment.
      #
      #   @return [Boolean]
      required :three_ds_verified, WhopSDK::Internal::Type::Boolean

      # @!attribute total
      #   The account-facing total: the price after discounts, plus any tax added on top.
      #   Excludes buyer fees, which the buyer pays above this amount — so this is not
      #   necessarily what the buyer's statement shows.
      #
      #   @return [WhopSDK::Models::Payment::Total, nil]
      required :total, -> { WhopSDK::Payment::Total }, nil?: true

      # @!attribute updated_at
      #   When the payment last changed, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute usd_total
      #   The total converted to USD at the time of the charge, for reporting across
      #   currencies. Excludes the adaptive pricing FX markup, which the account does not
      #   keep.
      #
      #   @return [WhopSDK::Models::Payment::UsdTotal, nil]
      required :usd_total, -> { WhopSDK::Payment::UsdTotal }, nil?: true

      # @!attribute user
      #   The buyer. Null when the payment belongs to a company buyer rather than a user.
      #
      #   @return [WhopSDK::Models::Payment::User, nil]
      required :user, -> { WhopSDK::Payment::User }, nil?: true

      # @!attribute verification_checks
      #   The issuer's address and security code check results, or null when the processor
      #   returned none.
      #
      #   @return [WhopSDK::Models::Payment::VerificationChecks, nil]
      required :verification_checks, -> { WhopSDK::Payment::VerificationChecks }, nil?: true

      # @!attribute voidable
      #   True when the payment is `open` on a past-due membership and its processor
      #   supports voiding — see `POST /payments/{id}/void`.
      #
      #   @return [Boolean]
      required :voidable, WhopSDK::Internal::Type::Boolean

      # @!method initialize(id:, account_id:, amount_after_fees:, auto_refunded:, billing_address:, billing_reason:, checkout_configuration_id:, client_secret:, created_at:, currency:, customer_phone:, decline_code:, dispute_alerted_at:, failure_message:, financing_installments_count:, last_payment_attempt_at:, member_id:, membership_id:, metadata:, needs_tracking:, next_payment_attempt_at:, paid_at:, payment_instrument:, payment_method_id:, payment_method_type:, payments_failed:, plan_id:, product_id:, promo_code_id:, refundable:, refunded_amount:, refunded_at:, retryable:, risk_score:, risk_signals:, settlement_time_at:, shipment_id:, shipping_address:, status:, substatus:, subtotal:, tax_amount:, tax_behavior:, tax_refunded_amount:, three_ds_verified:, total:, updated_at:, usd_total:, user:, verification_checks:, voidable:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::Payment}
      #   for more details.
      #
      #   @param id [String] Payment ID, prefixed `pay_`.
      #
      #   @param account_id [String, nil] The account that received the payment, prefixed `biz_`.
      #
      #   @param amount_after_fees [WhopSDK::Models::Payment::AmountAfterFees] What the account keeps: the total less Whop's fees.
      #
      #   @param auto_refunded [Boolean] True when Whop refunded the payment automatically, for example on a dispute aler
      #
      #   @param billing_address [WhopSDK::Models::Payment::BillingAddress, nil] The billing address the buyer entered, or null.
      #
      #   @param billing_reason [Symbol, WhopSDK::Models::BillingReasons, nil] The reason why a specific payment was billed
      #
      #   @param checkout_configuration_id [String, nil] The checkout configuration the buyer paid through, prefixed `ch_`, or null.
      #
      #   @param client_secret [String, nil] The credential a buyer's surface presents to poll this payment and set its retur
      #
      #   @param created_at [String] When the payment was created, as an ISO 8601 timestamp.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The currency the payment settles in, lowercase ISO 4217. Every money field below
      #
      #   @param customer_phone [String, nil] The phone number the buyer gave at checkout, when one was collected.
      #
      #   @param decline_code [Symbol, WhopSDK::Models::Payment::DeclineCode, nil] The reason a payment was declined.
      #
      #   @param dispute_alerted_at [String, nil] When an issuer warned that this payment will be disputed, or null.
      #
      #   @param failure_message [String, nil] Why the most recent attempt failed, in plain words, or null.
      #
      #   @param financing_installments_count [Float, nil] For installment methods, how many payments the charge splits into.
      #
      #   @param last_payment_attempt_at [String, nil] When the most recent charge attempt ran, or null.
      #
      #   @param member_id [String, nil] The buyer's member record on the account, prefixed `mber_`. Null without the mem
      #
      #   @param membership_id [String, nil] The membership this payment is billed against, prefixed `mem_`. Null for one-off
      #
      #   @param metadata [Object, nil] Your own key-value data attached when the payment was created.
      #
      #   @param needs_tracking [Boolean, nil] True when funds are held until the order ships and no tracking number has been a
      #
      #   @param next_payment_attempt_at [String, nil] When the next automatic retry is scheduled, or null.
      #
      #   @param paid_at [String, nil] When the money was collected, or null while it has not been.
      #
      #   @param payment_instrument [WhopSDK::Models::Payment::PaymentInstrument, nil] The instrument shaped for display: a buyer-facing name, the standard icon set, a
      #
      #   @param payment_method_id [String, nil] The stored payment method that was charged, prefixed `payt_`. Null when the meth
      #
      #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes, nil] The different types of payment methods that can be used.
      #
      #   @param payments_failed [Float] How many charge attempts have failed on this payment.
      #
      #   @param plan_id [String, nil] The plan that was charged, prefixed `plan_`.
      #
      #   @param product_id [String, nil] The product the plan belongs to, prefixed `prod_`. Null for a plan with no produ
      #
      #   @param promo_code_id [String, nil] The promo code applied at checkout, prefixed `promo_`, or null.
      #
      #   @param refundable [Boolean] True when the payment is `paid`, not yet fully refunded, and its processor suppo
      #
      #   @param refunded_amount [WhopSDK::Models::Payment::RefundedAmount, nil] How much has been refunded so far, as it settled — refunds convert at the rate i
      #
      #   @param refunded_at [String, nil] When the payment was refunded, or null.
      #
      #   @param retryable [Boolean] True when the payment is `open` and Whop can attempt the charge again — see `POS
      #
      #   @param risk_score [Float, nil] Whop's fraud risk score from 0 (lowest) to 100 (highest), or null when the payme
      #
      #   @param risk_signals [Object, nil] The factors behind `risk_score`, grouped by category, or null.
      #
      #   @param settlement_time_at [String, nil] When the funds post to the account's available balance, at midnight UTC. The `le
      #
      #   @param shipment_id [String, nil] The shipment fulfilling this payment, prefixed `ship_`. Null when nothing ships
      #
      #   @param shipping_address [WhopSDK::Models::Payment::ShippingAddress, nil] The shipping address for physical goods, or null.
      #
      #   @param status [Symbol, WhopSDK::Models::ReceiptStatus] The lifecycle state of the charge: `open` while collection is outstanding, `paid
      #
      #   @param substatus [Symbol, WhopSDK::Models::FriendlyReceiptStatus] The dashboard's finer-grained reading of the payment, folding in refunds, disput
      #
      #   @param subtotal [WhopSDK::Models::Payment::Subtotal, nil] The price before discounts, tax and fees.
      #
      #   @param tax_amount [WhopSDK::Models::Payment::TaxAmount, nil] The sales tax or VAT collected. Null when no tax applied.
      #
      #   @param tax_behavior [Symbol, WhopSDK::Models::ReceiptTaxBehavior, nil] The type of tax inclusivity applied to the receipt, for determining whether the
      #
      #   @param tax_refunded_amount [WhopSDK::Models::Payment::TaxRefundedAmount] How much of the collected tax has been returned to the buyer so far. Zero when t
      #
      #   @param three_ds_verified [Boolean] True when the buyer completed 3D Secure for this payment.
      #
      #   @param total [WhopSDK::Models::Payment::Total, nil] The account-facing total: the price after discounts, plus any tax added on top.
      #
      #   @param updated_at [String] When the payment last changed, as an ISO 8601 timestamp.
      #
      #   @param usd_total [WhopSDK::Models::Payment::UsdTotal, nil] The total converted to USD at the time of the charge, for reporting across curre
      #
      #   @param user [WhopSDK::Models::Payment::User, nil] The buyer. Null when the payment belongs to a company buyer rather than a user.
      #
      #   @param verification_checks [WhopSDK::Models::Payment::VerificationChecks, nil] The issuer's address and security code check results, or null when the processor
      #
      #   @param voidable [Boolean] True when the payment is `open` on a past-due membership and its processor suppo

      # @see WhopSDK::Models::Payment#amount_after_fees
      class AmountAfterFees < WhopSDK::Internal::Type::BaseModel
        # @!attribute amount
        #   The amount in major units, as an exact decimal string — `"10.00"` is ten
        #   dollars. A string so no float rounds it in transit.
        #
        #   @return [String]
        required :amount, String

        # @!attribute currency
        #   Three-letter ISO 4217 currency code, lowercase.
        #
        #   @return [String]
        required :currency, String

        # @!attribute decimals
        #   How many decimal places the amount CARRIES — the precision the charge itself
        #   runs at.
        #
        #   @return [Integer]
        required :decimals, Integer

        # @!attribute display_decimals
        #   How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
        #   not always: COP is charged in centavos but written in whole pesos, so it is `2`
        #   and `0`. Format the number in your own locale using this.
        #
        #   @return [Integer]
        required :display_decimals, Integer

        # @!method initialize(amount:, currency:, decimals:, display_decimals:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Payment::AmountAfterFees} for more details.
        #
        #   What the account keeps: the total less Whop's fees.
        #
        #   @param amount [String] The amount in major units, as an exact decimal string — `"10.00"` is ten dollars
        #
        #   @param currency [String] Three-letter ISO 4217 currency code, lowercase.
        #
        #   @param decimals [Integer] How many decimal places the amount CARRIES — the precision the charge itself run
        #
        #   @param display_decimals [Integer] How many decimal places to SHOW. Usually equal to `decimals`, and deliberately n
      end

      # @see WhopSDK::Models::Payment#billing_address
      class BillingAddress < WhopSDK::Internal::Type::BaseModel
        # @!attribute city
        #   The city.
        #
        #   @return [String, nil]
        required :city, String, nil?: true

        # @!attribute country
        #   The ISO 3166-1 alpha-2 country code.
        #
        #   @return [String, nil]
        required :country, String, nil?: true

        # @!attribute line1
        #   The first street address line.
        #
        #   @return [String, nil]
        required :line1, String, nil?: true

        # @!attribute line2
        #   The second street address line.
        #
        #   @return [String, nil]
        required :line2, String, nil?: true

        # @!attribute name
        #   The name on the address.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute postal_code
        #   The postal or ZIP code.
        #
        #   @return [String, nil]
        required :postal_code, String, nil?: true

        # @!attribute state
        #   The state, province or region.
        #
        #   @return [String, nil]
        required :state, String, nil?: true

        # @!method initialize(city:, country:, line1:, line2:, name:, postal_code:, state:)
        #   The billing address the buyer entered, or null.
        #
        #   @param city [String, nil] The city.
        #
        #   @param country [String, nil] The ISO 3166-1 alpha-2 country code.
        #
        #   @param line1 [String, nil] The first street address line.
        #
        #   @param line2 [String, nil] The second street address line.
        #
        #   @param name [String, nil] The name on the address.
        #
        #   @param postal_code [String, nil] The postal or ZIP code.
        #
        #   @param state [String, nil] The state, province or region.
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
        #   @return [Float, nil]
        required :installment_count, Float, nil?: true

        # @!attribute payment_method_type
        #   The payment method type identifier, e.g. `card`, `klarna`, `apple_pay`.
        #
        #   @return [String]
        required :payment_method_type, String

        # @!method initialize(card:, display_name:, icons:, installment_count:, payment_method_type:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Payment::PaymentInstrument} for more details.
        #
        #   The instrument shaped for display: a buyer-facing name, the standard icon set,
        #   and the card's brand and last four when it was a card.
        #
        #   @param card [WhopSDK::Models::Payment::PaymentInstrument::Card, nil] Card payments only: the card's network and last four.
        #
        #   @param display_name [String] Buyer-facing instrument name — "Visa •••• 4242" when the card surfaced, else the
        #
        #   @param icons [WhopSDK::Models::Payment::PaymentInstrument::Icons] The standard icon set: square and card shapes, each in light and dark colorways.
        #
        #   @param installment_count [Float, nil] Installment methods only: how many payments the charge splits into. Data, not co
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

      # @see WhopSDK::Models::Payment#refunded_amount
      class RefundedAmount < WhopSDK::Internal::Type::BaseModel
        # @!attribute amount
        #   The amount in major units, as an exact decimal string — `"10.00"` is ten
        #   dollars. A string so no float rounds it in transit.
        #
        #   @return [String]
        required :amount, String

        # @!attribute currency
        #   Three-letter ISO 4217 currency code, lowercase.
        #
        #   @return [String]
        required :currency, String

        # @!attribute decimals
        #   How many decimal places the amount CARRIES — the precision the charge itself
        #   runs at.
        #
        #   @return [Integer]
        required :decimals, Integer

        # @!attribute display_decimals
        #   How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
        #   not always: COP is charged in centavos but written in whole pesos, so it is `2`
        #   and `0`. Format the number in your own locale using this.
        #
        #   @return [Integer]
        required :display_decimals, Integer

        # @!method initialize(amount:, currency:, decimals:, display_decimals:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Payment::RefundedAmount} for more details.
        #
        #   How much has been refunded so far, as it settled — refunds convert at the rate
        #   in force when each one was issued, not the payment's original rate.
        #
        #   @param amount [String] The amount in major units, as an exact decimal string — `"10.00"` is ten dollars
        #
        #   @param currency [String] Three-letter ISO 4217 currency code, lowercase.
        #
        #   @param decimals [Integer] How many decimal places the amount CARRIES — the precision the charge itself run
        #
        #   @param display_decimals [Integer] How many decimal places to SHOW. Usually equal to `decimals`, and deliberately n
      end

      # @see WhopSDK::Models::Payment#shipping_address
      class ShippingAddress < WhopSDK::Internal::Type::BaseModel
        # @!attribute city
        #   The city.
        #
        #   @return [String, nil]
        required :city, String, nil?: true

        # @!attribute country
        #   The ISO 3166-1 alpha-2 country code.
        #
        #   @return [String, nil]
        required :country, String, nil?: true

        # @!attribute line1
        #   The first street address line.
        #
        #   @return [String, nil]
        required :line1, String, nil?: true

        # @!attribute line2
        #   The second street address line.
        #
        #   @return [String, nil]
        required :line2, String, nil?: true

        # @!attribute name
        #   The name on the address.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute postal_code
        #   The postal or ZIP code.
        #
        #   @return [String, nil]
        required :postal_code, String, nil?: true

        # @!attribute state
        #   The state, province or region.
        #
        #   @return [String, nil]
        required :state, String, nil?: true

        # @!method initialize(city:, country:, line1:, line2:, name:, postal_code:, state:)
        #   The shipping address for physical goods, or null.
        #
        #   @param city [String, nil] The city.
        #
        #   @param country [String, nil] The ISO 3166-1 alpha-2 country code.
        #
        #   @param line1 [String, nil] The first street address line.
        #
        #   @param line2 [String, nil] The second street address line.
        #
        #   @param name [String, nil] The name on the address.
        #
        #   @param postal_code [String, nil] The postal or ZIP code.
        #
        #   @param state [String, nil] The state, province or region.
      end

      # @see WhopSDK::Models::Payment#subtotal
      class Subtotal < WhopSDK::Internal::Type::BaseModel
        # @!attribute amount
        #   The amount in major units, as an exact decimal string — `"10.00"` is ten
        #   dollars. A string so no float rounds it in transit.
        #
        #   @return [String]
        required :amount, String

        # @!attribute currency
        #   Three-letter ISO 4217 currency code, lowercase.
        #
        #   @return [String]
        required :currency, String

        # @!attribute decimals
        #   How many decimal places the amount CARRIES — the precision the charge itself
        #   runs at.
        #
        #   @return [Integer]
        required :decimals, Integer

        # @!attribute display_decimals
        #   How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
        #   not always: COP is charged in centavos but written in whole pesos, so it is `2`
        #   and `0`. Format the number in your own locale using this.
        #
        #   @return [Integer]
        required :display_decimals, Integer

        # @!method initialize(amount:, currency:, decimals:, display_decimals:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Payment::Subtotal} for more details.
        #
        #   The price before discounts, tax and fees.
        #
        #   @param amount [String] The amount in major units, as an exact decimal string — `"10.00"` is ten dollars
        #
        #   @param currency [String] Three-letter ISO 4217 currency code, lowercase.
        #
        #   @param decimals [Integer] How many decimal places the amount CARRIES — the precision the charge itself run
        #
        #   @param display_decimals [Integer] How many decimal places to SHOW. Usually equal to `decimals`, and deliberately n
      end

      # @see WhopSDK::Models::Payment#tax_amount
      class TaxAmount < WhopSDK::Internal::Type::BaseModel
        # @!attribute amount
        #   The amount in major units, as an exact decimal string — `"10.00"` is ten
        #   dollars. A string so no float rounds it in transit.
        #
        #   @return [String]
        required :amount, String

        # @!attribute currency
        #   Three-letter ISO 4217 currency code, lowercase.
        #
        #   @return [String]
        required :currency, String

        # @!attribute decimals
        #   How many decimal places the amount CARRIES — the precision the charge itself
        #   runs at.
        #
        #   @return [Integer]
        required :decimals, Integer

        # @!attribute display_decimals
        #   How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
        #   not always: COP is charged in centavos but written in whole pesos, so it is `2`
        #   and `0`. Format the number in your own locale using this.
        #
        #   @return [Integer]
        required :display_decimals, Integer

        # @!method initialize(amount:, currency:, decimals:, display_decimals:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Payment::TaxAmount} for more details.
        #
        #   The sales tax or VAT collected. Null when no tax applied.
        #
        #   @param amount [String] The amount in major units, as an exact decimal string — `"10.00"` is ten dollars
        #
        #   @param currency [String] Three-letter ISO 4217 currency code, lowercase.
        #
        #   @param decimals [Integer] How many decimal places the amount CARRIES — the precision the charge itself run
        #
        #   @param display_decimals [Integer] How many decimal places to SHOW. Usually equal to `decimals`, and deliberately n
      end

      # @see WhopSDK::Models::Payment#tax_refunded_amount
      class TaxRefundedAmount < WhopSDK::Internal::Type::BaseModel
        # @!attribute amount
        #   The amount in major units, as an exact decimal string — `"10.00"` is ten
        #   dollars. A string so no float rounds it in transit.
        #
        #   @return [String]
        required :amount, String

        # @!attribute currency
        #   Three-letter ISO 4217 currency code, lowercase.
        #
        #   @return [String]
        required :currency, String

        # @!attribute decimals
        #   How many decimal places the amount CARRIES — the precision the charge itself
        #   runs at.
        #
        #   @return [Integer]
        required :decimals, Integer

        # @!attribute display_decimals
        #   How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
        #   not always: COP is charged in centavos but written in whole pesos, so it is `2`
        #   and `0`. Format the number in your own locale using this.
        #
        #   @return [Integer]
        required :display_decimals, Integer

        # @!method initialize(amount:, currency:, decimals:, display_decimals:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Payment::TaxRefundedAmount} for more details.
        #
        #   How much of the collected tax has been returned to the buyer so far. Zero when
        #   the payment carried no tax, or when nothing has been refunded.
        #
        #   @param amount [String] The amount in major units, as an exact decimal string — `"10.00"` is ten dollars
        #
        #   @param currency [String] Three-letter ISO 4217 currency code, lowercase.
        #
        #   @param decimals [Integer] How many decimal places the amount CARRIES — the precision the charge itself run
        #
        #   @param display_decimals [Integer] How many decimal places to SHOW. Usually equal to `decimals`, and deliberately n
      end

      # @see WhopSDK::Models::Payment#total
      class Total < WhopSDK::Internal::Type::BaseModel
        # @!attribute amount
        #   The amount in major units, as an exact decimal string — `"10.00"` is ten
        #   dollars. A string so no float rounds it in transit.
        #
        #   @return [String]
        required :amount, String

        # @!attribute currency
        #   Three-letter ISO 4217 currency code, lowercase.
        #
        #   @return [String]
        required :currency, String

        # @!attribute decimals
        #   How many decimal places the amount CARRIES — the precision the charge itself
        #   runs at.
        #
        #   @return [Integer]
        required :decimals, Integer

        # @!attribute display_decimals
        #   How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
        #   not always: COP is charged in centavos but written in whole pesos, so it is `2`
        #   and `0`. Format the number in your own locale using this.
        #
        #   @return [Integer]
        required :display_decimals, Integer

        # @!method initialize(amount:, currency:, decimals:, display_decimals:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Payment::Total} for more details.
        #
        #   The account-facing total: the price after discounts, plus any tax added on top.
        #   Excludes buyer fees, which the buyer pays above this amount — so this is not
        #   necessarily what the buyer's statement shows.
        #
        #   @param amount [String] The amount in major units, as an exact decimal string — `"10.00"` is ten dollars
        #
        #   @param currency [String] Three-letter ISO 4217 currency code, lowercase.
        #
        #   @param decimals [Integer] How many decimal places the amount CARRIES — the precision the charge itself run
        #
        #   @param display_decimals [Integer] How many decimal places to SHOW. Usually equal to `decimals`, and deliberately n
      end

      # @see WhopSDK::Models::Payment#usd_total
      class UsdTotal < WhopSDK::Internal::Type::BaseModel
        # @!attribute amount
        #   The amount in major units, as an exact decimal string — `"10.00"` is ten
        #   dollars. A string so no float rounds it in transit.
        #
        #   @return [String]
        required :amount, String

        # @!attribute currency
        #   Three-letter ISO 4217 currency code, lowercase.
        #
        #   @return [String]
        required :currency, String

        # @!attribute decimals
        #   How many decimal places the amount CARRIES — the precision the charge itself
        #   runs at.
        #
        #   @return [Integer]
        required :decimals, Integer

        # @!attribute display_decimals
        #   How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
        #   not always: COP is charged in centavos but written in whole pesos, so it is `2`
        #   and `0`. Format the number in your own locale using this.
        #
        #   @return [Integer]
        required :display_decimals, Integer

        # @!method initialize(amount:, currency:, decimals:, display_decimals:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Payment::UsdTotal} for more details.
        #
        #   The total converted to USD at the time of the charge, for reporting across
        #   currencies. Excludes the adaptive pricing FX markup, which the account does not
        #   keep.
        #
        #   @param amount [String] The amount in major units, as an exact decimal string — `"10.00"` is ten dollars
        #
        #   @param currency [String] Three-letter ISO 4217 currency code, lowercase.
        #
        #   @param decimals [Integer] How many decimal places the amount CARRIES — the precision the charge itself run
        #
        #   @param display_decimals [Integer] How many decimal places to SHOW. Usually equal to `decimals`, and deliberately n
      end

      # @see WhopSDK::Models::Payment#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   User ID, prefixed `user_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   Display name.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute profile_picture
        #   Avatar wrapper; its `url` is always present, using a generated placeholder when
        #   the user set no picture.
        #
        #   @return [WhopSDK::Models::Payment::User::ProfilePicture]
        required :profile_picture, -> { WhopSDK::Payment::User::ProfilePicture }

        # @!attribute username
        #   Public username.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, profile_picture:, username:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Payment::User} for more details.
        #
        #   The buyer. Null when the payment belongs to a company buyer rather than a user.
        #
        #   @param id [String] User ID, prefixed `user_`.
        #
        #   @param name [String, nil] Display name.
        #
        #   @param profile_picture [WhopSDK::Models::Payment::User::ProfilePicture] Avatar wrapper; its `url` is always present, using a generated placeholder when
        #
        #   @param username [String] Public username.

        # @see WhopSDK::Models::Payment::User#profile_picture
        class ProfilePicture < WhopSDK::Internal::Type::BaseModel
          # @!attribute url
          #   Avatar image URL. Always present — a generated placeholder when the user set no
          #   picture.
          #
          #   @return [String]
          required :url, String

          # @!method initialize(url:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Payment::User::ProfilePicture} for more details.
          #
          #   Avatar wrapper; its `url` is always present, using a generated placeholder when
          #   the user set no picture.
          #
          #   @param url [String] Avatar image URL. Always present — a generated placeholder when the user set no
        end
      end

      # @see WhopSDK::Models::Payment#verification_checks
      class VerificationChecks < WhopSDK::Internal::Type::BaseModel
        # @!attribute address_line1
        #   Whether the billing street address the customer entered matched the issuer's
        #   records.
        #
        #   @return [String, nil]
        required :address_line1, String, nil?: true

        # @!attribute card_holder_name
        #   Whether the cardholder name matched the issuer's records.
        #
        #   @return [String, nil]
        required :card_holder_name, String, nil?: true

        # @!attribute card_security_code
        #   Whether the CVV / CVC matched the card.
        #
        #   @return [String, nil]
        required :card_security_code, String, nil?: true

        # @!attribute zip_code
        #   Whether the billing postal code matched the issuer's records.
        #
        #   @return [String, nil]
        required :zip_code, String, nil?: true

        # @!method initialize(address_line1:, card_holder_name:, card_security_code:, zip_code:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Payment::VerificationChecks} for more details.
        #
        #   The issuer's address and security code check results, or null when the processor
        #   returned none.
        #
        #   @param address_line1 [String, nil] Whether the billing street address the customer entered matched the issuer's rec
        #
        #   @param card_holder_name [String, nil] Whether the cardholder name matched the issuer's records.
        #
        #   @param card_security_code [String, nil] Whether the CVV / CVC matched the card.
        #
        #   @param zip_code [String, nil] Whether the billing postal code matched the issuer's records.
      end
    end
  end
end
