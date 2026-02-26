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

      # The available currencies on the platform
      sig { returns(T.nilable(WhopSDK::Currency::TaggedSymbol)) }
      attr_accessor :currency

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

      # The time of the next schedule payment retry.
      sig { returns(T.nilable(Time)) }
      attr_accessor :next_payment_attempt

      # The time at which this payment was successfully collected. Null if the payment
      # has not yet succeeded. As a Unix timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :paid_at

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
      # retry-eligible states (`active`, `trialing`, `completed`, or `past_due`);
      # otherwise false. Used to decide if Whop can attempt the charge again.
      sig { returns(T::Boolean) }
      attr_accessor :retryable

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
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::PaymentListResponse::TaxBehavior::TaggedSymbol
          )
        )
      end
      attr_accessor :tax_behavior

      # The total to show to the creator (excluding buyer fees).
      sig { returns(T.nilable(Float)) }
      attr_accessor :total

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
          company:
            T.nilable(WhopSDK::Models::PaymentListResponse::Company::OrHash),
          created_at: Time,
          currency: T.nilable(WhopSDK::Currency::OrSymbol),
          dispute_alerted_at: T.nilable(Time),
          failure_message: T.nilable(String),
          last_payment_attempt: T.nilable(Time),
          member:
            T.nilable(WhopSDK::Models::PaymentListResponse::Member::OrHash),
          membership:
            T.nilable(WhopSDK::Models::PaymentListResponse::Membership::OrHash),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          next_payment_attempt: T.nilable(Time),
          paid_at: T.nilable(Time),
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
          status: T.nilable(WhopSDK::ReceiptStatus::OrSymbol),
          substatus: WhopSDK::FriendlyReceiptStatus::OrSymbol,
          subtotal: T.nilable(Float),
          tax_amount: T.nilable(Float),
          tax_behavior:
            T.nilable(
              WhopSDK::Models::PaymentListResponse::TaxBehavior::OrSymbol
            ),
          total: T.nilable(Float),
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
        # The company for the payment.
        company:,
        # The datetime the payment was created.
        created_at:,
        # The available currencies on the platform
        currency:,
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
        # The time of the next schedule payment retry.
        next_payment_attempt:,
        # The time at which this payment was successfully collected. Null if the payment
        # has not yet succeeded. As a Unix timestamp.
        paid_at:,
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
        # retry-eligible states (`active`, `trialing`, `completed`, or `past_due`);
        # otherwise false. Used to decide if Whop can attempt the charge again.
        retryable:,
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
            company: T.nilable(WhopSDK::Models::PaymentListResponse::Company),
            created_at: Time,
            currency: T.nilable(WhopSDK::Currency::TaggedSymbol),
            dispute_alerted_at: T.nilable(Time),
            failure_message: T.nilable(String),
            last_payment_attempt: T.nilable(Time),
            member: T.nilable(WhopSDK::Models::PaymentListResponse::Member),
            membership:
              T.nilable(WhopSDK::Models::PaymentListResponse::Membership),
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            next_payment_attempt: T.nilable(Time),
            paid_at: T.nilable(Time),
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
            status: T.nilable(WhopSDK::ReceiptStatus::TaggedSymbol),
            substatus: WhopSDK::FriendlyReceiptStatus::TaggedSymbol,
            subtotal: T.nilable(Float),
            tax_amount: T.nilable(Float),
            tax_behavior:
              T.nilable(
                WhopSDK::Models::PaymentListResponse::TaxBehavior::TaggedSymbol
              ),
            total: T.nilable(Float),
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

        # The state of the membership.
        sig { returns(WhopSDK::MembershipStatus::TaggedSymbol) }
        attr_accessor :status

        # The membership attached to this payment.
        sig do
          params(
            id: String,
            status: WhopSDK::MembershipStatus::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the membership.
          id:,
          # The state of the membership.
          status:
        )
        end

        sig do
          override.returns(
            { id: String, status: WhopSDK::MembershipStatus::TaggedSymbol }
          )
        end
        def to_hash
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

        # The plan attached to this payment.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the plan.
          id:
        )
        end

        sig { override.returns({ id: String }) }
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

        # The URL slug used in the product's public link (e.g., 'my-product' in
        # whop.com/company/my-product).
        sig { returns(String) }
        attr_accessor :route

        # The display name of the product shown to customers on the product page and in
        # search results.
        sig { returns(String) }
        attr_accessor :title

        # The product this payment was made for
        sig do
          params(id: String, route: String, title: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the product.
          id:,
          # The URL slug used in the product's public link (e.g., 'my-product' in
          # whop.com/company/my-product).
          route:,
          # The display name of the product shown to customers on the product page and in
          # search results.
          title:
        )
        end

        sig { override.returns({ id: String, route: String, title: String }) }
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

      # The type of tax inclusivity applied to the receipt, for determining whether the
      # tax is included in the final price, or paid on top.
      module TaxBehavior
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::PaymentListResponse::TaxBehavior)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXCLUSIVE =
          T.let(
            :exclusive,
            WhopSDK::Models::PaymentListResponse::TaxBehavior::TaggedSymbol
          )
        INCLUSIVE =
          T.let(
            :inclusive,
            WhopSDK::Models::PaymentListResponse::TaxBehavior::TaggedSymbol
          )
        UNSPECIFIED =
          T.let(
            :unspecified,
            WhopSDK::Models::PaymentListResponse::TaxBehavior::TaggedSymbol
          )
        UNABLE_TO_COLLECT =
          T.let(
            :unable_to_collect,
            WhopSDK::Models::PaymentListResponse::TaxBehavior::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::PaymentListResponse::TaxBehavior::TaggedSymbol
            ]
          )
        end
        def self.values
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
