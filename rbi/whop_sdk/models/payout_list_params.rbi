# typed: strong

module WhopSDK
  module Models
    class PayoutListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::PayoutListParams, WhopSDK::Internal::AnyHash)
        end

      # The owning account ID (a biz\_ identifier). Provide this or user_id.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # Cursor to fetch the page after (from page_info.end_cursor).
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Cursor to fetch the page before (from page_info.start_cursor).
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Optional currency code filter, for example `usd`.
      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      # Number of payouts to return from the start of the window.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Number of payouts to return from the end of the window.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # The owning user ID (a user\_ identifier). Provide this or account_id.
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          currency: String,
          first: Integer,
          last: Integer,
          user_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The owning account ID (a biz\_ identifier). Provide this or user_id.
        account_id: nil,
        # Cursor to fetch the page after (from page_info.end_cursor).
        after: nil,
        # Cursor to fetch the page before (from page_info.start_cursor).
        before: nil,
        # Optional currency code filter, for example `usd`.
        currency: nil,
        # Number of payouts to return from the start of the window.
        first: nil,
        # Number of payouts to return from the end of the window.
        last: nil,
        # The owning user ID (a user\_ identifier). Provide this or account_id.
        user_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            after: String,
            before: String,
            currency: String,
            first: Integer,
            last: Integer,
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
