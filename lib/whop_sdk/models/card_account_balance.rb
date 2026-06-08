# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Cards#balance
    class CardAccountBalance < WhopSDK::Internal::Type::BaseModel
      # @!attribute available_balance
      #   The available spending power in dollars.
      #
      #   @return [String]
      required :available_balance, String

      # @!attribute currency
      #   The currency of the balance.
      #
      #   @return [String]
      required :currency, String

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::CardAccountBalance::Object]
      required :object, enum: -> { WhopSDK::CardAccountBalance::Object }

      # @!attribute spending_power
      #   Spending power in dollars.
      #
      #   @return [String]
      required :spending_power, String

      # @!attribute balance_due
      #   Balance due in dollars.
      #
      #   @return [String, nil]
      optional :balance_due, String

      # @!attribute credit_limit
      #   Credit limit in dollars.
      #
      #   @return [String, nil]
      optional :credit_limit, String

      # @!attribute has_activity
      #   Whether this card account has any card transactions.
      #
      #   @return [Boolean, nil]
      optional :has_activity, WhopSDK::Internal::Type::Boolean

      # @!attribute pending_charges
      #   Pending charges in dollars.
      #
      #   @return [String, nil]
      optional :pending_charges, String

      # @!attribute pending_deposit_amount
      #   Dollar amount of in-flight deposits routed to the card that have not yet
      #   settled.
      #
      #   @return [String, nil]
      optional :pending_deposit_amount, String

      # @!attribute posted_charges
      #   Posted charges in dollars.
      #
      #   @return [String, nil]
      optional :posted_charges, String

      # @!method initialize(available_balance:, currency:, object:, spending_power:, balance_due: nil, credit_limit: nil, has_activity: nil, pending_charges: nil, pending_deposit_amount: nil, posted_charges: nil)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CardAccountBalance} for more details.
      #
      #   @param available_balance [String] The available spending power in dollars.
      #
      #   @param currency [String] The currency of the balance.
      #
      #   @param object [Symbol, WhopSDK::Models::CardAccountBalance::Object]
      #
      #   @param spending_power [String] Spending power in dollars.
      #
      #   @param balance_due [String] Balance due in dollars.
      #
      #   @param credit_limit [String] Credit limit in dollars.
      #
      #   @param has_activity [Boolean] Whether this card account has any card transactions.
      #
      #   @param pending_charges [String] Pending charges in dollars.
      #
      #   @param pending_deposit_amount [String] Dollar amount of in-flight deposits routed to the card that have not yet settled
      #
      #   @param posted_charges [String] Posted charges in dollars.

      # @see WhopSDK::Models::CardAccountBalance#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        CARD_ACCOUNT_BALANCE = :card_account_balance

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
