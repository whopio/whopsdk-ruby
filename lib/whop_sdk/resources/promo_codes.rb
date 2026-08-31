# frozen_string_literal: true

module WhopSDK
  module Resources
    class PromoCodes
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PromoCodeCreateParams} for more details.
      #
      # Creates a promo code for an account. First-party sessions may attach an
      # affiliate.
      #
      # @overload create(account_id:, amount_off:, base_currency:, code:, new_users_only:, promo_duration_months:, promo_type:, churned_users_only: nil, existing_memberships_only: nil, expires_at: nil, one_per_customer: nil, plan_ids: nil, product_id: nil, stock: nil, unlimited_stock: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param account_id [String] Body param
      #
      # @param amount_off [Float] Body param
      #
      # @param base_currency [Symbol, WhopSDK::Models::PromoCodeCreateParams::BaseCurrency] Body param
      #
      # @param code [String] Body param
      #
      # @param new_users_only [Boolean] Body param
      #
      # @param promo_duration_months [Integer] Body param
      #
      # @param promo_type [Symbol, WhopSDK::Models::PromoCodeCreateParams::PromoType] Body param
      #
      # @param churned_users_only [Boolean] Body param
      #
      # @param existing_memberships_only [Boolean] Body param
      #
      # @param expires_at [String, nil] Body param
      #
      # @param one_per_customer [Boolean] Body param
      #
      # @param plan_ids [Array<String>] Body param
      #
      # @param product_id [String, nil] Body param
      #
      # @param stock [Integer, nil] Body param
      #
      # @param unlimited_stock [Boolean] Body param
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param idempotency_key [String] Header param: A unique key that makes this request safe to retry. See [Idempoten
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::PromoCode]
      #
      # @see WhopSDK::Models::PromoCodeCreateParams
      def create(params)
        parsed, options = WhopSDK::PromoCodeCreateParams.dump_request(params)
        header_params = {api_version_date: "api-version-date", idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "promo_codes",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: WhopSDK::PromoCode,
          options: options
        )
      end

      # Retrieves a promo code by ID.
      #
      # @overload retrieve(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] Promo code ID (`promo_` tag).
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::PromoCode]
      #
      # @see WhopSDK::Models::PromoCodeRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::PromoCodeRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["promo_codes/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::PromoCode,
          options: options
        )
      end

      # Lists promo codes for an account with cursor pagination, filters, and sorting.
      #
      # @overload list(account_id:, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, plan_ids: nil, product_ids: nil, status: nil, api_version_date: nil, request_options: {})
      #
      # @param account_id [String] Query param: Account whose promo codes are listed (`biz_` tag).
      #
      # @param after [String] Query param: Cursor to paginate forwards from.
      #
      # @param before [String] Query param: Cursor to paginate backwards from.
      #
      # @param created_after [Time] Query param: Only promo codes created after this ISO 8601 timestamp.
      #
      # @param created_before [Time] Query param: Only promo codes created before this ISO 8601 timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::PromoCodeListParams::Direction] Query param: Sort direction.
      #
      # @param first [Integer] Query param: Number of promo codes to return from the start of the window.
      #
      # @param last [Integer] Query param: Number of promo codes to return from the end of the window.
      #
      # @param order [Symbol, WhopSDK::Models::PromoCodeListParams::Order] Query param: Sort field.
      #
      # @param plan_ids [Array<String>] Query param: Only promo codes scoped to these plan IDs.
      #
      # @param product_ids [Array<String>] Query param: Only promo codes scoped to these product IDs.
      #
      # @param status [Symbol, WhopSDK::Models::PromoCodeListParams::Status] Query param: Promo-code status. `expired` groups inactive and archived codes.
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::PromoCodeListResponse>]
      #
      # @see WhopSDK::Models::PromoCodeListParams
      def list(params)
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
            :plan_ids,
            :product_ids,
            :status
          ]
        parsed, options = WhopSDK::PromoCodeListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "promo_codes",
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::PromoCodeListResponse,
          options: options
        )
      end

      # Archives a promo code so it cannot be used in future checkouts.
      #
      # @overload delete(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] Promo code ID (`promo_` tag).
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::PromoCodeDeleteResponse]
      #
      # @see WhopSDK::Models::PromoCodeDeleteParams
      def delete(id, params = {})
        parsed, options = WhopSDK::PromoCodeDeleteParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["promo_codes/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::Models::PromoCodeDeleteResponse,
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
