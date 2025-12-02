# typed: strong

module WhopSDK
  module Models
    class PaymentTokenListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::PaymentTokenListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The ID of the payment token
      sig { returns(String) }
      attr_accessor :id

      # The card data associated with the payment token, if its a debit or credit card
      # token.
      sig do
        returns(T.nilable(WhopSDK::Models::PaymentTokenListResponse::Card))
      end
      attr_reader :card

      sig do
        params(
          card:
            T.nilable(WhopSDK::Models::PaymentTokenListResponse::Card::OrHash)
        ).void
      end
      attr_writer :card

      # The date and time the payment token was created
      sig { returns(Time) }
      attr_accessor :created_at

      # The payment method type of the payment token
      sig { returns(WhopSDK::PaymentMethodTypes::TaggedSymbol) }
      attr_accessor :payment_method_type

      # A payment token used to process payments.
      sig do
        params(
          id: String,
          card:
            T.nilable(WhopSDK::Models::PaymentTokenListResponse::Card::OrHash),
          created_at: Time,
          payment_method_type: WhopSDK::PaymentMethodTypes::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the payment token
        id:,
        # The card data associated with the payment token, if its a debit or credit card
        # token.
        card:,
        # The date and time the payment token was created
        created_at:,
        # The payment method type of the payment token
        payment_method_type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            card: T.nilable(WhopSDK::Models::PaymentTokenListResponse::Card),
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
              WhopSDK::Models::PaymentTokenListResponse::Card,
              WhopSDK::Internal::AnyHash
            )
          end

        # Possible card brands that a payment token can have
        sig { returns(T.nilable(WhopSDK::CardBrands::TaggedSymbol)) }
        attr_accessor :brand

        # Card expiration month, like 03 for March.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :exp_month

        # Card expiration year, like 27 for 2027.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :exp_year

        # Last four digits of the card.
        sig { returns(T.nilable(String)) }
        attr_accessor :last4

        # The card data associated with the payment token, if its a debit or credit card
        # token.
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
          # Card expiration month, like 03 for March.
          exp_month:,
          # Card expiration year, like 27 for 2027.
          exp_year:,
          # Last four digits of the card.
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
  end
end
