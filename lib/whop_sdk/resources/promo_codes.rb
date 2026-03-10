# frozen_string_literal: true

module WhopSDK
  module Resources
    # Promo codes
    class PromoCodes
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PromoCodeCreateParams} for more details.
      #
      # Create a new promo code that applies a discount at checkout. Can be scoped to
      # specific products or plans.
      #
      # Required permissions:
      #
      # - `promo_code:create`
      # - `access_pass:basic:read`
      #
      # @overload create(amount_off:, base_currency:, code:, company_id:, new_users_only:, promo_duration_months:, promo_type:, churned_users_only: nil, existing_memberships_only: nil, expires_at: nil, one_per_customer: nil, plan_ids: nil, product_id: nil, stock: nil, unlimited_stock: nil, request_options: {})
      #
      # @param amount_off [Float] The discount amount. When promo_type is percentage, this is the percent off (e.g
      #
      # @param base_currency [Symbol, WhopSDK::Models::Currency] The three-letter ISO currency code for the promo code discount.
      #
      # @param code [String] The alphanumeric code customers enter at checkout to apply the discount.
      #
      # @param company_id [String] The unique identifier of the company to create this promo code for.
      #
      # @param new_users_only [Boolean] Whether to restrict this promo code to only users who have never purchased from
      #
      # @param promo_duration_months [Integer] The number of billing months the discount remains active. For example, 3 means t
      #
      # @param promo_type [Symbol, WhopSDK::Models::PromoType] The discount type, either percentage or flat_amount.
      #
      # @param churned_users_only [Boolean, nil] Whether to restrict this promo code to only users who have previously churned fr
      #
      # @param existing_memberships_only [Boolean, nil] Whether this promo code can only be applied to existing memberships, such as for
      #
      # @param expires_at [Time, nil] The datetime when the promo code expires and can no longer be used. Null means i
      #
      # @param one_per_customer [Boolean, nil] Whether each customer can only use this promo code once.
      #
      # @param plan_ids [Array<String>, nil] The identifiers of plans this promo code applies to. When product_id is also pro
      #
      # @param product_id [String, nil] The identifier of the product to scope this promo code to. When provided, the pr
      #
      # @param stock [Integer, nil] The maximum number of times this promo code can be used. Ignored when
      # unlimited\_
      #
      # @param unlimited_stock [Boolean, nil] Whether the promo code can be used an unlimited number of times.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::PromoCode]
      #
      # @see WhopSDK::Models::PromoCodeCreateParams
      def create(params)
        parsed, options = WhopSDK::PromoCodeCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "promo_codes",
          body: parsed,
          model: WhopSDK::PromoCode,
          options: options
        )
      end

      # Retrieves the details of an existing promo code.
      #
      # Required permissions:
      #
      # - `promo_code:basic:read`
      # - `access_pass:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the promo code.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::PromoCode]
      #
      # @see WhopSDK::Models::PromoCodeRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["promo_codes/%1$s", id],
          model: WhopSDK::PromoCode,
          options: params[:request_options]
        )
      end

      # Returns a paginated list of promo codes belonging to a company, with optional
      # filtering by product, plan, and status.
      #
      # Required permissions:
      #
      # - `promo_code:basic:read`
      # - `access_pass:basic:read`
      #
      # @overload list(company_id:, after: nil, before: nil, created_after: nil, created_before: nil, first: nil, last: nil, plan_ids: nil, product_ids: nil, status: nil, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to list promo codes for.
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param created_after [Time, nil] Only return promo codes created after this timestamp.
      #
      # @param created_before [Time, nil] Only return promo codes created before this timestamp.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param plan_ids [Array<String>, nil] Filter to only promo codes scoped to these plan identifiers.
      #
      # @param product_ids [Array<String>, nil] Filter to only promo codes scoped to these product identifiers.
      #
      # @param status [Symbol, WhopSDK::Models::PromoCodeStatus, nil] Statuses for promo codes
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::PromoCodeListResponse>]
      #
      # @see WhopSDK::Models::PromoCodeListParams
      def list(params)
        parsed, options = WhopSDK::PromoCodeListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "promo_codes",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::PromoCodeListResponse,
          options: options
        )
      end

      # Archive a promo code, preventing it from being used in future checkouts.
      # Existing memberships are not affected.
      #
      # Required permissions:
      #
      # - `promo_code:delete`
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The unique identifier of the promo code to archive.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::PromoCodeDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["promo_codes/%1$s", id],
          model: WhopSDK::Internal::Type::Boolean,
          options: params[:request_options]
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
