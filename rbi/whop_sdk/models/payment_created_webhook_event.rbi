# typed: strong

module WhopSDK
  module Models
    class PaymentCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::PaymentCreatedWebhookEvent, WhopSDK::Internal::AnyHash)
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # The dated API version (Api-Version-Date) the payload is serialized to
      sig { returns(T.nilable(String)) }
      attr_accessor :api_version_date

      # A payment represents a completed or attempted charge. Payments track the amount,
      # status, currency, and payment method used.
      sig { returns(WhopSDK::PaymentCreatedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: WhopSDK::PaymentCreatedWebhookEvent::Data::OrHash).void
      end
      attr_writer :data

      # The timestamp in ISO 8601 format that the webhook was sent at on the server
      sig { returns(Time) }
      attr_accessor :timestamp

      # The webhook event type
      sig { returns(Symbol) }
      attr_accessor :type

      # The account ID that this webhook event is associated with
      sig { returns(T.nilable(String)) }
      attr_accessor :account_id

      # For some `.updated` events, the old values of the payload fields that changed,
      # keyed by field name. Omitted when no capture is available for the event
      sig { returns(T.nilable(T.anything)) }
      attr_reader :previous_attributes

      sig { params(previous_attributes: T.anything).void }
      attr_writer :previous_attributes

      sig do
        params(
          id: String,
          api_version_date: T.nilable(String),
          data: WhopSDK::PaymentCreatedWebhookEvent::Data::OrHash,
          timestamp: Time,
          account_id: T.nilable(String),
          previous_attributes: T.anything,
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # The dated API version (Api-Version-Date) the payload is serialized to
        api_version_date:,
        # A payment represents a completed or attempted charge. Payments track the amount,
        # status, currency, and payment method used.
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The account ID that this webhook event is associated with
        account_id: nil,
        # For some `.updated` events, the old values of the payload fields that changed,
        # keyed by field name. Omitted when no capture is available for the event
        previous_attributes: nil,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"payment.created"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            api_version_date: T.nilable(String),
            data: WhopSDK::PaymentCreatedWebhookEvent::Data,
            timestamp: Time,
            type: Symbol,
            account_id: T.nilable(String),
            previous_attributes: T.anything
          }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::PaymentCreatedWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the payment.
        sig { returns(String) }
        attr_accessor :id

        # How much the payment is for after fees
        sig { returns(Float) }
        attr_accessor :amount_after_fees

        # The application fee charged on this payment.
        sig do
          returns(
            T.nilable(WhopSDK::PaymentCreatedWebhookEvent::Data::ApplicationFee)
          )
        end
        attr_reader :application_fee

        sig do
          params(
            application_fee:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::ApplicationFee::OrHash
              )
          ).void
        end
        attr_writer :application_fee

        # Whether this payment was auto refunded or not
        sig { returns(T::Boolean) }
        attr_accessor :auto_refunded

        # The address of the user who made the payment.
        sig do
          returns(
            T.nilable(WhopSDK::PaymentCreatedWebhookEvent::Data::BillingAddress)
          )
        end
        attr_reader :billing_address

        sig do
          params(
            billing_address:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::BillingAddress::OrHash
              )
          ).void
        end
        attr_writer :billing_address

        # The reason why a specific payment was billed
        sig { returns(T.nilable(WhopSDK::BillingReasons::TaggedSymbol)) }
        attr_accessor :billing_reason

        # Possible card brands that a payment token can have
        sig { returns(T.nilable(WhopSDK::CardBrands::TaggedSymbol)) }
        attr_accessor :card_brand

        # The expiration month (1-12) of the card used for this payment. Falls back to the
        # declined card on failed payments with no saved card. Null when the payment was
        # not made with a card or the expiry is unavailable.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :card_exp_month

        # The four-digit expiration year of the card used for this payment. Falls back to
        # the declined card on failed payments with no saved card. Null when the payment
        # was not made with a card or the expiry is unavailable.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :card_exp_year

        # The last four digits of the card used to make this payment. Null if the payment
        # was not made with a card.
        sig { returns(T.nilable(String)) }
        attr_accessor :card_last4

        # The ID of the checkout session/configuration that produced this payment, if any.
        # Use this to map payments back to the checkout configuration that created them.
        sig { returns(T.nilable(String)) }
        attr_accessor :checkout_configuration_id

        # The company for the payment.
        sig do
          returns(T.nilable(WhopSDK::PaymentCreatedWebhookEvent::Data::Company))
        end
        attr_reader :company

        sig do
          params(
            company:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::Company::OrHash
              )
          ).void
        end
        attr_writer :company

        # The datetime the payment was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The three-letter ISO currency code for this payment (e.g., 'usd', 'eur').
        sig { returns(WhopSDK::Currency::TaggedSymbol) }
        attr_accessor :currency

        # Phone number the customer provided at checkout, or their verified phone number
        # when your checkout requires phone verification. `null` when no phone number was
        # collected.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_phone

        # The reason a payment was declined.
        sig do
          returns(
            T.nilable(
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          )
        end
        attr_accessor :decline_code

        # When an alert came in that this transaction will be disputed
        sig { returns(T.nilable(Time)) }
        attr_accessor :dispute_alerted_at

        # The disputes attached to this payment. Null if the actor in context does not
        # have the payment:dispute:read permission.
        sig do
          returns(
            T.nilable(
              T::Array[WhopSDK::PaymentCreatedWebhookEvent::Data::Dispute]
            )
          )
        end
        attr_accessor :disputes

        # If the payment failed, the reason for the failure.
        sig { returns(T.nilable(String)) }
        attr_accessor :failure_message

        # The fees associated with this specific payment.
        sig do
          returns(T::Array[WhopSDK::PaymentCreatedWebhookEvent::Data::Fee])
        end
        attr_accessor :fees

        # The number of financing installments for the payment. Present if the payment is
        # a financing payment (e.g. Splitit, Klarna, etc.).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :financing_installments_count

        # The financing transactions attached to this payment. Present if the payment is a
        # financing payment (e.g. Splitit, Klarna, etc.).
        sig do
          returns(
            T::Array[
              WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction
            ]
          )
        end
        attr_accessor :financing_transactions

        # The time of the last payment attempt.
        sig { returns(T.nilable(Time)) }
        attr_accessor :last_payment_attempt

        # The member attached to this payment.
        sig do
          returns(T.nilable(WhopSDK::PaymentCreatedWebhookEvent::Data::Member))
        end
        attr_reader :member

        sig do
          params(
            member:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::Member::OrHash
              )
          ).void
        end
        attr_writer :member

        # The membership attached to this payment.
        sig do
          returns(
            T.nilable(WhopSDK::PaymentCreatedWebhookEvent::Data::Membership)
          )
        end
        attr_reader :membership

        sig do
          params(
            membership:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::Membership::OrHash
              )
          ).void
        end
        attr_writer :membership

        # The custom metadata stored on this payment. This will be copied over to the
        # checkout configuration for which this payment was made
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_accessor :metadata

        # Whether this payment is holding funds until the order ships and has no tracking
        # number yet.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :needs_tracking

        # The time of the next schedule payment retry.
        sig { returns(T.nilable(Time)) }
        attr_accessor :next_payment_attempt

        # The time at which this payment was successfully collected. Null if the payment
        # has not yet succeeded. As a Unix timestamp.
        sig { returns(T.nilable(Time)) }
        attr_accessor :paid_at

        # The instrument this payment was made with, shaped for display: the method type,
        # a buyer-facing name, the standard icon set, and the card facts when it was a
        # card. Null when the receipt names no payment method.
        sig do
          returns(
            T.nilable(
              WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument
            )
          )
        end
        attr_reader :payment_instrument

        sig do
          params(
            payment_instrument:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::OrHash
              )
          ).void
        end
        attr_writer :payment_instrument

        # The tokenized payment method reference used for this payment. Null if no token
        # was used.
        sig do
          returns(
            T.nilable(WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentMethod)
          )
        end
        attr_reader :payment_method

        sig do
          params(
            payment_method:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentMethod::OrHash
              )
          ).void
        end
        attr_writer :payment_method

        # The different types of payment methods that can be used.
        sig { returns(T.nilable(WhopSDK::PaymentMethodTypes::TaggedSymbol)) }
        attr_accessor :payment_method_type

        # The number of failed payment attempts for the payment.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :payments_failed

        # The plan attached to this payment.
        sig do
          returns(T.nilable(WhopSDK::PaymentCreatedWebhookEvent::Data::Plan))
        end
        attr_reader :plan

        sig do
          params(
            plan:
              T.nilable(WhopSDK::PaymentCreatedWebhookEvent::Data::Plan::OrHash)
          ).void
        end
        attr_writer :plan

        # The product this payment was made for
        sig do
          returns(T.nilable(WhopSDK::PaymentCreatedWebhookEvent::Data::Product))
        end
        attr_reader :product

        sig do
          params(
            product:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::Product::OrHash
              )
          ).void
        end
        attr_writer :product

        # The promo code used for this payment.
        sig do
          returns(
            T.nilable(WhopSDK::PaymentCreatedWebhookEvent::Data::PromoCode)
          )
        end
        attr_reader :promo_code

        sig do
          params(
            promo_code:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::PromoCode::OrHash
              )
          ).void
        end
        attr_writer :promo_code

        # True only for payments that are `paid`, have not been fully refunded, and were
        # processed by a payment processor that allows refunds.
        sig { returns(T::Boolean) }
        attr_accessor :refundable

        # The payment refund amount(if applicable).
        sig { returns(T.nilable(Float)) }
        attr_accessor :refunded_amount

        # When the payment was refunded (if applicable).
        sig { returns(T.nilable(Time)) }
        attr_accessor :refunded_at

        # The refunds issued against this payment, newest first, including failed and
        # canceled refund attempts. Limited to the 100 most recent.
        sig do
          returns(T::Array[WhopSDK::PaymentCreatedWebhookEvent::Data::Refund])
        end
        attr_accessor :refunds

        # The resolution center cases opened by the customer on this payment. Null if the
        # actor in context does not have the payment:resolution_center_case:read
        # permission.
        sig do
          returns(
            T.nilable(
              T::Array[WhopSDK::PaymentCreatedWebhookEvent::Data::Resolution]
            )
          )
        end
        attr_accessor :resolutions

        # True when the payment status is `open` and its membership is in one of the
        # retry-eligible states (`active`, `trialing`, `completed`, or `past_due`), or
        # when it is a failed initial billing-engine payment on a `drafted` membership
        # with an unlimited-stock plan; otherwise false. Used to decide if Whop can
        # attempt the charge again.
        sig { returns(T::Boolean) }
        attr_accessor :retryable

        # Whop's in-house fraud risk score for this payment, from 0 (lowest risk) to 100
        # (highest risk). Null when the payment has not been scored or scoring has not yet
        # completed.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :risk_score

        # A curated set of factors behind the risk score, grouped by category (business
        # transaction history, buyer, device). Each entry has a key, human-readable label,
        # category, and value. Null when there is no risk assessment for this payment.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_accessor :risk_signals

        # The total amount charged to the customer for this payment, including taxes and
        # after any discounts. In the currency specified by the currency field.
        sig { returns(Float) }
        attr_accessor :settlement_amount

        # The three-letter ISO currency code for this payment (e.g., 'usd', 'eur').
        sig { returns(WhopSDK::Currency::TaggedSymbol) }
        attr_accessor :settlement_currency

        # Deprecated. Always returns null.
        sig { returns(T.nilable(Float)) }
        attr_accessor :settlement_exchange_rate

        # When this payment's funds post to the company's available balance, at midnight
        # UTC. Known at payment time and never changes. The
        # `ledger_account.funds_available` webhook carries the same `settlement_time_at`
        # when that batch posts — match them to know these funds are now withdrawable.
        sig { returns(T.nilable(Time)) }
        attr_accessor :settlement_time_at

        # The shipment attached to this payment.
        sig do
          returns(
            T.nilable(WhopSDK::PaymentCreatedWebhookEvent::Data::Shipment)
          )
        end
        attr_reader :shipment

        sig do
          params(
            shipment:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::Shipment::OrHash
              )
          ).void
        end
        attr_writer :shipment

        # The shipping address provided by the customer for physical goods. Null if no
        # shipping address was collected.
        sig do
          returns(
            T.nilable(
              WhopSDK::PaymentCreatedWebhookEvent::Data::ShippingAddress
            )
          )
        end
        attr_reader :shipping_address

        sig do
          params(
            shipping_address:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::ShippingAddress::OrHash
              )
          ).void
        end
        attr_writer :shipping_address

        # The status of a receipt
        sig { returns(T.nilable(WhopSDK::ReceiptStatus::TaggedSymbol)) }
        attr_accessor :status

        # The friendly status of the payment.
        sig { returns(WhopSDK::FriendlyReceiptStatus::TaggedSymbol) }
        attr_accessor :substatus

        # The subtotal to show to the creator (excluding buyer fees).
        sig { returns(T.nilable(Float)) }
        attr_accessor :subtotal

        # The calculated amount of the sales/VAT tax (if applicable).
        sig { returns(T.nilable(Float)) }
        attr_accessor :tax_amount

        # The type of tax inclusivity applied to the receipt, for determining whether the
        # tax is included in the final price, or paid on top.
        sig { returns(T.nilable(WhopSDK::ReceiptTaxBehavior::TaggedSymbol)) }
        attr_accessor :tax_behavior

        # The amount of tax that has been refunded (if applicable).
        sig { returns(T.nilable(Float)) }
        attr_accessor :tax_refunded_amount

        # Whether 3D Secure authentication was completed for this payment.
        sig { returns(T::Boolean) }
        attr_accessor :three_ds_verified

        # The total to show to the creator (excluding buyer fees).
        sig { returns(T.nilable(Float)) }
        attr_accessor :total

        # The datetime the payment was last updated.
        sig { returns(Time) }
        attr_accessor :updated_at

        # The total in USD to show to the creator (excluding buyer fees).
        sig { returns(T.nilable(Float)) }
        attr_accessor :usd_total

        # The user that made this payment.
        sig do
          returns(T.nilable(WhopSDK::PaymentCreatedWebhookEvent::Data::User))
        end
        attr_reader :user

        sig do
          params(
            user:
              T.nilable(WhopSDK::PaymentCreatedWebhookEvent::Data::User::OrHash)
          ).void
        end
        attr_writer :user

        # The issuer's address and card security code check results for this payment. Null
        # when the processor returned none.
        sig do
          returns(
            T.nilable(
              WhopSDK::PaymentCreatedWebhookEvent::Data::VerificationChecks
            )
          )
        end
        attr_reader :verification_checks

        sig do
          params(
            verification_checks:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::VerificationChecks::OrHash
              )
          ).void
        end
        attr_writer :verification_checks

        # True when the payment is tied to a membership in `past_due`, the payment status
        # is `open`, and the processor allows voiding payments; otherwise false.
        sig { returns(T::Boolean) }
        attr_accessor :voidable

        # A payment represents a completed or attempted charge. Payments track the amount,
        # status, currency, and payment method used.
        sig do
          params(
            id: String,
            amount_after_fees: Float,
            application_fee:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::ApplicationFee::OrHash
              ),
            auto_refunded: T::Boolean,
            billing_address:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::BillingAddress::OrHash
              ),
            billing_reason: T.nilable(WhopSDK::BillingReasons::OrSymbol),
            card_brand: T.nilable(WhopSDK::CardBrands::OrSymbol),
            card_exp_month: T.nilable(Integer),
            card_exp_year: T.nilable(Integer),
            card_last4: T.nilable(String),
            checkout_configuration_id: T.nilable(String),
            company:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::Company::OrHash
              ),
            created_at: Time,
            currency: WhopSDK::Currency::OrSymbol,
            customer_phone: T.nilable(String),
            decline_code:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::OrSymbol
              ),
            dispute_alerted_at: T.nilable(Time),
            disputes:
              T.nilable(
                T::Array[
                  WhopSDK::PaymentCreatedWebhookEvent::Data::Dispute::OrHash
                ]
              ),
            failure_message: T.nilable(String),
            fees:
              T::Array[WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::OrHash],
            financing_installments_count: T.nilable(Integer),
            financing_transactions:
              T::Array[
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::OrHash
              ],
            last_payment_attempt: T.nilable(Time),
            member:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::Member::OrHash
              ),
            membership:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::Membership::OrHash
              ),
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            needs_tracking: T.nilable(T::Boolean),
            next_payment_attempt: T.nilable(Time),
            paid_at: T.nilable(Time),
            payment_instrument:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::OrHash
              ),
            payment_method:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentMethod::OrHash
              ),
            payment_method_type:
              T.nilable(WhopSDK::PaymentMethodTypes::OrSymbol),
            payments_failed: T.nilable(Integer),
            plan:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::Plan::OrHash
              ),
            product:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::Product::OrHash
              ),
            promo_code:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::PromoCode::OrHash
              ),
            refundable: T::Boolean,
            refunded_amount: T.nilable(Float),
            refunded_at: T.nilable(Time),
            refunds:
              T::Array[
                WhopSDK::PaymentCreatedWebhookEvent::Data::Refund::OrHash
              ],
            resolutions:
              T.nilable(
                T::Array[
                  WhopSDK::PaymentCreatedWebhookEvent::Data::Resolution::OrHash
                ]
              ),
            retryable: T::Boolean,
            risk_score: T.nilable(Integer),
            risk_signals: T.nilable(T::Hash[Symbol, T.anything]),
            settlement_amount: Float,
            settlement_currency: WhopSDK::Currency::OrSymbol,
            settlement_exchange_rate: T.nilable(Float),
            settlement_time_at: T.nilable(Time),
            shipment:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::Shipment::OrHash
              ),
            shipping_address:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::ShippingAddress::OrHash
              ),
            status: T.nilable(WhopSDK::ReceiptStatus::OrSymbol),
            substatus: WhopSDK::FriendlyReceiptStatus::OrSymbol,
            subtotal: T.nilable(Float),
            tax_amount: T.nilable(Float),
            tax_behavior: T.nilable(WhopSDK::ReceiptTaxBehavior::OrSymbol),
            tax_refunded_amount: T.nilable(Float),
            three_ds_verified: T::Boolean,
            total: T.nilable(Float),
            updated_at: Time,
            usd_total: T.nilable(Float),
            user:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::User::OrHash
              ),
            verification_checks:
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::VerificationChecks::OrHash
              ),
            voidable: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the payment.
          id:,
          # How much the payment is for after fees
          amount_after_fees:,
          # The application fee charged on this payment.
          application_fee:,
          # Whether this payment was auto refunded or not
          auto_refunded:,
          # The address of the user who made the payment.
          billing_address:,
          # The reason why a specific payment was billed
          billing_reason:,
          # Possible card brands that a payment token can have
          card_brand:,
          # The expiration month (1-12) of the card used for this payment. Falls back to the
          # declined card on failed payments with no saved card. Null when the payment was
          # not made with a card or the expiry is unavailable.
          card_exp_month:,
          # The four-digit expiration year of the card used for this payment. Falls back to
          # the declined card on failed payments with no saved card. Null when the payment
          # was not made with a card or the expiry is unavailable.
          card_exp_year:,
          # The last four digits of the card used to make this payment. Null if the payment
          # was not made with a card.
          card_last4:,
          # The ID of the checkout session/configuration that produced this payment, if any.
          # Use this to map payments back to the checkout configuration that created them.
          checkout_configuration_id:,
          # The company for the payment.
          company:,
          # The datetime the payment was created.
          created_at:,
          # The three-letter ISO currency code for this payment (e.g., 'usd', 'eur').
          currency:,
          # Phone number the customer provided at checkout, or their verified phone number
          # when your checkout requires phone verification. `null` when no phone number was
          # collected.
          customer_phone:,
          # The reason a payment was declined.
          decline_code:,
          # When an alert came in that this transaction will be disputed
          dispute_alerted_at:,
          # The disputes attached to this payment. Null if the actor in context does not
          # have the payment:dispute:read permission.
          disputes:,
          # If the payment failed, the reason for the failure.
          failure_message:,
          # The fees associated with this specific payment.
          fees:,
          # The number of financing installments for the payment. Present if the payment is
          # a financing payment (e.g. Splitit, Klarna, etc.).
          financing_installments_count:,
          # The financing transactions attached to this payment. Present if the payment is a
          # financing payment (e.g. Splitit, Klarna, etc.).
          financing_transactions:,
          # The time of the last payment attempt.
          last_payment_attempt:,
          # The member attached to this payment.
          member:,
          # The membership attached to this payment.
          membership:,
          # The custom metadata stored on this payment. This will be copied over to the
          # checkout configuration for which this payment was made
          metadata:,
          # Whether this payment is holding funds until the order ships and has no tracking
          # number yet.
          needs_tracking:,
          # The time of the next schedule payment retry.
          next_payment_attempt:,
          # The time at which this payment was successfully collected. Null if the payment
          # has not yet succeeded. As a Unix timestamp.
          paid_at:,
          # The instrument this payment was made with, shaped for display: the method type,
          # a buyer-facing name, the standard icon set, and the card facts when it was a
          # card. Null when the receipt names no payment method.
          payment_instrument:,
          # The tokenized payment method reference used for this payment. Null if no token
          # was used.
          payment_method:,
          # The different types of payment methods that can be used.
          payment_method_type:,
          # The number of failed payment attempts for the payment.
          payments_failed:,
          # The plan attached to this payment.
          plan:,
          # The product this payment was made for
          product:,
          # The promo code used for this payment.
          promo_code:,
          # True only for payments that are `paid`, have not been fully refunded, and were
          # processed by a payment processor that allows refunds.
          refundable:,
          # The payment refund amount(if applicable).
          refunded_amount:,
          # When the payment was refunded (if applicable).
          refunded_at:,
          # The refunds issued against this payment, newest first, including failed and
          # canceled refund attempts. Limited to the 100 most recent.
          refunds:,
          # The resolution center cases opened by the customer on this payment. Null if the
          # actor in context does not have the payment:resolution_center_case:read
          # permission.
          resolutions:,
          # True when the payment status is `open` and its membership is in one of the
          # retry-eligible states (`active`, `trialing`, `completed`, or `past_due`), or
          # when it is a failed initial billing-engine payment on a `drafted` membership
          # with an unlimited-stock plan; otherwise false. Used to decide if Whop can
          # attempt the charge again.
          retryable:,
          # Whop's in-house fraud risk score for this payment, from 0 (lowest risk) to 100
          # (highest risk). Null when the payment has not been scored or scoring has not yet
          # completed.
          risk_score:,
          # A curated set of factors behind the risk score, grouped by category (business
          # transaction history, buyer, device). Each entry has a key, human-readable label,
          # category, and value. Null when there is no risk assessment for this payment.
          risk_signals:,
          # The total amount charged to the customer for this payment, including taxes and
          # after any discounts. In the currency specified by the currency field.
          settlement_amount:,
          # The three-letter ISO currency code for this payment (e.g., 'usd', 'eur').
          settlement_currency:,
          # Deprecated. Always returns null.
          settlement_exchange_rate:,
          # When this payment's funds post to the company's available balance, at midnight
          # UTC. Known at payment time and never changes. The
          # `ledger_account.funds_available` webhook carries the same `settlement_time_at`
          # when that batch posts — match them to know these funds are now withdrawable.
          settlement_time_at:,
          # The shipment attached to this payment.
          shipment:,
          # The shipping address provided by the customer for physical goods. Null if no
          # shipping address was collected.
          shipping_address:,
          # The status of a receipt
          status:,
          # The friendly status of the payment.
          substatus:,
          # The subtotal to show to the creator (excluding buyer fees).
          subtotal:,
          # The calculated amount of the sales/VAT tax (if applicable).
          tax_amount:,
          # The type of tax inclusivity applied to the receipt, for determining whether the
          # tax is included in the final price, or paid on top.
          tax_behavior:,
          # The amount of tax that has been refunded (if applicable).
          tax_refunded_amount:,
          # Whether 3D Secure authentication was completed for this payment.
          three_ds_verified:,
          # The total to show to the creator (excluding buyer fees).
          total:,
          # The datetime the payment was last updated.
          updated_at:,
          # The total in USD to show to the creator (excluding buyer fees).
          usd_total:,
          # The user that made this payment.
          user:,
          # The issuer's address and card security code check results for this payment. Null
          # when the processor returned none.
          verification_checks:,
          # True when the payment is tied to a membership in `past_due`, the payment status
          # is `open`, and the processor allows voiding payments; otherwise false.
          voidable:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount_after_fees: Float,
              application_fee:
                T.nilable(
                  WhopSDK::PaymentCreatedWebhookEvent::Data::ApplicationFee
                ),
              auto_refunded: T::Boolean,
              billing_address:
                T.nilable(
                  WhopSDK::PaymentCreatedWebhookEvent::Data::BillingAddress
                ),
              billing_reason: T.nilable(WhopSDK::BillingReasons::TaggedSymbol),
              card_brand: T.nilable(WhopSDK::CardBrands::TaggedSymbol),
              card_exp_month: T.nilable(Integer),
              card_exp_year: T.nilable(Integer),
              card_last4: T.nilable(String),
              checkout_configuration_id: T.nilable(String),
              company:
                T.nilable(WhopSDK::PaymentCreatedWebhookEvent::Data::Company),
              created_at: Time,
              currency: WhopSDK::Currency::TaggedSymbol,
              customer_phone: T.nilable(String),
              decline_code:
                T.nilable(
                  WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
                ),
              dispute_alerted_at: T.nilable(Time),
              disputes:
                T.nilable(
                  T::Array[WhopSDK::PaymentCreatedWebhookEvent::Data::Dispute]
                ),
              failure_message: T.nilable(String),
              fees: T::Array[WhopSDK::PaymentCreatedWebhookEvent::Data::Fee],
              financing_installments_count: T.nilable(Integer),
              financing_transactions:
                T::Array[
                  WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction
                ],
              last_payment_attempt: T.nilable(Time),
              member:
                T.nilable(WhopSDK::PaymentCreatedWebhookEvent::Data::Member),
              membership:
                T.nilable(
                  WhopSDK::PaymentCreatedWebhookEvent::Data::Membership
                ),
              metadata: T.nilable(T::Hash[Symbol, T.anything]),
              needs_tracking: T.nilable(T::Boolean),
              next_payment_attempt: T.nilable(Time),
              paid_at: T.nilable(Time),
              payment_instrument:
                T.nilable(
                  WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument
                ),
              payment_method:
                T.nilable(
                  WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentMethod
                ),
              payment_method_type:
                T.nilable(WhopSDK::PaymentMethodTypes::TaggedSymbol),
              payments_failed: T.nilable(Integer),
              plan: T.nilable(WhopSDK::PaymentCreatedWebhookEvent::Data::Plan),
              product:
                T.nilable(WhopSDK::PaymentCreatedWebhookEvent::Data::Product),
              promo_code:
                T.nilable(WhopSDK::PaymentCreatedWebhookEvent::Data::PromoCode),
              refundable: T::Boolean,
              refunded_amount: T.nilable(Float),
              refunded_at: T.nilable(Time),
              refunds:
                T::Array[WhopSDK::PaymentCreatedWebhookEvent::Data::Refund],
              resolutions:
                T.nilable(
                  T::Array[
                    WhopSDK::PaymentCreatedWebhookEvent::Data::Resolution
                  ]
                ),
              retryable: T::Boolean,
              risk_score: T.nilable(Integer),
              risk_signals: T.nilable(T::Hash[Symbol, T.anything]),
              settlement_amount: Float,
              settlement_currency: WhopSDK::Currency::TaggedSymbol,
              settlement_exchange_rate: T.nilable(Float),
              settlement_time_at: T.nilable(Time),
              shipment:
                T.nilable(WhopSDK::PaymentCreatedWebhookEvent::Data::Shipment),
              shipping_address:
                T.nilable(
                  WhopSDK::PaymentCreatedWebhookEvent::Data::ShippingAddress
                ),
              status: T.nilable(WhopSDK::ReceiptStatus::TaggedSymbol),
              substatus: WhopSDK::FriendlyReceiptStatus::TaggedSymbol,
              subtotal: T.nilable(Float),
              tax_amount: T.nilable(Float),
              tax_behavior:
                T.nilable(WhopSDK::ReceiptTaxBehavior::TaggedSymbol),
              tax_refunded_amount: T.nilable(Float),
              three_ds_verified: T::Boolean,
              total: T.nilable(Float),
              updated_at: Time,
              usd_total: T.nilable(Float),
              user: T.nilable(WhopSDK::PaymentCreatedWebhookEvent::Data::User),
              verification_checks:
                T.nilable(
                  WhopSDK::PaymentCreatedWebhookEvent::Data::VerificationChecks
                ),
              voidable: T::Boolean
            }
          )
        end
        def to_hash
        end

        class ApplicationFee < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PaymentCreatedWebhookEvent::Data::ApplicationFee,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the application fee.
          sig { returns(String) }
          attr_accessor :id

          # The application fee amount.
          sig { returns(Float) }
          attr_accessor :amount

          # The amount of the application fee that has been captured.
          sig { returns(Float) }
          attr_accessor :amount_captured

          # The amount of the application fee that has been refunded.
          sig { returns(Float) }
          attr_accessor :amount_refunded

          # The datetime the application fee was created.
          sig { returns(Time) }
          attr_accessor :created_at

          # The currency of the application fee.
          sig { returns(WhopSDK::Currency::TaggedSymbol) }
          attr_accessor :currency

          # The application fee charged on this payment.
          sig do
            params(
              id: String,
              amount: Float,
              amount_captured: Float,
              amount_refunded: Float,
              created_at: Time,
              currency: WhopSDK::Currency::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the application fee.
            id:,
            # The application fee amount.
            amount:,
            # The amount of the application fee that has been captured.
            amount_captured:,
            # The amount of the application fee that has been refunded.
            amount_refunded:,
            # The datetime the application fee was created.
            created_at:,
            # The currency of the application fee.
            currency:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                amount: Float,
                amount_captured: Float,
                amount_refunded: Float,
                created_at: Time,
                currency: WhopSDK::Currency::TaggedSymbol
              }
            )
          end
          def to_hash
          end
        end

        class BillingAddress < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PaymentCreatedWebhookEvent::Data::BillingAddress,
                WhopSDK::Internal::AnyHash
              )
            end

          # The city of the address.
          sig { returns(T.nilable(String)) }
          attr_accessor :city

          # The country of the address.
          sig { returns(T.nilable(String)) }
          attr_accessor :country

          # The line 1 of the address.
          sig { returns(T.nilable(String)) }
          attr_accessor :line1

          # The line 2 of the address.
          sig { returns(T.nilable(String)) }
          attr_accessor :line2

          # The name of the customer.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The postal code of the address.
          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code

          # The state of the address.
          sig { returns(T.nilable(String)) }
          attr_accessor :state

          # The address of the user who made the payment.
          sig do
            params(
              city: T.nilable(String),
              country: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              name: T.nilable(String),
              postal_code: T.nilable(String),
              state: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The city of the address.
            city:,
            # The country of the address.
            country:,
            # The line 1 of the address.
            line1:,
            # The line 2 of the address.
            line2:,
            # The name of the customer.
            name:,
            # The postal code of the address.
            postal_code:,
            # The state of the address.
            state:
          )
          end

          sig do
            override.returns(
              {
                city: T.nilable(String),
                country: T.nilable(String),
                line1: T.nilable(String),
                line2: T.nilable(String),
                name: T.nilable(String),
                postal_code: T.nilable(String),
                state: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class Company < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PaymentCreatedWebhookEvent::Data::Company,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the company.
          sig { returns(String) }
          attr_accessor :id

          # The slug/route of the company on the Whop site.
          sig { returns(String) }
          attr_accessor :route

          # The written name of the company.
          sig { returns(String) }
          attr_accessor :title

          # The company for the payment.
          sig do
            params(id: String, route: String, title: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # The unique identifier for the company.
            id:,
            # The slug/route of the company on the Whop site.
            route:,
            # The written name of the company.
            title:
          )
          end

          sig { override.returns({ id: String, route: String, title: String }) }
          def to_hash
          end
        end

        # The reason a payment was declined.
        module DeclineCode
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INSUFFICIENT_FUNDS =
            T.let(
              :insufficient_funds,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          LOST_CARD =
            T.let(
              :lost_card,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          STOLEN_CARD =
            T.let(
              :stolen_card,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          EXPIRED_CARD =
            T.let(
              :expired_card,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          SUSPECTED_FRAUD =
            T.let(
              :suspected_fraud,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          INVALID_CARD_NUMBER =
            T.let(
              :invalid_card_number,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          INVALID_CVC =
            T.let(
              :invalid_cvc,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          INVALID_CVC_OR_EXPIRATION =
            T.let(
              :invalid_cvc_or_expiration,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          INCORRECT_PIN =
            T.let(
              :incorrect_pin,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          AUTHENTICATION_REQUIRED =
            T.let(
              :authentication_required,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          CARD_NOT_SUPPORTED =
            T.let(
              :card_not_supported,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          CURRENCY_NOT_SUPPORTED =
            T.let(
              :currency_not_supported,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          DUPLICATE_TRANSACTION =
            T.let(
              :duplicate_transaction,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          GENERIC_DECLINE =
            T.let(
              :generic_decline,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          INVALID_ACCOUNT =
            T.let(
              :invalid_account,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          INVALID_AMOUNT =
            T.let(
              :invalid_amount,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          PROCESSING_ERROR =
            T.let(
              :processing_error,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          RESTRICTED_CARD =
            T.let(
              :restricted_card,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          CARD_VELOCITY_EXCEEDED =
            T.let(
              :card_velocity_exceeded,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          CONTACT_ISSUER =
            T.let(
              :contact_issuer,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          BANK_DECLINED =
            T.let(
              :bank_declined,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          REGULATORY_BLOCKED =
            T.let(
              :regulatory_blocked,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          TRANSACTION_NOT_PERMITTED =
            T.let(
              :transaction_not_permitted,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          TRANSACTION_STOPPED =
            T.let(
              :transaction_stopped,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          CARD_TYPE_NOT_SUPPORTED =
            T.let(
              :card_type_not_supported,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          ISSUER_NOT_FOUND =
            T.let(
              :issuer_not_found,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          CLOSED_ACCOUNT =
            T.let(
              :closed_account,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          ISSUER_UNAVAILABLE =
            T.let(
              :issuer_unavailable,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          INVALID_ZIP =
            T.let(
              :invalid_zip,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          INVALID_EXPIRY_MONTH =
            T.let(
              :invalid_expiry_month,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          INVALID_EXPIRY_YEAR =
            T.let(
              :invalid_expiry_year,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          INVALID_EXPIRY =
            T.let(
              :invalid_expiry,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          INVALID_TRANSACTION =
            T.let(
              :invalid_transaction,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          CANNOT_AUTHORIZE =
            T.let(
              :cannot_authorize,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          PIN_REQUIRED =
            T.let(
              :pin_required,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          PIN_TRY_EXCEEDED =
            T.let(
              :pin_try_exceeded,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          PROVIDER_DECLINED =
            T.let(
              :provider_declined,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          HIGH_RISK =
            T.let(
              :high_risk,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          TEST_MODE_DECLINE =
            T.let(
              :test_mode_decline,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          MERCHANT_BLACKLIST =
            T.let(
              :merchant_blacklist,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          REENTER_TRANSACTION =
            T.let(
              :reenter_transaction,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          INVALID_PIN =
            T.let(
              :invalid_pin,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          PIN_REQUIRED_AS =
            T.let(
              :pin_required_as,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          WITHDRAWAL_COUNT_LIMIT_EXCEEDED =
            T.let(
              :withdrawal_count_limit_exceeded,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          INVALID_COUNTRY =
            T.let(
              :invalid_country,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          ISSUER_ERROR =
            T.let(
              :issuer_error,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          INVALID_CARD_HOLDER_NAME =
            T.let(
              :invalid_card_holder_name,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          NO_ACCOUNTS =
            T.let(
              :no_accounts,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          TRANSACTION_CANCELLED =
            T.let(
              :transaction_cancelled,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          THREE_D_SECURE_SUCCESS =
            T.let(
              :three_d_secure_success,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          THREE_D_SECURE_CANCELED =
            T.let(
              :three_d_secure_canceled,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          THREE_D_SECURE_INVALID_CARD_NUMBER =
            T.let(
              :three_d_secure_invalid_card_number,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          THREE_D_SECURE_GENERIC_ERROR =
            T.let(
              :three_d_secure_generic_error,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          THREE_D_SECURE_TIMEOUT =
            T.let(
              :three_d_secure_timeout,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          THREE_D_SECURE_FAILED =
            T.let(
              :three_d_secure_failed,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          THREE_D_SECURE_CARD_NOT_ENROLLED =
            T.let(
              :three_d_secure_card_not_enrolled,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          THREE_D_SECURE_FRAUD =
            T.let(
              :three_d_secure_fraud,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          THREE_D_SECURE_TOO_MANY_ATTEMPTS =
            T.let(
              :three_d_secure_too_many_attempts,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          THREE_D_SECURE_REJECTED_BY_BANK =
            T.let(
              :three_d_secure_rejected_by_bank,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          THREE_D_SECURE_REPORTED_LOST_OR_STOLEN =
            T.let(
              :three_d_secure_reported_lost_or_stolen,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          BLOCKED_BY_CARDHOLDER =
            T.let(
              :blocked_by_cardholder,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          TEST_MODE_TEST_CARD =
            T.let(
              :test_mode_test_card,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          TRY_AGAIN_LATER =
            T.let(
              :try_again_later,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          TRANSACTION_NOT_ALLOWED =
            T.let(
              :transaction_not_allowed,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          BANK_INSUFFICIENT_FUNDS =
            T.let(
              :bank_insufficient_funds,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          BANK_ACCOUNT_NOT_FOUND =
            T.let(
              :bank_account_not_found,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          BANK_ACCOUNT_CLOSED =
            T.let(
              :bank_account_closed,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          BANK_ACCOUNT_FROZEN =
            T.let(
              :bank_account_frozen,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          BANK_INVALID_ROUTING_NUMBER =
            T.let(
              :bank_invalid_routing_number,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          BANK_NON_TRANSACTION_ACCOUNT =
            T.let(
              :bank_non_transaction_account,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          BANK_AUTHORIZATION_REVOKED =
            T.let(
              :bank_authorization_revoked,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          BANK_PAYMENT_STOPPED =
            T.let(
              :bank_payment_stopped,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          BANK_NOT_AUTHORIZED =
            T.let(
              :bank_not_authorized,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          BANK_ACCOUNT_HOLDER_DECEASED =
            T.let(
              :bank_account_holder_deceased,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          BANK_DUPLICATE =
            T.let(
              :bank_duplicate,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          BANK_AMOUNT_ERROR =
            T.let(
              :bank_amount_error,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          BANK_REGULATORY_BLOCKED =
            T.let(
              :bank_regulatory_blocked,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          BANK_DETAILS_INVALID =
            T.let(
              :bank_details_invalid,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          BANK_PROCESSING_ERROR =
            T.let(
              :bank_processing_error,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          BANK_GENERIC_DECLINE =
            T.let(
              :bank_generic_decline,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          SEPA_INVALID_IBAN =
            T.let(
              :sepa_invalid_iban,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          SEPA_NO_MANDATE =
            T.let(
              :sepa_no_mandate,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          SEPA_MANDATE_DATA_INVALID =
            T.let(
              :sepa_mandate_data_invalid,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          SEPA_DISPUTED =
            T.let(
              :sepa_disputed,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          SEPA_REFUSED_BY_CUSTOMER =
            T.let(
              :sepa_refused_by_customer,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )
          SEPA_GENERIC_DECLINE =
            T.let(
              :sepa_generic_decline,
              WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::PaymentCreatedWebhookEvent::Data::DeclineCode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Dispute < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PaymentCreatedWebhookEvent::Data::Dispute,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the dispute.
          sig { returns(String) }
          attr_accessor :id

          # The disputed amount in the specified currency, formatted as a decimal.
          sig { returns(Float) }
          attr_accessor :amount

          # The three-letter ISO currency code for the disputed amount.
          sig { returns(WhopSDK::Currency::TaggedSymbol) }
          attr_accessor :currency

          # Whether the dispute evidence can still be edited and submitted.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :editable

          # The deadline by which dispute evidence must be submitted. Null if no response
          # deadline is set.
          sig { returns(T.nilable(Time)) }
          attr_accessor :needs_response_by

          # Additional freeform notes submitted by the company as part of the dispute
          # evidence.
          sig { returns(T.nilable(String)) }
          attr_accessor :notes

          # A human-readable reason for the dispute.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          # The current status of the dispute lifecycle, such as needs_response,
          # under_review, won, or lost.
          sig { returns(WhopSDK::DisputeStatuses::TaggedSymbol) }
          attr_accessor :status

          # A dispute is a chargeback or payment challenge filed against a company,
          # including evidence and response status.
          sig do
            params(
              id: String,
              amount: Float,
              currency: WhopSDK::Currency::OrSymbol,
              editable: T.nilable(T::Boolean),
              needs_response_by: T.nilable(Time),
              notes: T.nilable(String),
              reason: T.nilable(String),
              status: WhopSDK::DisputeStatuses::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the dispute.
            id:,
            # The disputed amount in the specified currency, formatted as a decimal.
            amount:,
            # The three-letter ISO currency code for the disputed amount.
            currency:,
            # Whether the dispute evidence can still be edited and submitted.
            editable:,
            # The deadline by which dispute evidence must be submitted. Null if no response
            # deadline is set.
            needs_response_by:,
            # Additional freeform notes submitted by the company as part of the dispute
            # evidence.
            notes:,
            # A human-readable reason for the dispute.
            reason:,
            # The current status of the dispute lifecycle, such as needs_response,
            # under_review, won, or lost.
            status:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                amount: Float,
                currency: WhopSDK::Currency::TaggedSymbol,
                editable: T.nilable(T::Boolean),
                needs_response_by: T.nilable(Time),
                notes: T.nilable(String),
                reason: T.nilable(String),
                status: WhopSDK::DisputeStatuses::TaggedSymbol
              }
            )
          end
          def to_hash
          end
        end

        class Fee < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee,
                WhopSDK::Internal::AnyHash
              )
            end

          # The value or amount to display for the fee.
          sig { returns(Float) }
          attr_accessor :amount

          # The currency of the fee.
          sig { returns(WhopSDK::Currency::TaggedSymbol) }
          attr_accessor :currency

          # The label to display for the fee.
          sig { returns(String) }
          attr_accessor :name

          # The specific origin of the fee, if applicable.
          sig do
            returns(
              WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          # Represents a fee related to a payment
          sig do
            params(
              amount: Float,
              currency: WhopSDK::Currency::OrSymbol,
              name: String,
              type:
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The value or amount to display for the fee.
            amount:,
            # The currency of the fee.
            currency:,
            # The label to display for the fee.
            name:,
            # The specific origin of the fee, if applicable.
            type:
          )
          end

          sig do
            override.returns(
              {
                amount: Float,
                currency: WhopSDK::Currency::TaggedSymbol,
                name: String,
                type:
                  WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # The specific origin of the fee, if applicable.
          module Type
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STRIPE_DOMESTIC_PROCESSING_FEE =
              T.let(
                :stripe_domestic_processing_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            STRIPE_INTERNATIONAL_PROCESSING_FEE =
              T.let(
                :stripe_international_processing_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            STRIPE_FIXED_PROCESSING_FEE =
              T.let(
                :stripe_fixed_processing_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            STRIPE_BILLING_FEE =
              T.let(
                :stripe_billing_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            STRIPE_RADAR_FEE =
              T.let(
                :stripe_radar_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            SALES_TAX_REMITTANCE =
              T.let(
                :sales_tax_remittance,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            SALES_TAX_REMITTANCE_REVERSAL =
              T.let(
                :sales_tax_remittance_reversal,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            STRIPE_SALES_TAX_FEE =
              T.let(
                :stripe_sales_tax_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            WHOP_PROCESSING_FEE =
              T.let(
                :whop_processing_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            MARKETPLACE_AFFILIATE_FEE =
              T.let(
                :marketplace_affiliate_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            AFFILIATE_FEE =
              T.let(
                :affiliate_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            CRYPTO_FEE =
              T.let(
                :crypto_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            STRIPE_STANDARD_PROCESSING_FEE =
              T.let(
                :stripe_standard_processing_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            PAYPAL_FEE =
              T.let(
                :paypal_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            STRIPE_PAYOUT_FEE =
              T.let(
                :stripe_payout_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            DISPUTE_FEE =
              T.let(
                :dispute_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            DISPUTE_ALERT_FEE =
              T.let(
                :dispute_alert_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            APPLE_PROCESSING_FEE =
              T.let(
                :apple_processing_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            BUYER_FEE =
              T.let(
                :buyer_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            SEZZLE_PROCESSING_FEE =
              T.let(
                :sezzle_processing_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            SPLITIT_PROCESSING_FEE =
              T.let(
                :splitit_processing_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            PLATFORM_BALANCE_PROCESSING_FEE =
              T.let(
                :platform_balance_processing_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            PAYMENT_PROCESSING_PERCENTAGE_FEE =
              T.let(
                :payment_processing_percentage_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            PAYMENT_PROCESSING_FIXED_FEE =
              T.let(
                :payment_processing_fixed_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            CROSS_BORDER_PERCENTAGE_FEE =
              T.let(
                :cross_border_percentage_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            FX_PERCENTAGE_FEE =
              T.let(
                :fx_percentage_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            ORCHESTRATION_PERCENTAGE_FEE =
              T.let(
                :orchestration_percentage_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            THREE_DS_FIXED_FEE =
              T.let(
                :three_ds_fixed_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            BILLING_PERCENTAGE_FEE =
              T.let(
                :billing_percentage_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            REVSHARE_PERCENTAGE_FEE =
              T.let(
                :revshare_percentage_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            APPLICATION_FEE =
              T.let(
                :application_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )
            HIGH_RISK_MERCHANT_FEE =
              T.let(
                :high_risk_merchant_fee,
                WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::PaymentCreatedWebhookEvent::Data::Fee::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class FinancingTransaction < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the payment transaction.
          sig { returns(String) }
          attr_accessor :id

          # The amount of the payment transaction.
          sig { returns(Float) }
          attr_accessor :amount

          # The date and time the payment transaction was created.
          sig { returns(Time) }
          attr_accessor :created_at

          # The status of the payment transaction.
          sig do
            returns(
              WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # The type of the payment transaction.
          sig do
            returns(
              WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::TransactionType::TaggedSymbol
            )
          end
          attr_accessor :transaction_type

          # A payment transaction.
          sig do
            params(
              id: String,
              amount: Float,
              created_at: Time,
              status:
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::Status::OrSymbol,
              transaction_type:
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::TransactionType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the payment transaction.
            id:,
            # The amount of the payment transaction.
            amount:,
            # The date and time the payment transaction was created.
            created_at:,
            # The status of the payment transaction.
            status:,
            # The type of the payment transaction.
            transaction_type:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                amount: Float,
                created_at: Time,
                status:
                  WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::Status::TaggedSymbol,
                transaction_type:
                  WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::TransactionType::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # The status of the payment transaction.
          module Status
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SUCCEEDED =
              T.let(
                :succeeded,
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::Status::TaggedSymbol
              )
            DECLINED =
              T.let(
                :declined,
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::Status::TaggedSymbol
              )
            ERROR =
              T.let(
                :error,
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::Status::TaggedSymbol
              )
            CREATED =
              T.let(
                :created,
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::Status::TaggedSymbol
              )
            EXPIRED =
              T.let(
                :expired,
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::Status::TaggedSymbol
              )
            WON =
              T.let(
                :won,
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::Status::TaggedSymbol
              )
            REJECTED =
              T.let(
                :rejected,
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::Status::TaggedSymbol
              )
            LOST =
              T.let(
                :lost,
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::Status::TaggedSymbol
              )
            PREVENTED =
              T.let(
                :prevented,
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::Status::TaggedSymbol
              )
            CANCELED =
              T.let(
                :canceled,
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The type of the payment transaction.
          module TransactionType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::TransactionType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PURCHASE =
              T.let(
                :purchase,
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::TransactionType::TaggedSymbol
              )
            AUTHORIZE =
              T.let(
                :authorize,
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::TransactionType::TaggedSymbol
              )
            CAPTURE =
              T.let(
                :capture,
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::TransactionType::TaggedSymbol
              )
            REFUND =
              T.let(
                :refund,
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::TransactionType::TaggedSymbol
              )
            CANCELED =
              T.let(
                :canceled,
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::TransactionType::TaggedSymbol
              )
            VERIFY =
              T.let(
                :verify,
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::TransactionType::TaggedSymbol
              )
            CHARGEBACK =
              T.let(
                :chargeback,
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::TransactionType::TaggedSymbol
              )
            PRE_CHARGEBACK =
              T.let(
                :pre_chargeback,
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::TransactionType::TaggedSymbol
              )
            THREE_D_SECURE =
              T.let(
                :three_d_secure,
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::TransactionType::TaggedSymbol
              )
            FRAUD_SCREENING =
              T.let(
                :fraud_screening,
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::TransactionType::TaggedSymbol
              )
            AUTHORIZATION =
              T.let(
                :authorization,
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::TransactionType::TaggedSymbol
              )
            INSTALLMENT =
              T.let(
                :installment,
                WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::TransactionType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::PaymentCreatedWebhookEvent::Data::FinancingTransaction::TransactionType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Member < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PaymentCreatedWebhookEvent::Data::Member,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the company member.
          sig { returns(String) }
          attr_accessor :id

          # The phone number for the member, if available.
          sig { returns(T.nilable(String)) }
          attr_accessor :phone

          # The member attached to this payment.
          sig do
            params(id: String, phone: T.nilable(String)).returns(
              T.attached_class
            )
          end
          def self.new(
            # The unique identifier for the company member.
            id:,
            # The phone number for the member, if available.
            phone:
          )
          end

          sig { override.returns({ id: String, phone: T.nilable(String) }) }
          def to_hash
          end
        end

        class Membership < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PaymentCreatedWebhookEvent::Data::Membership,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the membership.
          sig { returns(String) }
          attr_accessor :id

          # The phone number associated with this membership.
          sig { returns(T.nilable(String)) }
          attr_accessor :phone_number

          # The state of the membership.
          sig { returns(WhopSDK::MembershipStatus::TaggedSymbol) }
          attr_accessor :status

          # The membership attached to this payment.
          sig do
            params(
              id: String,
              phone_number: T.nilable(String),
              status: WhopSDK::MembershipStatus::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the membership.
            id:,
            # The phone number associated with this membership.
            phone_number:,
            # The state of the membership.
            status:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                phone_number: T.nilable(String),
                status: WhopSDK::MembershipStatus::TaggedSymbol
              }
            )
          end
          def to_hash
          end
        end

        class PaymentInstrument < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument,
                WhopSDK::Internal::AnyHash
              )
            end

          # Card payments only: the card's network and last four.
          sig do
            returns(
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Card
              )
            )
          end
          attr_reader :card

          sig do
            params(
              card:
                T.nilable(
                  WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Card::OrHash
                )
            ).void
          end
          attr_writer :card

          # Buyer-facing instrument name — "Visa •••• 4242" when the card surfaced, else the
          # method's own name ("Klarna").
          sig { returns(String) }
          attr_accessor :display_name

          # The standard icon set: square and card shapes, each in light and dark colorways.
          sig do
            returns(
              WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons
            )
          end
          attr_reader :icons

          sig do
            params(
              icons:
                WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::OrHash
            ).void
          end
          attr_writer :icons

          # Installment methods only: how many payments the charge splits into. Data, not
          # copy — compose and translate the label client-side.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :installment_count

          # The payment method type identifier, e.g. `card`, `klarna`, `apple_pay`.
          sig { returns(String) }
          attr_accessor :payment_method_type

          # The instrument this payment was made with, shaped for display: the method type,
          # a buyer-facing name, the standard icon set, and the card facts when it was a
          # card. Null when the receipt names no payment method.
          sig do
            params(
              card:
                T.nilable(
                  WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Card::OrHash
                ),
              display_name: String,
              icons:
                WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::OrHash,
              installment_count: T.nilable(Integer),
              payment_method_type: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Card payments only: the card's network and last four.
            card:,
            # Buyer-facing instrument name — "Visa •••• 4242" when the card surfaced, else the
            # method's own name ("Klarna").
            display_name:,
            # The standard icon set: square and card shapes, each in light and dark colorways.
            icons:,
            # Installment methods only: how many payments the charge splits into. Data, not
            # copy — compose and translate the label client-side.
            installment_count:,
            # The payment method type identifier, e.g. `card`, `klarna`, `apple_pay`.
            payment_method_type:
          )
          end

          sig do
            override.returns(
              {
                card:
                  T.nilable(
                    WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Card
                  ),
                display_name: String,
                icons:
                  WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons,
                installment_count: T.nilable(Integer),
                payment_method_type: String
              }
            )
          end
          def to_hash
          end

          class Card < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Card,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The network identifier (`visa`, `amex`, …), matching `card.networks` entries and
            # saved card payment methods.
            sig { returns(String) }
            attr_accessor :brand

            # The card's last four digits, when captured.
            sig { returns(T.nilable(String)) }
            attr_accessor :last4

            # Card payments only: the card's network and last four.
            sig do
              params(brand: String, last4: T.nilable(String)).returns(
                T.attached_class
              )
            end
            def self.new(
              # The network identifier (`visa`, `amex`, …), matching `card.networks` entries and
              # saved card payment methods.
              brand:,
              # The card's last four digits, when captured.
              last4:
            )
            end

            sig do
              override.returns({ brand: String, last4: T.nilable(String) })
            end
            def to_hash
            end
          end

          class Icons < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The credit-card-proportioned tile (48x30).
            sig do
              returns(
                WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Card
              )
            end
            attr_reader :card

            sig do
              params(
                card:
                  WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Card::OrHash
              ).void
            end
            attr_writer :card

            # The square tile (32x32).
            sig do
              returns(
                WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Square
              )
            end
            attr_reader :square

            sig do
              params(
                square:
                  WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Square::OrHash
              ).void
            end
            attr_writer :square

            # The standard icon set: square and card shapes, each in light and dark colorways.
            sig do
              params(
                card:
                  WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Card::OrHash,
                square:
                  WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Square::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The credit-card-proportioned tile (48x30).
              card:,
              # The square tile (32x32).
              square:
            )
            end

            sig do
              override.returns(
                {
                  card:
                    WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Card,
                  square:
                    WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Square
                }
              )
            end
            def to_hash
            end

            class Card < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Card,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # The colorway for dark surfaces.
              sig do
                returns(
                  WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Card::Dark
                )
              end
              attr_reader :dark

              sig do
                params(
                  dark:
                    WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Card::Dark::OrHash
                ).void
              end
              attr_writer :dark

              # The colorway for light surfaces.
              sig do
                returns(
                  WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Card::Light
                )
              end
              attr_reader :light

              sig do
                params(
                  light:
                    WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Card::Light::OrHash
                ).void
              end
              attr_writer :light

              # The credit-card-proportioned tile (48x30).
              sig do
                params(
                  dark:
                    WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Card::Dark::OrHash,
                  light:
                    WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Card::Light::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # The colorway for dark surfaces.
                dark:,
                # The colorway for light surfaces.
                light:
              )
              end

              sig do
                override.returns(
                  {
                    dark:
                      WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Card::Dark,
                    light:
                      WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Card::Light
                  }
                )
              end
              def to_hash
              end

              class Dark < WhopSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Card::Dark,
                      WhopSDK::Internal::AnyHash
                    )
                  end

                # Raster fallback at the shape's native size.
                sig { returns(String) }
                attr_accessor :png_1x

                # Raster fallback at double density.
                sig { returns(String) }
                attr_accessor :png_2x

                # Raster fallback at quadruple density.
                sig { returns(String) }
                attr_accessor :png_4x

                # The vector file. Prefer this everywhere SVG renders.
                sig { returns(String) }
                attr_accessor :svg

                # The colorway for dark surfaces.
                sig do
                  params(
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Raster fallback at the shape's native size.
                  png_1x:,
                  # Raster fallback at double density.
                  png_2x:,
                  # Raster fallback at quadruple density.
                  png_4x:,
                  # The vector file. Prefer this everywhere SVG renders.
                  svg:
                )
                end

                sig do
                  override.returns(
                    {
                      png_1x: String,
                      png_2x: String,
                      png_4x: String,
                      svg: String
                    }
                  )
                end
                def to_hash
                end
              end

              class Light < WhopSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Card::Light,
                      WhopSDK::Internal::AnyHash
                    )
                  end

                # Raster fallback at the shape's native size.
                sig { returns(String) }
                attr_accessor :png_1x

                # Raster fallback at double density.
                sig { returns(String) }
                attr_accessor :png_2x

                # Raster fallback at quadruple density.
                sig { returns(String) }
                attr_accessor :png_4x

                # The vector file. Prefer this everywhere SVG renders.
                sig { returns(String) }
                attr_accessor :svg

                # The colorway for light surfaces.
                sig do
                  params(
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Raster fallback at the shape's native size.
                  png_1x:,
                  # Raster fallback at double density.
                  png_2x:,
                  # Raster fallback at quadruple density.
                  png_4x:,
                  # The vector file. Prefer this everywhere SVG renders.
                  svg:
                )
                end

                sig do
                  override.returns(
                    {
                      png_1x: String,
                      png_2x: String,
                      png_4x: String,
                      svg: String
                    }
                  )
                end
                def to_hash
                end
              end
            end

            class Square < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Square,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # The colorway for dark surfaces.
              sig do
                returns(
                  WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Square::Dark
                )
              end
              attr_reader :dark

              sig do
                params(
                  dark:
                    WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Square::Dark::OrHash
                ).void
              end
              attr_writer :dark

              # The colorway for light surfaces.
              sig do
                returns(
                  WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Square::Light
                )
              end
              attr_reader :light

              sig do
                params(
                  light:
                    WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Square::Light::OrHash
                ).void
              end
              attr_writer :light

              # The square tile (32x32).
              sig do
                params(
                  dark:
                    WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Square::Dark::OrHash,
                  light:
                    WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Square::Light::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # The colorway for dark surfaces.
                dark:,
                # The colorway for light surfaces.
                light:
              )
              end

              sig do
                override.returns(
                  {
                    dark:
                      WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Square::Dark,
                    light:
                      WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Square::Light
                  }
                )
              end
              def to_hash
              end

              class Dark < WhopSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Square::Dark,
                      WhopSDK::Internal::AnyHash
                    )
                  end

                # Raster fallback at the shape's native size.
                sig { returns(String) }
                attr_accessor :png_1x

                # Raster fallback at double density.
                sig { returns(String) }
                attr_accessor :png_2x

                # Raster fallback at quadruple density.
                sig { returns(String) }
                attr_accessor :png_4x

                # The vector file. Prefer this everywhere SVG renders.
                sig { returns(String) }
                attr_accessor :svg

                # The colorway for dark surfaces.
                sig do
                  params(
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Raster fallback at the shape's native size.
                  png_1x:,
                  # Raster fallback at double density.
                  png_2x:,
                  # Raster fallback at quadruple density.
                  png_4x:,
                  # The vector file. Prefer this everywhere SVG renders.
                  svg:
                )
                end

                sig do
                  override.returns(
                    {
                      png_1x: String,
                      png_2x: String,
                      png_4x: String,
                      svg: String
                    }
                  )
                end
                def to_hash
                end
              end

              class Light < WhopSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentInstrument::Icons::Square::Light,
                      WhopSDK::Internal::AnyHash
                    )
                  end

                # Raster fallback at the shape's native size.
                sig { returns(String) }
                attr_accessor :png_1x

                # Raster fallback at double density.
                sig { returns(String) }
                attr_accessor :png_2x

                # Raster fallback at quadruple density.
                sig { returns(String) }
                attr_accessor :png_4x

                # The vector file. Prefer this everywhere SVG renders.
                sig { returns(String) }
                attr_accessor :svg

                # The colorway for light surfaces.
                sig do
                  params(
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Raster fallback at the shape's native size.
                  png_1x:,
                  # Raster fallback at double density.
                  png_2x:,
                  # Raster fallback at quadruple density.
                  png_4x:,
                  # The vector file. Prefer this everywhere SVG renders.
                  svg:
                )
                end

                sig do
                  override.returns(
                    {
                      png_1x: String,
                      png_2x: String,
                      png_4x: String,
                      svg: String
                    }
                  )
                end
                def to_hash
                end
              end
            end
          end
        end

        class PaymentMethod < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentMethod,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the payment token.
          sig { returns(String) }
          attr_accessor :id

          # The card data associated with the payment method, if its a debit or credit card.
          sig do
            returns(
              T.nilable(
                WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentMethod::Card
              )
            )
          end
          attr_reader :card

          sig do
            params(
              card:
                T.nilable(
                  WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentMethod::Card::OrHash
                )
            ).void
          end
          attr_writer :card

          # The datetime the payment token was created.
          sig { returns(Time) }
          attr_accessor :created_at

          # The payment method type of the payment method
          sig { returns(WhopSDK::PaymentMethodTypes::TaggedSymbol) }
          attr_accessor :payment_method_type

          # The tokenized payment method reference used for this payment. Null if no token
          # was used.
          sig do
            params(
              id: String,
              card:
                T.nilable(
                  WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentMethod::Card::OrHash
                ),
              created_at: Time,
              payment_method_type: WhopSDK::PaymentMethodTypes::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the payment token.
            id:,
            # The card data associated with the payment method, if its a debit or credit card.
            card:,
            # The datetime the payment token was created.
            created_at:,
            # The payment method type of the payment method
            payment_method_type:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                card:
                  T.nilable(
                    WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentMethod::Card
                  ),
                created_at: Time,
                payment_method_type: WhopSDK::PaymentMethodTypes::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          class Card < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::PaymentCreatedWebhookEvent::Data::PaymentMethod::Card,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Possible card brands that a payment token can have
            sig { returns(T.nilable(WhopSDK::CardBrands::TaggedSymbol)) }
            attr_accessor :brand

            # The two-digit expiration month of the card (1-12). Null if not available.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :exp_month

            # The two-digit expiration year of the card (e.g., 27 for 2027). Null if not
            # available.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :exp_year

            # A stable identifier for the underlying card. Two payment methods with the same
            # fingerprint are the same card. Null if not available.
            sig { returns(T.nilable(String)) }
            attr_accessor :fingerprint

            # The last four digits of the card number. Null if not available.
            sig { returns(T.nilable(String)) }
            attr_accessor :last4

            # The card data associated with the payment method, if its a debit or credit card.
            sig do
              params(
                brand: T.nilable(WhopSDK::CardBrands::OrSymbol),
                exp_month: T.nilable(Integer),
                exp_year: T.nilable(Integer),
                fingerprint: T.nilable(String),
                last4: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Possible card brands that a payment token can have
              brand:,
              # The two-digit expiration month of the card (1-12). Null if not available.
              exp_month:,
              # The two-digit expiration year of the card (e.g., 27 for 2027). Null if not
              # available.
              exp_year:,
              # A stable identifier for the underlying card. Two payment methods with the same
              # fingerprint are the same card. Null if not available.
              fingerprint:,
              # The last four digits of the card number. Null if not available.
              last4:
            )
            end

            sig do
              override.returns(
                {
                  brand: T.nilable(WhopSDK::CardBrands::TaggedSymbol),
                  exp_month: T.nilable(Integer),
                  exp_year: T.nilable(Integer),
                  fingerprint: T.nilable(String),
                  last4: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end
        end

        class Plan < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PaymentCreatedWebhookEvent::Data::Plan,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the plan.
          sig { returns(String) }
          attr_accessor :id

          # A personal description or notes section for the business.
          sig { returns(T.nilable(String)) }
          attr_accessor :internal_notes

          # Custom key-value pairs stored on the plan. Included in webhook payloads for
          # payment and membership events. Max 50 keys, 100 chars per key, 500 chars per
          # string value. The reserved keys `custom_cta` and `custom_cta_url`, when set,
          # override the product's checkout call to action for this plan.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_accessor :metadata

          # The plan attached to this payment.
          sig do
            params(
              id: String,
              internal_notes: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, T.anything])
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the plan.
            id:,
            # A personal description or notes section for the business.
            internal_notes:,
            # Custom key-value pairs stored on the plan. Included in webhook payloads for
            # payment and membership events. Max 50 keys, 100 chars per key, 500 chars per
            # string value. The reserved keys `custom_cta` and `custom_cta_url`, when set,
            # override the product's checkout call to action for this plan.
            metadata:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                internal_notes: T.nilable(String),
                metadata: T.nilable(T::Hash[Symbol, T.anything])
              }
            )
          end
          def to_hash
          end
        end

        class Product < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PaymentCreatedWebhookEvent::Data::Product,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the product.
          sig { returns(String) }
          attr_accessor :id

          # Custom key-value pairs stored on the product and included in payment and
          # membership webhook payloads. Max 50 keys, 100 characters per key, 500 characters
          # per string value.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_accessor :metadata

          # URL slug in the product's public link, e.g. `pickaxe-analytics` in
          # whop.com/company/pickaxe-analytics.
          sig { returns(String) }
          attr_accessor :route

          # The display name of the product shown to customers on the product page and in
          # search results.
          sig { returns(String) }
          attr_accessor :title

          # The product this payment was made for
          sig do
            params(
              id: String,
              metadata: T.nilable(T::Hash[Symbol, T.anything]),
              route: String,
              title: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the product.
            id:,
            # Custom key-value pairs stored on the product and included in payment and
            # membership webhook payloads. Max 50 keys, 100 characters per key, 500 characters
            # per string value.
            metadata:,
            # URL slug in the product's public link, e.g. `pickaxe-analytics` in
            # whop.com/company/pickaxe-analytics.
            route:,
            # The display name of the product shown to customers on the product page and in
            # search results.
            title:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                metadata: T.nilable(T::Hash[Symbol, T.anything]),
                route: String,
                title: String
              }
            )
          end
          def to_hash
          end
        end

        class PromoCode < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PaymentCreatedWebhookEvent::Data::PromoCode,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the promo code.
          sig { returns(String) }
          attr_accessor :id

          # The discount amount. Interpretation depends on promo_type: if 'percentage', this
          # is the percentage (e.g., 20 means 20% off); if 'flat_amount', this is dollars
          # off (e.g., 10.00 means $10.00 off).
          sig { returns(Float) }
          attr_accessor :amount_off

          # The monetary currency of the promo code.
          sig { returns(WhopSDK::Currency::TaggedSymbol) }
          attr_accessor :base_currency

          # The specific code used to apply the promo at checkout.
          sig { returns(T.nilable(String)) }
          attr_accessor :code

          # The number of months the promo is applied for.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :number_of_intervals

          # The type (% or flat amount) of the promo.
          sig { returns(WhopSDK::PromoType::TaggedSymbol) }
          attr_accessor :promo_type

          # The promo code used for this payment.
          sig do
            params(
              id: String,
              amount_off: Float,
              base_currency: WhopSDK::Currency::OrSymbol,
              code: T.nilable(String),
              number_of_intervals: T.nilable(Integer),
              promo_type: WhopSDK::PromoType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the promo code.
            id:,
            # The discount amount. Interpretation depends on promo_type: if 'percentage', this
            # is the percentage (e.g., 20 means 20% off); if 'flat_amount', this is dollars
            # off (e.g., 10.00 means $10.00 off).
            amount_off:,
            # The monetary currency of the promo code.
            base_currency:,
            # The specific code used to apply the promo at checkout.
            code:,
            # The number of months the promo is applied for.
            number_of_intervals:,
            # The type (% or flat amount) of the promo.
            promo_type:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                amount_off: Float,
                base_currency: WhopSDK::Currency::TaggedSymbol,
                code: T.nilable(String),
                number_of_intervals: T.nilable(Integer),
                promo_type: WhopSDK::PromoType::TaggedSymbol
              }
            )
          end
          def to_hash
          end
        end

        class Refund < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PaymentCreatedWebhookEvent::Data::Refund,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the refund.
          sig { returns(String) }
          attr_accessor :id

          # The refunded amount as a decimal in the specified currency, such as 10.43 for
          # $10.43 USD.
          sig { returns(Float) }
          attr_accessor :amount

          # The datetime the refund was created.
          sig { returns(Time) }
          attr_accessor :created_at

          # The three-letter ISO currency code for the refunded amount.
          sig { returns(WhopSDK::Currency::TaggedSymbol) }
          attr_accessor :currency

          # The current processing status of the refund, such as pending, succeeded, or
          # failed.
          sig { returns(WhopSDK::RefundStatus::TaggedSymbol) }
          attr_accessor :status

          # A refund represents a full or partial reversal of a payment, including the
          # amount, status, and payment provider.
          sig do
            params(
              id: String,
              amount: Float,
              created_at: Time,
              currency: WhopSDK::Currency::OrSymbol,
              status: WhopSDK::RefundStatus::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the refund.
            id:,
            # The refunded amount as a decimal in the specified currency, such as 10.43 for
            # $10.43 USD.
            amount:,
            # The datetime the refund was created.
            created_at:,
            # The three-letter ISO currency code for the refunded amount.
            currency:,
            # The current processing status of the refund, such as pending, succeeded, or
            # failed.
            status:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                amount: Float,
                created_at: Time,
                currency: WhopSDK::Currency::TaggedSymbol,
                status: WhopSDK::RefundStatus::TaggedSymbol
              }
            )
          end
          def to_hash
          end
        end

        class Resolution < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PaymentCreatedWebhookEvent::Data::Resolution,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the resolution.
          sig { returns(String) }
          attr_accessor :id

          # Whether the customer has filed an appeal after the initial resolution decision.
          sig { returns(T::Boolean) }
          attr_accessor :customer_appealed

          # The list of actions currently available to the customer.
          sig do
            returns(
              T::Array[
                WhopSDK::ResolutionCenterCaseCustomerResponse::TaggedSymbol
              ]
            )
          end
          attr_accessor :customer_response_actions

          # The deadline by which the next response is required. Null if no deadline is
          # currently active. As a Unix timestamp.
          sig { returns(T.nilable(Time)) }
          attr_accessor :due_date

          # The category of the dispute.
          sig { returns(WhopSDK::ResolutionCenterCaseIssueType::TaggedSymbol) }
          attr_accessor :issue

          # Whether the merchant has filed an appeal after the initial resolution decision.
          sig { returns(T::Boolean) }
          attr_accessor :merchant_appealed

          # The list of actions currently available to the merchant.
          sig do
            returns(
              T::Array[
                WhopSDK::ResolutionCenterCaseMerchantResponse::TaggedSymbol
              ]
            )
          end
          attr_accessor :merchant_response_actions

          # The list of actions currently available to the Whop platform for moderating this
          # resolution.
          sig do
            returns(
              T::Array[
                WhopSDK::ResolutionCenterCasePlatformResponse::TaggedSymbol
              ]
            )
          end
          attr_accessor :platform_response_actions

          # The current status of the resolution case, indicating which party needs to
          # respond or if the case is closed.
          sig { returns(WhopSDK::ResolutionCenterCaseStatus::TaggedSymbol) }
          attr_accessor :status

          # A resolution center case is a dispute or support case between a user and a
          # company, tracking the issue, status, and outcome.
          sig do
            params(
              id: String,
              customer_appealed: T::Boolean,
              customer_response_actions:
                T::Array[
                  WhopSDK::ResolutionCenterCaseCustomerResponse::OrSymbol
                ],
              due_date: T.nilable(Time),
              issue: WhopSDK::ResolutionCenterCaseIssueType::OrSymbol,
              merchant_appealed: T::Boolean,
              merchant_response_actions:
                T::Array[
                  WhopSDK::ResolutionCenterCaseMerchantResponse::OrSymbol
                ],
              platform_response_actions:
                T::Array[
                  WhopSDK::ResolutionCenterCasePlatformResponse::OrSymbol
                ],
              status: WhopSDK::ResolutionCenterCaseStatus::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the resolution.
            id:,
            # Whether the customer has filed an appeal after the initial resolution decision.
            customer_appealed:,
            # The list of actions currently available to the customer.
            customer_response_actions:,
            # The deadline by which the next response is required. Null if no deadline is
            # currently active. As a Unix timestamp.
            due_date:,
            # The category of the dispute.
            issue:,
            # Whether the merchant has filed an appeal after the initial resolution decision.
            merchant_appealed:,
            # The list of actions currently available to the merchant.
            merchant_response_actions:,
            # The list of actions currently available to the Whop platform for moderating this
            # resolution.
            platform_response_actions:,
            # The current status of the resolution case, indicating which party needs to
            # respond or if the case is closed.
            status:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                customer_appealed: T::Boolean,
                customer_response_actions:
                  T::Array[
                    WhopSDK::ResolutionCenterCaseCustomerResponse::TaggedSymbol
                  ],
                due_date: T.nilable(Time),
                issue: WhopSDK::ResolutionCenterCaseIssueType::TaggedSymbol,
                merchant_appealed: T::Boolean,
                merchant_response_actions:
                  T::Array[
                    WhopSDK::ResolutionCenterCaseMerchantResponse::TaggedSymbol
                  ],
                platform_response_actions:
                  T::Array[
                    WhopSDK::ResolutionCenterCasePlatformResponse::TaggedSymbol
                  ],
                status: WhopSDK::ResolutionCenterCaseStatus::TaggedSymbol
              }
            )
          end
          def to_hash
          end
        end

        class Shipment < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PaymentCreatedWebhookEvent::Data::Shipment,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the shipment.
          sig { returns(String) }
          attr_accessor :id

          # The shipping carrier detected for this shipment. Null until a tracking update
          # identifies it.
          sig { returns(T.nilable(String)) }
          attr_accessor :carrier

          # The current delivery status of this shipment.
          sig { returns(WhopSDK::ShipmentStatus::TaggedSymbol) }
          attr_accessor :status

          # The carrier-assigned tracking number used to look up shipment progress.
          sig { returns(String) }
          attr_accessor :tracking_number

          # A customer-facing URL to track this shipment's progress.
          sig { returns(String) }
          attr_accessor :tracking_url

          # The shipment attached to this payment.
          sig do
            params(
              id: String,
              carrier: T.nilable(String),
              status: WhopSDK::ShipmentStatus::OrSymbol,
              tracking_number: String,
              tracking_url: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the shipment.
            id:,
            # The shipping carrier detected for this shipment. Null until a tracking update
            # identifies it.
            carrier:,
            # The current delivery status of this shipment.
            status:,
            # The carrier-assigned tracking number used to look up shipment progress.
            tracking_number:,
            # A customer-facing URL to track this shipment's progress.
            tracking_url:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                carrier: T.nilable(String),
                status: WhopSDK::ShipmentStatus::TaggedSymbol,
                tracking_number: String,
                tracking_url: String
              }
            )
          end
          def to_hash
          end
        end

        class ShippingAddress < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PaymentCreatedWebhookEvent::Data::ShippingAddress,
                WhopSDK::Internal::AnyHash
              )
            end

          # The city of the address.
          sig { returns(T.nilable(String)) }
          attr_accessor :city

          # The country of the address.
          sig { returns(T.nilable(String)) }
          attr_accessor :country

          # The line 1 of the address.
          sig { returns(T.nilable(String)) }
          attr_accessor :line1

          # The line 2 of the address.
          sig { returns(T.nilable(String)) }
          attr_accessor :line2

          # The name of the customer.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The postal code of the address.
          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code

          # The state of the address.
          sig { returns(T.nilable(String)) }
          attr_accessor :state

          # The shipping address provided by the customer for physical goods. Null if no
          # shipping address was collected.
          sig do
            params(
              city: T.nilable(String),
              country: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              name: T.nilable(String),
              postal_code: T.nilable(String),
              state: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The city of the address.
            city:,
            # The country of the address.
            country:,
            # The line 1 of the address.
            line1:,
            # The line 2 of the address.
            line2:,
            # The name of the customer.
            name:,
            # The postal code of the address.
            postal_code:,
            # The state of the address.
            state:
          )
          end

          sig do
            override.returns(
              {
                city: T.nilable(String),
                country: T.nilable(String),
                line1: T.nilable(String),
                line2: T.nilable(String),
                name: T.nilable(String),
                postal_code: T.nilable(String),
                state: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class User < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PaymentCreatedWebhookEvent::Data::User,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the user.
          sig { returns(String) }
          attr_accessor :id

          # The user's email address. Requires the member:email:read permission to access.
          # Null if not authorized.
          sig { returns(T.nilable(String)) }
          attr_accessor :email

          # The user's display name shown on their public profile.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The user's unique username shown on their public profile.
          sig { returns(String) }
          attr_accessor :username

          # The user that made this payment.
          sig do
            params(
              id: String,
              email: T.nilable(String),
              name: T.nilable(String),
              username: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the user.
            id:,
            # The user's email address. Requires the member:email:read permission to access.
            # Null if not authorized.
            email:,
            # The user's display name shown on their public profile.
            name:,
            # The user's unique username shown on their public profile.
            username:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                email: T.nilable(String),
                name: T.nilable(String),
                username: String
              }
            )
          end
          def to_hash
          end
        end

        class VerificationChecks < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PaymentCreatedWebhookEvent::Data::VerificationChecks,
                WhopSDK::Internal::AnyHash
              )
            end

          # Whether the billing street address the customer entered matched the address the
          # issuer has on file.
          sig { returns(T.nilable(String)) }
          attr_accessor :address_line1

          # Whether the cardholder name the customer entered matched the name the issuer has
          # on file.
          sig { returns(T.nilable(String)) }
          attr_accessor :card_holder_name

          # Whether the CVV / CVC the customer entered matched the card.
          sig { returns(T.nilable(String)) }
          attr_accessor :card_security_code

          # Whether the billing postal code the customer entered matched the postal code the
          # issuer has on file.
          sig { returns(T.nilable(String)) }
          attr_accessor :zip_code

          # The issuer's address and card security code check results for this payment. Null
          # when the processor returned none.
          sig do
            params(
              address_line1: T.nilable(String),
              card_holder_name: T.nilable(String),
              card_security_code: T.nilable(String),
              zip_code: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Whether the billing street address the customer entered matched the address the
            # issuer has on file.
            address_line1:,
            # Whether the cardholder name the customer entered matched the name the issuer has
            # on file.
            card_holder_name:,
            # Whether the CVV / CVC the customer entered matched the card.
            card_security_code:,
            # Whether the billing postal code the customer entered matched the postal code the
            # issuer has on file.
            zip_code:
          )
          end

          sig do
            override.returns(
              {
                address_line1: T.nilable(String),
                card_holder_name: T.nilable(String),
                card_security_code: T.nilable(String),
                zip_code: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
