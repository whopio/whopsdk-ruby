# frozen_string_literal: true

module WhopSDK
  module Resources
    # A Refund is one reversal of a payment, full or partial. Refunds are issued with
    # `POST /payments/{id}/refund`; this resource is the record of each one — how much
    # moved, through which provider, and where it stands (`pending`, `succeeded`,
    # `failed`).
    #
    # List a payment's refunds with `?payment_id=`, or every refund an account issued
    # with `?account_id=`. `amount` is stated in the payment's settlement currency so
    # it nets against the payment's `total`; `original_amount` is what the processor
    # moved.
    class Refunds
      # Returns one refund.
      #
      # @overload retrieve(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] The refund to retrieve, prefixed `rf_`.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::RefundRetrieveResponse]
      #
      # @see WhopSDK::Models::RefundRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::RefundRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["refunds/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::Models::RefundRetrieveResponse,
          options: options
        )
      end

      # Lists refunds, newest first. Without filters this is every refund the caller can
      # read; narrow it to one payment with `payment_id`, one account with `account_id`,
      # or one buyer with `user_id`.
      #
      # @overload list(account_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, payment_id: nil, user_id: nil, api_version_date: nil, request_options: {})
      #
      # @param account_id [String] Query param: Only refunds issued by this account, prefixed `biz_`.
      #
      # @param after [String] Query param: A cursor; returns refunds after this position.
      #
      # @param before [String] Query param: A cursor; returns refunds before this position.
      #
      # @param created_after [Time] Query param: Only refunds requested after this ISO 8601 timestamp.
      #
      # @param created_before [Time] Query param: Only refunds requested before this ISO 8601 timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::RefundListParams::Direction] Query param: The sort direction.
      #
      # @param first [Integer] Query param: The number of refunds to return.
      #
      # @param last [Integer] Query param: The number of refunds to return from the end of the range.
      #
      # @param order [Symbol, WhopSDK::Models::RefundListParams::Order] Query param: The field to sort by.
      #
      # @param payment_id [String] Query param: Only refunds of this payment, prefixed `pay_`.
      #
      # @param user_id [String] Query param: Only refunds to this buyer, prefixed `user_`.
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::RefundListResponse>]
      #
      # @see WhopSDK::Models::RefundListParams
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
            :user_id
          ]
        parsed, options = WhopSDK::RefundListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "refunds",
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::RefundListResponse,
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
