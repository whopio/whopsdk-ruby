# typed: strong

module WhopSDK
  module Models
    class PaymentListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::PaymentListResponse,
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
        returns(T.nilable(WhopSDK::Models::PaymentListResponse::ApplicationFee))
      end
      attr_reader :application_fee

      sig do
        params(
          application_fee:
            T.nilable(
              WhopSDK::Models::PaymentListResponse::ApplicationFee::OrHash
            )
        ).void
      end
      attr_writer :application_fee

      # Whether this payment was auto refunded or not
      sig { returns(T::Boolean) }
      attr_accessor :auto_refunded

      # The address of the user who made the payment.
      sig do
        returns(T.nilable(WhopSDK::Models::PaymentListResponse::BillingAddress))
      end
      attr_reader :billing_address

      sig do
        params(
          billing_address:
            T.nilable(
              WhopSDK::Models::PaymentListResponse::BillingAddress::OrHash
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

      # The last four digits of the card used to make this payment. Null if the payment
      # was not made with a card.
      sig { returns(T.nilable(String)) }
      attr_accessor :card_last4

      # The ID of the checkout session/configuration that produced this payment, if any.
      # Use this to map payments back to the checkout configuration that created them.
      sig { returns(T.nilable(String)) }
      attr_accessor :checkout_configuration_id

      # The company for the payment.
      sig { returns(T.nilable(WhopSDK::Models::PaymentListResponse::Company)) }
      attr_reader :company

      sig do
        params(
          company:
            T.nilable(WhopSDK::Models::PaymentListResponse::Company::OrHash)
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
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        )
      end
      attr_accessor :decline_code

      # When an alert came in that this transaction will be disputed
      sig { returns(T.nilable(Time)) }
      attr_accessor :dispute_alerted_at

      # If the payment failed, the reason for the failure.
      sig { returns(T.nilable(String)) }
      attr_accessor :failure_message

      # The time of the last payment attempt.
      sig { returns(T.nilable(Time)) }
      attr_accessor :last_payment_attempt

      # The member attached to this payment.
      sig { returns(T.nilable(WhopSDK::Models::PaymentListResponse::Member)) }
      attr_reader :member

      sig do
        params(
          member:
            T.nilable(WhopSDK::Models::PaymentListResponse::Member::OrHash)
        ).void
      end
      attr_writer :member

      # The membership attached to this payment.
      sig do
        returns(T.nilable(WhopSDK::Models::PaymentListResponse::Membership))
      end
      attr_reader :membership

      sig do
        params(
          membership:
            T.nilable(WhopSDK::Models::PaymentListResponse::Membership::OrHash)
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
          T.nilable(WhopSDK::Models::PaymentListResponse::PaymentInstrument)
        )
      end
      attr_reader :payment_instrument

      sig do
        params(
          payment_instrument:
            T.nilable(
              WhopSDK::Models::PaymentListResponse::PaymentInstrument::OrHash
            )
        ).void
      end
      attr_writer :payment_instrument

      # The tokenized payment method reference used for this payment. Null if no token
      # was used.
      sig do
        returns(T.nilable(WhopSDK::Models::PaymentListResponse::PaymentMethod))
      end
      attr_reader :payment_method

      sig do
        params(
          payment_method:
            T.nilable(
              WhopSDK::Models::PaymentListResponse::PaymentMethod::OrHash
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
      sig { returns(T.nilable(WhopSDK::Models::PaymentListResponse::Plan)) }
      attr_reader :plan

      sig do
        params(
          plan: T.nilable(WhopSDK::Models::PaymentListResponse::Plan::OrHash)
        ).void
      end
      attr_writer :plan

      # The product this payment was made for
      sig { returns(T.nilable(WhopSDK::Models::PaymentListResponse::Product)) }
      attr_reader :product

      sig do
        params(
          product:
            T.nilable(WhopSDK::Models::PaymentListResponse::Product::OrHash)
        ).void
      end
      attr_writer :product

      # The promo code used for this payment.
      sig do
        returns(T.nilable(WhopSDK::Models::PaymentListResponse::PromoCode))
      end
      attr_reader :promo_code

      sig do
        params(
          promo_code:
            T.nilable(WhopSDK::Models::PaymentListResponse::PromoCode::OrHash)
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

      # True when the payment status is `open` and its membership is in one of the
      # retry-eligible states (`active`, `trialing`, `completed`, or `past_due`), or
      # when it is a failed initial billing-engine payment on a `drafted` membership
      # with an unlimited-stock plan; otherwise false. Used to decide if Whop can
      # attempt the charge again.
      sig { returns(T::Boolean) }
      attr_accessor :retryable

      # The three-letter ISO currency code for this payment (e.g., 'usd', 'eur').
      sig { returns(WhopSDK::Currency::TaggedSymbol) }
      attr_accessor :settlement_currency

      # The shipment attached to this payment.
      sig { returns(T.nilable(WhopSDK::Models::PaymentListResponse::Shipment)) }
      attr_reader :shipment

      sig do
        params(
          shipment:
            T.nilable(WhopSDK::Models::PaymentListResponse::Shipment::OrHash)
        ).void
      end
      attr_writer :shipment

      # The shipping address provided by the customer for physical goods. Null if no
      # shipping address was collected.
      sig do
        returns(
          T.nilable(WhopSDK::Models::PaymentListResponse::ShippingAddress)
        )
      end
      attr_reader :shipping_address

      sig do
        params(
          shipping_address:
            T.nilable(
              WhopSDK::Models::PaymentListResponse::ShippingAddress::OrHash
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
      sig { returns(T.nilable(WhopSDK::Models::PaymentListResponse::User)) }
      attr_reader :user

      sig do
        params(
          user: T.nilable(WhopSDK::Models::PaymentListResponse::User::OrHash)
        ).void
      end
      attr_writer :user

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
              WhopSDK::Models::PaymentListResponse::ApplicationFee::OrHash
            ),
          auto_refunded: T::Boolean,
          billing_address:
            T.nilable(
              WhopSDK::Models::PaymentListResponse::BillingAddress::OrHash
            ),
          billing_reason: T.nilable(WhopSDK::BillingReasons::OrSymbol),
          card_brand: T.nilable(WhopSDK::CardBrands::OrSymbol),
          card_last4: T.nilable(String),
          checkout_configuration_id: T.nilable(String),
          company:
            T.nilable(WhopSDK::Models::PaymentListResponse::Company::OrHash),
          created_at: Time,
          currency: WhopSDK::Currency::OrSymbol,
          customer_phone: T.nilable(String),
          decline_code:
            T.nilable(
              WhopSDK::Models::PaymentListResponse::DeclineCode::OrSymbol
            ),
          dispute_alerted_at: T.nilable(Time),
          failure_message: T.nilable(String),
          last_payment_attempt: T.nilable(Time),
          member:
            T.nilable(WhopSDK::Models::PaymentListResponse::Member::OrHash),
          membership:
            T.nilable(WhopSDK::Models::PaymentListResponse::Membership::OrHash),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          needs_tracking: T.nilable(T::Boolean),
          next_payment_attempt: T.nilable(Time),
          paid_at: T.nilable(Time),
          payment_instrument:
            T.nilable(
              WhopSDK::Models::PaymentListResponse::PaymentInstrument::OrHash
            ),
          payment_method:
            T.nilable(
              WhopSDK::Models::PaymentListResponse::PaymentMethod::OrHash
            ),
          payment_method_type: T.nilable(WhopSDK::PaymentMethodTypes::OrSymbol),
          payments_failed: T.nilable(Integer),
          plan: T.nilable(WhopSDK::Models::PaymentListResponse::Plan::OrHash),
          product:
            T.nilable(WhopSDK::Models::PaymentListResponse::Product::OrHash),
          promo_code:
            T.nilable(WhopSDK::Models::PaymentListResponse::PromoCode::OrHash),
          refundable: T::Boolean,
          refunded_amount: T.nilable(Float),
          refunded_at: T.nilable(Time),
          retryable: T::Boolean,
          settlement_currency: WhopSDK::Currency::OrSymbol,
          shipment:
            T.nilable(WhopSDK::Models::PaymentListResponse::Shipment::OrHash),
          shipping_address:
            T.nilable(
              WhopSDK::Models::PaymentListResponse::ShippingAddress::OrHash
            ),
          status: T.nilable(WhopSDK::ReceiptStatus::OrSymbol),
          substatus: WhopSDK::FriendlyReceiptStatus::OrSymbol,
          subtotal: T.nilable(Float),
          tax_amount: T.nilable(Float),
          tax_behavior: T.nilable(WhopSDK::ReceiptTaxBehavior::OrSymbol),
          total: T.nilable(Float),
          updated_at: Time,
          usd_total: T.nilable(Float),
          user: T.nilable(WhopSDK::Models::PaymentListResponse::User::OrHash),
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
        # If the payment failed, the reason for the failure.
        failure_message:,
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
        # True when the payment status is `open` and its membership is in one of the
        # retry-eligible states (`active`, `trialing`, `completed`, or `past_due`), or
        # when it is a failed initial billing-engine payment on a `drafted` membership
        # with an unlimited-stock plan; otherwise false. Used to decide if Whop can
        # attempt the charge again.
        retryable:,
        # The three-letter ISO currency code for this payment (e.g., 'usd', 'eur').
        settlement_currency:,
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
        # The total to show to the creator (excluding buyer fees).
        total:,
        # The datetime the payment was last updated.
        updated_at:,
        # The total in USD to show to the creator (excluding buyer fees).
        usd_total:,
        # The user that made this payment.
        user:,
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
              T.nilable(WhopSDK::Models::PaymentListResponse::ApplicationFee),
            auto_refunded: T::Boolean,
            billing_address:
              T.nilable(WhopSDK::Models::PaymentListResponse::BillingAddress),
            billing_reason: T.nilable(WhopSDK::BillingReasons::TaggedSymbol),
            card_brand: T.nilable(WhopSDK::CardBrands::TaggedSymbol),
            card_last4: T.nilable(String),
            checkout_configuration_id: T.nilable(String),
            company: T.nilable(WhopSDK::Models::PaymentListResponse::Company),
            created_at: Time,
            currency: WhopSDK::Currency::TaggedSymbol,
            customer_phone: T.nilable(String),
            decline_code:
              T.nilable(
                WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
              ),
            dispute_alerted_at: T.nilable(Time),
            failure_message: T.nilable(String),
            last_payment_attempt: T.nilable(Time),
            member: T.nilable(WhopSDK::Models::PaymentListResponse::Member),
            membership:
              T.nilable(WhopSDK::Models::PaymentListResponse::Membership),
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            needs_tracking: T.nilable(T::Boolean),
            next_payment_attempt: T.nilable(Time),
            paid_at: T.nilable(Time),
            payment_instrument:
              T.nilable(
                WhopSDK::Models::PaymentListResponse::PaymentInstrument
              ),
            payment_method:
              T.nilable(WhopSDK::Models::PaymentListResponse::PaymentMethod),
            payment_method_type:
              T.nilable(WhopSDK::PaymentMethodTypes::TaggedSymbol),
            payments_failed: T.nilable(Integer),
            plan: T.nilable(WhopSDK::Models::PaymentListResponse::Plan),
            product: T.nilable(WhopSDK::Models::PaymentListResponse::Product),
            promo_code:
              T.nilable(WhopSDK::Models::PaymentListResponse::PromoCode),
            refundable: T::Boolean,
            refunded_amount: T.nilable(Float),
            refunded_at: T.nilable(Time),
            retryable: T::Boolean,
            settlement_currency: WhopSDK::Currency::TaggedSymbol,
            shipment: T.nilable(WhopSDK::Models::PaymentListResponse::Shipment),
            shipping_address:
              T.nilable(WhopSDK::Models::PaymentListResponse::ShippingAddress),
            status: T.nilable(WhopSDK::ReceiptStatus::TaggedSymbol),
            substatus: WhopSDK::FriendlyReceiptStatus::TaggedSymbol,
            subtotal: T.nilable(Float),
            tax_amount: T.nilable(Float),
            tax_behavior: T.nilable(WhopSDK::ReceiptTaxBehavior::TaggedSymbol),
            total: T.nilable(Float),
            updated_at: Time,
            usd_total: T.nilable(Float),
            user: T.nilable(WhopSDK::Models::PaymentListResponse::User),
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
              WhopSDK::Models::PaymentListResponse::ApplicationFee,
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
              WhopSDK::Models::PaymentListResponse::BillingAddress,
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
              WhopSDK::Models::PaymentListResponse::Company,
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
            T.all(Symbol, WhopSDK::Models::PaymentListResponse::DeclineCode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INSUFFICIENT_FUNDS =
          T.let(
            :insufficient_funds,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        LOST_CARD =
          T.let(
            :lost_card,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        STOLEN_CARD =
          T.let(
            :stolen_card,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        EXPIRED_CARD =
          T.let(
            :expired_card,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        SUSPECTED_FRAUD =
          T.let(
            :suspected_fraud,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        INVALID_CARD_NUMBER =
          T.let(
            :invalid_card_number,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        INVALID_CVC =
          T.let(
            :invalid_cvc,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        INVALID_CVC_OR_EXPIRATION =
          T.let(
            :invalid_cvc_or_expiration,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        INCORRECT_PIN =
          T.let(
            :incorrect_pin,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        AUTHENTICATION_REQUIRED =
          T.let(
            :authentication_required,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        CARD_NOT_SUPPORTED =
          T.let(
            :card_not_supported,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        CURRENCY_NOT_SUPPORTED =
          T.let(
            :currency_not_supported,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        DUPLICATE_TRANSACTION =
          T.let(
            :duplicate_transaction,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        GENERIC_DECLINE =
          T.let(
            :generic_decline,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        INVALID_ACCOUNT =
          T.let(
            :invalid_account,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        INVALID_AMOUNT =
          T.let(
            :invalid_amount,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        PROCESSING_ERROR =
          T.let(
            :processing_error,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        RESTRICTED_CARD =
          T.let(
            :restricted_card,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        CARD_VELOCITY_EXCEEDED =
          T.let(
            :card_velocity_exceeded,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        CONTACT_ISSUER =
          T.let(
            :contact_issuer,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        BANK_DECLINED =
          T.let(
            :bank_declined,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        REGULATORY_BLOCKED =
          T.let(
            :regulatory_blocked,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        TRANSACTION_NOT_PERMITTED =
          T.let(
            :transaction_not_permitted,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        TRANSACTION_STOPPED =
          T.let(
            :transaction_stopped,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        CARD_TYPE_NOT_SUPPORTED =
          T.let(
            :card_type_not_supported,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        ISSUER_NOT_FOUND =
          T.let(
            :issuer_not_found,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        CLOSED_ACCOUNT =
          T.let(
            :closed_account,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        ISSUER_UNAVAILABLE =
          T.let(
            :issuer_unavailable,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        INVALID_ZIP =
          T.let(
            :invalid_zip,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        INVALID_EXPIRY_MONTH =
          T.let(
            :invalid_expiry_month,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        INVALID_EXPIRY_YEAR =
          T.let(
            :invalid_expiry_year,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        INVALID_EXPIRY =
          T.let(
            :invalid_expiry,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        INVALID_TRANSACTION =
          T.let(
            :invalid_transaction,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        CANNOT_AUTHORIZE =
          T.let(
            :cannot_authorize,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        PIN_REQUIRED =
          T.let(
            :pin_required,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        PIN_TRY_EXCEEDED =
          T.let(
            :pin_try_exceeded,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        PROVIDER_DECLINED =
          T.let(
            :provider_declined,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        HIGH_RISK =
          T.let(
            :high_risk,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        TEST_MODE_DECLINE =
          T.let(
            :test_mode_decline,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        MERCHANT_BLACKLIST =
          T.let(
            :merchant_blacklist,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        REENTER_TRANSACTION =
          T.let(
            :reenter_transaction,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        INVALID_PIN =
          T.let(
            :invalid_pin,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        PIN_REQUIRED_AS =
          T.let(
            :pin_required_as,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        WITHDRAWAL_COUNT_LIMIT_EXCEEDED =
          T.let(
            :withdrawal_count_limit_exceeded,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        INVALID_COUNTRY =
          T.let(
            :invalid_country,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        ISSUER_ERROR =
          T.let(
            :issuer_error,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        INVALID_CARD_HOLDER_NAME =
          T.let(
            :invalid_card_holder_name,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        NO_ACCOUNTS =
          T.let(
            :no_accounts,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        TRANSACTION_CANCELLED =
          T.let(
            :transaction_cancelled,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        THREE_D_SECURE_SUCCESS =
          T.let(
            :three_d_secure_success,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        THREE_D_SECURE_CANCELED =
          T.let(
            :three_d_secure_canceled,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        THREE_D_SECURE_INVALID_CARD_NUMBER =
          T.let(
            :three_d_secure_invalid_card_number,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        THREE_D_SECURE_GENERIC_ERROR =
          T.let(
            :three_d_secure_generic_error,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        THREE_D_SECURE_TIMEOUT =
          T.let(
            :three_d_secure_timeout,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        THREE_D_SECURE_FAILED =
          T.let(
            :three_d_secure_failed,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        THREE_D_SECURE_CARD_NOT_ENROLLED =
          T.let(
            :three_d_secure_card_not_enrolled,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        THREE_D_SECURE_FRAUD =
          T.let(
            :three_d_secure_fraud,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        THREE_D_SECURE_TOO_MANY_ATTEMPTS =
          T.let(
            :three_d_secure_too_many_attempts,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        THREE_D_SECURE_REJECTED_BY_BANK =
          T.let(
            :three_d_secure_rejected_by_bank,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        THREE_D_SECURE_REPORTED_LOST_OR_STOLEN =
          T.let(
            :three_d_secure_reported_lost_or_stolen,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        BLOCKED_BY_CARDHOLDER =
          T.let(
            :blocked_by_cardholder,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        TEST_MODE_TEST_CARD =
          T.let(
            :test_mode_test_card,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        TRY_AGAIN_LATER =
          T.let(
            :try_again_later,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        TRANSACTION_NOT_ALLOWED =
          T.let(
            :transaction_not_allowed,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        BANK_INSUFFICIENT_FUNDS =
          T.let(
            :bank_insufficient_funds,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        BANK_ACCOUNT_NOT_FOUND =
          T.let(
            :bank_account_not_found,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        BANK_ACCOUNT_CLOSED =
          T.let(
            :bank_account_closed,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        BANK_ACCOUNT_FROZEN =
          T.let(
            :bank_account_frozen,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        BANK_INVALID_ROUTING_NUMBER =
          T.let(
            :bank_invalid_routing_number,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        BANK_NON_TRANSACTION_ACCOUNT =
          T.let(
            :bank_non_transaction_account,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        BANK_AUTHORIZATION_REVOKED =
          T.let(
            :bank_authorization_revoked,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        BANK_PAYMENT_STOPPED =
          T.let(
            :bank_payment_stopped,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        BANK_NOT_AUTHORIZED =
          T.let(
            :bank_not_authorized,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        BANK_ACCOUNT_HOLDER_DECEASED =
          T.let(
            :bank_account_holder_deceased,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        BANK_DUPLICATE =
          T.let(
            :bank_duplicate,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        BANK_AMOUNT_ERROR =
          T.let(
            :bank_amount_error,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        BANK_REGULATORY_BLOCKED =
          T.let(
            :bank_regulatory_blocked,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        BANK_DETAILS_INVALID =
          T.let(
            :bank_details_invalid,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        BANK_PROCESSING_ERROR =
          T.let(
            :bank_processing_error,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        BANK_GENERIC_DECLINE =
          T.let(
            :bank_generic_decline,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        SEPA_INVALID_IBAN =
          T.let(
            :sepa_invalid_iban,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        SEPA_NO_MANDATE =
          T.let(
            :sepa_no_mandate,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        SEPA_MANDATE_DATA_INVALID =
          T.let(
            :sepa_mandate_data_invalid,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        SEPA_DISPUTED =
          T.let(
            :sepa_disputed,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        SEPA_REFUSED_BY_CUSTOMER =
          T.let(
            :sepa_refused_by_customer,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )
        SEPA_GENERIC_DECLINE =
          T.let(
            :sepa_generic_decline,
            WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::PaymentListResponse::DeclineCode::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Member < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PaymentListResponse::Member,
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
          params(id: String, phone: T.nilable(String)).returns(T.attached_class)
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
              WhopSDK::Models::PaymentListResponse::Membership,
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
              WhopSDK::Models::PaymentListResponse::PaymentInstrument,
              WhopSDK::Internal::AnyHash
            )
          end

        # Card payments only: the card's network and last four.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::PaymentListResponse::PaymentInstrument::Card
            )
          )
        end
        attr_reader :card

        sig do
          params(
            card:
              T.nilable(
                WhopSDK::Models::PaymentListResponse::PaymentInstrument::Card::OrHash
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
            WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons
          )
        end
        attr_reader :icons

        sig do
          params(
            icons:
              WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::OrHash
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
                WhopSDK::Models::PaymentListResponse::PaymentInstrument::Card::OrHash
              ),
            display_name: String,
            icons:
              WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::OrHash,
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
                  WhopSDK::Models::PaymentListResponse::PaymentInstrument::Card
                ),
              display_name: String,
              icons:
                WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons,
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
                WhopSDK::Models::PaymentListResponse::PaymentInstrument::Card,
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
                WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons,
                WhopSDK::Internal::AnyHash
              )
            end

          # The credit-card-proportioned tile (48x30).
          sig do
            returns(
              WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Card
            )
          end
          attr_reader :card

          sig do
            params(
              card:
                WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Card::OrHash
            ).void
          end
          attr_writer :card

          # The square tile (32x32).
          sig do
            returns(
              WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Square
            )
          end
          attr_reader :square

          sig do
            params(
              square:
                WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Square::OrHash
            ).void
          end
          attr_writer :square

          # The standard icon set: square and card shapes, each in light and dark colorways.
          sig do
            params(
              card:
                WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Card::OrHash,
              square:
                WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Square::OrHash
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
                  WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Card,
                square:
                  WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Square
              }
            )
          end
          def to_hash
          end

          class Card < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Card,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The colorway for dark surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Card::Dark
              )
            end
            attr_reader :dark

            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Card::Dark::OrHash
              ).void
            end
            attr_writer :dark

            # The colorway for light surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Card::Light
              )
            end
            attr_reader :light

            sig do
              params(
                light:
                  WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Card::Light::OrHash
              ).void
            end
            attr_writer :light

            # The credit-card-proportioned tile (48x30).
            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Card::Dark::OrHash,
                light:
                  WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Card::Light::OrHash
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
                    WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Card::Dark,
                  light:
                    WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Card::Light
                }
              )
            end
            def to_hash
            end

            class Dark < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Card::Dark,
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
                    WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Card::Light,
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
                  WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Square,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The colorway for dark surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Square::Dark
              )
            end
            attr_reader :dark

            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Square::Dark::OrHash
              ).void
            end
            attr_writer :dark

            # The colorway for light surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Square::Light
              )
            end
            attr_reader :light

            sig do
              params(
                light:
                  WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Square::Light::OrHash
              ).void
            end
            attr_writer :light

            # The square tile (32x32).
            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Square::Dark::OrHash,
                light:
                  WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Square::Light::OrHash
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
                    WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Square::Dark,
                  light:
                    WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Square::Light
                }
              )
            end
            def to_hash
            end

            class Dark < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Square::Dark,
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
                    WhopSDK::Models::PaymentListResponse::PaymentInstrument::Icons::Square::Light,
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
              WhopSDK::Models::PaymentListResponse::PaymentMethod,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the payment token.
        sig { returns(String) }
        attr_accessor :id

        # The card data associated with the payment method, if its a debit or credit card.
        sig do
          returns(
            T.nilable(WhopSDK::Models::PaymentListResponse::PaymentMethod::Card)
          )
        end
        attr_reader :card

        sig do
          params(
            card:
              T.nilable(
                WhopSDK::Models::PaymentListResponse::PaymentMethod::Card::OrHash
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
                WhopSDK::Models::PaymentListResponse::PaymentMethod::Card::OrHash
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
                  WhopSDK::Models::PaymentListResponse::PaymentMethod::Card
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
                WhopSDK::Models::PaymentListResponse::PaymentMethod::Card,
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

          # The last four digits of the card number. Null if not available.
          sig { returns(T.nilable(String)) }
          attr_accessor :last4

          # The card data associated with the payment method, if its a debit or credit card.
          sig do
            params(
              brand: T.nilable(WhopSDK::CardBrands::OrSymbol),
              exp_month: T.nilable(Integer),
              exp_year: T.nilable(Integer),
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
              WhopSDK::Models::PaymentListResponse::Plan,
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
        # string value.
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
          # string value.
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
              WhopSDK::Models::PaymentListResponse::Product,
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
              WhopSDK::Models::PaymentListResponse::PromoCode,
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

      class Shipment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PaymentListResponse::Shipment,
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
              WhopSDK::Models::PaymentListResponse::ShippingAddress,
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
              WhopSDK::Models::PaymentListResponse::User,
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
    end
  end
end
