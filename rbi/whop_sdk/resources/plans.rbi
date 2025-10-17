# typed: strong

module WhopSDK
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
          currency: T.nilable(WhopSDK::Currency::OrSymbol),
          custom_fields:
            T.nilable(T::Array[WhopSDK::PlanCreateParams::CustomField::OrHash]),
          description: T.nilable(String),
          expiration_days: T.nilable(Integer),
          image: T.nilable(WhopSDK::PlanCreateParams::Image::OrHash),
          initial_price: T.nilable(Float),
          internal_notes: T.nilable(String),
          override_tax_type: T.nilable(WhopSDK::TaxType::OrSymbol),
          plan_type: T.nilable(WhopSDK::PlanType::OrSymbol),
          release_method: T.nilable(WhopSDK::ReleaseMethod::OrSymbol),
          renewal_price: T.nilable(Float),
          title: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          visibility: T.nilable(WhopSDK::Visibility::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Plan)
      end
      def create(
        # The company the plan should be created for.
        company_id:,
        # The product the plan is related to.
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
        # An image for the plan. This will be visible on the product page to customers.
        image: nil,
        # An additional amount charged upon first purchase. Use only if a one time payment
        # OR you want to charge an additional amount on top of the renewal price. Provided
        # as a number in dollars. Eg: 10.43 for $10.43
        initial_price: nil,
        # A personal description or notes section for the business.
        internal_notes: nil,
        # Whether or not the tax is included in a plan's price (or if it hasn't been set
        # up)
        override_tax_type: nil,
        # The type of plan that can be attached to an access pass
        plan_type: nil,
        # The methods of how a plan can be released.
        release_method: nil,
        # The amount the customer is charged every billing period. Use only if a recurring
        # payment. Provided as a number in dollars. Eg: 10.43 for $10.43
        renewal_price: nil,
        # The title of the plan. This will be visible on the product page to customers.
        title: nil,
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
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Plan)
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
          currency: T.nilable(WhopSDK::Currency::OrSymbol),
          custom_fields:
            T.nilable(T::Array[WhopSDK::PlanUpdateParams::CustomField::OrHash]),
          description: T.nilable(String),
          expiration_days: T.nilable(Integer),
          image: T.nilable(WhopSDK::PlanUpdateParams::Image::OrHash),
          initial_price: T.nilable(Float),
          internal_notes: T.nilable(String),
          offer_cancel_discount: T.nilable(T::Boolean),
          override_tax_type: T.nilable(WhopSDK::TaxType::OrSymbol),
          renewal_price: T.nilable(Float),
          title: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          visibility: T.nilable(WhopSDK::Visibility::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Plan)
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
        # An image for the plan. This will be visible on the product page to customers.
        image: nil,
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
        # The title of the plan. This will be visible on the product page to customers.
        title: nil,
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
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(WhopSDK::PlanListParams::Order::OrSymbol),
          plan_types: T.nilable(T::Array[WhopSDK::PlanType::OrSymbol]),
          product_ids: T.nilable(T::Array[String]),
          release_methods:
            T.nilable(T::Array[WhopSDK::ReleaseMethod::OrSymbol]),
          visibilities:
            T.nilable(T::Array[WhopSDK::VisibilityFilter::OrSymbol]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::PlanListResponse]
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
        # The product IDs to filter the plans by
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
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def delete(id, request_options: {})
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
