# typed: strong

module WhopSDK
  module Resources
    # A Dispute is a chargeback a customer files against a payment through their bank,
    # or an inquiry that may become one. It carries the disputed payment, a deadline
    # to respond, your evidence, and the outcome once the processor rules.
    #
    # Use the Disputes API to list disputes, edit the evidence packet while a dispute
    # is still contestable, and submit it for review.
    class Disputes
      # Retrieves a single dispute.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Dispute)
      end
      def retrieve(
        # The dispute ID (`dspt_` tag).
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Lists the disputes across the accounts you can read.
      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          created_after: String,
          created_before: String,
          currency: String,
          direction: WhopSDK::DisputeListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::DisputeListParams::Order::OrSymbol,
          status: T::Array[WhopSDK::DisputeListParams::Status::OrSymbol],
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Internal::CursorPage[WhopSDK::Dispute])
      end
      def list(
        # Query param: Only disputes filed against this account (`biz_` tag). Omit it to
        # cover every account you can read.
        account_id: nil,
        # Query param: A cursor; returns disputes after this position.
        after: nil,
        # Query param: A cursor; returns disputes before this position.
        before: nil,
        # Query param: Only disputes opened after this ISO 8601 timestamp.
        created_after: nil,
        # Query param: Only disputes opened before this ISO 8601 timestamp.
        created_before: nil,
        # Query param: Only disputes in this three-letter ISO currency.
        currency: nil,
        # Query param: Sort direction.
        direction: nil,
        # Query param: The number of disputes to return (default 20, max 100).
        first: nil,
        # Query param: The number of disputes to return from the end of the range.
        last: nil,
        # Query param: The field to sort disputes by.
        order: nil,
        # Query param: Only disputes in these statuses. Repeat the parameter to pass
        # several — one paginated list covers all of them. Covers both chargebacks and
        # inquiries at each stage. A `needs_response` dispute whose evidence deadline has
        # passed reports and filters as `under_review` instead.
        status: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
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
