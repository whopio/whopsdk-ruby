# frozen_string_literal: true

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
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::ShipmentCreateParams} for more details.
      #
      # Attaches a carrier tracking number to a payment and begins tracking it.
      #
      # @overload create(payment_id:, tracking_number:, account_id: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param payment_id [String] Body param: The payment to attach the shipment to, prefixed `pay_`.
      #
      # @param tracking_number [String] Body param: The carrier-assigned tracking number.
      #
      # @param account_id [String] Body param: The unique identifier of the account, prefixed `biz_`.
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param idempotency_key [String] Header param: A unique key that makes this request safe to retry. See [Idempoten
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Shipment]
      #
      # @see WhopSDK::Models::ShipmentCreateParams
      def create(params)
        parsed, options = WhopSDK::ShipmentCreateParams.dump_request(params)
        header_params = {api_version_date: "api-version-date", idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "shipments",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: WhopSDK::Shipment,
          options: options
        )
      end

      # Retrieves a shipment by its id, or by the payment id it fulfills.
      #
      # @overload retrieve(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] The shipment id (`ship_`), or the payment id (`pay_`) it fulfills.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Shipment]
      #
      # @see WhopSDK::Models::ShipmentRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::ShipmentRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["shipments/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::Shipment,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::ShipmentListParams} for more details.
      #
      # Returns a paginated list of shipments for an account.
      #
      # @overload list(account_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, payment_id: nil, status: nil, api_version_date: nil, request_options: {})
      #
      # @param account_id [String] Query param: The account to list shipments for. Defaults to the acting account.
      #
      # @param after [String] Query param: A cursor; returns shipments after this position.
      #
      # @param before [String] Query param: A cursor; returns shipments before this position.
      #
      # @param created_after [String] Query param: Return shipments created after this ISO 8601 timestamp.
      #
      # @param created_before [String] Query param: Return shipments created before this ISO 8601 timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::ShipmentListParams::Direction] Query param: The sort direction.
      #
      # @param first [Integer] Query param: The number of shipments to return.
      #
      # @param last [Integer] Query param: The number of shipments to return from the end of the range.
      #
      # @param order [Symbol, WhopSDK::Models::ShipmentListParams::Order] Query param: The field to sort by.
      #
      # @param payment_id [Array<String>] Query param: Only shipments fulfilling these payments, each prefixed `pay_`. Rep
      #
      # @param status [Symbol, WhopSDK::Models::ShipmentListParams::Status] Query param: Filter to shipments with this delivery status.
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::Shipment>]
      #
      # @see WhopSDK::Models::ShipmentListParams
      def list(params = {})
        query_params =
          [
            :account_id,
            :after,
            :before,
            :created_after,
            :created_before,
            :direction,
            :first,
            :last,
            :order,
            :payment_id,
            :status
          ]
        parsed, options = WhopSDK::ShipmentListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "shipments",
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Shipment,
          options: options
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
