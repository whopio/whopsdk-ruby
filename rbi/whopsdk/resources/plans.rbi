# typed: strong

module Whopsdk
  module Resources
    class Plans
      # Create a new Plan
      #
      # Required permissions:
      #
      # - `plan:create`
      # - `access_pass:basic:read`
      # - `plan:basic:read`
      sig do
        params(
          company_id: String,
          product_id: String,
          billing_period: T.nilable(Integer),
          currency: T.nilable(Whopsdk::Currency::OrSymbol),
          custom_fields:
            T.nilable(T::Array[Whopsdk::PlanCreateParams::CustomField::OrHash]),
          description: T.nilable(String),
          expiration_days: T.nilable(Integer),
          initial_price: T.nilable(Float),
          internal_notes: T.nilable(String),
          override_tax_type: T.nilable(Whopsdk::TaxType::OrSymbol),
          plan_type: T.nilable(Whopsdk::PlanType::OrSymbol),
          release_method: T.nilable(Whopsdk::ReleaseMethod::OrSymbol),
          renewal_price: T.nilable(Float),
          trial_period_days: T.nilable(Integer),
          visibility: T.nilable(Whopsdk::Visibility::OrSymbol),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.nilable(Whopsdk::Plan))
      end
      def create(
        # The company the plan should be created for.
        company_id:,
        # The access pass the plan is related to.
        product_id:,
        # The interval at which the plan charges (renewal plans).
        billing_period: nil,
        # The available currencies on the platform
        currency: nil,
        # An array of custom field objects.
        custom_fields: nil,
        # The description of the plan.
        description: nil,
        # The interval at which the plan charges (expiration plans).
        expiration_days: nil,
        # An additional amount charged upon first purchase.
        initial_price: nil,
        # A personal description or notes section for the business.
        internal_notes: nil,
        # Whether or not the tax is included in a plan's price (or if it hasn't been set
        # up)
        override_tax_type: nil,
        # The type of plan that can be attached to an access pass
        plan_type: nil,
        # The methods of how a plan can be released (including raffles and waitlists).
        release_method: nil,
        # The amount the customer is charged every billing period.
        renewal_price: nil,
        # The number of free trial days added before a renewal plan.
        trial_period_days: nil,
        # Visibility of a resource
        visibility: nil,
        request_options: {}
      )
      end

      # Retrieves a plan by ID
      #
      # Required permissions:
      #
      # - `plan:basic:read`
      sig do
        params(
          id: String,
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.nilable(Whopsdk::Plan))
      end
      def retrieve(id, request_options: {})
      end

      # Update an existing Plan
      #
      # Required permissions:
      #
      # - `plan:update`
      # - `access_pass:basic:read`
      # - `plan:basic:read`
      sig do
        params(
          id: String,
          billing_period: T.nilable(Integer),
          currency: T.nilable(Whopsdk::Currency::OrSymbol),
          custom_fields:
            T.nilable(T::Array[Whopsdk::PlanUpdateParams::CustomField::OrHash]),
          description: T.nilable(String),
          expiration_days: T.nilable(Integer),
          initial_price: T.nilable(Float),
          internal_notes: T.nilable(String),
          offer_cancel_discount: T.nilable(T::Boolean),
          override_tax_type: T.nilable(Whopsdk::TaxType::OrSymbol),
          renewal_price: T.nilable(Float),
          trial_period_days: T.nilable(Integer),
          visibility: T.nilable(Whopsdk::Visibility::OrSymbol),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.nilable(Whopsdk::Plan))
      end
      def update(
        id,
        # The interval at which the plan charges (renewal plans).
        billing_period: nil,
        # The available currencies on the platform
        currency: nil,
        # An array of custom field objects.
        custom_fields: nil,
        # The description of the plan.
        description: nil,
        # The interval at which the plan charges (expiration plans).
        expiration_days: nil,
        # An additional amount charged upon first purchase.
        initial_price: nil,
        # A personal description or notes section for the business.
        internal_notes: nil,
        # Whether or not to offer a discount to cancel a subscription.
        offer_cancel_discount: nil,
        # Whether or not the tax is included in a plan's price (or if it hasn't been set
        # up)
        override_tax_type: nil,
        # The amount the customer is charged every billing period.
        renewal_price: nil,
        # The number of free trial days added before a renewal plan.
        trial_period_days: nil,
        # Visibility of a resource
        visibility: nil,
        request_options: {}
      )
      end

      # Lists plans for a company
      #
      # Required permissions:
      #
      # - `plan:basic:read`
      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          direction: T.nilable(Whopsdk::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(Whopsdk::PlanListParams::Order::OrSymbol),
          plan_types:
            T.nilable(T::Array[T.nilable(Whopsdk::PlanType::OrSymbol)]),
          product_ids: T.nilable(T::Array[String]),
          release_methods:
            T.nilable(T::Array[T.nilable(Whopsdk::ReleaseMethod::OrSymbol)]),
          visibilities:
            T.nilable(T::Array[T.nilable(Whopsdk::VisibilityFilter::OrSymbol)]),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(
          Whopsdk::Internal::CursorPage[
            T.nilable(Whopsdk::Models::PlanListResponse)
          ]
        )
      end
      def list(
        # The ID of the company
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The ways a relation of Plans can be ordered
        order: nil,
        # The plan type to filter the plans by
        plan_types: nil,
        # The access pass IDs to filter the plans by
        product_ids: nil,
        # The release method to filter the plans by
        release_methods: nil,
        # The visibility to filter the plans by
        visibilities: nil,
        request_options: {}
      )
      end

      # Delete an existing Plan
      #
      # Required permissions:
      #
      # - `plan:delete`
      sig do
        params(
          id: String,
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.nilable(T::Boolean))
      end
      def delete(id, request_options: {})
      end

      # @api private
      sig { params(client: Whopsdk::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
