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
          image:
            T.nilable(
              T.any(
                WhopSDK::PlanCreateParams::Image::AttachmentInputWithDirectUploadID::OrHash,
                WhopSDK::PlanCreateParams::Image::AttachmentInputWithID::OrHash
              )
            ),
          initial_price: T.nilable(Float),
          internal_notes: T.nilable(String),
          legacy_payment_method_controls: T.nilable(T::Boolean),
          override_tax_type: T.nilable(WhopSDK::TaxType::OrSymbol),
          payment_method_configuration:
            T.nilable(
              WhopSDK::PlanCreateParams::PaymentMethodConfiguration::OrHash
            ),
          plan_type: T.nilable(WhopSDK::PlanType::OrSymbol),
          release_method: T.nilable(WhopSDK::ReleaseMethod::OrSymbol),
          renewal_price: T.nilable(Float),
          split_pay_required_payments: T.nilable(Integer),
          stock: T.nilable(Integer),
          title: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          unlimited_stock: T.nilable(T::Boolean),
          visibility: T.nilable(WhopSDK::Visibility::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Plan)
      end
      def create(
        # The company the plan should be created for.
        company_id:,
        # The product the plan is related to.
        product_id:,
        # The interval in days at which the plan charges (renewal plans).
        billing_period: nil,
        # The available currencies on the platform
        currency: nil,
        # An array of custom field objects.
        custom_fields: nil,
        # The description of the plan.
        description: nil,
        # The interval at which the plan expires and revokes access (expiration plans).
        expiration_days: nil,
        # An image for the plan. This will be visible on the product page to customers.
        image: nil,
        # An additional amount charged upon first purchase. Use only if a one time payment
        # OR you want to charge an additional amount on top of the renewal price. Provided
        # as a number in dollars. Eg: 10.43 for $10.43
        initial_price: nil,
        # A personal description or notes section for the business.
        internal_notes: nil,
        # Whether this plan uses legacy payment method controls
        legacy_payment_method_controls: nil,
        # Whether or not the tax is included in a plan's price (or if it hasn't been set
        # up)
        override_tax_type: nil,
        # The explicit payment method configuration for the plan. If not provided, the
        # platform or company's defaults will apply.
        payment_method_configuration: nil,
        # The type of plan that can be attached to a product
        plan_type: nil,
        # The methods of how a plan can be released.
        release_method: nil,
        # The amount the customer is charged every billing period. Use only if a recurring
        # payment. Provided as a number in dollars. Eg: 10.43 for $10.43
        renewal_price: nil,
        # The number of payments required before pausing the subscription.
        split_pay_required_payments: nil,
        # The number of units available for purchase.
        stock: nil,
        # The title of the plan. This will be visible on the product page to customers.
        title: nil,
        # The number of free trial days added before a renewal plan.
        trial_period_days: nil,
        # Limits/doesn't limit the number of units available for purchase.
        unlimited_stock: nil,
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
      def retrieve(
        # The ID of the plan
        id,
        request_options: {}
      )
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
          image:
            T.nilable(
              T.any(
                WhopSDK::PlanUpdateParams::Image::AttachmentInputWithDirectUploadID::OrHash,
                WhopSDK::PlanUpdateParams::Image::AttachmentInputWithID::OrHash
              )
            ),
          initial_price: T.nilable(Float),
          internal_notes: T.nilable(String),
          legacy_payment_method_controls: T.nilable(T::Boolean),
          offer_cancel_discount: T.nilable(T::Boolean),
          override_tax_type: T.nilable(WhopSDK::TaxType::OrSymbol),
          payment_method_configuration:
            T.nilable(
              WhopSDK::PlanUpdateParams::PaymentMethodConfiguration::OrHash
            ),
          renewal_price: T.nilable(Float),
          stock: T.nilable(Integer),
          strike_through_initial_price: T.nilable(Float),
          strike_through_renewal_price: T.nilable(Float),
          title: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          unlimited_stock: T.nilable(T::Boolean),
          visibility: T.nilable(WhopSDK::Visibility::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Plan)
      end
      def update(
        # The ID
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
        # Whether this plan uses legacy payment method controls
        legacy_payment_method_controls: nil,
        # Whether or not to offer a discount to cancel a subscription.
        offer_cancel_discount: nil,
        # Whether or not the tax is included in a plan's price (or if it hasn't been set
        # up)
        override_tax_type: nil,
        # The explicit payment method configuration for the plan. If sent as null, the
        # custom configuration will be removed.
        payment_method_configuration: nil,
        # The amount the customer is charged every billing period.
        renewal_price: nil,
        # The number of units available for purchase.
        stock: nil,
        # The price to display with a strikethrough for the initial price. Provided as a
        # number in dollars. Eg: 19.99 for $19.99
        strike_through_initial_price: nil,
        # The price to display with a strikethrough for the renewal price. Provided as a
        # number in dollars. Eg: 19.99 for $19.99
        strike_through_renewal_price: nil,
        # The title of the plan. This will be visible on the product page to customers.
        title: nil,
        # The number of free trial days added before a renewal plan.
        trial_period_days: nil,
        # Limits/doesn't limit the number of units available for purchase.
        unlimited_stock: nil,
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
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
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
        # The minimum creation date to filter by
        created_after: nil,
        # The maximum creation date to filter by
        created_before: nil,
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
      def delete(
        # The ID of the plan to delete.
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
