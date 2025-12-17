# frozen_string_literal: true

module WhopSDK
  module Resources
    class PaymentMethods
      # A payment method is a stored representation of how a customer intends to pay,
      # such as a card, bank account, or digital wallet. It holds the necessary billing
      # details and can be attached to a member for future one-time or recurring
      # charges. This lets you reuse the same payment credentials across multiple
      # payments. You must provide exactly one of company_id or member_id.
      #
      # Required permissions:
      #
      # - `member:payment_methods:read`
      #
      # @overload retrieve(id, company_id: nil, member_id: nil, request_options: {})
      #
      # @param id [String] The ID of the PaymentMethod
      #
      # @param company_id [String, nil] The ID of the Company. Provide either this or member_id (not both).
      #
      # @param member_id [String, nil] The ID of the Member. Provide either this or company_id (not both).
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod]
      #
      # @see WhopSDK::Models::PaymentMethodRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::PaymentMethodRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["payment_methods/%1$s", id],
          query: parsed,
          model: WhopSDK::Models::PaymentMethodRetrieveResponse,
          options: options
        )
      end

      # A payment method is a stored representation of how a customer intends to pay,
      # such as a card, bank account, or digital wallet. It holds the necessary billing
      # details and can be attached to a member for future one-time or recurring
      # charges. This lets you reuse the same payment credentials across multiple
      # payments.
      #
      # Required permissions:
      #
      # - `member:payment_methods:read`
      #
      # @overload list(after: nil, before: nil, company_id: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, member_id: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param company_id [String, nil] The ID of the Company. Provide either this or member_id (not both).
      #
      # @param created_after [Time, nil] The minimum creation date to filter by
      #
      # @param created_before [Time, nil] The maximum creation date to filter by
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param member_id [String, nil] The ID of the Member to list payment methods for
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod, WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod, WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod, WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod, WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod, WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod>]
      #
      # @see WhopSDK::Models::PaymentMethodListParams
      def list(params = {})
        parsed, options = WhopSDK::PaymentMethodListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "payment_methods",
          query: parsed,
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
