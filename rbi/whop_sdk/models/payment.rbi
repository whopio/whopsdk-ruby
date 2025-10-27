# typed: strong

module WhopSDK
  module Models
    class Payment < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Payment, WhopSDK::Internal::AnyHash) }

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
      sig { returns(T.nilable(WhopSDK::Payment::BillingAddress)) }
      attr_reader :billing_address

      sig do
        params(
          billing_address: T.nilable(WhopSDK::Payment::BillingAddress::OrHash)
        ).void
      end
      attr_writer :billing_address

      # The reason why a specific payment was billed
      sig { returns(T.nilable(WhopSDK::Payment::BillingReason::TaggedSymbol)) }
      attr_accessor :billing_reason

      # Possible card brands that a payment token can have
      sig { returns(T.nilable(WhopSDK::Payment::CardBrand::TaggedSymbol)) }
      attr_accessor :card_brand

      # The last 4 digits of the card used to make the payment.
      sig { returns(T.nilable(String)) }
      attr_accessor :card_last4

      # The company for the payment.
      sig { returns(T.nilable(WhopSDK::Payment::Company)) }
      attr_reader :company

      sig { params(company: T.nilable(WhopSDK::Payment::Company::OrHash)).void }
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
      sig { returns(T.nilable(WhopSDK::Payment::Member)) }
      attr_reader :member

      sig { params(member: T.nilable(WhopSDK::Payment::Member::OrHash)).void }
      attr_writer :member

      # The membership attached to this payment.
      sig { returns(T.nilable(WhopSDK::Payment::Membership)) }
      attr_reader :membership

      sig do
        params(membership: T.nilable(WhopSDK::Payment::Membership::OrHash)).void
      end
      attr_writer :membership

      # The datetime the payment was paid
      sig { returns(T.nilable(Time)) }
      attr_accessor :paid_at

      # The different types of payment methods that can be used.
      sig do
        returns(T.nilable(WhopSDK::Payment::PaymentMethodType::TaggedSymbol))
      end
      attr_accessor :payment_method_type

      # The plan attached to this payment.
      sig { returns(T.nilable(WhopSDK::Payment::Plan)) }
      attr_reader :plan

      sig { params(plan: T.nilable(WhopSDK::Payment::Plan::OrHash)).void }
      attr_writer :plan

      # The access pass attached to this payment.
      sig { returns(T.nilable(WhopSDK::Payment::Product)) }
      attr_reader :product

      sig { params(product: T.nilable(WhopSDK::Payment::Product::OrHash)).void }
      attr_writer :product

      # The promo code used for this payment.
      sig { returns(T.nilable(WhopSDK::Payment::PromoCode)) }
      attr_reader :promo_code

      sig do
        params(promo_code: T.nilable(WhopSDK::Payment::PromoCode::OrHash)).void
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
      sig { returns(T.nilable(WhopSDK::Payment::User)) }
      attr_reader :user

      sig { params(user: T.nilable(WhopSDK::Payment::User::OrHash)).void }
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
          billing_address: T.nilable(WhopSDK::Payment::BillingAddress::OrHash),
          billing_reason: T.nilable(WhopSDK::Payment::BillingReason::OrSymbol),
          card_brand: T.nilable(WhopSDK::Payment::CardBrand::OrSymbol),
          card_last4: T.nilable(String),
          company: T.nilable(WhopSDK::Payment::Company::OrHash),
          created_at: Time,
          currency: T.nilable(WhopSDK::Currency::OrSymbol),
          dispute_alerted_at: T.nilable(Time),
          failure_message: T.nilable(String),
          last_payment_attempt: T.nilable(Time),
          member: T.nilable(WhopSDK::Payment::Member::OrHash),
          membership: T.nilable(WhopSDK::Payment::Membership::OrHash),
          paid_at: T.nilable(Time),
          payment_method_type:
            T.nilable(WhopSDK::Payment::PaymentMethodType::OrSymbol),
          plan: T.nilable(WhopSDK::Payment::Plan::OrHash),
          product: T.nilable(WhopSDK::Payment::Product::OrHash),
          promo_code: T.nilable(WhopSDK::Payment::PromoCode::OrHash),
          refundable: T::Boolean,
          refunded_amount: T.nilable(Float),
          refunded_at: T.nilable(Time),
          retryable: T::Boolean,
          status: T.nilable(WhopSDK::ReceiptStatus::OrSymbol),
          substatus: WhopSDK::FriendlyReceiptStatus::OrSymbol,
          subtotal: T.nilable(Float),
          total: T.nilable(Float),
          usd_total: T.nilable(Float),
          user: T.nilable(WhopSDK::Payment::User::OrHash),
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
            billing_address: T.nilable(WhopSDK::Payment::BillingAddress),
            billing_reason:
              T.nilable(WhopSDK::Payment::BillingReason::TaggedSymbol),
            card_brand: T.nilable(WhopSDK::Payment::CardBrand::TaggedSymbol),
            card_last4: T.nilable(String),
            company: T.nilable(WhopSDK::Payment::Company),
            created_at: Time,
            currency: T.nilable(WhopSDK::Currency::TaggedSymbol),
            dispute_alerted_at: T.nilable(Time),
            failure_message: T.nilable(String),
            last_payment_attempt: T.nilable(Time),
            member: T.nilable(WhopSDK::Payment::Member),
            membership: T.nilable(WhopSDK::Payment::Membership),
            paid_at: T.nilable(Time),
            payment_method_type:
              T.nilable(WhopSDK::Payment::PaymentMethodType::TaggedSymbol),
            plan: T.nilable(WhopSDK::Payment::Plan),
            product: T.nilable(WhopSDK::Payment::Product),
            promo_code: T.nilable(WhopSDK::Payment::PromoCode),
            refundable: T::Boolean,
            refunded_amount: T.nilable(Float),
            refunded_at: T.nilable(Time),
            retryable: T::Boolean,
            status: T.nilable(WhopSDK::ReceiptStatus::TaggedSymbol),
            substatus: WhopSDK::FriendlyReceiptStatus::TaggedSymbol,
            subtotal: T.nilable(Float),
            total: T.nilable(Float),
            usd_total: T.nilable(Float),
            user: T.nilable(WhopSDK::Payment::User),
            voidable: T::Boolean
          }
        )
      end
      def to_hash
      end

      class BillingAddress < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Payment::BillingAddress, WhopSDK::Internal::AnyHash)
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
          T.type_alias { T.all(Symbol, WhopSDK::Payment::BillingReason) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUBSCRIPTION_CREATE =
          T.let(
            :subscription_create,
            WhopSDK::Payment::BillingReason::TaggedSymbol
          )
        SUBSCRIPTION_CYCLE =
          T.let(
            :subscription_cycle,
            WhopSDK::Payment::BillingReason::TaggedSymbol
          )
        SUBSCRIPTION_UPDATE =
          T.let(
            :subscription_update,
            WhopSDK::Payment::BillingReason::TaggedSymbol
          )
        ONE_TIME =
          T.let(:one_time, WhopSDK::Payment::BillingReason::TaggedSymbol)
        MANUAL = T.let(:manual, WhopSDK::Payment::BillingReason::TaggedSymbol)
        SUBSCRIPTION =
          T.let(:subscription, WhopSDK::Payment::BillingReason::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::Payment::BillingReason::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Possible card brands that a payment token can have
      module CardBrand
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::Payment::CardBrand) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MASTERCARD =
          T.let(:mastercard, WhopSDK::Payment::CardBrand::TaggedSymbol)
        VISA = T.let(:visa, WhopSDK::Payment::CardBrand::TaggedSymbol)
        AMEX = T.let(:amex, WhopSDK::Payment::CardBrand::TaggedSymbol)
        DISCOVER = T.let(:discover, WhopSDK::Payment::CardBrand::TaggedSymbol)
        UNIONPAY = T.let(:unionpay, WhopSDK::Payment::CardBrand::TaggedSymbol)
        JCB = T.let(:jcb, WhopSDK::Payment::CardBrand::TaggedSymbol)
        DINERS = T.let(:diners, WhopSDK::Payment::CardBrand::TaggedSymbol)
        LINK = T.let(:link, WhopSDK::Payment::CardBrand::TaggedSymbol)
        TROY = T.let(:troy, WhopSDK::Payment::CardBrand::TaggedSymbol)
        VISADANKORT =
          T.let(:visadankort, WhopSDK::Payment::CardBrand::TaggedSymbol)
        VISABANCONTACT =
          T.let(:visabancontact, WhopSDK::Payment::CardBrand::TaggedSymbol)
        CHINA_UNION_PAY =
          T.let(:china_union_pay, WhopSDK::Payment::CardBrand::TaggedSymbol)
        RUPAY = T.let(:rupay, WhopSDK::Payment::CardBrand::TaggedSymbol)
        JCBRUPAY = T.let(:jcbrupay, WhopSDK::Payment::CardBrand::TaggedSymbol)
        ELO = T.let(:elo, WhopSDK::Payment::CardBrand::TaggedSymbol)
        UNKNOWN = T.let(:unknown, WhopSDK::Payment::CardBrand::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::Payment::CardBrand::TaggedSymbol])
        end
        def self.values
        end
      end

      class Company < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Payment::Company, WhopSDK::Internal::AnyHash)
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
            T.any(WhopSDK::Payment::Member, WhopSDK::Internal::AnyHash)
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
            T.any(WhopSDK::Payment::Membership, WhopSDK::Internal::AnyHash)
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
          T.type_alias { T.all(Symbol, WhopSDK::Payment::PaymentMethodType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACSS_DEBIT =
          T.let(:acss_debit, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        AFFIRM =
          T.let(:affirm, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        AFTERPAY_CLEARPAY =
          T.let(
            :afterpay_clearpay,
            WhopSDK::Payment::PaymentMethodType::TaggedSymbol
          )
        ALIPAY =
          T.let(:alipay, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        ALMA = T.let(:alma, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        AMAZON_PAY =
          T.let(:amazon_pay, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        APPLE_PAY =
          T.let(:apple_pay, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        AU_BECS_DEBIT =
          T.let(
            :au_becs_debit,
            WhopSDK::Payment::PaymentMethodType::TaggedSymbol
          )
        BACS_DEBIT =
          T.let(:bacs_debit, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        BANCONTACT =
          T.let(:bancontact, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        BILLIE =
          T.let(:billie, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        BLIK = T.let(:blik, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        BOLETO =
          T.let(:boleto, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        CARD = T.let(:card, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        CASHAPP =
          T.let(:cashapp, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        CRYPTO =
          T.let(:crypto, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        EPS = T.let(:eps, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        FPX = T.let(:fpx, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        GIROPAY =
          T.let(:giropay, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        GOOGLE_PAY =
          T.let(:google_pay, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        GRABPAY =
          T.let(:grabpay, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        IDEAL = T.let(:ideal, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        KAKAO_PAY =
          T.let(:kakao_pay, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        KLARNA =
          T.let(:klarna, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        KONBINI =
          T.let(:konbini, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        KR_CARD =
          T.let(:kr_card, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        LINK = T.let(:link, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        MOBILEPAY =
          T.let(:mobilepay, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        MULTIBANCO =
          T.let(:multibanco, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        NAVER_PAY =
          T.let(:naver_pay, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        NZ_BANK_ACCOUNT =
          T.let(
            :nz_bank_account,
            WhopSDK::Payment::PaymentMethodType::TaggedSymbol
          )
        OXXO = T.let(:oxxo, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        P24 = T.let(:p24, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        PAY_BY_BANK =
          T.let(:pay_by_bank, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        PAYCO = T.let(:payco, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        PAYNOW =
          T.let(:paynow, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        PIX = T.let(:pix, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        PROMPTPAY =
          T.let(:promptpay, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        REVOLUT_PAY =
          T.let(:revolut_pay, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        SAMSUNG_PAY =
          T.let(:samsung_pay, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        SATISPAY =
          T.let(:satispay, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        SEPA_DEBIT =
          T.let(:sepa_debit, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        SOFORT =
          T.let(:sofort, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        SWISH = T.let(:swish, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        TWINT = T.let(:twint, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        US_BANK_ACCOUNT =
          T.let(
            :us_bank_account,
            WhopSDK::Payment::PaymentMethodType::TaggedSymbol
          )
        WECHAT_PAY =
          T.let(:wechat_pay, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        ZIP = T.let(:zip, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        BIZUM = T.let(:bizum, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        CAPCHASE_PAY =
          T.let(
            :capchase_pay,
            WhopSDK::Payment::PaymentMethodType::TaggedSymbol
          )
        KRIYA = T.let(:kriya, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        MONDU = T.let(:mondu, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        NG_WALLET =
          T.let(:ng_wallet, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        PAYPAY =
          T.let(:paypay, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        SEQURA =
          T.let(:sequra, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        SCALAPAY =
          T.let(:scalapay, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        VIPPS = T.let(:vipps, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        CUSTOM =
          T.let(:custom, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        CUSTOMER_BALANCE =
          T.let(
            :customer_balance,
            WhopSDK::Payment::PaymentMethodType::TaggedSymbol
          )
        GOPAY = T.let(:gopay, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        MB_WAY =
          T.let(:mb_way, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        NG_BANK =
          T.let(:ng_bank, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        NG_BANK_TRANSFER =
          T.let(
            :ng_bank_transfer,
            WhopSDK::Payment::PaymentMethodType::TaggedSymbol
          )
        NG_CARD =
          T.let(:ng_card, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        NG_MARKET =
          T.let(:ng_market, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        NG_USSD =
          T.let(:ng_ussd, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        PAYPAL =
          T.let(:paypal, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        PAYTO = T.let(:payto, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        QRIS = T.let(:qris, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        RECHNUNG =
          T.let(:rechnung, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        SOUTH_KOREA_MARKET =
          T.let(
            :south_korea_market,
            WhopSDK::Payment::PaymentMethodType::TaggedSymbol
          )
        KR_MARKET =
          T.let(:kr_market, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        SHOPEEPAY =
          T.let(:shopeepay, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        UPI = T.let(:upi, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        SUNBIT =
          T.let(:sunbit, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        NETBANKING =
          T.let(:netbanking, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        ID_BANK_TRANSFER =
          T.let(
            :id_bank_transfer,
            WhopSDK::Payment::PaymentMethodType::TaggedSymbol
          )
        DEMO_PAY =
          T.let(:demo_pay, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        SHOP_PAY =
          T.let(:shop_pay, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        APPLE = T.let(:apple, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        SEZZLE =
          T.let(:sezzle, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        COINBASE =
          T.let(:coinbase, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        SPLITIT =
          T.let(:splitit, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)
        UNKNOWN =
          T.let(:unknown, WhopSDK::Payment::PaymentMethodType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::Payment::PaymentMethodType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Plan < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Payment::Plan, WhopSDK::Internal::AnyHash)
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
            T.any(WhopSDK::Payment::Product, WhopSDK::Internal::AnyHash)
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
            T.any(WhopSDK::Payment::PromoCode, WhopSDK::Internal::AnyHash)
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
            T.any(WhopSDK::Payment::User, WhopSDK::Internal::AnyHash)
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
