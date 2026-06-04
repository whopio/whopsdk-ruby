# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::LedgerLines#list
    class LedgerLine < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier of the ledger line.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_identifier
      #   A human-readable identifier derived from the account path (e.g. a release date
      #   or 'available').
      #
      #   @return [String, nil]
      required :account_identifier, String, nil?: true

      # @!attribute amount
      #   The amount of the ledger line in the currency's smallest precision units.
      #
      #   @return [String]
      required :amount, String

      # @!attribute currency
      #   Currency information including code and precision.
      #
      #   @return [WhopSDK::Models::LedgerLine::Currency]
      required :currency, -> { WhopSDK::LedgerLine::Currency }

      # @!attribute line_category
      #   The semantic transaction category of the line (e.g. 'withdrawal',
      #   'payment_refund'). Matches the line_category filter.
      #
      #   @return [String, nil]
      required :line_category, String, nil?: true

      # @!attribute posted_at
      #   The timestamp when the ledger line was posted.
      #
      #   @return [Time, nil]
      required :posted_at, Time, nil?: true

      # @!attribute source_id
      #   The tag of the resource this line originated from (e.g. a payment, withdrawal,
      #   or transfer), if available.
      #
      #   @return [String, nil]
      required :source_id, String, nil?: true

      # @!method initialize(id:, account_identifier:, amount:, currency:, line_category:, posted_at:, source_id:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::LedgerLine} for more details.
      #
      #   A ledger line represents a single debit or credit entry on a ledger account.
      #
      #   @param id [String] The unique identifier of the ledger line.
      #
      #   @param account_identifier [String, nil] A human-readable identifier derived from the account path (e.g. a release date o
      #
      #   @param amount [String] The amount of the ledger line in the currency's smallest precision units.
      #
      #   @param currency [WhopSDK::Models::LedgerLine::Currency] Currency information including code and precision.
      #
      #   @param line_category [String, nil] The semantic transaction category of the line (e.g. 'withdrawal', 'payment_refun
      #
      #   @param posted_at [Time, nil] The timestamp when the ledger line was posted.
      #
      #   @param source_id [String, nil] The tag of the resource this line originated from (e.g. a payment, withdrawal, o

      # @see WhopSDK::Models::LedgerLine#currency
      class Currency < WhopSDK::Internal::Type::BaseModel
        # @!attribute code
        #   The currency code (e.g. 'usd', 'eur').
        #
        #   @return [String, nil]
        required :code, String, nil?: true

        # @!attribute precision
        #   The precision factor for this currency (e.g. 100000000 for USD, 1 for
        #   zero-decimal currencies).
        #
        #   @return [String]
        required :precision, String

        # @!method initialize(code:, precision:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::LedgerLine::Currency} for more details.
        #
        #   Currency information including code and precision.
        #
        #   @param code [String, nil] The currency code (e.g. 'usd', 'eur').
        #
        #   @param precision [String] The precision factor for this currency (e.g. 100000000 for USD, 1 for zero-decim
      end
    end
  end
end
