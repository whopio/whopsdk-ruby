# typed: strong

module WhopSDK
  module Models
    class LedgerLineListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::LedgerLineListParams, WhopSDK::Internal::AnyHash)
        end

      # The account to list ledger lines for. Accepts a user ID ('user_xxx'), company ID
      # ('biz_xxx'), or ledger account ID ('ldgr_xxx').
      sig { returns(String) }
      attr_accessor :account_id

      # Cursor for forward pagination to fetch the next page.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Cursor for backward pagination to fetch the previous page.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # Filter lines by currency code (e.g. 'usd').
      sig { returns(T.nilable(String)) }
      attr_accessor :currency

      # The maximum number of ledger lines to return per page, up to 200.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Filter lines by transaction type (e.g. 'payment_payout').
      sig { returns(T.nilable(String)) }
      attr_accessor :line_category

      # Filter lines posted after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :posted_after

      # Filter lines posted before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :posted_before

      sig do
        params(
          account_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          currency: T.nilable(String),
          first: T.nilable(Integer),
          line_category: T.nilable(String),
          posted_after: T.nilable(Time),
          posted_before: T.nilable(Time),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The account to list ledger lines for. Accepts a user ID ('user_xxx'), company ID
        # ('biz_xxx'), or ledger account ID ('ldgr_xxx').
        account_id:,
        # Cursor for forward pagination to fetch the next page.
        after: nil,
        # Cursor for backward pagination to fetch the previous page.
        before: nil,
        # Filter lines by currency code (e.g. 'usd').
        currency: nil,
        # The maximum number of ledger lines to return per page, up to 200.
        first: nil,
        # Filter lines by transaction type (e.g. 'payment_payout').
        line_category: nil,
        # Filter lines posted after this timestamp.
        posted_after: nil,
        # Filter lines posted before this timestamp.
        posted_before: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            after: T.nilable(String),
            before: T.nilable(String),
            currency: T.nilable(String),
            first: T.nilable(Integer),
            line_category: T.nilable(String),
            posted_after: T.nilable(Time),
            posted_before: T.nilable(Time),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
