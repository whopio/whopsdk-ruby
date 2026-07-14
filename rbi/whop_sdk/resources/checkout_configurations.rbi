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
          affiliate_code: T.nilable(String),
          company_id: String,
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
          three_ds_level: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::CheckoutConfigurationCreateResponse)
      end
      def create(
        # Affiliate code to apply to the checkout.
        affiliate_code: nil,
        # Account ID, prefixed `biz_`.
        company_id: nil,
        # Currency used for setup-mode payment method availability.
        currency: nil,
        # Custom key-value metadata copied to payments and memberships.
        metadata: nil,
        # Checkout mode: `payment` collects payment for a plan now; `setup` saves payment
        # details without charging. Defaults to `payment`.
        mode: nil,
        # Payment method overrides for this checkout. `null` uses the plan or platform
        # defaults.
        payment_method_configuration: nil,
        # Plan attributes used to create or find a plan for this checkout configuration.
        # Mutually exclusive with `plan_id`.
        plan: nil,
        # Existing plan ID, prefixed `plan_`. Mutually exclusive with `plan`.
        plan_id: nil,
        # URL customers are sent to after checkout.
        redirect_url: nil,
        # 3D Secure behavior for this checkout.
        three_ds_level: nil,
        request_options: {}
      )
      end

      # Retrieves a checkout configuration by ID. This endpoint is public so a checkout
      # page can load from the configuration URL.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::CheckoutConfigurationRetrieveResponse)
      end
      def retrieve(
        # The ID of the checkout configuration.
        id,
        request_options: {}
      )
      end

      # Lists checkout configurations for an account.
      sig do
        params(
          company_id: String,
          after: String,
          created_after: Integer,
          created_before: Integer,
          direction:
            WhopSDK::CheckoutConfigurationListParams::Direction::OrSymbol,
          first: Integer,
          order: WhopSDK::CheckoutConfigurationListParams::Order::OrSymbol,
          plan_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::CheckoutConfigurationListResponse
          ]
        )
      end
      def list(
        # Account ID, prefixed `biz_`.
        company_id:,
        # Cursor for the next page of results.
        after: nil,
        # Only return checkout configurations created after this Unix timestamp.
        created_after: nil,
        # Only return checkout configurations created before this Unix timestamp.
        created_before: nil,
        # Sort direction. Defaults to `desc`.
        direction: nil,
        # Number of checkout configurations to return.
        first: nil,
        # Field used to sort checkout configurations.
        order: nil,
        # Only return checkout configurations for this plan ID, prefixed `plan_`.
        plan_id: nil,
        request_options: {}
      )
      end

      # Deletes a checkout configuration so its checkout URL can no longer be used.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).void
      end
      def delete(
        # The ID of the checkout configuration.
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
