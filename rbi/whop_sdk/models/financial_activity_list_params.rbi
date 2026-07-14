# typed: strong

module WhopSDK
  module Models
    class FinancialActivityListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::FinancialActivityListParams,
            WhopSDK::Internal::AnyHash
          )
        end

      # The owning account ID (a biz\_ identifier). Provide this or user_id.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # Only include rows whose funds became withdrawable on or after this `YYYY-MM-DD`
      # settlement date (UTC), distinct from posted_at. Requires currency.
      sig { returns(T.nilable(Date)) }
      attr_reader :available_after

      sig { params(available_after: Date).void }
      attr_writer :available_after

      # Only include rows whose funds became withdrawable on or before this `YYYY-MM-DD`
      # settlement date (UTC). Set equal to available_after for a single day. Requires
      # currency.
      sig { returns(T.nilable(Date)) }
      attr_reader :available_before

      sig { params(available_before: Date).void }
      attr_writer :available_before

      # Optional currency code filter, for example `usd`.
      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      # Cursor returned by the previous page.
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # When true, aggregates the authenticated user's personal ledger with the
      # businesses they own (owner role with balance read) into one feed. Requires
      # user_id to be the authenticated user; cannot be combined with account_id or the
      # settlement-date filters. Each returned row includes the owning `account`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_owned_accounts

      sig { params(include_owned_accounts: T::Boolean).void }
      attr_writer :include_owned_accounts

      # Maximum number of rows to return.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Optional ledger line categories to include. Some categories (for example
      # `onchain_deposit`, which covers inbound crypto deposits such as MoonPay onramps)
      # are only returned when explicitly requested here.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :line_types

      sig { params(line_types: T::Array[String]).void }
      attr_writer :line_types

      # Only include rows posted after this ISO 8601 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :posted_after

      sig { params(posted_after: Time).void }
      attr_writer :posted_after

      # Only include rows posted before this ISO 8601 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :posted_before

      sig { params(posted_before: Time).void }
      attr_writer :posted_before

      # The owning user ID (a user\_ identifier). Provide this or account_id.
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      sig do
        params(
          account_id: String,
          available_after: Date,
          available_before: Date,
          currency: String,
          cursor: String,
          include_owned_accounts: T::Boolean,
          limit: Integer,
          line_types: T::Array[String],
          posted_after: Time,
          posted_before: Time,
          user_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The owning account ID (a biz\_ identifier). Provide this or user_id.
        account_id: nil,
        # Only include rows whose funds became withdrawable on or after this `YYYY-MM-DD`
        # settlement date (UTC), distinct from posted_at. Requires currency.
        available_after: nil,
        # Only include rows whose funds became withdrawable on or before this `YYYY-MM-DD`
        # settlement date (UTC). Set equal to available_after for a single day. Requires
        # currency.
        available_before: nil,
        # Optional currency code filter, for example `usd`.
        currency: nil,
        # Cursor returned by the previous page.
        cursor: nil,
        # When true, aggregates the authenticated user's personal ledger with the
        # businesses they own (owner role with balance read) into one feed. Requires
        # user_id to be the authenticated user; cannot be combined with account_id or the
        # settlement-date filters. Each returned row includes the owning `account`.
        include_owned_accounts: nil,
        # Maximum number of rows to return.
        limit: nil,
        # Optional ledger line categories to include. Some categories (for example
        # `onchain_deposit`, which covers inbound crypto deposits such as MoonPay onramps)
        # are only returned when explicitly requested here.
        line_types: nil,
        # Only include rows posted after this ISO 8601 timestamp.
        posted_after: nil,
        # Only include rows posted before this ISO 8601 timestamp.
        posted_before: nil,
        # The owning user ID (a user\_ identifier). Provide this or account_id.
        user_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            available_after: Date,
            available_before: Date,
            currency: String,
            cursor: String,
            include_owned_accounts: T::Boolean,
            limit: Integer,
            line_types: T::Array[String],
            posted_after: Time,
            posted_before: Time,
            user_id: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
