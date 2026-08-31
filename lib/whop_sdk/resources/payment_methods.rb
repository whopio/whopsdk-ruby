# frozen_string_literal: true

module WhopSDK
  module Resources
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
      # @param company_id [String] The unique identifier of the company. Provide either this or member_id, not both
      #
      # @param member_id [String] The unique identifier of the member. Provide either this or company_id, not both
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod]
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
      # @overload list(after: nil, before: nil, broken: nil, card_brands: nil, card_funding_types: nil, company_id: nil, created_after: nil, created_before: nil, direction: nil, expired: nil, first: nil, future_usage: nil, has_payer_document: nil, last: nil, member_id: nil, payment_method_types: nil, request_options: {})
      #
      # @param after [String] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String] Returns the elements in the list that come before the specified cursor.
      #
      # @param broken [Boolean] Filter by whether the stored credential has permanently stopped charging, such a
      #
      # @param card_brands [Array<Symbol, WhopSDK::Models::CardBrands>] Only return cards on these networks, such as the networks the seller accepts. Pa
      #
      # @param card_funding_types [Array<Symbol, WhopSDK::Models::PaymentMethodListParams::CardFundingType>] Only return cards funded this way. A card whose funding could not be determined
      #
      # @param company_id [String] The unique identifier of the company. Provide either this or member_id, not both
      #
      # @param created_after [Time] Only return payment methods created after this timestamp.
      #
      # @param created_before [Time] Only return payment methods created before this timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction] The sort direction for ordering results, either ascending or descending.
      #
      # @param expired [Boolean] Filter by expiry. Only a card can expire, so `false` keeps every payment method
      #
      # @param first [Integer] Returns the first _n_ elements from the list.
      #
      # @param future_usage [Symbol, WhopSDK::Models::PaymentMethodListParams::FutureUsage] Only return methods that can be charged this way after the buyer leaves. Every s
      #
      # @param has_payer_document [Boolean] Filter cards by whether they carry the payer identity document their payment pro
      #
      # @param last [Integer] Returns the last _n_ elements from the list.
      #
      # @param member_id [String] The unique identifier of the member to list payment methods for. Omit this and c
      #
      # @param payment_method_types [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>] Only return payment methods of these types. Pass the eligible `type` values from
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod, WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod, WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod, WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod, WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod, WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod>]
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
