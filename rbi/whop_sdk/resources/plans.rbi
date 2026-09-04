# typed: strong

module WhopSDK
  module Resources
    # A Plan defines how customers buy a product. It controls pricing, billing
    # cadence, availability, tax behavior, checkout fields, and purchase visibility.
    #
    # Use the Plans API to create plans for products, list existing plans, retrieve or
    # update plan configuration, calculate tax for checkout, and delete plans that
    # should no longer be offered.
    class Plans
      # Create a new pricing plan for a product. The plan defines the billing interval,
      # price, and availability for customers.
      sig do
        params(
          account_id: String,
          adaptive_pricing_enabled: T.nilable(T::Boolean),
          billing_period: T.nilable(Integer),
          checkout_styling: T.nilable(T.anything),
          currency: String,
          custom_fields:
            T.nilable(T::Array[WhopSDK::PlanCreateParams::CustomField::OrHash]),
          description: T.nilable(String),
          expiration_days: T.nilable(Integer),
          image: T.nilable(WhopSDK::PlanCreateParams::Image::OrHash),
          initial_price: T.nilable(Float),
          internal_notes: T.nilable(String),
          metadata: T.nilable(T.anything),
          override_tax_type: String,
          payment_method_configuration:
            T.nilable(
              WhopSDK::PlanCreateParams::PaymentMethodConfiguration::OrHash
            ),
          plan_type: String,
          product_id: String,
          release_method: String,
          renewal_price: T.nilable(Float),
          split_pay_required_payments: T.nilable(Integer),
          stock: T.nilable(Integer),
          three_ds_level:
            T.nilable(WhopSDK::PlanCreateParams::ThreeDSLevel::OrSymbol),
          title: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          unlimited_stock: T.nilable(T::Boolean),
          visibility: String,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Plan)
      end
      def create(
        # Body param: The unique identifier of the account to create this plan for.
        # Required when authenticating as a user; an account API key supplies its own
        # account.
        account_id: nil,
        # Body param: Whether this plan accepts local currency payments via adaptive
        # pricing.
        adaptive_pricing_enabled: nil,
        # Body param: Recurring billing interval in days, such as 30 for monthly or 365
        # for annual.
        billing_period: nil,
        # Body param: Checkout styling overrides for this plan.
        checkout_styling: nil,
        # Body param: The three-letter ISO currency code for the plan's pricing. Defaults
        # to USD.
        currency: nil,
        # Body param: An array of custom field definitions to collect from customers at
        # checkout. Omitting this field clears existing custom fields.
        custom_fields: nil,
        # Body param: A text description of the plan displayed to customers on the product
        # page.
        description: nil,
        # Body param: Access duration in days before the membership expires.
        expiration_days: nil,
        # Body param: An image displayed on the product page to represent this plan.
        image: nil,
        # Body param: Initial amount charged in the plan's currency, e.g. 10.43 for
        # $10.43. A paid fiat plan charges at least 1.00 in its currency; use 0 for free.
        initial_price: nil,
        # Body param: Private notes visible only to the account owner. Not shown to
        # customers.
        internal_notes: nil,
        # Body param: Custom key-value pairs to store on the plan. Included in webhook
        # payloads for payment and membership events. Max 50 keys, 100 chars per key, 500
        # chars per string value. The reserved keys `custom_cta` (a checkout
        # call-to-action button label — one of the product custom CTA values, e.g.
        # `subscribe`, `get_offer`) and `custom_cta_url` (a URL the button links to; web
        # or `tel:`) override the product's call to action for this plan and are validated
        # on save.
        metadata: nil,
        # Body param: Override the default tax classification for this specific plan.
        override_tax_type: nil,
        # Body param: Explicit payment method configuration for the plan. When not
        # provided, the account's defaults apply.
        payment_method_configuration: nil,
        # Body param: Plan billing type, such as `one_time` or `renewal`.
        plan_type: nil,
        # Body param: The unique identifier of the product to attach this plan to.
        product_id: nil,
        # Body param: Sales method for this plan.
        release_method: nil,
        # Body param: The amount charged each billing period for recurring plans, in the
        # plan's currency. A paid fiat plan charges at least 1.00 in its currency.
        renewal_price: nil,
        # Body param: Installment payments required before the subscription pauses.
        split_pay_required_payments: nil,
        # Body param: The maximum number of units available for purchase. Ignored when
        # unlimited_stock is true.
        stock: nil,
        # Body param: 3D Secure behavior for this plan. Send `null` to inherit the account
        # default.
        three_ds_level: nil,
        # Body param: The display name of the plan shown to customers on the product page.
        title: nil,
        # Body param: Free trial duration before the first recurring charge.
        trial_period_days: nil,
        # Body param: Whether the plan has unlimited stock. When true, the stock field is
        # ignored.
        unlimited_stock: nil,
        # Body param: Whether the plan is visible to customers or hidden from public view.
        visibility: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        # Header param: A unique key that makes this request safe to retry. See
        # [Idempotent requests](https://docs.whop.com/developer/api/idempotency).
        idempotency_key: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing plan.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Plan)
      end
      def retrieve(
        # Plan ID, prefixed `plan_`.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Update a plan's pricing, billing interval, visibility, stock, and other
      # settings.
      sig do
        params(
          id: String,
          adaptive_pricing_enabled: T.nilable(T::Boolean),
          billing_period: T.nilable(Integer),
          cancel_discount_intervals: T.nilable(Integer),
          cancel_discount_percentage: T.nilable(Integer),
          checkout_styling: T.nilable(T.anything),
          currency: String,
          custom_fields:
            T.nilable(T::Array[WhopSDK::PlanUpdateParams::CustomField::OrHash]),
          description: T.nilable(String),
          expiration_days: T.nilable(Integer),
          image: T.nilable(WhopSDK::PlanUpdateParams::Image::OrHash),
          initial_price: T.nilable(Float),
          internal_notes: T.nilable(String),
          metadata: T.nilable(T.anything),
          offer_cancel_discount: T.nilable(T::Boolean),
          override_tax_type: String,
          payment_method_configuration:
            T.nilable(
              WhopSDK::PlanUpdateParams::PaymentMethodConfiguration::OrHash
            ),
          release_method: String,
          renewal_price: T.nilable(Float),
          stock: T.nilable(Integer),
          strike_through_initial_price: T.nilable(Float),
          strike_through_renewal_price: T.nilable(Float),
          three_ds_level:
            T.nilable(WhopSDK::PlanUpdateParams::ThreeDSLevel::OrSymbol),
          title: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          unlimited_stock: T.nilable(T::Boolean),
          visibility: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Plan)
      end
      def update(
        # Path param: Plan ID, prefixed `plan_`.
        id,
        # Body param: Whether this plan accepts local currency payments via adaptive
        # pricing.
        adaptive_pricing_enabled: nil,
        # Body param: Recurring billing interval in days, such as 30 for monthly or 365
        # for annual.
        billing_period: nil,
        # Body param: How many renewals the retention discount applies to. Required when
        # `offer_cancel_discount` is true.
        cancel_discount_intervals: nil,
        # Body param: Percentage taken off each discounted renewal. Required when
        # `offer_cancel_discount` is true.
        cancel_discount_percentage: nil,
        # Body param: Checkout styling overrides for this plan.
        checkout_styling: nil,
        # Body param: The three-letter ISO currency code for the plan's pricing. Defaults
        # to USD.
        currency: nil,
        # Body param: An array of custom field definitions to collect from customers at
        # checkout. Omitting this field clears existing custom fields.
        custom_fields: nil,
        # Body param: A text description of the plan displayed to customers on the product
        # page.
        description: nil,
        # Body param: Access duration in days before the membership expires.
        expiration_days: nil,
        # Body param: An image displayed on the product page to represent this plan.
        image: nil,
        # Body param: Initial amount charged in the plan's currency, e.g. 10.43 for
        # $10.43. A paid fiat plan charges at least 1.00 in its currency; use 0 for free.
        initial_price: nil,
        # Body param: Private notes visible only to the account owner. Not shown to
        # customers.
        internal_notes: nil,
        # Body param: Custom key-value pairs to store on the plan. Included in webhook
        # payloads for payment and membership events. Max 50 keys, 100 chars per key, 500
        # chars per string value. The reserved keys `custom_cta` (a checkout
        # call-to-action button label — one of the product custom CTA values, e.g.
        # `subscribe`, `get_offer`) and `custom_cta_url` (a URL the button links to; web
        # or `tel:`) override the product's call to action for this plan and are validated
        # on save.
        metadata: nil,
        # Body param: Whether to offer a retention discount when a customer attempts to
        # cancel.
        offer_cancel_discount: nil,
        # Body param: Override the default tax classification for this specific plan.
        override_tax_type: nil,
        # Body param: Explicit payment method configuration for the plan. When not
        # provided, the account's defaults apply.
        payment_method_configuration: nil,
        # Body param: Sales method for this plan.
        release_method: nil,
        # Body param: The amount charged each billing period for recurring plans, in the
        # plan's currency. A paid fiat plan charges at least 1.00 in its currency.
        renewal_price: nil,
        # Body param: The maximum number of units available for purchase. Ignored when
        # unlimited_stock is true.
        stock: nil,
        # Body param: A comparison price displayed with a strikethrough for the initial
        # price.
        strike_through_initial_price: nil,
        # Body param: A comparison price displayed with a strikethrough for the renewal
        # price.
        strike_through_renewal_price: nil,
        # Body param: 3D Secure behavior for this plan. Send `null` to inherit the account
        # default.
        three_ds_level: nil,
        # Body param: The display name of the plan shown to customers on the product page.
        title: nil,
        # Body param: Free trial duration before the first recurring charge.
        trial_period_days: nil,
        # Body param: Whether the plan has unlimited stock. When true, the stock field is
        # ignored.
        unlimited_stock: nil,
        # Body param: Whether the plan is visible to customers or hidden from public view.
        visibility: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of plans. Omit `account_id` and pass `product_ids` to
      # list a product's public buyable plans.
      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          created_after: String,
          created_before: String,
          direction: WhopSDK::PlanListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::PlanListParams::Order::OrSymbol,
          plan_types: T::Array[String],
          product_ids: T::Array[String],
          release_methods: T::Array[String],
          visibilities: T::Array[String],
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::PlanListResponse]
        )
      end
      def list(
        # Query param: The unique identifier of the account to list plans for. Required
        # unless `product_ids` is provided for a public product-plan read.
        account_id: nil,
        # Query param: A cursor; returns plans after this position.
        after: nil,
        # Query param: A cursor; returns plans before this position.
        before: nil,
        # Query param: Only return plans created after this timestamp.
        created_after: nil,
        # Query param: Only return plans created before this timestamp.
        created_before: nil,
        # Query param: The sort direction for results. Defaults to descending.
        direction: nil,
        # Query param: The number of plans to return (default and max 100).
        first: nil,
        # Query param: The number of plans to return from the end of the range.
        last: nil,
        # Query param: The field to sort results by. Defaults to created_at.
        order: nil,
        # Query param: Filter to only plans matching these billing types.
        plan_types: nil,
        # Query param: Filter to only plans belonging to these product identifiers. When
        # `account_id` is omitted, this is required and the response is publicly readable:
        # only visible, non-invoice plans are returned.
        product_ids: nil,
        # Query param: Filter to only plans matching these release methods.
        release_methods: nil,
        # Query param: Filter to only plans matching these visibility states.
        visibilities: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Permanently delete a plan from a product. Existing memberships on this plan will
      # not be affected.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::PlanDeleteResponse)
      end
      def delete(
        # Plan ID, prefixed `plan_`.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
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
