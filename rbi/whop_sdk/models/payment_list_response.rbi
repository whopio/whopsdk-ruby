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

      # The payment ID
      sig { returns(String) }
      attr_accessor :id

      # How much the payment is for after fees
      sig { returns(Float) }
      attr_accessor :amount_after_fees

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
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::PaymentListResponse::BillingReason::TaggedSymbol
          )
        )
      end
      attr_accessor :billing_reason

      # Possible card brands that a payment token can have
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::PaymentListResponse::CardBrand::TaggedSymbol
          )
        )
      end
      attr_accessor :card_brand

      # The last 4 digits of the card used to make the payment.
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

      # The datetime the payment was created
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

      # The datetime the payment was paid
      sig { returns(T.nilable(Time)) }
      attr_accessor :paid_at

      # The different types of payment methods that can be used.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        )
      end
      attr_accessor :payment_method_type

      # The plan attached to this payment.
      sig { returns(T.nilable(WhopSDK::Models::PaymentListResponse::Plan)) }
      attr_reader :plan

      sig do
        params(
          plan: T.nilable(WhopSDK::Models::PaymentListResponse::Plan::OrHash)
        ).void
      end
      attr_writer :plan

      # The access pass attached to this payment.
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

      # An object representing a receipt for a membership.
      sig do
        params(
          id: String,
          amount_after_fees: Float,
          auto_refunded: T::Boolean,
          billing_address:
            T.nilable(
              WhopSDK::Models::PaymentListResponse::BillingAddress::OrHash
            ),
          billing_reason:
            T.nilable(
              WhopSDK::Models::PaymentListResponse::BillingReason::OrSymbol
            ),
          card_brand:
            T.nilable(
              WhopSDK::Models::PaymentListResponse::CardBrand::OrSymbol
            ),
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
          paid_at: T.nilable(Time),
          payment_method_type:
            T.nilable(
              WhopSDK::Models::PaymentListResponse::PaymentMethodType::OrSymbol
            ),
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
          total: T.nilable(Float),
          usd_total: T.nilable(Float),
          user: T.nilable(WhopSDK::Models::PaymentListResponse::User::OrHash),
          voidable: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # The payment ID
        id:,
        # How much the payment is for after fees
        amount_after_fees:,
        # Whether this payment was auto refunded or not
        auto_refunded:,
        # The address of the user who made the payment.
        billing_address:,
        # The reason why a specific payment was billed
        billing_reason:,
        # Possible card brands that a payment token can have
        card_brand:,
        # The last 4 digits of the card used to make the payment.
        card_last4:,
        # The company for the payment.
        company:,
        # The datetime the payment was created
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
        # The datetime the payment was paid
        paid_at:,
        # The different types of payment methods that can be used.
        payment_method_type:,
        # The plan attached to this payment.
        plan:,
        # The access pass attached to this payment.
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
            auto_refunded: T::Boolean,
            billing_address:
              T.nilable(WhopSDK::Models::PaymentListResponse::BillingAddress),
            billing_reason:
              T.nilable(
                WhopSDK::Models::PaymentListResponse::BillingReason::TaggedSymbol
              ),
            card_brand:
              T.nilable(
                WhopSDK::Models::PaymentListResponse::CardBrand::TaggedSymbol
              ),
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
            paid_at: T.nilable(Time),
            payment_method_type:
              T.nilable(
                WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
              ),
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
            total: T.nilable(Float),
            usd_total: T.nilable(Float),
            user: T.nilable(WhopSDK::Models::PaymentListResponse::User),
            voidable: T::Boolean
          }
        )
      end
      def to_hash
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

      # The reason why a specific payment was billed
      module BillingReason
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::PaymentListResponse::BillingReason)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUBSCRIPTION_CREATE =
          T.let(
            :subscription_create,
            WhopSDK::Models::PaymentListResponse::BillingReason::TaggedSymbol
          )
        SUBSCRIPTION_CYCLE =
          T.let(
            :subscription_cycle,
            WhopSDK::Models::PaymentListResponse::BillingReason::TaggedSymbol
          )
        SUBSCRIPTION_UPDATE =
          T.let(
            :subscription_update,
            WhopSDK::Models::PaymentListResponse::BillingReason::TaggedSymbol
          )
        ONE_TIME =
          T.let(
            :one_time,
            WhopSDK::Models::PaymentListResponse::BillingReason::TaggedSymbol
          )
        MANUAL =
          T.let(
            :manual,
            WhopSDK::Models::PaymentListResponse::BillingReason::TaggedSymbol
          )
        SUBSCRIPTION =
          T.let(
            :subscription,
            WhopSDK::Models::PaymentListResponse::BillingReason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::PaymentListResponse::BillingReason::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Possible card brands that a payment token can have
      module CardBrand
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::PaymentListResponse::CardBrand)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MASTERCARD =
          T.let(
            :mastercard,
            WhopSDK::Models::PaymentListResponse::CardBrand::TaggedSymbol
          )
        VISA =
          T.let(
            :visa,
            WhopSDK::Models::PaymentListResponse::CardBrand::TaggedSymbol
          )
        AMEX =
          T.let(
            :amex,
            WhopSDK::Models::PaymentListResponse::CardBrand::TaggedSymbol
          )
        DISCOVER =
          T.let(
            :discover,
            WhopSDK::Models::PaymentListResponse::CardBrand::TaggedSymbol
          )
        UNIONPAY =
          T.let(
            :unionpay,
            WhopSDK::Models::PaymentListResponse::CardBrand::TaggedSymbol
          )
        JCB =
          T.let(
            :jcb,
            WhopSDK::Models::PaymentListResponse::CardBrand::TaggedSymbol
          )
        DINERS =
          T.let(
            :diners,
            WhopSDK::Models::PaymentListResponse::CardBrand::TaggedSymbol
          )
        LINK =
          T.let(
            :link,
            WhopSDK::Models::PaymentListResponse::CardBrand::TaggedSymbol
          )
        TROY =
          T.let(
            :troy,
            WhopSDK::Models::PaymentListResponse::CardBrand::TaggedSymbol
          )
        VISADANKORT =
          T.let(
            :visadankort,
            WhopSDK::Models::PaymentListResponse::CardBrand::TaggedSymbol
          )
        VISABANCONTACT =
          T.let(
            :visabancontact,
            WhopSDK::Models::PaymentListResponse::CardBrand::TaggedSymbol
          )
        CHINA_UNION_PAY =
          T.let(
            :china_union_pay,
            WhopSDK::Models::PaymentListResponse::CardBrand::TaggedSymbol
          )
        RUPAY =
          T.let(
            :rupay,
            WhopSDK::Models::PaymentListResponse::CardBrand::TaggedSymbol
          )
        JCBRUPAY =
          T.let(
            :jcbrupay,
            WhopSDK::Models::PaymentListResponse::CardBrand::TaggedSymbol
          )
        ELO =
          T.let(
            :elo,
            WhopSDK::Models::PaymentListResponse::CardBrand::TaggedSymbol
          )
        UNKNOWN =
          T.let(
            :unknown,
            WhopSDK::Models::PaymentListResponse::CardBrand::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::PaymentListResponse::CardBrand::TaggedSymbol
            ]
          )
        end
        def self.values
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

        # The ID of the company
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
          # The ID of the company
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

        # The ID of the member
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
          # The ID of the member
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

        # The internal ID of the membership.
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
          # The internal ID of the membership.
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

      # The different types of payment methods that can be used.
      module PaymentMethodType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              WhopSDK::Models::PaymentListResponse::PaymentMethodType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACSS_DEBIT =
          T.let(
            :acss_debit,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        AFFIRM =
          T.let(
            :affirm,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        AFTERPAY_CLEARPAY =
          T.let(
            :afterpay_clearpay,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        ALIPAY =
          T.let(
            :alipay,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        ALMA =
          T.let(
            :alma,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        AMAZON_PAY =
          T.let(
            :amazon_pay,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        APPLE_PAY =
          T.let(
            :apple_pay,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        AU_BECS_DEBIT =
          T.let(
            :au_becs_debit,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        BACS_DEBIT =
          T.let(
            :bacs_debit,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        BANCONTACT =
          T.let(
            :bancontact,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        BILLIE =
          T.let(
            :billie,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        BLIK =
          T.let(
            :blik,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        BOLETO =
          T.let(
            :boleto,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        CARD =
          T.let(
            :card,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        CASHAPP =
          T.let(
            :cashapp,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        CRYPTO =
          T.let(
            :crypto,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        EPS =
          T.let(
            :eps,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        FPX =
          T.let(
            :fpx,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        GIROPAY =
          T.let(
            :giropay,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        GOOGLE_PAY =
          T.let(
            :google_pay,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        GRABPAY =
          T.let(
            :grabpay,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        IDEAL =
          T.let(
            :ideal,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        KAKAO_PAY =
          T.let(
            :kakao_pay,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        KLARNA =
          T.let(
            :klarna,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        KONBINI =
          T.let(
            :konbini,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        KR_CARD =
          T.let(
            :kr_card,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        LINK =
          T.let(
            :link,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        MOBILEPAY =
          T.let(
            :mobilepay,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        MULTIBANCO =
          T.let(
            :multibanco,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        NAVER_PAY =
          T.let(
            :naver_pay,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        NZ_BANK_ACCOUNT =
          T.let(
            :nz_bank_account,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        OXXO =
          T.let(
            :oxxo,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        P24 =
          T.let(
            :p24,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        PAY_BY_BANK =
          T.let(
            :pay_by_bank,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        PAYCO =
          T.let(
            :payco,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        PAYNOW =
          T.let(
            :paynow,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        PIX =
          T.let(
            :pix,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        PROMPTPAY =
          T.let(
            :promptpay,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        REVOLUT_PAY =
          T.let(
            :revolut_pay,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        SAMSUNG_PAY =
          T.let(
            :samsung_pay,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        SATISPAY =
          T.let(
            :satispay,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        SEPA_DEBIT =
          T.let(
            :sepa_debit,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        SOFORT =
          T.let(
            :sofort,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        SWISH =
          T.let(
            :swish,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        TWINT =
          T.let(
            :twint,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        US_BANK_ACCOUNT =
          T.let(
            :us_bank_account,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        WECHAT_PAY =
          T.let(
            :wechat_pay,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        ZIP =
          T.let(
            :zip,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        BIZUM =
          T.let(
            :bizum,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        CAPCHASE_PAY =
          T.let(
            :capchase_pay,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        KRIYA =
          T.let(
            :kriya,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        MONDU =
          T.let(
            :mondu,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        NG_WALLET =
          T.let(
            :ng_wallet,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        PAYPAY =
          T.let(
            :paypay,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        SEQURA =
          T.let(
            :sequra,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        SCALAPAY =
          T.let(
            :scalapay,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        VIPPS =
          T.let(
            :vipps,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        CUSTOM =
          T.let(
            :custom,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        CUSTOMER_BALANCE =
          T.let(
            :customer_balance,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        GOPAY =
          T.let(
            :gopay,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        MB_WAY =
          T.let(
            :mb_way,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        NG_BANK =
          T.let(
            :ng_bank,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        NG_BANK_TRANSFER =
          T.let(
            :ng_bank_transfer,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        NG_CARD =
          T.let(
            :ng_card,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        NG_MARKET =
          T.let(
            :ng_market,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        NG_USSD =
          T.let(
            :ng_ussd,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        PAYPAL =
          T.let(
            :paypal,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        PAYTO =
          T.let(
            :payto,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        QRIS =
          T.let(
            :qris,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        RECHNUNG =
          T.let(
            :rechnung,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        SOUTH_KOREA_MARKET =
          T.let(
            :south_korea_market,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        KR_MARKET =
          T.let(
            :kr_market,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        SHOPEEPAY =
          T.let(
            :shopeepay,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        UPI =
          T.let(
            :upi,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        SUNBIT =
          T.let(
            :sunbit,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        NETBANKING =
          T.let(
            :netbanking,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        ID_BANK_TRANSFER =
          T.let(
            :id_bank_transfer,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        DEMO_PAY =
          T.let(
            :demo_pay,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )
        SHOP_PAY =
          T.let(
            :shop_pay,
            WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::PaymentListResponse::PaymentMethodType::TaggedSymbol
            ]
          )
        end
        def self.values
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

        # The internal ID of the plan.
        sig { returns(String) }
        attr_accessor :id

        # The plan attached to this payment.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The internal ID of the plan.
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

        # The internal ID of the public product.
        sig { returns(String) }
        attr_accessor :id

        # The route of the product.
        sig { returns(String) }
        attr_accessor :route

        # The title of the product. Use for Whop 4.0.
        sig { returns(String) }
        attr_accessor :title

        # The access pass attached to this payment.
        sig do
          params(id: String, route: String, title: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The internal ID of the public product.
          id:,
          # The route of the product.
          route:,
          # The title of the product. Use for Whop 4.0.
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

        # The ID of the promo.
        sig { returns(String) }
        attr_accessor :id

        # The amount off (% or flat amount) for the promo.
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
          # The ID of the promo.
          id:,
          # The amount off (% or flat amount) for the promo.
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

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PaymentListResponse::User,
              WhopSDK::Internal::AnyHash
            )
          end

        # The internal ID of the user.
        sig { returns(String) }
        attr_accessor :id

        # The email of the user
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # The name of the user from their Whop account.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The username of the user from their Whop account.
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
          # The internal ID of the user.
          id:,
          # The email of the user
          email:,
          # The name of the user from their Whop account.
          name:,
          # The username of the user from their Whop account.
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
