# typed: strong

module WhopSDK
  module Models
    class Payment < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Payment, WhopSDK::Internal::AnyHash) }

      # Payment ID, prefixed `pay_`.
      sig { returns(String) }
      attr_accessor :id

      # The account that received the payment, prefixed `biz_`.
      sig { returns(T.nilable(String)) }
      attr_accessor :account_id

      # What the account keeps: the total less Whop's fees.
      sig { returns(WhopSDK::Payment::AmountAfterFees) }
      attr_reader :amount_after_fees

      sig do
        params(
          amount_after_fees: WhopSDK::Payment::AmountAfterFees::OrHash
        ).void
      end
      attr_writer :amount_after_fees

      # True when Whop refunded the payment automatically, for example on a dispute
      # alert.
      sig { returns(T::Boolean) }
      attr_accessor :auto_refunded

      # The billing address the buyer entered, or null.
      sig { returns(T.nilable(WhopSDK::Payment::BillingAddress)) }
      attr_reader :billing_address

      sig do
        params(
          billing_address: T.nilable(WhopSDK::Payment::BillingAddress::OrHash)
        ).void
      end
      attr_writer :billing_address

      # The reason why a specific payment was billed
      sig { returns(T.nilable(WhopSDK::BillingReasons::TaggedSymbol)) }
      attr_accessor :billing_reason

      # The checkout configuration the buyer paid through, prefixed `ch_`, or null.
      sig { returns(T.nilable(String)) }
      attr_accessor :checkout_configuration_id

      # The credential a buyer's surface presents to poll this payment and set its
      # return URL. Only on payments created from a confirmation token, and always null
      # in list responses — retrieve the payment for it.
      sig { returns(T.nilable(String)) }
      attr_accessor :client_secret

      # When the payment was created, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :created_at

      # The currency the payment settles in, lowercase ISO 4217. Every money field below
      # is stated in it unless it says otherwise.
      sig { returns(WhopSDK::Currency::TaggedSymbol) }
      attr_accessor :currency

      # The phone number the buyer gave at checkout, when one was collected.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_phone

      # The reason a payment was declined.
      sig { returns(T.nilable(WhopSDK::Payment::DeclineCode::TaggedSymbol)) }
      attr_accessor :decline_code

      # When an issuer warned that this payment will be disputed, or null.
      sig { returns(T.nilable(String)) }
      attr_accessor :dispute_alerted_at

      # Why the most recent attempt failed, in plain words, or null.
      sig { returns(T.nilable(String)) }
      attr_accessor :failure_message

      # For installment methods, how many payments the charge splits into.
      sig { returns(T.nilable(Float)) }
      attr_accessor :financing_installments_count

      # When the most recent charge attempt ran, or null.
      sig { returns(T.nilable(String)) }
      attr_accessor :last_payment_attempt_at

      # The buyer's member record on the account, prefixed `mber_`. Null without the
      # member:basic:read permission.
      sig { returns(T.nilable(String)) }
      attr_accessor :member_id

      # The membership this payment is billed against, prefixed `mem_`. Null for one-off
      # purchases or without the member:basic:read permission.
      sig { returns(T.nilable(String)) }
      attr_accessor :membership_id

      # Your own key-value data attached when the payment was created.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      # True when funds are held until the order ships and no tracking number has been
      # added yet. Null without the shipment:basic:read permission.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :needs_tracking

      # When the next automatic retry is scheduled, or null.
      sig { returns(T.nilable(String)) }
      attr_accessor :next_payment_attempt_at

      # When the money was collected, or null while it has not been.
      sig { returns(T.nilable(String)) }
      attr_accessor :paid_at

      # The instrument shaped for display: a buyer-facing name, the standard icon set,
      # and the card's brand and last four when it was a card.
      sig { returns(T.nilable(WhopSDK::Payment::PaymentInstrument)) }
      attr_reader :payment_instrument

      sig do
        params(
          payment_instrument:
            T.nilable(WhopSDK::Payment::PaymentInstrument::OrHash)
        ).void
      end
      attr_writer :payment_instrument

      # The stored payment method that was charged, prefixed `payt_`. Null when the
      # method was not saved.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_id

      # The different types of payment methods that can be used.
      sig { returns(T.nilable(WhopSDK::PaymentMethodTypes::TaggedSymbol)) }
      attr_accessor :payment_method_type

      # How many charge attempts have failed on this payment.
      sig { returns(Float) }
      attr_accessor :payments_failed

      # The plan that was charged, prefixed `plan_`.
      sig { returns(T.nilable(String)) }
      attr_accessor :plan_id

      # The product the plan belongs to, prefixed `prod_`. Null for a plan with no
      # product.
      sig { returns(T.nilable(String)) }
      attr_accessor :product_id

      # The promo code applied at checkout, prefixed `promo_`, or null.
      sig { returns(T.nilable(String)) }
      attr_accessor :promo_code_id

      # True when the payment is `paid`, not yet fully refunded, and its processor
      # supports refunds.
      sig { returns(T::Boolean) }
      attr_accessor :refundable

      # How much has been refunded so far, as it settled — refunds convert at the rate
      # in force when each one was issued, not the payment's original rate.
      sig { returns(T.nilable(WhopSDK::Payment::RefundedAmount)) }
      attr_reader :refunded_amount

      sig do
        params(
          refunded_amount: T.nilable(WhopSDK::Payment::RefundedAmount::OrHash)
        ).void
      end
      attr_writer :refunded_amount

      # When the payment was refunded, or null.
      sig { returns(T.nilable(String)) }
      attr_accessor :refunded_at

      # True when the payment is `open` and Whop can attempt the charge again — see
      # `POST /payments/{id}/retry`.
      sig { returns(T::Boolean) }
      attr_accessor :retryable

      # Whop's fraud risk score from 0 (lowest) to 100 (highest), or null when the
      # payment was not scored.
      sig { returns(T.nilable(Float)) }
      attr_accessor :risk_score

      # The factors behind `risk_score`, grouped by category, or null.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :risk_signals

      # When the funds post to the account's available balance, at midnight UTC. The
      # `ledger_account.funds_available` webhook carries the same value. Null until the
      # payment is paid, and always null in list responses — retrieve the payment for
      # it.
      sig { returns(T.nilable(String)) }
      attr_accessor :settlement_time_at

      # The shipment fulfilling this payment, prefixed `ship_`. Null when nothing ships
      # or without the shipment:basic:read permission.
      sig { returns(T.nilable(String)) }
      attr_accessor :shipment_id

      # The shipping address for physical goods, or null.
      sig { returns(T.nilable(WhopSDK::Payment::ShippingAddress)) }
      attr_reader :shipping_address

      sig do
        params(
          shipping_address: T.nilable(WhopSDK::Payment::ShippingAddress::OrHash)
        ).void
      end
      attr_writer :shipping_address

      # The lifecycle state of the charge: `open` while collection is outstanding,
      # `paid` once the money moved, `pending` while a settlement rail clears,
      # `void`/`uncollectible` when it ended without collecting.
      sig { returns(WhopSDK::ReceiptStatus::TaggedSymbol) }
      attr_accessor :status

      # The dashboard's finer-grained reading of the payment, folding in refunds,
      # disputes and Resolution Center cases.
      sig { returns(WhopSDK::FriendlyReceiptStatus::TaggedSymbol) }
      attr_accessor :substatus

      # The price before discounts, tax and fees.
      sig { returns(T.nilable(WhopSDK::Payment::Subtotal)) }
      attr_reader :subtotal

      sig do
        params(subtotal: T.nilable(WhopSDK::Payment::Subtotal::OrHash)).void
      end
      attr_writer :subtotal

      # The sales tax or VAT collected. Null when no tax applied.
      sig { returns(T.nilable(WhopSDK::Payment::TaxAmount)) }
      attr_reader :tax_amount

      sig do
        params(tax_amount: T.nilable(WhopSDK::Payment::TaxAmount::OrHash)).void
      end
      attr_writer :tax_amount

      # The type of tax inclusivity applied to the receipt, for determining whether the
      # tax is included in the final price, or paid on top.
      sig { returns(T.nilable(WhopSDK::ReceiptTaxBehavior::TaggedSymbol)) }
      attr_accessor :tax_behavior

      # How much of the collected tax has been returned to the buyer so far. Zero when
      # the payment carried no tax, or when nothing has been refunded.
      sig { returns(WhopSDK::Payment::TaxRefundedAmount) }
      attr_reader :tax_refunded_amount

      sig do
        params(
          tax_refunded_amount: WhopSDK::Payment::TaxRefundedAmount::OrHash
        ).void
      end
      attr_writer :tax_refunded_amount

      # True when the buyer completed 3D Secure for this payment.
      sig { returns(T::Boolean) }
      attr_accessor :three_ds_verified

      # The account-facing total: the price after discounts, plus any tax added on top.
      # Excludes buyer fees, which the buyer pays above this amount — so this is not
      # necessarily what the buyer's statement shows.
      sig { returns(T.nilable(WhopSDK::Payment::Total)) }
      attr_reader :total

      sig { params(total: T.nilable(WhopSDK::Payment::Total::OrHash)).void }
      attr_writer :total

      # When the payment last changed, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :updated_at

      # The total converted to USD at the time of the charge, for reporting across
      # currencies. Excludes the adaptive pricing FX markup, which the account does not
      # keep.
      sig { returns(T.nilable(WhopSDK::Payment::UsdTotal)) }
      attr_reader :usd_total

      sig do
        params(usd_total: T.nilable(WhopSDK::Payment::UsdTotal::OrHash)).void
      end
      attr_writer :usd_total

      # The buyer. Null when the payment belongs to a company buyer rather than a user.
      sig { returns(T.nilable(WhopSDK::Payment::User)) }
      attr_reader :user

      sig { params(user: T.nilable(WhopSDK::Payment::User::OrHash)).void }
      attr_writer :user

      # The issuer's address and security code check results, or null when the processor
      # returned none.
      sig { returns(T.nilable(WhopSDK::Payment::VerificationChecks)) }
      attr_reader :verification_checks

      sig do
        params(
          verification_checks:
            T.nilable(WhopSDK::Payment::VerificationChecks::OrHash)
        ).void
      end
      attr_writer :verification_checks

      # True when the payment is `open` on a past-due membership and its processor
      # supports voiding — see `POST /payments/{id}/void`.
      sig { returns(T::Boolean) }
      attr_accessor :voidable

      sig do
        params(
          id: String,
          account_id: T.nilable(String),
          amount_after_fees: WhopSDK::Payment::AmountAfterFees::OrHash,
          auto_refunded: T::Boolean,
          billing_address: T.nilable(WhopSDK::Payment::BillingAddress::OrHash),
          billing_reason: T.nilable(WhopSDK::BillingReasons::OrSymbol),
          checkout_configuration_id: T.nilable(String),
          client_secret: T.nilable(String),
          created_at: String,
          currency: WhopSDK::Currency::OrSymbol,
          customer_phone: T.nilable(String),
          decline_code: T.nilable(WhopSDK::Payment::DeclineCode::OrSymbol),
          dispute_alerted_at: T.nilable(String),
          failure_message: T.nilable(String),
          financing_installments_count: T.nilable(Float),
          last_payment_attempt_at: T.nilable(String),
          member_id: T.nilable(String),
          membership_id: T.nilable(String),
          metadata: T.nilable(T.anything),
          needs_tracking: T.nilable(T::Boolean),
          next_payment_attempt_at: T.nilable(String),
          paid_at: T.nilable(String),
          payment_instrument:
            T.nilable(WhopSDK::Payment::PaymentInstrument::OrHash),
          payment_method_id: T.nilable(String),
          payment_method_type: T.nilable(WhopSDK::PaymentMethodTypes::OrSymbol),
          payments_failed: Float,
          plan_id: T.nilable(String),
          product_id: T.nilable(String),
          promo_code_id: T.nilable(String),
          refundable: T::Boolean,
          refunded_amount: T.nilable(WhopSDK::Payment::RefundedAmount::OrHash),
          refunded_at: T.nilable(String),
          retryable: T::Boolean,
          risk_score: T.nilable(Float),
          risk_signals: T.nilable(T.anything),
          settlement_time_at: T.nilable(String),
          shipment_id: T.nilable(String),
          shipping_address:
            T.nilable(WhopSDK::Payment::ShippingAddress::OrHash),
          status: WhopSDK::ReceiptStatus::OrSymbol,
          substatus: WhopSDK::FriendlyReceiptStatus::OrSymbol,
          subtotal: T.nilable(WhopSDK::Payment::Subtotal::OrHash),
          tax_amount: T.nilable(WhopSDK::Payment::TaxAmount::OrHash),
          tax_behavior: T.nilable(WhopSDK::ReceiptTaxBehavior::OrSymbol),
          tax_refunded_amount: WhopSDK::Payment::TaxRefundedAmount::OrHash,
          three_ds_verified: T::Boolean,
          total: T.nilable(WhopSDK::Payment::Total::OrHash),
          updated_at: String,
          usd_total: T.nilable(WhopSDK::Payment::UsdTotal::OrHash),
          user: T.nilable(WhopSDK::Payment::User::OrHash),
          verification_checks:
            T.nilable(WhopSDK::Payment::VerificationChecks::OrHash),
          voidable: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # Payment ID, prefixed `pay_`.
        id:,
        # The account that received the payment, prefixed `biz_`.
        account_id:,
        # What the account keeps: the total less Whop's fees.
        amount_after_fees:,
        # True when Whop refunded the payment automatically, for example on a dispute
        # alert.
        auto_refunded:,
        # The billing address the buyer entered, or null.
        billing_address:,
        # The reason why a specific payment was billed
        billing_reason:,
        # The checkout configuration the buyer paid through, prefixed `ch_`, or null.
        checkout_configuration_id:,
        # The credential a buyer's surface presents to poll this payment and set its
        # return URL. Only on payments created from a confirmation token, and always null
        # in list responses — retrieve the payment for it.
        client_secret:,
        # When the payment was created, as an ISO 8601 timestamp.
        created_at:,
        # The currency the payment settles in, lowercase ISO 4217. Every money field below
        # is stated in it unless it says otherwise.
        currency:,
        # The phone number the buyer gave at checkout, when one was collected.
        customer_phone:,
        # The reason a payment was declined.
        decline_code:,
        # When an issuer warned that this payment will be disputed, or null.
        dispute_alerted_at:,
        # Why the most recent attempt failed, in plain words, or null.
        failure_message:,
        # For installment methods, how many payments the charge splits into.
        financing_installments_count:,
        # When the most recent charge attempt ran, or null.
        last_payment_attempt_at:,
        # The buyer's member record on the account, prefixed `mber_`. Null without the
        # member:basic:read permission.
        member_id:,
        # The membership this payment is billed against, prefixed `mem_`. Null for one-off
        # purchases or without the member:basic:read permission.
        membership_id:,
        # Your own key-value data attached when the payment was created.
        metadata:,
        # True when funds are held until the order ships and no tracking number has been
        # added yet. Null without the shipment:basic:read permission.
        needs_tracking:,
        # When the next automatic retry is scheduled, or null.
        next_payment_attempt_at:,
        # When the money was collected, or null while it has not been.
        paid_at:,
        # The instrument shaped for display: a buyer-facing name, the standard icon set,
        # and the card's brand and last four when it was a card.
        payment_instrument:,
        # The stored payment method that was charged, prefixed `payt_`. Null when the
        # method was not saved.
        payment_method_id:,
        # The different types of payment methods that can be used.
        payment_method_type:,
        # How many charge attempts have failed on this payment.
        payments_failed:,
        # The plan that was charged, prefixed `plan_`.
        plan_id:,
        # The product the plan belongs to, prefixed `prod_`. Null for a plan with no
        # product.
        product_id:,
        # The promo code applied at checkout, prefixed `promo_`, or null.
        promo_code_id:,
        # True when the payment is `paid`, not yet fully refunded, and its processor
        # supports refunds.
        refundable:,
        # How much has been refunded so far, as it settled — refunds convert at the rate
        # in force when each one was issued, not the payment's original rate.
        refunded_amount:,
        # When the payment was refunded, or null.
        refunded_at:,
        # True when the payment is `open` and Whop can attempt the charge again — see
        # `POST /payments/{id}/retry`.
        retryable:,
        # Whop's fraud risk score from 0 (lowest) to 100 (highest), or null when the
        # payment was not scored.
        risk_score:,
        # The factors behind `risk_score`, grouped by category, or null.
        risk_signals:,
        # When the funds post to the account's available balance, at midnight UTC. The
        # `ledger_account.funds_available` webhook carries the same value. Null until the
        # payment is paid, and always null in list responses — retrieve the payment for
        # it.
        settlement_time_at:,
        # The shipment fulfilling this payment, prefixed `ship_`. Null when nothing ships
        # or without the shipment:basic:read permission.
        shipment_id:,
        # The shipping address for physical goods, or null.
        shipping_address:,
        # The lifecycle state of the charge: `open` while collection is outstanding,
        # `paid` once the money moved, `pending` while a settlement rail clears,
        # `void`/`uncollectible` when it ended without collecting.
        status:,
        # The dashboard's finer-grained reading of the payment, folding in refunds,
        # disputes and Resolution Center cases.
        substatus:,
        # The price before discounts, tax and fees.
        subtotal:,
        # The sales tax or VAT collected. Null when no tax applied.
        tax_amount:,
        # The type of tax inclusivity applied to the receipt, for determining whether the
        # tax is included in the final price, or paid on top.
        tax_behavior:,
        # How much of the collected tax has been returned to the buyer so far. Zero when
        # the payment carried no tax, or when nothing has been refunded.
        tax_refunded_amount:,
        # True when the buyer completed 3D Secure for this payment.
        three_ds_verified:,
        # The account-facing total: the price after discounts, plus any tax added on top.
        # Excludes buyer fees, which the buyer pays above this amount — so this is not
        # necessarily what the buyer's statement shows.
        total:,
        # When the payment last changed, as an ISO 8601 timestamp.
        updated_at:,
        # The total converted to USD at the time of the charge, for reporting across
        # currencies. Excludes the adaptive pricing FX markup, which the account does not
        # keep.
        usd_total:,
        # The buyer. Null when the payment belongs to a company buyer rather than a user.
        user:,
        # The issuer's address and security code check results, or null when the processor
        # returned none.
        verification_checks:,
        # True when the payment is `open` on a past-due membership and its processor
        # supports voiding — see `POST /payments/{id}/void`.
        voidable:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: T.nilable(String),
            amount_after_fees: WhopSDK::Payment::AmountAfterFees,
            auto_refunded: T::Boolean,
            billing_address: T.nilable(WhopSDK::Payment::BillingAddress),
            billing_reason: T.nilable(WhopSDK::BillingReasons::TaggedSymbol),
            checkout_configuration_id: T.nilable(String),
            client_secret: T.nilable(String),
            created_at: String,
            currency: WhopSDK::Currency::TaggedSymbol,
            customer_phone: T.nilable(String),
            decline_code:
              T.nilable(WhopSDK::Payment::DeclineCode::TaggedSymbol),
            dispute_alerted_at: T.nilable(String),
            failure_message: T.nilable(String),
            financing_installments_count: T.nilable(Float),
            last_payment_attempt_at: T.nilable(String),
            member_id: T.nilable(String),
            membership_id: T.nilable(String),
            metadata: T.nilable(T.anything),
            needs_tracking: T.nilable(T::Boolean),
            next_payment_attempt_at: T.nilable(String),
            paid_at: T.nilable(String),
            payment_instrument: T.nilable(WhopSDK::Payment::PaymentInstrument),
            payment_method_id: T.nilable(String),
            payment_method_type:
              T.nilable(WhopSDK::PaymentMethodTypes::TaggedSymbol),
            payments_failed: Float,
            plan_id: T.nilable(String),
            product_id: T.nilable(String),
            promo_code_id: T.nilable(String),
            refundable: T::Boolean,
            refunded_amount: T.nilable(WhopSDK::Payment::RefundedAmount),
            refunded_at: T.nilable(String),
            retryable: T::Boolean,
            risk_score: T.nilable(Float),
            risk_signals: T.nilable(T.anything),
            settlement_time_at: T.nilable(String),
            shipment_id: T.nilable(String),
            shipping_address: T.nilable(WhopSDK::Payment::ShippingAddress),
            status: WhopSDK::ReceiptStatus::TaggedSymbol,
            substatus: WhopSDK::FriendlyReceiptStatus::TaggedSymbol,
            subtotal: T.nilable(WhopSDK::Payment::Subtotal),
            tax_amount: T.nilable(WhopSDK::Payment::TaxAmount),
            tax_behavior: T.nilable(WhopSDK::ReceiptTaxBehavior::TaggedSymbol),
            tax_refunded_amount: WhopSDK::Payment::TaxRefundedAmount,
            three_ds_verified: T::Boolean,
            total: T.nilable(WhopSDK::Payment::Total),
            updated_at: String,
            usd_total: T.nilable(WhopSDK::Payment::UsdTotal),
            user: T.nilable(WhopSDK::Payment::User),
            verification_checks:
              T.nilable(WhopSDK::Payment::VerificationChecks),
            voidable: T::Boolean
          }
        )
      end
      def to_hash
      end

      class AmountAfterFees < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Payment::AmountAfterFees, WhopSDK::Internal::AnyHash)
          end

        # The amount in major units, as an exact decimal string — `"10.00"` is ten
        # dollars. A string so no float rounds it in transit.
        sig { returns(String) }
        attr_accessor :amount

        # Three-letter ISO 4217 currency code, lowercase.
        sig { returns(String) }
        attr_accessor :currency

        # How many decimal places the amount CARRIES — the precision the charge itself
        # runs at.
        sig { returns(Integer) }
        attr_accessor :decimals

        # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
        # not always: COP is charged in centavos but written in whole pesos, so it is `2`
        # and `0`. Format the number in your own locale using this.
        sig { returns(Integer) }
        attr_accessor :display_decimals

        # What the account keeps: the total less Whop's fees.
        sig do
          params(
            amount: String,
            currency: String,
            decimals: Integer,
            display_decimals: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The amount in major units, as an exact decimal string — `"10.00"` is ten
          # dollars. A string so no float rounds it in transit.
          amount:,
          # Three-letter ISO 4217 currency code, lowercase.
          currency:,
          # How many decimal places the amount CARRIES — the precision the charge itself
          # runs at.
          decimals:,
          # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
          # not always: COP is charged in centavos but written in whole pesos, so it is `2`
          # and `0`. Format the number in your own locale using this.
          display_decimals:
        )
        end

        sig do
          override.returns(
            {
              amount: String,
              currency: String,
              decimals: Integer,
              display_decimals: Integer
            }
          )
        end
        def to_hash
        end
      end

      class BillingAddress < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Payment::BillingAddress, WhopSDK::Internal::AnyHash)
          end

        # The city.
        sig { returns(T.nilable(String)) }
        attr_accessor :city

        # The ISO 3166-1 alpha-2 country code.
        sig { returns(T.nilable(String)) }
        attr_accessor :country

        # The first street address line.
        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        # The second street address line.
        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        # The name on the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The postal or ZIP code.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        # The state, province or region.
        sig { returns(T.nilable(String)) }
        attr_accessor :state

        # The billing address the buyer entered, or null.
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
          # The city.
          city:,
          # The ISO 3166-1 alpha-2 country code.
          country:,
          # The first street address line.
          line1:,
          # The second street address line.
          line2:,
          # The name on the address.
          name:,
          # The postal or ZIP code.
          postal_code:,
          # The state, province or region.
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

      # The reason a payment was declined.
      module DeclineCode
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::Payment::DeclineCode) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INSUFFICIENT_FUNDS =
          T.let(
            :insufficient_funds,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        LOST_CARD =
          T.let(:lost_card, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        STOLEN_CARD =
          T.let(:stolen_card, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        EXPIRED_CARD =
          T.let(:expired_card, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        SUSPECTED_FRAUD =
          T.let(:suspected_fraud, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        INVALID_CARD_NUMBER =
          T.let(
            :invalid_card_number,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        INVALID_CVC =
          T.let(:invalid_cvc, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        INVALID_CVC_OR_EXPIRATION =
          T.let(
            :invalid_cvc_or_expiration,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        INCORRECT_PIN =
          T.let(:incorrect_pin, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        AUTHENTICATION_REQUIRED =
          T.let(
            :authentication_required,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        CARD_NOT_SUPPORTED =
          T.let(
            :card_not_supported,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        CURRENCY_NOT_SUPPORTED =
          T.let(
            :currency_not_supported,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        DUPLICATE_TRANSACTION =
          T.let(
            :duplicate_transaction,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        GENERIC_DECLINE =
          T.let(:generic_decline, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        INVALID_ACCOUNT =
          T.let(:invalid_account, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        INVALID_AMOUNT =
          T.let(:invalid_amount, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        PROCESSING_ERROR =
          T.let(:processing_error, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        RESTRICTED_CARD =
          T.let(:restricted_card, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        CARD_VELOCITY_EXCEEDED =
          T.let(
            :card_velocity_exceeded,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        CONTACT_ISSUER =
          T.let(:contact_issuer, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        BANK_DECLINED =
          T.let(:bank_declined, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        REGULATORY_BLOCKED =
          T.let(
            :regulatory_blocked,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        TRANSACTION_NOT_PERMITTED =
          T.let(
            :transaction_not_permitted,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        TRANSACTION_STOPPED =
          T.let(
            :transaction_stopped,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        CARD_TYPE_NOT_SUPPORTED =
          T.let(
            :card_type_not_supported,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        ISSUER_NOT_FOUND =
          T.let(:issuer_not_found, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        CLOSED_ACCOUNT =
          T.let(:closed_account, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        ISSUER_UNAVAILABLE =
          T.let(
            :issuer_unavailable,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        INVALID_ZIP =
          T.let(:invalid_zip, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        INVALID_EXPIRY_MONTH =
          T.let(
            :invalid_expiry_month,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        INVALID_EXPIRY_YEAR =
          T.let(
            :invalid_expiry_year,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        INVALID_EXPIRY =
          T.let(:invalid_expiry, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        INVALID_TRANSACTION =
          T.let(
            :invalid_transaction,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        CANNOT_AUTHORIZE =
          T.let(:cannot_authorize, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        PIN_REQUIRED =
          T.let(:pin_required, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        PIN_TRY_EXCEEDED =
          T.let(:pin_try_exceeded, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        PROVIDER_DECLINED =
          T.let(:provider_declined, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        HIGH_RISK =
          T.let(:high_risk, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        TEST_MODE_DECLINE =
          T.let(:test_mode_decline, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        MERCHANT_BLACKLIST =
          T.let(
            :merchant_blacklist,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        REENTER_TRANSACTION =
          T.let(
            :reenter_transaction,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        INVALID_PIN =
          T.let(:invalid_pin, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        PIN_REQUIRED_AS =
          T.let(:pin_required_as, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        WITHDRAWAL_COUNT_LIMIT_EXCEEDED =
          T.let(
            :withdrawal_count_limit_exceeded,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        INVALID_COUNTRY =
          T.let(:invalid_country, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        ISSUER_ERROR =
          T.let(:issuer_error, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        INVALID_CARD_HOLDER_NAME =
          T.let(
            :invalid_card_holder_name,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        NO_ACCOUNTS =
          T.let(:no_accounts, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        TRANSACTION_CANCELLED =
          T.let(
            :transaction_cancelled,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        THREE_D_SECURE_SUCCESS =
          T.let(
            :three_d_secure_success,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        THREE_D_SECURE_CANCELED =
          T.let(
            :three_d_secure_canceled,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        THREE_D_SECURE_INVALID_CARD_NUMBER =
          T.let(
            :three_d_secure_invalid_card_number,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        THREE_D_SECURE_GENERIC_ERROR =
          T.let(
            :three_d_secure_generic_error,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        THREE_D_SECURE_TIMEOUT =
          T.let(
            :three_d_secure_timeout,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        THREE_D_SECURE_FAILED =
          T.let(
            :three_d_secure_failed,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        THREE_D_SECURE_CARD_NOT_ENROLLED =
          T.let(
            :three_d_secure_card_not_enrolled,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        THREE_D_SECURE_FRAUD =
          T.let(
            :three_d_secure_fraud,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        THREE_D_SECURE_TOO_MANY_ATTEMPTS =
          T.let(
            :three_d_secure_too_many_attempts,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        THREE_D_SECURE_REJECTED_BY_BANK =
          T.let(
            :three_d_secure_rejected_by_bank,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        THREE_D_SECURE_REPORTED_LOST_OR_STOLEN =
          T.let(
            :three_d_secure_reported_lost_or_stolen,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        BLOCKED_BY_CARDHOLDER =
          T.let(
            :blocked_by_cardholder,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        TEST_MODE_TEST_CARD =
          T.let(
            :test_mode_test_card,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        TRY_AGAIN_LATER =
          T.let(:try_again_later, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        TRANSACTION_NOT_ALLOWED =
          T.let(
            :transaction_not_allowed,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        BANK_INSUFFICIENT_FUNDS =
          T.let(
            :bank_insufficient_funds,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        BANK_ACCOUNT_NOT_FOUND =
          T.let(
            :bank_account_not_found,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        BANK_ACCOUNT_CLOSED =
          T.let(
            :bank_account_closed,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        BANK_ACCOUNT_FROZEN =
          T.let(
            :bank_account_frozen,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        BANK_INVALID_ROUTING_NUMBER =
          T.let(
            :bank_invalid_routing_number,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        BANK_NON_TRANSACTION_ACCOUNT =
          T.let(
            :bank_non_transaction_account,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        BANK_AUTHORIZATION_REVOKED =
          T.let(
            :bank_authorization_revoked,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        BANK_PAYMENT_STOPPED =
          T.let(
            :bank_payment_stopped,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        BANK_NOT_AUTHORIZED =
          T.let(
            :bank_not_authorized,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        BANK_ACCOUNT_HOLDER_DECEASED =
          T.let(
            :bank_account_holder_deceased,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        BANK_DUPLICATE =
          T.let(:bank_duplicate, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        BANK_AMOUNT_ERROR =
          T.let(:bank_amount_error, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        BANK_REGULATORY_BLOCKED =
          T.let(
            :bank_regulatory_blocked,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        BANK_DETAILS_INVALID =
          T.let(
            :bank_details_invalid,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        BANK_PROCESSING_ERROR =
          T.let(
            :bank_processing_error,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        BANK_GENERIC_DECLINE =
          T.let(
            :bank_generic_decline,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        SEPA_INVALID_IBAN =
          T.let(:sepa_invalid_iban, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        SEPA_NO_MANDATE =
          T.let(:sepa_no_mandate, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        SEPA_MANDATE_DATA_INVALID =
          T.let(
            :sepa_mandate_data_invalid,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        SEPA_DISPUTED =
          T.let(:sepa_disputed, WhopSDK::Payment::DeclineCode::TaggedSymbol)
        SEPA_REFUSED_BY_CUSTOMER =
          T.let(
            :sepa_refused_by_customer,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )
        SEPA_GENERIC_DECLINE =
          T.let(
            :sepa_generic_decline,
            WhopSDK::Payment::DeclineCode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Payment::DeclineCode::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class PaymentInstrument < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Payment::PaymentInstrument,
              WhopSDK::Internal::AnyHash
            )
          end

        # Card payments only: the card's network and last four.
        sig { returns(T.nilable(WhopSDK::Payment::PaymentInstrument::Card)) }
        attr_reader :card

        sig do
          params(
            card: T.nilable(WhopSDK::Payment::PaymentInstrument::Card::OrHash)
          ).void
        end
        attr_writer :card

        # Buyer-facing instrument name — "Visa •••• 4242" when the card surfaced, else the
        # method's own name ("Klarna").
        sig { returns(String) }
        attr_accessor :display_name

        # The standard icon set: square and card shapes, each in light and dark colorways.
        sig { returns(WhopSDK::Payment::PaymentInstrument::Icons) }
        attr_reader :icons

        sig do
          params(icons: WhopSDK::Payment::PaymentInstrument::Icons::OrHash).void
        end
        attr_writer :icons

        # Installment methods only: how many payments the charge splits into. Data, not
        # copy — compose and translate the label client-side.
        sig { returns(T.nilable(Float)) }
        attr_accessor :installment_count

        # The payment method type identifier, e.g. `card`, `klarna`, `apple_pay`.
        sig { returns(String) }
        attr_accessor :payment_method_type

        # The instrument shaped for display: a buyer-facing name, the standard icon set,
        # and the card's brand and last four when it was a card.
        sig do
          params(
            card: T.nilable(WhopSDK::Payment::PaymentInstrument::Card::OrHash),
            display_name: String,
            icons: WhopSDK::Payment::PaymentInstrument::Icons::OrHash,
            installment_count: T.nilable(Float),
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
              card: T.nilable(WhopSDK::Payment::PaymentInstrument::Card),
              display_name: String,
              icons: WhopSDK::Payment::PaymentInstrument::Icons,
              installment_count: T.nilable(Float),
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
                WhopSDK::Payment::PaymentInstrument::Card,
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

          sig { override.returns({ brand: String, last4: T.nilable(String) }) }
          def to_hash
          end
        end

        class Icons < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Payment::PaymentInstrument::Icons,
                WhopSDK::Internal::AnyHash
              )
            end

          # The credit-card-proportioned tile (48x30).
          sig { returns(WhopSDK::Payment::PaymentInstrument::Icons::Card) }
          attr_reader :card

          sig do
            params(
              card: WhopSDK::Payment::PaymentInstrument::Icons::Card::OrHash
            ).void
          end
          attr_writer :card

          # The square tile (32x32).
          sig { returns(WhopSDK::Payment::PaymentInstrument::Icons::Square) }
          attr_reader :square

          sig do
            params(
              square: WhopSDK::Payment::PaymentInstrument::Icons::Square::OrHash
            ).void
          end
          attr_writer :square

          # The standard icon set: square and card shapes, each in light and dark colorways.
          sig do
            params(
              card: WhopSDK::Payment::PaymentInstrument::Icons::Card::OrHash,
              square: WhopSDK::Payment::PaymentInstrument::Icons::Square::OrHash
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
                card: WhopSDK::Payment::PaymentInstrument::Icons::Card,
                square: WhopSDK::Payment::PaymentInstrument::Icons::Square
              }
            )
          end
          def to_hash
          end

          class Card < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Payment::PaymentInstrument::Icons::Card,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The colorway for dark surfaces.
            sig do
              returns(WhopSDK::Payment::PaymentInstrument::Icons::Card::Dark)
            end
            attr_reader :dark

            sig do
              params(
                dark:
                  WhopSDK::Payment::PaymentInstrument::Icons::Card::Dark::OrHash
              ).void
            end
            attr_writer :dark

            # The colorway for light surfaces.
            sig do
              returns(WhopSDK::Payment::PaymentInstrument::Icons::Card::Light)
            end
            attr_reader :light

            sig do
              params(
                light:
                  WhopSDK::Payment::PaymentInstrument::Icons::Card::Light::OrHash
              ).void
            end
            attr_writer :light

            # The credit-card-proportioned tile (48x30).
            sig do
              params(
                dark:
                  WhopSDK::Payment::PaymentInstrument::Icons::Card::Dark::OrHash,
                light:
                  WhopSDK::Payment::PaymentInstrument::Icons::Card::Light::OrHash
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
                  dark: WhopSDK::Payment::PaymentInstrument::Icons::Card::Dark,
                  light: WhopSDK::Payment::PaymentInstrument::Icons::Card::Light
                }
              )
            end
            def to_hash
            end

            class Dark < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Payment::PaymentInstrument::Icons::Card::Dark,
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
                    WhopSDK::Payment::PaymentInstrument::Icons::Card::Light,
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
                  WhopSDK::Payment::PaymentInstrument::Icons::Square,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The colorway for dark surfaces.
            sig do
              returns(WhopSDK::Payment::PaymentInstrument::Icons::Square::Dark)
            end
            attr_reader :dark

            sig do
              params(
                dark:
                  WhopSDK::Payment::PaymentInstrument::Icons::Square::Dark::OrHash
              ).void
            end
            attr_writer :dark

            # The colorway for light surfaces.
            sig do
              returns(WhopSDK::Payment::PaymentInstrument::Icons::Square::Light)
            end
            attr_reader :light

            sig do
              params(
                light:
                  WhopSDK::Payment::PaymentInstrument::Icons::Square::Light::OrHash
              ).void
            end
            attr_writer :light

            # The square tile (32x32).
            sig do
              params(
                dark:
                  WhopSDK::Payment::PaymentInstrument::Icons::Square::Dark::OrHash,
                light:
                  WhopSDK::Payment::PaymentInstrument::Icons::Square::Light::OrHash
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
                    WhopSDK::Payment::PaymentInstrument::Icons::Square::Dark,
                  light:
                    WhopSDK::Payment::PaymentInstrument::Icons::Square::Light
                }
              )
            end
            def to_hash
            end

            class Dark < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Payment::PaymentInstrument::Icons::Square::Dark,
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
                    WhopSDK::Payment::PaymentInstrument::Icons::Square::Light,
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

      class RefundedAmount < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Payment::RefundedAmount, WhopSDK::Internal::AnyHash)
          end

        # The amount in major units, as an exact decimal string — `"10.00"` is ten
        # dollars. A string so no float rounds it in transit.
        sig { returns(String) }
        attr_accessor :amount

        # Three-letter ISO 4217 currency code, lowercase.
        sig { returns(String) }
        attr_accessor :currency

        # How many decimal places the amount CARRIES — the precision the charge itself
        # runs at.
        sig { returns(Integer) }
        attr_accessor :decimals

        # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
        # not always: COP is charged in centavos but written in whole pesos, so it is `2`
        # and `0`. Format the number in your own locale using this.
        sig { returns(Integer) }
        attr_accessor :display_decimals

        # How much has been refunded so far, as it settled — refunds convert at the rate
        # in force when each one was issued, not the payment's original rate.
        sig do
          params(
            amount: String,
            currency: String,
            decimals: Integer,
            display_decimals: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The amount in major units, as an exact decimal string — `"10.00"` is ten
          # dollars. A string so no float rounds it in transit.
          amount:,
          # Three-letter ISO 4217 currency code, lowercase.
          currency:,
          # How many decimal places the amount CARRIES — the precision the charge itself
          # runs at.
          decimals:,
          # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
          # not always: COP is charged in centavos but written in whole pesos, so it is `2`
          # and `0`. Format the number in your own locale using this.
          display_decimals:
        )
        end

        sig do
          override.returns(
            {
              amount: String,
              currency: String,
              decimals: Integer,
              display_decimals: Integer
            }
          )
        end
        def to_hash
        end
      end

      class ShippingAddress < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Payment::ShippingAddress, WhopSDK::Internal::AnyHash)
          end

        # The city.
        sig { returns(T.nilable(String)) }
        attr_accessor :city

        # The ISO 3166-1 alpha-2 country code.
        sig { returns(T.nilable(String)) }
        attr_accessor :country

        # The first street address line.
        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        # The second street address line.
        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        # The name on the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The postal or ZIP code.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        # The state, province or region.
        sig { returns(T.nilable(String)) }
        attr_accessor :state

        # The shipping address for physical goods, or null.
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
          # The city.
          city:,
          # The ISO 3166-1 alpha-2 country code.
          country:,
          # The first street address line.
          line1:,
          # The second street address line.
          line2:,
          # The name on the address.
          name:,
          # The postal or ZIP code.
          postal_code:,
          # The state, province or region.
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

      class Subtotal < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Payment::Subtotal, WhopSDK::Internal::AnyHash)
          end

        # The amount in major units, as an exact decimal string — `"10.00"` is ten
        # dollars. A string so no float rounds it in transit.
        sig { returns(String) }
        attr_accessor :amount

        # Three-letter ISO 4217 currency code, lowercase.
        sig { returns(String) }
        attr_accessor :currency

        # How many decimal places the amount CARRIES — the precision the charge itself
        # runs at.
        sig { returns(Integer) }
        attr_accessor :decimals

        # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
        # not always: COP is charged in centavos but written in whole pesos, so it is `2`
        # and `0`. Format the number in your own locale using this.
        sig { returns(Integer) }
        attr_accessor :display_decimals

        # The price before discounts, tax and fees.
        sig do
          params(
            amount: String,
            currency: String,
            decimals: Integer,
            display_decimals: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The amount in major units, as an exact decimal string — `"10.00"` is ten
          # dollars. A string so no float rounds it in transit.
          amount:,
          # Three-letter ISO 4217 currency code, lowercase.
          currency:,
          # How many decimal places the amount CARRIES — the precision the charge itself
          # runs at.
          decimals:,
          # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
          # not always: COP is charged in centavos but written in whole pesos, so it is `2`
          # and `0`. Format the number in your own locale using this.
          display_decimals:
        )
        end

        sig do
          override.returns(
            {
              amount: String,
              currency: String,
              decimals: Integer,
              display_decimals: Integer
            }
          )
        end
        def to_hash
        end
      end

      class TaxAmount < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Payment::TaxAmount, WhopSDK::Internal::AnyHash)
          end

        # The amount in major units, as an exact decimal string — `"10.00"` is ten
        # dollars. A string so no float rounds it in transit.
        sig { returns(String) }
        attr_accessor :amount

        # Three-letter ISO 4217 currency code, lowercase.
        sig { returns(String) }
        attr_accessor :currency

        # How many decimal places the amount CARRIES — the precision the charge itself
        # runs at.
        sig { returns(Integer) }
        attr_accessor :decimals

        # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
        # not always: COP is charged in centavos but written in whole pesos, so it is `2`
        # and `0`. Format the number in your own locale using this.
        sig { returns(Integer) }
        attr_accessor :display_decimals

        # The sales tax or VAT collected. Null when no tax applied.
        sig do
          params(
            amount: String,
            currency: String,
            decimals: Integer,
            display_decimals: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The amount in major units, as an exact decimal string — `"10.00"` is ten
          # dollars. A string so no float rounds it in transit.
          amount:,
          # Three-letter ISO 4217 currency code, lowercase.
          currency:,
          # How many decimal places the amount CARRIES — the precision the charge itself
          # runs at.
          decimals:,
          # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
          # not always: COP is charged in centavos but written in whole pesos, so it is `2`
          # and `0`. Format the number in your own locale using this.
          display_decimals:
        )
        end

        sig do
          override.returns(
            {
              amount: String,
              currency: String,
              decimals: Integer,
              display_decimals: Integer
            }
          )
        end
        def to_hash
        end
      end

      class TaxRefundedAmount < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Payment::TaxRefundedAmount,
              WhopSDK::Internal::AnyHash
            )
          end

        # The amount in major units, as an exact decimal string — `"10.00"` is ten
        # dollars. A string so no float rounds it in transit.
        sig { returns(String) }
        attr_accessor :amount

        # Three-letter ISO 4217 currency code, lowercase.
        sig { returns(String) }
        attr_accessor :currency

        # How many decimal places the amount CARRIES — the precision the charge itself
        # runs at.
        sig { returns(Integer) }
        attr_accessor :decimals

        # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
        # not always: COP is charged in centavos but written in whole pesos, so it is `2`
        # and `0`. Format the number in your own locale using this.
        sig { returns(Integer) }
        attr_accessor :display_decimals

        # How much of the collected tax has been returned to the buyer so far. Zero when
        # the payment carried no tax, or when nothing has been refunded.
        sig do
          params(
            amount: String,
            currency: String,
            decimals: Integer,
            display_decimals: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The amount in major units, as an exact decimal string — `"10.00"` is ten
          # dollars. A string so no float rounds it in transit.
          amount:,
          # Three-letter ISO 4217 currency code, lowercase.
          currency:,
          # How many decimal places the amount CARRIES — the precision the charge itself
          # runs at.
          decimals:,
          # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
          # not always: COP is charged in centavos but written in whole pesos, so it is `2`
          # and `0`. Format the number in your own locale using this.
          display_decimals:
        )
        end

        sig do
          override.returns(
            {
              amount: String,
              currency: String,
              decimals: Integer,
              display_decimals: Integer
            }
          )
        end
        def to_hash
        end
      end

      class Total < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Payment::Total, WhopSDK::Internal::AnyHash)
          end

        # The amount in major units, as an exact decimal string — `"10.00"` is ten
        # dollars. A string so no float rounds it in transit.
        sig { returns(String) }
        attr_accessor :amount

        # Three-letter ISO 4217 currency code, lowercase.
        sig { returns(String) }
        attr_accessor :currency

        # How many decimal places the amount CARRIES — the precision the charge itself
        # runs at.
        sig { returns(Integer) }
        attr_accessor :decimals

        # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
        # not always: COP is charged in centavos but written in whole pesos, so it is `2`
        # and `0`. Format the number in your own locale using this.
        sig { returns(Integer) }
        attr_accessor :display_decimals

        # The account-facing total: the price after discounts, plus any tax added on top.
        # Excludes buyer fees, which the buyer pays above this amount — so this is not
        # necessarily what the buyer's statement shows.
        sig do
          params(
            amount: String,
            currency: String,
            decimals: Integer,
            display_decimals: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The amount in major units, as an exact decimal string — `"10.00"` is ten
          # dollars. A string so no float rounds it in transit.
          amount:,
          # Three-letter ISO 4217 currency code, lowercase.
          currency:,
          # How many decimal places the amount CARRIES — the precision the charge itself
          # runs at.
          decimals:,
          # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
          # not always: COP is charged in centavos but written in whole pesos, so it is `2`
          # and `0`. Format the number in your own locale using this.
          display_decimals:
        )
        end

        sig do
          override.returns(
            {
              amount: String,
              currency: String,
              decimals: Integer,
              display_decimals: Integer
            }
          )
        end
        def to_hash
        end
      end

      class UsdTotal < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Payment::UsdTotal, WhopSDK::Internal::AnyHash)
          end

        # The amount in major units, as an exact decimal string — `"10.00"` is ten
        # dollars. A string so no float rounds it in transit.
        sig { returns(String) }
        attr_accessor :amount

        # Three-letter ISO 4217 currency code, lowercase.
        sig { returns(String) }
        attr_accessor :currency

        # How many decimal places the amount CARRIES — the precision the charge itself
        # runs at.
        sig { returns(Integer) }
        attr_accessor :decimals

        # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
        # not always: COP is charged in centavos but written in whole pesos, so it is `2`
        # and `0`. Format the number in your own locale using this.
        sig { returns(Integer) }
        attr_accessor :display_decimals

        # The total converted to USD at the time of the charge, for reporting across
        # currencies. Excludes the adaptive pricing FX markup, which the account does not
        # keep.
        sig do
          params(
            amount: String,
            currency: String,
            decimals: Integer,
            display_decimals: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The amount in major units, as an exact decimal string — `"10.00"` is ten
          # dollars. A string so no float rounds it in transit.
          amount:,
          # Three-letter ISO 4217 currency code, lowercase.
          currency:,
          # How many decimal places the amount CARRIES — the precision the charge itself
          # runs at.
          decimals:,
          # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
          # not always: COP is charged in centavos but written in whole pesos, so it is `2`
          # and `0`. Format the number in your own locale using this.
          display_decimals:
        )
        end

        sig do
          override.returns(
            {
              amount: String,
              currency: String,
              decimals: Integer,
              display_decimals: Integer
            }
          )
        end
        def to_hash
        end
      end

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Payment::User, WhopSDK::Internal::AnyHash)
          end

        # User ID, prefixed `user_`.
        sig { returns(String) }
        attr_accessor :id

        # Display name.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Avatar wrapper; its `url` is always present, using a generated placeholder when
        # the user set no picture.
        sig { returns(WhopSDK::Payment::User::ProfilePicture) }
        attr_reader :profile_picture

        sig do
          params(
            profile_picture: WhopSDK::Payment::User::ProfilePicture::OrHash
          ).void
        end
        attr_writer :profile_picture

        # Public username.
        sig { returns(String) }
        attr_accessor :username

        # The buyer. Null when the payment belongs to a company buyer rather than a user.
        sig do
          params(
            id: String,
            name: T.nilable(String),
            profile_picture: WhopSDK::Payment::User::ProfilePicture::OrHash,
            username: String
          ).returns(T.attached_class)
        end
        def self.new(
          # User ID, prefixed `user_`.
          id:,
          # Display name.
          name:,
          # Avatar wrapper; its `url` is always present, using a generated placeholder when
          # the user set no picture.
          profile_picture:,
          # Public username.
          username:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              name: T.nilable(String),
              profile_picture: WhopSDK::Payment::User::ProfilePicture,
              username: String
            }
          )
        end
        def to_hash
        end

        class ProfilePicture < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Payment::User::ProfilePicture,
                WhopSDK::Internal::AnyHash
              )
            end

          # Avatar image URL. Always present — a generated placeholder when the user set no
          # picture.
          sig { returns(String) }
          attr_accessor :url

          # Avatar wrapper; its `url` is always present, using a generated placeholder when
          # the user set no picture.
          sig { params(url: String).returns(T.attached_class) }
          def self.new(
            # Avatar image URL. Always present — a generated placeholder when the user set no
            # picture.
            url:
          )
          end

          sig { override.returns({ url: String }) }
          def to_hash
          end
        end
      end

      class VerificationChecks < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Payment::VerificationChecks,
              WhopSDK::Internal::AnyHash
            )
          end

        # Whether the billing street address the customer entered matched the issuer's
        # records.
        sig { returns(T.nilable(String)) }
        attr_accessor :address_line1

        # Whether the cardholder name matched the issuer's records.
        sig { returns(T.nilable(String)) }
        attr_accessor :card_holder_name

        # Whether the CVV / CVC matched the card.
        sig { returns(T.nilable(String)) }
        attr_accessor :card_security_code

        # Whether the billing postal code matched the issuer's records.
        sig { returns(T.nilable(String)) }
        attr_accessor :zip_code

        # The issuer's address and security code check results, or null when the processor
        # returned none.
        sig do
          params(
            address_line1: T.nilable(String),
            card_holder_name: T.nilable(String),
            card_security_code: T.nilable(String),
            zip_code: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether the billing street address the customer entered matched the issuer's
          # records.
          address_line1:,
          # Whether the cardholder name matched the issuer's records.
          card_holder_name:,
          # Whether the CVV / CVC matched the card.
          card_security_code:,
          # Whether the billing postal code matched the issuer's records.
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
