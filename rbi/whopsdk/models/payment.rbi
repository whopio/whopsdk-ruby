# typed: strong

module Whopsdk
  module Models
    class Payment < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Whopsdk::Payment, Whopsdk::Internal::AnyHash) }

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
      sig { returns(T.nilable(Whopsdk::Payment::BillingAddress)) }
      attr_reader :billing_address

      sig do
        params(
          billing_address: T.nilable(Whopsdk::Payment::BillingAddress::OrHash)
        ).void
      end
      attr_writer :billing_address

      # The billing reason
      sig { returns(T.nilable(String)) }
      attr_accessor :billing_reason

      # The type of card used as the payment method.
      sig { returns(T.nilable(String)) }
      attr_accessor :card_brand

      # The last 4 digits of the card used to make the payment.
      sig { returns(T.nilable(String)) }
      attr_accessor :card_last4

      # The company for the payment.
      sig { returns(T.nilable(Whopsdk::Payment::Company)) }
      attr_reader :company

      sig { params(company: T.nilable(Whopsdk::Payment::Company::OrHash)).void }
      attr_writer :company

      # The datetime the payment was created
      sig { returns(Time) }
      attr_accessor :created_at

      # The available currencies on the platform
      sig { returns(T.nilable(Whopsdk::Currency::TaggedSymbol)) }
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
      sig { returns(T.nilable(Whopsdk::Payment::Member)) }
      attr_reader :member

      sig { params(member: T.nilable(Whopsdk::Payment::Member::OrHash)).void }
      attr_writer :member

      # The membership attached to this payment.
      sig { returns(T.nilable(Whopsdk::Payment::Membership)) }
      attr_reader :membership

      sig do
        params(membership: T.nilable(Whopsdk::Payment::Membership::OrHash)).void
      end
      attr_writer :membership

      # The datetime the payment was paid
      sig { returns(T.nilable(Time)) }
      attr_accessor :paid_at

      # Returns the type of payment method used for the payment, if available. Ex.
      # klarna, affirm, card, cashapp
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_type

      # The plan attached to this payment.
      sig { returns(T.nilable(Whopsdk::Payment::Plan)) }
      attr_reader :plan

      sig { params(plan: T.nilable(Whopsdk::Payment::Plan::OrHash)).void }
      attr_writer :plan

      # The access pass attached to this payment.
      sig { returns(T.nilable(Whopsdk::Payment::Product)) }
      attr_reader :product

      sig { params(product: T.nilable(Whopsdk::Payment::Product::OrHash)).void }
      attr_writer :product

      # The promo code used for this payment.
      sig { returns(T.nilable(Whopsdk::Payment::PromoCode)) }
      attr_reader :promo_code

      sig do
        params(promo_code: T.nilable(Whopsdk::Payment::PromoCode::OrHash)).void
      end
      attr_writer :promo_code

      # Whether the payment can be refunded.
      sig { returns(T::Boolean) }
      attr_accessor :refundable

      # The payment refund amount(if applicable).
      sig { returns(T.nilable(Float)) }
      attr_accessor :refunded_amount

      # When the payment was refunded (if applicable).
      sig { returns(T.nilable(Time)) }
      attr_accessor :refunded_at

      # Whether the payment can be retried.
      sig { returns(T::Boolean) }
      attr_accessor :retryable

      # The status of a receipt
      sig { returns(T.nilable(Whopsdk::ReceiptStatus::TaggedSymbol)) }
      attr_accessor :status

      # The friendly status of the payment.
      sig { returns(Whopsdk::FriendlyReceiptStatus::TaggedSymbol) }
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
      sig { returns(T.nilable(Whopsdk::Payment::User)) }
      attr_reader :user

      sig { params(user: T.nilable(Whopsdk::Payment::User::OrHash)).void }
      attr_writer :user

      # Whether the payment can be voided.
      sig { returns(T::Boolean) }
      attr_accessor :voidable

      # An object representing a receipt for a membership.
      sig do
        params(
          id: String,
          amount_after_fees: Float,
          auto_refunded: T::Boolean,
          billing_address: T.nilable(Whopsdk::Payment::BillingAddress::OrHash),
          billing_reason: T.nilable(String),
          card_brand: T.nilable(String),
          card_last4: T.nilable(String),
          company: T.nilable(Whopsdk::Payment::Company::OrHash),
          created_at: Time,
          currency: T.nilable(Whopsdk::Currency::OrSymbol),
          dispute_alerted_at: T.nilable(Time),
          failure_message: T.nilable(String),
          last_payment_attempt: T.nilable(Time),
          member: T.nilable(Whopsdk::Payment::Member::OrHash),
          membership: T.nilable(Whopsdk::Payment::Membership::OrHash),
          paid_at: T.nilable(Time),
          payment_method_type: T.nilable(String),
          plan: T.nilable(Whopsdk::Payment::Plan::OrHash),
          product: T.nilable(Whopsdk::Payment::Product::OrHash),
          promo_code: T.nilable(Whopsdk::Payment::PromoCode::OrHash),
          refundable: T::Boolean,
          refunded_amount: T.nilable(Float),
          refunded_at: T.nilable(Time),
          retryable: T::Boolean,
          status: T.nilable(Whopsdk::ReceiptStatus::OrSymbol),
          substatus: Whopsdk::FriendlyReceiptStatus::OrSymbol,
          subtotal: T.nilable(Float),
          total: T.nilable(Float),
          usd_total: T.nilable(Float),
          user: T.nilable(Whopsdk::Payment::User::OrHash),
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
        # The billing reason
        billing_reason:,
        # The type of card used as the payment method.
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
        # Returns the type of payment method used for the payment, if available. Ex.
        # klarna, affirm, card, cashapp
        payment_method_type:,
        # The plan attached to this payment.
        plan:,
        # The access pass attached to this payment.
        product:,
        # The promo code used for this payment.
        promo_code:,
        # Whether the payment can be refunded.
        refundable:,
        # The payment refund amount(if applicable).
        refunded_amount:,
        # When the payment was refunded (if applicable).
        refunded_at:,
        # Whether the payment can be retried.
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
        # Whether the payment can be voided.
        voidable:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount_after_fees: Float,
            auto_refunded: T::Boolean,
            billing_address: T.nilable(Whopsdk::Payment::BillingAddress),
            billing_reason: T.nilable(String),
            card_brand: T.nilable(String),
            card_last4: T.nilable(String),
            company: T.nilable(Whopsdk::Payment::Company),
            created_at: Time,
            currency: T.nilable(Whopsdk::Currency::TaggedSymbol),
            dispute_alerted_at: T.nilable(Time),
            failure_message: T.nilable(String),
            last_payment_attempt: T.nilable(Time),
            member: T.nilable(Whopsdk::Payment::Member),
            membership: T.nilable(Whopsdk::Payment::Membership),
            paid_at: T.nilable(Time),
            payment_method_type: T.nilable(String),
            plan: T.nilable(Whopsdk::Payment::Plan),
            product: T.nilable(Whopsdk::Payment::Product),
            promo_code: T.nilable(Whopsdk::Payment::PromoCode),
            refundable: T::Boolean,
            refunded_amount: T.nilable(Float),
            refunded_at: T.nilable(Time),
            retryable: T::Boolean,
            status: T.nilable(Whopsdk::ReceiptStatus::TaggedSymbol),
            substatus: Whopsdk::FriendlyReceiptStatus::TaggedSymbol,
            subtotal: T.nilable(Float),
            total: T.nilable(Float),
            usd_total: T.nilable(Float),
            user: T.nilable(Whopsdk::Payment::User),
            voidable: T::Boolean
          }
        )
      end
      def to_hash
      end

      class BillingAddress < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Payment::BillingAddress, Whopsdk::Internal::AnyHash)
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

      class Company < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Payment::Company, Whopsdk::Internal::AnyHash)
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

      class Member < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Payment::Member, Whopsdk::Internal::AnyHash)
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

      class Membership < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Payment::Membership, Whopsdk::Internal::AnyHash)
          end

        # The internal ID of the membership.
        sig { returns(String) }
        attr_accessor :id

        # The state of the membership.
        sig { returns(Whopsdk::MembershipStatus::TaggedSymbol) }
        attr_accessor :status

        # The membership attached to this payment.
        sig do
          params(
            id: String,
            status: Whopsdk::MembershipStatus::OrSymbol
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
            { id: String, status: Whopsdk::MembershipStatus::TaggedSymbol }
          )
        end
        def to_hash
        end
      end

      class Plan < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Payment::Plan, Whopsdk::Internal::AnyHash)
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

      class Product < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Payment::Product, Whopsdk::Internal::AnyHash)
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

      class PromoCode < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Payment::PromoCode, Whopsdk::Internal::AnyHash)
          end

        # The ID of the promo.
        sig { returns(String) }
        attr_accessor :id

        # The amount off (% or flat amount) for the promo.
        sig { returns(Float) }
        attr_accessor :amount_off

        # The monetary currency of the promo code.
        sig { returns(Whopsdk::Currency::TaggedSymbol) }
        attr_accessor :base_currency

        # The specific code used to apply the promo at checkout.
        sig { returns(T.nilable(String)) }
        attr_accessor :code

        # The number of billing cycles the promo is applied for.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :number_of_intervals

        # The type (% or flat amount) of the promo.
        sig { returns(Whopsdk::PromoType::TaggedSymbol) }
        attr_accessor :promo_type

        # The promo code used for this payment.
        sig do
          params(
            id: String,
            amount_off: Float,
            base_currency: Whopsdk::Currency::OrSymbol,
            code: T.nilable(String),
            number_of_intervals: T.nilable(Integer),
            promo_type: Whopsdk::PromoType::OrSymbol
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
          # The number of billing cycles the promo is applied for.
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
              base_currency: Whopsdk::Currency::TaggedSymbol,
              code: T.nilable(String),
              number_of_intervals: T.nilable(Integer),
              promo_type: Whopsdk::PromoType::TaggedSymbol
            }
          )
        end
        def to_hash
        end
      end

      class User < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Payment::User, Whopsdk::Internal::AnyHash)
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
