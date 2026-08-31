# frozen_string_literal: true

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
      #
      # @overload retrieve(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] The dispute alert ID, prefixed `dspa_`.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::DisputeAlertRetrieveResponse]
      #
      # @see WhopSDK::Models::DisputeAlertRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::DisputeAlertRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["dispute_alerts/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::Models::DisputeAlertRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::DisputeAlertListParams} for more details.
      #
      # Lists the dispute alerts and early fraud warnings across the accounts you can
      # read.
      #
      # @overload list(account_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, payment_id: nil, type: nil, api_version_date: nil, request_options: {})
      #
      # @param account_id [String] Query param: Only alerts on this account's payments (`biz_` tag). Omit it to cov
      #
      # @param after [String] Query param: A cursor; returns alerts after this position.
      #
      # @param before [String] Query param: A cursor; returns alerts before this position.
      #
      # @param created_after [String] Query param: Only alerts Whop received after this ISO 8601 timestamp.
      #
      # @param created_before [String] Query param: Only alerts Whop received before this ISO 8601 timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::DisputeAlertListParams::Direction] Query param: Sort direction.
      #
      # @param first [Integer] Query param: The number of alerts to return (default 20, max 100).
      #
      # @param last [Integer] Query param: The number of alerts to return from the end of the range.
      #
      # @param order [Symbol, WhopSDK::Models::DisputeAlertListParams::Order] Query param: The field to sort alerts by.
      #
      # @param payment_id [String] Query param: Only alerts on this payment (`pay_` tag). A payment can carry sever
      #
      # @param type [Symbol, WhopSDK::Models::DisputeAlertListParams::Type] Query param: Only alerts of this kind. `early_fraud_warning` for issuer fraud re
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::DisputeAlertListResponse>]
      #
      # @see WhopSDK::Models::DisputeAlertListParams
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
            :type
          ]
        parsed, options = WhopSDK::DisputeAlertListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "dispute_alerts",
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::DisputeAlertListResponse,
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
