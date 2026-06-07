# typed: strong

module WhopSDK
  module Resources
    class FinancialActivity
      # Lists financial activity rows for an account or user ledger. Rows are derived
      # from ledger lines and include typed resource and source objects that clients can
      # use for presentation and navigation.
      sig do
        params(
          account_id: String,
          currency: String,
          cursor: String,
          limit: Integer,
          line_types: T::Array[String],
          posted_after: Time,
          posted_before: Time,
          user_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::FinancialActivityListResponse)
      end
      def list(
        # The business account ID. Provide exactly one of account_id or user_id.
        account_id: nil,
        # Optional currency code filter, for example usd.
        currency: nil,
        # Cursor returned by the previous page.
        cursor: nil,
        # Maximum number of rows to return.
        limit: nil,
        # Optional ledger line categories to include.
        line_types: nil,
        # Only include rows posted after this ISO 8601 timestamp.
        posted_after: nil,
        # Only include rows posted before this ISO 8601 timestamp.
        posted_before: nil,
        # The user ID. Provide exactly one of account_id or user_id.
        user_id: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
