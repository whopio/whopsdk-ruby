# frozen_string_literal: true

module WhopSDK
  module Resources
    class Plans
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PlanCreateParams} for more details.
      #
      # Create a new Plan
      #
      # Required permissions:
      #
      # - `plan:create`
      # - `access_pass:basic:read`
      # - `plan:basic:read`
      #
      # @overload create(company_id:, product_id:, billing_period: nil, currency: nil, custom_fields: nil, description: nil, expiration_days: nil, image: nil, initial_price: nil, internal_notes: nil, override_tax_type: nil, payment_method_configuration: nil, plan_type: nil, release_method: nil, renewal_price: nil, stock: nil, strike_through_initial_price: nil, strike_through_renewal_price: nil, title: nil, trial_period_days: nil, unlimited_stock: nil, visibility: nil, request_options: {})
      #
      # @param company_id [String] The company the plan should be created for.
      #
      # @param product_id [String] The product the plan is related to.
      #
      # @param billing_period [Integer, nil] The interval in days at which the plan charges (renewal plans).
      #
      # @param currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      #
      # @param custom_fields [Array<WhopSDK::Models::PlanCreateParams::CustomField>, nil] An array of custom field objects.
      #
      # @param description [String, nil] The description of the plan.
      #
      # @param expiration_days [Integer, nil] The interval at which the plan charges (expiration plans).
      #
      # @param image [WhopSDK::Models::PlanCreateParams::Image::AttachmentInputWithDirectUploadID, WhopSDK::Models::PlanCreateParams::Image::AttachmentInputWithID, nil] An image for the plan. This will be visible on the product page to customers.
      #
      # @param initial_price [Float, nil] An additional amount charged upon first purchase. Use only if a one time payment
      #
      # @param internal_notes [String, nil] A personal description or notes section for the business.
      #
      # @param override_tax_type [Symbol, WhopSDK::Models::TaxType, nil] Whether or not the tax is included in a plan's price (or if it hasn't been set u
      #
      # @param payment_method_configuration [WhopSDK::Models::PlanCreateParams::PaymentMethodConfiguration, nil] The explicit payment method configuration for the plan. If not provided, the pla
      #
      # @param plan_type [Symbol, WhopSDK::Models::PlanType, nil] The type of plan that can be attached to a product
      #
      # @param release_method [Symbol, WhopSDK::Models::ReleaseMethod, nil] The methods of how a plan can be released.
      #
      # @param renewal_price [Float, nil] The amount the customer is charged every billing period. Use only if a recurring
      #
      # @param stock [Integer, nil] The number of units available for purchase.
      #
      # @param strike_through_initial_price [Float, nil] The price to display with a strikethrough for the initial price. Provided as a n
      #
      # @param strike_through_renewal_price [Float, nil] The price to display with a strikethrough for the renewal price. Provided as a n
      #
      # @param title [String, nil] The title of the plan. This will be visible on the product page to customers.
      #
      # @param trial_period_days [Integer, nil] The number of free trial days added before a renewal plan.
      #
      # @param unlimited_stock [Boolean, nil] Limits/doesn't limit the number of units available for purchase.
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

      # Retrieves a plan by ID
      #
      # Required permissions:
      #
      # - `plan:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
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
      # Update an existing Plan
      #
      # Required permissions:
      #
      # - `plan:update`
      # - `access_pass:basic:read`
      # - `plan:basic:read`
      #
      # @overload update(id, billing_period: nil, currency: nil, custom_fields: nil, description: nil, expiration_days: nil, image: nil, initial_price: nil, internal_notes: nil, offer_cancel_discount: nil, override_tax_type: nil, payment_method_configuration: nil, renewal_price: nil, stock: nil, strike_through_initial_price: nil, strike_through_renewal_price: nil, title: nil, trial_period_days: nil, unlimited_stock: nil, visibility: nil, request_options: {})
      #
      # @param id [String]
      #
      # @param billing_period [Integer, nil] The interval at which the plan charges (renewal plans).
      #
      # @param currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      #
      # @param custom_fields [Array<WhopSDK::Models::PlanUpdateParams::CustomField>, nil] An array of custom field objects.
      #
      # @param description [String, nil] The description of the plan.
      #
      # @param expiration_days [Integer, nil] The interval at which the plan charges (expiration plans).
      #
      # @param image [WhopSDK::Models::PlanUpdateParams::Image::AttachmentInputWithDirectUploadID, WhopSDK::Models::PlanUpdateParams::Image::AttachmentInputWithID, nil] An image for the plan. This will be visible on the product page to customers.
      #
      # @param initial_price [Float, nil] An additional amount charged upon first purchase.
      #
      # @param internal_notes [String, nil] A personal description or notes section for the business.
      #
      # @param offer_cancel_discount [Boolean, nil] Whether or not to offer a discount to cancel a subscription.
      #
      # @param override_tax_type [Symbol, WhopSDK::Models::TaxType, nil] Whether or not the tax is included in a plan's price (or if it hasn't been set u
      #
      # @param payment_method_configuration [WhopSDK::Models::PlanUpdateParams::PaymentMethodConfiguration, nil] The explicit payment method configuration for the plan. If sent as null, the cus
      #
      # @param renewal_price [Float, nil] The amount the customer is charged every billing period.
      #
      # @param stock [Integer, nil] The number of units available for purchase.
      #
      # @param strike_through_initial_price [Float, nil] The price to display with a strikethrough for the initial price. Provided as a n
      #
      # @param strike_through_renewal_price [Float, nil] The price to display with a strikethrough for the renewal price. Provided as a n
      #
      # @param title [String, nil] The title of the plan. This will be visible on the product page to customers.
      #
      # @param trial_period_days [Integer, nil] The number of free trial days added before a renewal plan.
      #
      # @param unlimited_stock [Boolean, nil] Limits/doesn't limit the number of units available for purchase.
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

      # Lists plans for a company
      #
      # Required permissions:
      #
      # - `plan:basic:read`
      #
      # @overload list(company_id:, after: nil, before: nil, direction: nil, first: nil, last: nil, order: nil, plan_types: nil, product_ids: nil, release_methods: nil, visibilities: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param order [Symbol, WhopSDK::Models::PlanListParams::Order, nil] The ways a relation of Plans can be ordered
      #
      # @param plan_types [Array<Symbol, WhopSDK::Models::PlanType>, nil] The plan type to filter the plans by
      #
      # @param product_ids [Array<String>, nil] The product IDs to filter the plans by
      #
      # @param release_methods [Array<Symbol, WhopSDK::Models::ReleaseMethod>, nil] The release method to filter the plans by
      #
      # @param visibilities [Array<Symbol, WhopSDK::Models::VisibilityFilter>, nil] The visibility to filter the plans by
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::PlanListResponse>]
      #
      # @see WhopSDK::Models::PlanListParams
      def list(params)
        parsed, options = WhopSDK::PlanListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "plans",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::PlanListResponse,
          options: options
        )
      end

      # Delete an existing Plan
      #
      # Required permissions:
      #
      # - `plan:delete`
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String]
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
