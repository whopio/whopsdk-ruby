# typed: strong

module WhopSDK
  module Resources
    # A Shipment attaches a carrier tracking number to a payment and follows the
    # package from label creation to delivery, exposing the current delivery status
    # and a customer-facing tracking URL.
    #
    # Use the Shipments API to list an account's shipments, retrieve one by its id or
    # the payment it fulfills, attach a tracking number to a payment, and update the
    # tracking number on an existing shipment.
    class Shipments
      # Attaches a carrier tracking number to a payment and begins tracking it.
      sig do
        params(
          payment_id: String,
          tracking_number: String,
          account_id: String,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Shipment)
      end
      def create(
        # Body param: The payment to attach the shipment to, prefixed `pay_`.
        payment_id:,
        # Body param: The carrier-assigned tracking number.
        tracking_number:,
        # Body param: The unique identifier of the account, prefixed `biz_`.
        account_id: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        # Header param: A unique key that makes this request safe to retry. See
        # [Idempotent requests](https://docs.whop.com/developer/api/idempotency).
        idempotency_key: nil,
        request_options: {}
      )
      end

      # Retrieves a shipment by its id, or by the payment id it fulfills.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Shipment)
      end
      def retrieve(
        # The shipment id (`ship_`), or the payment id (`pay_`) it fulfills.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of shipments for an account.
      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          created_after: String,
          created_before: String,
          direction: WhopSDK::ShipmentListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::ShipmentListParams::Order::OrSymbol,
          payment_id: T::Array[String],
          status: WhopSDK::ShipmentListParams::Status::OrSymbol,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Internal::CursorPage[WhopSDK::Shipment])
      end
      def list(
        # Query param: The account to list shipments for. Defaults to the acting account.
        account_id: nil,
        # Query param: A cursor; returns shipments after this position.
        after: nil,
        # Query param: A cursor; returns shipments before this position.
        before: nil,
        # Query param: Return shipments created after this ISO 8601 timestamp.
        created_after: nil,
        # Query param: Return shipments created before this ISO 8601 timestamp.
        created_before: nil,
        # Query param: The sort direction.
        direction: nil,
        # Query param: The number of shipments to return.
        first: nil,
        # Query param: The number of shipments to return from the end of the range.
        last: nil,
        # Query param: The field to sort by.
        order: nil,
        # Query param: Only shipments fulfilling these payments, each prefixed `pay_`.
        # Repeat the parameter to pass several, up to 100 per request — one paginated list
        # covers all of them.
        payment_id: nil,
        # Query param: Filter to shipments with this delivery status.
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
