# typed: strong

module WhopSDK
  module Models
    class CardAccountBalance < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::CardAccountBalance, WhopSDK::Internal::AnyHash)
        end

      # The available spending power in dollars.
      sig { returns(String) }
      attr_accessor :available_balance

      # The currency of the balance.
      sig { returns(String) }
      attr_accessor :currency

      sig { returns(WhopSDK::CardAccountBalance::Object::TaggedSymbol) }
      attr_accessor :object

      # Spending power in dollars.
      sig { returns(String) }
      attr_accessor :spending_power

      # Balance due in dollars.
      sig { returns(T.nilable(String)) }
      attr_reader :balance_due

      sig { params(balance_due: String).void }
      attr_writer :balance_due

      # Credit limit in dollars.
      sig { returns(T.nilable(String)) }
      attr_reader :credit_limit

      sig { params(credit_limit: String).void }
      attr_writer :credit_limit

      # Whether this card account has any card transactions.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :has_activity

      sig { params(has_activity: T::Boolean).void }
      attr_writer :has_activity

      # Pending charges in dollars.
      sig { returns(T.nilable(String)) }
      attr_reader :pending_charges

      sig { params(pending_charges: String).void }
      attr_writer :pending_charges

      # Dollar amount of in-flight deposits routed to the card that have not yet
      # settled.
      sig { returns(T.nilable(String)) }
      attr_reader :pending_deposit_amount

      sig { params(pending_deposit_amount: String).void }
      attr_writer :pending_deposit_amount

      # Posted charges in dollars.
      sig { returns(T.nilable(String)) }
      attr_reader :posted_charges

      sig { params(posted_charges: String).void }
      attr_writer :posted_charges

      sig do
        params(
          available_balance: String,
          currency: String,
          object: WhopSDK::CardAccountBalance::Object::OrSymbol,
          spending_power: String,
          balance_due: String,
          credit_limit: String,
          has_activity: T::Boolean,
          pending_charges: String,
          pending_deposit_amount: String,
          posted_charges: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The available spending power in dollars.
        available_balance:,
        # The currency of the balance.
        currency:,
        object:,
        # Spending power in dollars.
        spending_power:,
        # Balance due in dollars.
        balance_due: nil,
        # Credit limit in dollars.
        credit_limit: nil,
        # Whether this card account has any card transactions.
        has_activity: nil,
        # Pending charges in dollars.
        pending_charges: nil,
        # Dollar amount of in-flight deposits routed to the card that have not yet
        # settled.
        pending_deposit_amount: nil,
        # Posted charges in dollars.
        posted_charges: nil
      )
      end

      sig do
        override.returns(
          {
            available_balance: String,
            currency: String,
            object: WhopSDK::CardAccountBalance::Object::TaggedSymbol,
            spending_power: String,
            balance_due: String,
            credit_limit: String,
            has_activity: T::Boolean,
            pending_charges: String,
            pending_deposit_amount: String,
            posted_charges: String
          }
        )
      end
      def to_hash
      end

      module Object
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::CardAccountBalance::Object) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CARD_ACCOUNT_BALANCE =
          T.let(
            :card_account_balance,
            WhopSDK::CardAccountBalance::Object::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::CardAccountBalance::Object::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
