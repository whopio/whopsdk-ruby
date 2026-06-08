# typed: strong

module WhopSDK
  module Resources
    class FinancialActivity
      # Lists financial activity rows for a ledger account. Rows are derived from ledger
      # lines and include typed resource and source objects that clients can use for
      # presentation and navigation. The ledger's owner is passed as exactly one of
      # account*id (a biz* identifier) or user*id (a user* identifier).
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
        # The owning account ID (a biz\_ identifier). Provide this or user_id.
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
        # The owning user ID (a user\_ identifier). Provide this or account_id.
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
