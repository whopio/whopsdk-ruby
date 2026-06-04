# typed: strong

module WhopSDK
  module Models
    class LedgerLine < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::LedgerLine, WhopSDK::Internal::AnyHash) }

      # The unique identifier of the ledger line.
      sig { returns(String) }
      attr_accessor :id

      # A human-readable identifier derived from the account path (e.g. a release date
      # or 'available').
      sig { returns(T.nilable(String)) }
      attr_accessor :account_identifier

      # The amount of the ledger line in the currency's smallest precision units.
      sig { returns(String) }
      attr_accessor :amount

      # Currency information including code and precision.
      sig { returns(WhopSDK::LedgerLine::Currency) }
      attr_reader :currency

      sig { params(currency: WhopSDK::LedgerLine::Currency::OrHash).void }
      attr_writer :currency

      # The semantic transaction category of the line (e.g. 'payment_payout', 'refund').
      # Matches the line_category filter.
      sig { returns(T.nilable(String)) }
      attr_accessor :line_category

      # The timestamp when the ledger line was posted.
      sig { returns(T.nilable(Time)) }
      attr_accessor :posted_at

      # The tag of the resource this line originated from (e.g. a receipt or transfer),
      # if available.
      sig { returns(T.nilable(String)) }
      attr_accessor :source_id

      # A ledger line represents a single debit or credit entry on a ledger account.
      sig do
        params(
          id: String,
          account_identifier: T.nilable(String),
          amount: String,
          currency: WhopSDK::LedgerLine::Currency::OrHash,
          line_category: T.nilable(String),
          posted_at: T.nilable(Time),
          source_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the ledger line.
        id:,
        # A human-readable identifier derived from the account path (e.g. a release date
        # or 'available').
        account_identifier:,
        # The amount of the ledger line in the currency's smallest precision units.
        amount:,
        # Currency information including code and precision.
        currency:,
        # The semantic transaction category of the line (e.g. 'payment_payout', 'refund').
        # Matches the line_category filter.
        line_category:,
        # The timestamp when the ledger line was posted.
        posted_at:,
        # The tag of the resource this line originated from (e.g. a receipt or transfer),
        # if available.
        source_id:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_identifier: T.nilable(String),
            amount: String,
            currency: WhopSDK::LedgerLine::Currency,
            line_category: T.nilable(String),
            posted_at: T.nilable(Time),
            source_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Currency < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::LedgerLine::Currency, WhopSDK::Internal::AnyHash)
          end

        # The currency code (e.g. 'usd', 'eur').
        sig { returns(T.nilable(String)) }
        attr_accessor :code

        # The precision factor for this currency (e.g. 100000000 for USD, 1 for
        # zero-decimal currencies).
        sig { returns(String) }
        attr_accessor :precision

        # Currency information including code and precision.
        sig do
          params(code: T.nilable(String), precision: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The currency code (e.g. 'usd', 'eur').
          code:,
          # The precision factor for this currency (e.g. 100000000 for USD, 1 for
          # zero-decimal currencies).
          precision:
        )
        end

        sig { override.returns({ code: T.nilable(String), precision: String }) }
        def to_hash
        end
      end
    end
  end
end
