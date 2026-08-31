# typed: strong

module WhopSDK
  module Resources
    # A Checkout Configuration is a reusable checkout link owned by an account. In
    # `payment` mode it sells a specific plan; in `setup` mode it collects and saves
    # payment details without charging. Each configuration can also override which
    # payment methods are accepted and how 3D Secure is enforced for that checkout.
    #
    # Use the Checkout Configurations API to create checkout links for an existing or
    # inline plan, list configurations for an account, retrieve the configuration
    # behind a checkout URL, and delete links that should no longer be used.
    class CheckoutConfigurations
      # Creates a reusable checkout configuration for an existing or inline plan.
      sig do
        params(
          account_id: String,
          affiliate_code: T.nilable(String),
          currency: T.nilable(String),
          metadata: T.nilable(T.anything),
          mode: WhopSDK::CheckoutConfigurationCreateParams::Mode::OrSymbol,
          payment_method_configuration:
            T.nilable(
              WhopSDK::CheckoutConfigurationCreateParams::PaymentMethodConfiguration::OrHash
            ),
          plan:
            T.nilable(WhopSDK::CheckoutConfigurationCreateParams::Plan::OrHash),
          plan_id: T.nilable(String),
          redirect_url: T.nilable(String),
          three_ds_level:
            T.nilable(
              WhopSDK::CheckoutConfigurationCreateParams::ThreeDSLevel::OrSymbol
            ),
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::CheckoutConfigurationCreateResponse)
      end
      def create(
        # Body param: Account ID, prefixed `biz_`.
        account_id: nil,
        # Body param: Affiliate code to apply to the checkout.
        affiliate_code: nil,
        # Body param: Currency used for setup-mode payment method availability.
        currency: nil,
        # Body param: Custom key-value metadata copied to payments and memberships.
        metadata: nil,
        # Body param: Controls whether checkout charges the buyer immediately or saves
        # payment details for later. Defaults to `payment`.
        mode: nil,
        # Body param: Payment method overrides for this checkout. `null` uses the plan or
        # platform defaults.
        payment_method_configuration: nil,
        # Body param: Plan attributes used to create or find a plan for this checkout
        # configuration. Mutually exclusive with `plan_id`.
        plan: nil,
        # Body param: Existing plan ID, prefixed `plan_`. Mutually exclusive with `plan`.
        plan_id: nil,
        # Body param: URL customers are sent to after checkout.
        redirect_url: nil,
        # Body param: 3D Secure behavior for this checkout.
        three_ds_level: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        # Header param: A unique key that makes this request safe to retry. See
        # [Idempotent requests](https://docs.whop.com/developer/api/idempotency).
        idempotency_key: nil,
        request_options: {}
      )
      end

      # Retrieves a checkout configuration by ID. This endpoint is public so a checkout
      # page can load from the configuration URL.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::CheckoutConfigurationRetrieveResponse)
      end
      def retrieve(
        # The ID of the checkout configuration.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Lists checkout configurations for an account.
      sig do
        params(
          account_id: String,
          after: String,
          created_after: String,
          created_before: String,
          direction:
            WhopSDK::CheckoutConfigurationListParams::Direction::OrSymbol,
          first: Integer,
          order: WhopSDK::CheckoutConfigurationListParams::Order::OrSymbol,
          plan_id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::CheckoutConfigurationListResponse
          ]
        )
      end
      def list(
        # Query param: Account ID, prefixed `biz_`.
        account_id:,
        # Query param: Cursor for the next page of results.
        after: nil,
        # Query param: Only return checkout configurations created after this ISO 8601
        # timestamp.
        created_after: nil,
        # Query param: Only return checkout configurations created before this ISO 8601
        # timestamp.
        created_before: nil,
        # Query param: Sort direction. Defaults to `desc`.
        direction: nil,
        # Query param: Number of checkout configurations to return.
        first: nil,
        # Query param: Field used to sort checkout configurations.
        order: nil,
        # Query param: Only return checkout configurations for this plan ID, prefixed
        # `plan_`.
        plan_id: nil,
        # Header param: Pins the request to a dated API version.
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
