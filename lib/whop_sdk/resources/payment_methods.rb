# frozen_string_literal: true

module WhopSDK
  module Resources
    # Payment methods
    class PaymentMethods
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PaymentMethodRetrieveParams} for more details.
      #
      # Retrieves the details of an existing payment method. Addresses a member's wallet
      # when member_id or company_id is given, otherwise your own.
      #
      # Required permissions:
      #
      # - `member:payment_methods:read`
      #
      # @overload retrieve(id, company_id: nil, member_id: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the payment method.
      #
      # @param company_id [String, nil] The unique identifier of the company. Provide either this or member_id, not both
      #
      # @param member_id [String, nil] The unique identifier of the member. Provide either this or company_id, not both
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod]
      #
      # @see WhopSDK::Models::PaymentMethodRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::PaymentMethodRetrieveParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["payment_methods/%1$s", id],
          query: query,
          model: WhopSDK::Models::PaymentMethodRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PaymentMethodListParams} for more details.
      #
      # Returns a paginated list of payment methods for a member or company, or for the
      # authenticated user when neither is given, with optional filtering by creation
      # date. A payment method is a stored representation of how a customer intends to
      # pay, such as a card, bank account, or digital wallet.
      #
      # Required permissions:
      #
      # - `member:payment_methods:read`
      #
      # @overload list(after: nil, before: nil, company_id: nil, created_after: nil, created_before: nil, direction: nil, first: nil, future_usage: nil, last: nil, member_id: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param company_id [String, nil] The unique identifier of the company. Provide either this or member_id, not both
      #
      # @param created_after [Time, nil] Only return payment methods created after this timestamp.
      #
      # @param created_before [Time, nil] Only return payment methods created before this timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param future_usage [Symbol, WhopSDK::Models::PaymentMethodListParams::FutureUsage, nil] How a payment method will be charged after the buyer leaves — the same vocabular
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param member_id [String, nil] The unique identifier of the member to list payment methods for. Omit this and c
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod, WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod, WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod, WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod, WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod, WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod, WhopSDK::Models::PaymentMethodListResponse::PlatformBalancePaymentMethod>]
      #
      # @see WhopSDK::Models::PaymentMethodListParams
      def list(params = {})
        parsed, options = WhopSDK::PaymentMethodListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "payment_methods",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::PaymentMethodListResponse,
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
