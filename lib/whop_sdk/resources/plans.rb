# frozen_string_literal: true

module WhopSDK
  module Resources
    class Plans
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PlanCreateParams} for more details.
      #
      # Create a new pricing plan for a product. The plan defines the billing interval,
      # price, and availability for customers.
      #
      # @overload create(product_id:, adaptive_pricing_enabled: nil, billing_period: nil, checkout_styling: nil, company_id: nil, currency: nil, custom_fields: nil, description: nil, expiration_days: nil, image: nil, initial_price: nil, internal_notes: nil, legacy_payment_method_controls: nil, metadata: nil, override_tax_type: nil, payment_method_configuration: nil, plan_type: nil, release_method: nil, renewal_price: nil, split_pay_required_payments: nil, stock: nil, three_ds_level: nil, title: nil, trial_period_days: nil, unlimited_stock: nil, visibility: nil, request_options: {})
      #
      # @param product_id [String] The unique identifier of the product to attach this plan to.
      #
      # @param adaptive_pricing_enabled [Boolean, nil] Whether this plan accepts local currency payments via adaptive pricing.
      #
      # @param billing_period [Integer, nil] The number of days between recurring charges. For example, 30 for monthly or 365
      #
      # @param checkout_styling [Object, nil] Checkout styling overrides for this plan.
      #
      # @param company_id [String] The unique identifier of the company to create this plan for. Defaults to the ca
      #
      # @param currency [String] The three-letter ISO currency code for the plan's pricing. Defaults to USD.
      #
      # @param custom_fields [Array<WhopSDK::Models::PlanCreateParams::CustomField>, nil] An array of custom field definitions to collect from customers at checkout. Omit
      #
      # @param description [String, nil] A text description of the plan displayed to customers on the product page.
      #
      # @param expiration_days [Integer, nil] The number of days until the membership expires and access is revoked.
      #
      # @param image [WhopSDK::Models::PlanCreateParams::Image, nil] An image displayed on the product page to represent this plan.
      #
      # @param initial_price [Float, nil] The amount charged on the first purchase, in the plan's currency (e.g., 10.43 fo
      #
      # @param internal_notes [String, nil] Private notes visible only to the business owner. Not shown to customers.
      #
      # @param legacy_payment_method_controls [Boolean, nil] Whether this plan uses legacy payment method controls.
      #
      # @param metadata [Object, nil] Custom key-value pairs to store on the plan. Included in webhook payloads for pa
      #
      # @param override_tax_type [String] Override the default tax classification for this specific plan.
      #
      # @param payment_method_configuration [WhopSDK::Models::PlanCreateParams::PaymentMethodConfiguration, nil] Explicit payment method configuration for the plan. When not provided, the compa
      #
      # @param plan_type [String] The billing type of the plan, such as one_time or renewal.
      #
      # @param release_method [String] The method used to sell this plan (e.g., buy_now, waitlist).
      #
      # @param renewal_price [Float, nil] The amount charged each billing period for recurring plans, in the plan's curren
      #
      # @param split_pay_required_payments [Integer, nil] The number of installment payments required before the subscription pauses.
      #
      # @param stock [Integer, nil] The maximum number of units available for purchase. Ignored when unlimited_stock
      #
      # @param three_ds_level [Symbol, WhopSDK::Models::PlanCreateParams::ThreeDSLevel] The 3D Secure behavior for this plan. Send null to inherit the account default.
      #
      # @param title [String, nil] The display name of the plan shown to customers on the product page.
      #
      # @param trial_period_days [Integer, nil] The number of free trial days before the first charge on a recurring plan.
      #
      # @param unlimited_stock [Boolean, nil] Whether the plan has unlimited stock. When true, the stock field is ignored.
      #
      # @param visibility [String] Whether the plan is visible to customers or hidden from public view.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Plan]
      #
      # @see WhopSDK::Models::PlanCreateParams
      def create(params)
        parsed, options = WhopSDK::PlanCreateParams.dump_request(params)
        @client.request(method: :post, path: "plans", body: parsed, model: WhopSDK::Plan, options: options)
      end

      # Retrieves the details of an existing plan.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the plan, which will look like plan\_******\*******.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Plan]
      #
      # @see WhopSDK::Models::PlanRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["plans/%1$s", id],
          model: WhopSDK::Plan,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PlanUpdateParams} for more details.
      #
      # Update a plan's pricing, billing interval, visibility, stock, and other
      # settings.
      #
      # @overload update(id, adaptive_pricing_enabled: nil, billing_period: nil, checkout_styling: nil, currency: nil, custom_fields: nil, description: nil, expiration_days: nil, image: nil, initial_price: nil, internal_notes: nil, legacy_payment_method_controls: nil, metadata: nil, offer_cancel_discount: nil, override_tax_type: nil, payment_method_configuration: nil, renewal_price: nil, stock: nil, strike_through_initial_price: nil, strike_through_renewal_price: nil, three_ds_level: nil, title: nil, trial_period_days: nil, unlimited_stock: nil, visibility: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the plan, which will look like plan\_******\*******.
      #
      # @param adaptive_pricing_enabled [Boolean, nil] Whether this plan accepts local currency payments via adaptive pricing.
      #
      # @param billing_period [Integer, nil] The number of days between recurring charges. For example, 30 for monthly or 365
      #
      # @param checkout_styling [Object, nil] Checkout styling overrides for this plan.
      #
      # @param currency [String] The three-letter ISO currency code for the plan's pricing. Defaults to USD.
      #
      # @param custom_fields [Array<WhopSDK::Models::PlanUpdateParams::CustomField>, nil] An array of custom field definitions to collect from customers at checkout. Omit
      #
      # @param description [String, nil] A text description of the plan displayed to customers on the product page.
      #
      # @param expiration_days [Integer, nil] The number of days until the membership expires and access is revoked.
      #
      # @param image [WhopSDK::Models::PlanUpdateParams::Image, nil] An image displayed on the product page to represent this plan.
      #
      # @param initial_price [Float, nil] The amount charged on the first purchase, in the plan's currency (e.g., 10.43 fo
      #
      # @param internal_notes [String, nil] Private notes visible only to the business owner. Not shown to customers.
      #
      # @param legacy_payment_method_controls [Boolean, nil] Whether this plan uses legacy payment method controls.
      #
      # @param metadata [Object, nil] Custom key-value pairs to store on the plan. Included in webhook payloads for pa
      #
      # @param offer_cancel_discount [Boolean, nil] Whether to offer a retention discount when a customer attempts to cancel.
      #
      # @param override_tax_type [String] Override the default tax classification for this specific plan.
      #
      # @param payment_method_configuration [WhopSDK::Models::PlanUpdateParams::PaymentMethodConfiguration, nil] Explicit payment method configuration for the plan. When not provided, the compa
      #
      # @param renewal_price [Float, nil] The amount charged each billing period for recurring plans, in the plan's curren
      #
      # @param stock [Integer, nil] The maximum number of units available for purchase. Ignored when unlimited_stock
      #
      # @param strike_through_initial_price [Float, nil] A comparison price displayed with a strikethrough for the initial price.
      #
      # @param strike_through_renewal_price [Float, nil] A comparison price displayed with a strikethrough for the renewal price.
      #
      # @param three_ds_level [Symbol, WhopSDK::Models::PlanUpdateParams::ThreeDSLevel] The 3D Secure behavior for this plan. Send null to inherit the account default.
      #
      # @param title [String, nil] The display name of the plan shown to customers on the product page.
      #
      # @param trial_period_days [Integer, nil] The number of free trial days before the first charge on a recurring plan.
      #
      # @param unlimited_stock [Boolean, nil] Whether the plan has unlimited stock. When true, the stock field is ignored.
      #
      # @param visibility [String] Whether the plan is visible to customers or hidden from public view.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Plan]
      #
      # @see WhopSDK::Models::PlanUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::PlanUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["plans/%1$s", id],
          body: parsed,
          model: WhopSDK::Plan,
          options: options
        )
      end

      # Returns a paginated list of plans belonging to a company, with optional
      # filtering by visibility, type, release method, and product.
      #
      # @overload list(company_id:, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, plan_types: nil, product_ids: nil, release_methods: nil, visibilities: nil, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to list plans for.
      #
      # @param after [String] A cursor; returns plans after this position.
      #
      # @param before [String] A cursor; returns plans before this position.
      #
      # @param created_after [String] Only return plans created after this timestamp.
      #
      # @param created_before [String] Only return plans created before this timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::PlanListParams::Direction] The sort direction for results. Defaults to descending.
      #
      # @param first [Integer] The number of plans to return (default and max 100).
      #
      # @param last [Integer] The number of plans to return from the end of the range.
      #
      # @param order [Symbol, WhopSDK::Models::PlanListParams::Order] The field to sort results by. Defaults to created_at.
      #
      # @param plan_types [Array<String>] Filter to only plans matching these billing types.
      #
      # @param product_ids [Array<String>] Filter to only plans belonging to these product identifiers.
      #
      # @param release_methods [Array<String>] Filter to only plans matching these release methods.
      #
      # @param visibilities [Array<String>] Filter to only plans matching these visibility states.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::PlanListResponse>]
      #
      # @see WhopSDK::Models::PlanListParams
      def list(params)
        parsed, options = WhopSDK::PlanListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "plans",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::PlanListResponse,
          options: options
        )
      end

      # Permanently delete a plan from a product. Existing memberships on this plan will
      # not be affected.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The unique identifier of the plan, which will look like plan\_******\*******.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::PlanDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["plans/%1$s", id],
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
