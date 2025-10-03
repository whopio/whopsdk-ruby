# frozen_string_literal: true

module Whopsdk
  module Resources
    class Plans
      # Some parameter documentations has been truncated, see
      # {Whopsdk::Models::PlanCreateParams} for more details.
      #
      # Create a new Plan
      #
      # Required permissions:
      #
      # - `plan:create`
      # - `access_pass:basic:read`
      # - `plan:basic:read`
      #
      # @overload create(company_id:, product_id:, billing_period: nil, currency: nil, custom_fields: nil, description: nil, expiration_days: nil, initial_price: nil, internal_notes: nil, override_tax_type: nil, plan_type: nil, release_method: nil, renewal_price: nil, trial_period_days: nil, visibility: nil, request_options: {})
      #
      # @param company_id [String] The company the plan should be created for.
      #
      # @param product_id [String] The access pass the plan is related to.
      #
      # @param billing_period [Integer, nil] The interval at which the plan charges (renewal plans).
      #
      # @param currency [Symbol, Whopsdk::Models::Currency, nil] The available currencies on the platform
      #
      # @param custom_fields [Array<Whopsdk::Models::PlanCreateParams::CustomField>, nil] An array of custom field objects.
      #
      # @param description [String, nil] The description of the plan.
      #
      # @param expiration_days [Integer, nil] The interval at which the plan charges (expiration plans).
      #
      # @param initial_price [Float, nil] An additional amount charged upon first purchase.
      #
      # @param internal_notes [String, nil] A personal description or notes section for the business.
      #
      # @param override_tax_type [Symbol, Whopsdk::Models::TaxType, nil] Whether or not the tax is included in a plan's price (or if it hasn't been set u
      #
      # @param plan_type [Symbol, Whopsdk::Models::PlanType, nil] The type of plan that can be attached to an access pass
      #
      # @param release_method [Symbol, Whopsdk::Models::ReleaseMethod, nil] The methods of how a plan can be released (including raffles and waitlists).
      #
      # @param renewal_price [Float, nil] The amount the customer is charged every billing period.
      #
      # @param trial_period_days [Integer, nil] The number of free trial days added before a renewal plan.
      #
      # @param visibility [Symbol, Whopsdk::Models::Visibility, nil] Visibility of a resource
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::Plan, nil]
      #
      # @see Whopsdk::Models::PlanCreateParams
      def create(params)
        parsed, options = Whopsdk::PlanCreateParams.dump_request(params)
        @client.request(method: :post, path: "plans", body: parsed, model: Whopsdk::Plan, options: options)
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
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::Plan, nil]
      #
      # @see Whopsdk::Models::PlanRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["plans/%1$s", id],
          model: Whopsdk::Plan,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Whopsdk::Models::PlanUpdateParams} for more details.
      #
      # Update an existing Plan
      #
      # Required permissions:
      #
      # - `plan:update`
      # - `access_pass:basic:read`
      # - `plan:basic:read`
      #
      # @overload update(id, billing_period: nil, currency: nil, custom_fields: nil, description: nil, expiration_days: nil, initial_price: nil, internal_notes: nil, offer_cancel_discount: nil, override_tax_type: nil, renewal_price: nil, trial_period_days: nil, visibility: nil, request_options: {})
      #
      # @param id [String]
      #
      # @param billing_period [Integer, nil] The interval at which the plan charges (renewal plans).
      #
      # @param currency [Symbol, Whopsdk::Models::Currency, nil] The available currencies on the platform
      #
      # @param custom_fields [Array<Whopsdk::Models::PlanUpdateParams::CustomField>, nil] An array of custom field objects.
      #
      # @param description [String, nil] The description of the plan.
      #
      # @param expiration_days [Integer, nil] The interval at which the plan charges (expiration plans).
      #
      # @param initial_price [Float, nil] An additional amount charged upon first purchase.
      #
      # @param internal_notes [String, nil] A personal description or notes section for the business.
      #
      # @param offer_cancel_discount [Boolean, nil] Whether or not to offer a discount to cancel a subscription.
      #
      # @param override_tax_type [Symbol, Whopsdk::Models::TaxType, nil] Whether or not the tax is included in a plan's price (or if it hasn't been set u
      #
      # @param renewal_price [Float, nil] The amount the customer is charged every billing period.
      #
      # @param trial_period_days [Integer, nil] The number of free trial days added before a renewal plan.
      #
      # @param visibility [Symbol, Whopsdk::Models::Visibility, nil] Visibility of a resource
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::Plan, nil]
      #
      # @see Whopsdk::Models::PlanUpdateParams
      def update(id, params = {})
        parsed, options = Whopsdk::PlanUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["plans/%1$s", id],
          body: parsed,
          model: Whopsdk::Plan,
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
      # @param direction [Symbol, Whopsdk::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param order [Symbol, Whopsdk::Models::PlanListParams::Order, nil] The ways a relation of Plans can be ordered
      #
      # @param plan_types [Array<Symbol, Whopsdk::Models::PlanType, nil>, nil] The plan type to filter the plans by
      #
      # @param product_ids [Array<String>, nil] The access pass IDs to filter the plans by
      #
      # @param release_methods [Array<Symbol, Whopsdk::Models::ReleaseMethod, nil>, nil] The release method to filter the plans by
      #
      # @param visibilities [Array<Symbol, Whopsdk::Models::VisibilityFilter, nil>, nil] The visibility to filter the plans by
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Internal::CursorPage<Whopsdk::Models::PlanListResponse, nil>]
      #
      # @see Whopsdk::Models::PlanListParams
      def list(params)
        parsed, options = Whopsdk::PlanListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "plans",
          query: parsed,
          page: Whopsdk::Internal::CursorPage,
          model: Whopsdk::Models::PlanListResponse,
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
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean, nil]
      #
      # @see Whopsdk::Models::PlanDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["plans/%1$s", id],
          model: Whopsdk::Internal::Type::Boolean,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Whopsdk::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
