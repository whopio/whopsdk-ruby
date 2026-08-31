# frozen_string_literal: true

module WhopSDK
  module Resources
    # A Plan defines how customers buy a product. It controls pricing, billing
    # cadence, availability, tax behavior, checkout fields, and purchase visibility.
    #
    # Use the Plans API to create plans for products, list existing plans, retrieve or
    # update plan configuration, calculate tax for checkout, and delete plans that
    # should no longer be offered.
    class Plans
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PlanCreateParams} for more details.
      #
      # Create a new pricing plan for a product. The plan defines the billing interval,
      # price, and availability for customers.
      #
      # @overload create(account_id: nil, adaptive_pricing_enabled: nil, billing_period: nil, checkout_styling: nil, currency: nil, custom_fields: nil, description: nil, expiration_days: nil, image: nil, initial_price: nil, internal_notes: nil, metadata: nil, override_tax_type: nil, payment_method_configuration: nil, plan_type: nil, product_id: nil, release_method: nil, renewal_price: nil, split_pay_required_payments: nil, stock: nil, three_ds_level: nil, title: nil, trial_period_days: nil, unlimited_stock: nil, visibility: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param account_id [String] Body param: The unique identifier of the account to create this plan for. Defaul
      #
      # @param adaptive_pricing_enabled [Boolean, nil] Body param: Whether this plan accepts local currency payments via adaptive prici
      #
      # @param billing_period [Integer, nil] Body param: Recurring billing interval in days, such as 30 for monthly or 365 fo
      #
      # @param checkout_styling [Object, nil] Body param: Checkout styling overrides for this plan.
      #
      # @param currency [String] Body param: The three-letter ISO currency code for the plan's pricing. Defaults
      #
      # @param custom_fields [Array<WhopSDK::Models::PlanCreateParams::CustomField>, nil] Body param: An array of custom field definitions to collect from customers at ch
      #
      # @param description [String, nil] Body param: A text description of the plan displayed to customers on the product
      #
      # @param expiration_days [Integer, nil] Body param: Access duration in days before the membership expires.
      #
      # @param image [WhopSDK::Models::PlanCreateParams::Image, nil] Body param: An image displayed on the product page to represent this plan.
      #
      # @param initial_price [Float, nil] Body param: Initial amount charged in the plan's currency, e.g. 10.43 for $10.43
      #
      # @param internal_notes [String, nil] Body param: Private notes visible only to the account owner. Not shown to custom
      #
      # @param metadata [Object, nil] Body param: Custom key-value pairs to store on the plan. Included in webhook pay
      #
      # @param override_tax_type [String] Body param: Override the default tax classification for this specific plan.
      #
      # @param payment_method_configuration [WhopSDK::Models::PlanCreateParams::PaymentMethodConfiguration, nil] Body param: Explicit payment method configuration for the plan. When not provide
      #
      # @param plan_type [String] Body param: Plan billing type, such as `one_time` or `renewal`.
      #
      # @param product_id [String] Body param: The unique identifier of the product to attach this plan to.
      #
      # @param release_method [String] Body param: Sales method for this plan.
      #
      # @param renewal_price [Float, nil] Body param: The amount charged each billing period for recurring plans, in the p
      #
      # @param split_pay_required_payments [Integer, nil] Body param: Installment payments required before the subscription pauses.
      #
      # @param stock [Integer, nil] Body param: The maximum number of units available for purchase. Ignored when unl
      #
      # @param three_ds_level [Symbol, WhopSDK::Models::PlanCreateParams::ThreeDSLevel, nil] Body param: 3D Secure behavior for this plan. Send `null` to inherit the account
      #
      # @param title [String, nil] Body param: The display name of the plan shown to customers on the product page.
      #
      # @param trial_period_days [Integer, nil] Body param: Free trial duration before the first recurring charge.
      #
      # @param unlimited_stock [Boolean, nil] Body param: Whether the plan has unlimited stock. When true, the stock field is
      #
      # @param visibility [String] Body param: Whether the plan is visible to customers or hidden from public view.
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param idempotency_key [String] Header param: A unique key that makes this request safe to retry. See [Idempoten
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Plan]
      #
      # @see WhopSDK::Models::PlanCreateParams
      def create(params = {})
        parsed, options = WhopSDK::PlanCreateParams.dump_request(params)
        header_params = {api_version_date: "api-version-date", idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "plans",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: WhopSDK::Plan,
          options: options
        )
      end

      # Retrieves the details of an existing plan.
      #
      # @overload retrieve(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] Plan ID, prefixed `plan_`.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Plan]
      #
      # @see WhopSDK::Models::PlanRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::PlanRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["plans/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::Plan,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PlanUpdateParams} for more details.
      #
      # Update a plan's pricing, billing interval, visibility, stock, and other
      # settings.
      #
      # @overload update(id, adaptive_pricing_enabled: nil, billing_period: nil, cancel_discount_intervals: nil, cancel_discount_percentage: nil, checkout_styling: nil, currency: nil, custom_fields: nil, description: nil, expiration_days: nil, image: nil, initial_price: nil, internal_notes: nil, metadata: nil, offer_cancel_discount: nil, override_tax_type: nil, payment_method_configuration: nil, release_method: nil, renewal_price: nil, stock: nil, strike_through_initial_price: nil, strike_through_renewal_price: nil, three_ds_level: nil, title: nil, trial_period_days: nil, unlimited_stock: nil, visibility: nil, api_version_date: nil, request_options: {})
      #
      # @param id [String] Path param: Plan ID, prefixed `plan_`.
      #
      # @param adaptive_pricing_enabled [Boolean, nil] Body param: Whether this plan accepts local currency payments via adaptive prici
      #
      # @param billing_period [Integer, nil] Body param: Recurring billing interval in days, such as 30 for monthly or 365 fo
      #
      # @param cancel_discount_intervals [Integer, nil] Body param: How many renewals the retention discount applies to. Required when `
      #
      # @param cancel_discount_percentage [Integer, nil] Body param: Percentage taken off each discounted renewal. Required when `offer_c
      #
      # @param checkout_styling [Object, nil] Body param: Checkout styling overrides for this plan.
      #
      # @param currency [String] Body param: The three-letter ISO currency code for the plan's pricing. Defaults
      #
      # @param custom_fields [Array<WhopSDK::Models::PlanUpdateParams::CustomField>, nil] Body param: An array of custom field definitions to collect from customers at ch
      #
      # @param description [String, nil] Body param: A text description of the plan displayed to customers on the product
      #
      # @param expiration_days [Integer, nil] Body param: Access duration in days before the membership expires.
      #
      # @param image [WhopSDK::Models::PlanUpdateParams::Image, nil] Body param: An image displayed on the product page to represent this plan.
      #
      # @param initial_price [Float, nil] Body param: Initial amount charged in the plan's currency, e.g. 10.43 for $10.43
      #
      # @param internal_notes [String, nil] Body param: Private notes visible only to the account owner. Not shown to custom
      #
      # @param metadata [Object, nil] Body param: Custom key-value pairs to store on the plan. Included in webhook pay
      #
      # @param offer_cancel_discount [Boolean, nil] Body param: Whether to offer a retention discount when a customer attempts to ca
      #
      # @param override_tax_type [String] Body param: Override the default tax classification for this specific plan.
      #
      # @param payment_method_configuration [WhopSDK::Models::PlanUpdateParams::PaymentMethodConfiguration, nil] Body param: Explicit payment method configuration for the plan. When not provide
      #
      # @param release_method [String] Body param: Sales method for this plan.
      #
      # @param renewal_price [Float, nil] Body param: The amount charged each billing period for recurring plans, in the p
      #
      # @param stock [Integer, nil] Body param: The maximum number of units available for purchase. Ignored when unl
      #
      # @param strike_through_initial_price [Float, nil] Body param: A comparison price displayed with a strikethrough for the initial pr
      #
      # @param strike_through_renewal_price [Float, nil] Body param: A comparison price displayed with a strikethrough for the renewal pr
      #
      # @param three_ds_level [Symbol, WhopSDK::Models::PlanUpdateParams::ThreeDSLevel, nil] Body param: 3D Secure behavior for this plan. Send `null` to inherit the account
      #
      # @param title [String, nil] Body param: The display name of the plan shown to customers on the product page.
      #
      # @param trial_period_days [Integer, nil] Body param: Free trial duration before the first recurring charge.
      #
      # @param unlimited_stock [Boolean, nil] Body param: Whether the plan has unlimited stock. When true, the stock field is
      #
      # @param visibility [String] Body param: Whether the plan is visible to customers or hidden from public view.
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Plan]
      #
      # @see WhopSDK::Models::PlanUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::PlanUpdateParams.dump_request(params)
        header_params = {api_version_date: "api-version-date"}
        @client.request(
          method: :patch,
          path: ["plans/%1$s", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: WhopSDK::Plan,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PlanListParams} for more details.
      #
      # Returns a paginated list of plans. Omit `account_id` and pass `product_ids` to
      # list a product's public buyable plans.
      #
      # @overload list(account_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, plan_types: nil, product_ids: nil, release_methods: nil, visibilities: nil, api_version_date: nil, request_options: {})
      #
      # @param account_id [String] Query param: The unique identifier of the account to list plans for. Required un
      #
      # @param after [String] Query param: A cursor; returns plans after this position.
      #
      # @param before [String] Query param: A cursor; returns plans before this position.
      #
      # @param created_after [String] Query param: Only return plans created after this timestamp.
      #
      # @param created_before [String] Query param: Only return plans created before this timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::PlanListParams::Direction] Query param: The sort direction for results. Defaults to descending.
      #
      # @param first [Integer] Query param: The number of plans to return (default and max 100).
      #
      # @param last [Integer] Query param: The number of plans to return from the end of the range.
      #
      # @param order [Symbol, WhopSDK::Models::PlanListParams::Order] Query param: The field to sort results by. Defaults to created_at.
      #
      # @param plan_types [Array<String>] Query param: Filter to only plans matching these billing types.
      #
      # @param product_ids [Array<String>] Query param: Filter to only plans belonging to these product identifiers. When `
      #
      # @param release_methods [Array<String>] Query param: Filter to only plans matching these release methods.
      #
      # @param visibilities [Array<String>] Query param: Filter to only plans matching these visibility states.
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::PlanListResponse>]
      #
      # @see WhopSDK::Models::PlanListParams
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
            :plan_types,
            :product_ids,
            :release_methods,
            :visibilities
          ]
        parsed, options = WhopSDK::PlanListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "plans",
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::PlanListResponse,
          options: options
        )
      end

      # Permanently delete a plan from a product. Existing memberships on this plan will
      # not be affected.
      #
      # @overload delete(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] Plan ID, prefixed `plan_`.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::PlanDeleteResponse]
      #
      # @see WhopSDK::Models::PlanDeleteParams
      def delete(id, params = {})
        parsed, options = WhopSDK::PlanDeleteParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["plans/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::Models::PlanDeleteResponse,
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
