# frozen_string_literal: true

module WhopSDK
  module Resources
    class PromoCodes
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PromoCodeCreateParams} for more details.
      #
      # Create a new promo code for a product or plan
      #
      # Required permissions:
      #
      # - `promo_code:create`
      # - `access_pass:basic:read`
      #
      # @overload create(amount_off:, base_currency:, code:, company_id:, new_users_only:, promo_duration_months:, promo_type:, churned_users_only: nil, existing_memberships_only: nil, expires_at: nil, one_per_customer: nil, plan_ids: nil, product_id: nil, stock: nil, unlimited_stock: nil, request_options: {})
      #
      # @param amount_off [Float] The discount amount. Interpretation depends on promo_type: if 'percentage', this
      #
      # @param base_currency [Symbol, WhopSDK::Models::Currency] The monetary currency of the promo code.
      #
      # @param code [String] The specific code used to apply the promo at checkout.
      #
      # @param company_id [String] The id of the company to create the promo code for.
      #
      # @param new_users_only [Boolean] Restricts promo use to only users who have never purchased from the company befo
      #
      # @param promo_duration_months [Integer] The number of months this promo code is applied and valid for.
      #
      # @param promo_type [Symbol, WhopSDK::Models::PromoType] The type (% or flat amount) of the promo.
      #
      # @param churned_users_only [Boolean, nil] Restricts promo use to only users who have churned from the company before.
      #
      # @param existing_memberships_only [Boolean, nil] Whether this promo code is for existing memberships only (cancelations)
      #
      # @param expires_at [Time, nil] The date/time of when the promo expires.
      #
      # @param one_per_customer [Boolean, nil] Restricts promo use to only be applied once per customer.
      #
      # @param plan_ids [Array<String>, nil] The IDs of the plans that the promo code applies to. If product_id is provided,
      #
      # @param product_id [String, nil] The product to lock the promo code to, if any. If provided will filter out any p
      #
      # @param stock [Integer, nil] The quantity limit on the number of uses.
      #
      # @param unlimited_stock [Boolean, nil] Whether or not the promo code should have unlimited stock.
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

      # Retrieves a promo code by ID
      #
      # Required permissions:
      #
      # - `promo_code:basic:read`
      # - `access_pass:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the promo code to retrieve
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

      # Lists promo codes for a company
      #
      # Required permissions:
      #
      # - `promo_code:basic:read`
      # - `access_pass:basic:read`
      #
      # @overload list(company_id:, after: nil, before: nil, created_after: nil, created_before: nil, first: nil, last: nil, plan_ids: nil, product_ids: nil, status: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company to list promo codes for
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param created_after [Time, nil] The minimum creation date to filter by
      #
      # @param created_before [Time, nil] The maximum creation date to filter by
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param plan_ids [Array<String>, nil] Filter promo codes by plan ID(s)
      #
      # @param product_ids [Array<String>, nil] Filter promo codes by product ID(s)
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
        @client.request(
          method: :get,
          path: "promo_codes",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::PromoCodeListResponse,
          options: options
        )
      end

      # Archive a promo code, preventing further use
      #
      # Required permissions:
      #
      # - `promo_code:delete`
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The internal ID of the promo code to archive.
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
