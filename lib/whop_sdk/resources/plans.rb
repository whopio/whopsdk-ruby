# frozen_string_literal: true

module WhopSDK
  module Resources
    # Plans
    class Plans
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PlanCreateParams} for more details.
      #
      # Create a new pricing plan for a product. The plan defines the billing interval,
      # price, and availability for customers.
      #
      # Required permissions:
      #
      # - `plan:create`
      # - `access_pass:basic:read`
      # - `plan:basic:read`
      #
      # @overload create(company_id:, product_id:, billing_period: nil, currency: nil, custom_fields: nil, description: nil, expiration_days: nil, image: nil, initial_price: nil, internal_notes: nil, legacy_payment_method_controls: nil, override_tax_type: nil, payment_method_configuration: nil, plan_type: nil, release_method: nil, renewal_price: nil, split_pay_required_payments: nil, stock: nil, title: nil, trial_period_days: nil, unlimited_stock: nil, visibility: nil, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to create this plan for.
      #
      # @param product_id [String] The unique identifier of the product to attach this plan to.
      #
      # @param billing_period [Integer, nil] The number of days between recurring charges. For example, 30 for monthly or 365
      #
      # @param currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      #
      # @param custom_fields [Array<WhopSDK::Models::PlanCreateParams::CustomField>, nil] An array of custom field definitions to collect from customers at checkout.
      #
      # @param description [String, nil] A text description of the plan displayed to customers on the product page.
      #
      # @param expiration_days [Integer, nil] The number of days until the membership expires and access is revoked. Used for
      #
      # @param image [WhopSDK::Models::PlanCreateParams::Image, nil] An image displayed on the product page to represent this plan.
      #
      # @param initial_price [Float, nil] The amount charged on the first purchase. For one-time plans, this is the full p
      #
      # @param internal_notes [String, nil] Private notes visible only to the business owner. Not shown to customers.
      #
      # @param legacy_payment_method_controls [Boolean, nil] Whether this plan uses legacy payment method controls.
      #
      # @param override_tax_type [Symbol, WhopSDK::Models::TaxType, nil] Whether or not the tax is included in a plan's price (or if it hasn't been set u
      #
      # @param payment_method_configuration [WhopSDK::Models::PlanCreateParams::PaymentMethodConfiguration, nil] Explicit payment method configuration for the plan. When not provided, the compa
      #
      # @param plan_type [Symbol, WhopSDK::Models::PlanType, nil] The type of plan that can be attached to a product
      #
      # @param release_method [Symbol, WhopSDK::Models::ReleaseMethod, nil] The methods of how a plan can be released.
      #
      # @param renewal_price [Float, nil] The amount charged each billing period for recurring plans. Provided in the plan
      #
      # @param split_pay_required_payments [Integer, nil] The number of installment payments required before the subscription pauses.
      #
      # @param stock [Integer, nil] The maximum number of units available for purchase. Ignored when unlimited_stock
      #
      # @param title [String, nil] The display name of the plan shown to customers on the product page.
      #
      # @param trial_period_days [Integer, nil] The number of free trial days before the first charge on a recurring plan.
      #
      # @param unlimited_stock [Boolean, nil] Whether the plan has unlimited stock. When true, the stock field is ignored. Def
      #
      # @param visibility [Symbol, WhopSDK::Models::Visibility, nil] Visibility of a resource
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
      # Required permissions:
      #
      # - `plan:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the plan.
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
      # Required permissions:
      #
      # - `plan:update`
      # - `access_pass:basic:read`
      # - `plan:basic:read`
      #
      # @overload update(id, billing_period: nil, currency: nil, custom_fields: nil, description: nil, expiration_days: nil, image: nil, initial_price: nil, internal_notes: nil, legacy_payment_method_controls: nil, offer_cancel_discount: nil, override_tax_type: nil, payment_method_configuration: nil, renewal_price: nil, stock: nil, strike_through_initial_price: nil, strike_through_renewal_price: nil, title: nil, trial_period_days: nil, unlimited_stock: nil, visibility: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the plan to update.
      #
      # @param billing_period [Integer, nil] The number of days between recurring charges. For example, 30 for monthly or 365
      #
      # @param currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      #
      # @param custom_fields [Array<WhopSDK::Models::PlanUpdateParams::CustomField>, nil] An array of custom field definitions to collect from customers at checkout.
      #
      # @param description [String, nil] A text description of the plan displayed to customers on the product page.
      #
      # @param expiration_days [Integer, nil] The number of days until the membership expires and access is revoked. For examp
      #
      # @param image [WhopSDK::Models::PlanUpdateParams::Image, nil] An image displayed on the product page to represent this plan.
      #
      # @param initial_price [Float, nil] The amount charged on the first purchase. Provided in the plan's currency (e.g.,
      #
      # @param internal_notes [String, nil] Private notes visible only to the business owner. Not shown to customers.
      #
      # @param legacy_payment_method_controls [Boolean, nil] Whether this plan uses legacy payment method controls.
      #
      # @param offer_cancel_discount [Boolean, nil] Whether to offer a retention discount when a customer attempts to cancel.
      #
      # @param override_tax_type [Symbol, WhopSDK::Models::TaxType, nil] Whether or not the tax is included in a plan's price (or if it hasn't been set u
      #
      # @param payment_method_configuration [WhopSDK::Models::PlanUpdateParams::PaymentMethodConfiguration, nil] Explicit payment method configuration for the plan. Sending null removes any cus
      #
      # @param renewal_price [Float, nil] The amount charged each billing period for recurring plans. Provided in the plan
      #
      # @param stock [Integer, nil] The maximum number of units available for purchase. Ignored when unlimited_stock
      #
      # @param strike_through_initial_price [Float, nil] A comparison price displayed with a strikethrough for the initial price. Provide
      #
      # @param strike_through_renewal_price [Float, nil] A comparison price displayed with a strikethrough for the renewal price. Provide
      #
      # @param title [String, nil] The display name of the plan shown to customers on the product page.
      #
      # @param trial_period_days [Integer, nil] The number of free trial days before the first charge on a recurring plan.
      #
      # @param unlimited_stock [Boolean, nil] Whether the plan has unlimited stock. When true, the stock field is ignored.
      #
      # @param visibility [Symbol, WhopSDK::Models::Visibility, nil] Visibility of a resource
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
      # Required permissions:
      #
      # - `plan:basic:read`
      #
      # @overload list(company_id:, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, plan_types: nil, product_ids: nil, release_methods: nil, visibilities: nil, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to list plans for.
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param created_after [Time, nil] Only return plans created after this timestamp.
      #
      # @param created_before [Time, nil] Only return plans created before this timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param order [Symbol, WhopSDK::Models::PlanListParams::Order, nil] The ways a relation of Plans can be ordered
      #
      # @param plan_types [Array<Symbol, WhopSDK::Models::PlanType>, nil] Filter to only plans matching these billing types.
      #
      # @param product_ids [Array<String>, nil] Filter to only plans belonging to these product identifiers.
      #
      # @param release_methods [Array<Symbol, WhopSDK::Models::ReleaseMethod>, nil] Filter to only plans matching these release methods.
      #
      # @param visibilities [Array<Symbol, WhopSDK::Models::VisibilityFilter>, nil] Filter to only plans matching these visibility states.
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
      # Required permissions:
      #
      # - `plan:delete`
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The unique identifier of the plan to delete.
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
