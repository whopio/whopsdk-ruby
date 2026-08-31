# typed: strong

module WhopSDK
  module Resources
    # A Dispute alert is an early warning from a card issuer that a settled payment is
    # being questioned, ahead of any chargeback. `type` separates fraud reports
    # (`early_fraud_warning`), pre-dispute notices (`dispute_alert`), and Visa RDR
    # cases the network already closed by refunding (`rapid_dispute_resolution`).
    #
    # Use the Dispute alerts API to list alerts for an account, filter them by type or
    # payment, and read `actionable` to see whether refunding can still avoid the
    # chargeback.
    class DisputeAlerts
      # Retrieves a single dispute alert or early fraud warning by ID.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::DisputeAlertRetrieveResponse)
      end
      def retrieve(
        # The dispute alert ID, prefixed `dspa_`.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Lists the dispute alerts and early fraud warnings across the accounts you can
      # read.
      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          created_after: String,
          created_before: String,
          direction: WhopSDK::DisputeAlertListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::DisputeAlertListParams::Order::OrSymbol,
          payment_id: String,
          type: WhopSDK::DisputeAlertListParams::Type::OrSymbol,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::DisputeAlertListResponse
          ]
        )
      end
      def list(
        # Query param: Only alerts on this account's payments (`biz_` tag). Omit it to
        # cover every account you can read.
        account_id: nil,
        # Query param: A cursor; returns alerts after this position.
        after: nil,
        # Query param: A cursor; returns alerts before this position.
        before: nil,
        # Query param: Only alerts Whop received after this ISO 8601 timestamp.
        created_after: nil,
        # Query param: Only alerts Whop received before this ISO 8601 timestamp.
        created_before: nil,
        # Query param: Sort direction.
        direction: nil,
        # Query param: The number of alerts to return (default 20, max 100).
        first: nil,
        # Query param: The number of alerts to return from the end of the range.
        last: nil,
        # Query param: The field to sort alerts by.
        order: nil,
        # Query param: Only alerts on this payment (`pay_` tag). A payment can carry
        # several.
        payment_id: nil,
        # Query param: Only alerts of this kind. `early_fraud_warning` for issuer fraud
        # reports, `dispute_alert` for pre-dispute notices, `rapid_dispute_resolution` for
        # Visa RDR cases the network already closed.
        type: nil,
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
