# typed: strong

module WhopSDK
  module Resources
    class CheckoutConfigurations
      # Creates a new checkout configuration
      #
      # Required permissions:
      #
      # - `checkout_configuration:create`
      # - `plan:create`
      # - `access_pass:create`
      # - `access_pass:update`
      # - `checkout_configuration:basic:read`
      sig do
        params(
          plan: WhopSDK::CheckoutConfigurationCreateParams::Plan::OrHash,
          plan_id: String,
          company_id: String,
          affiliate_code: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          payment_method_configuration:
            T.nilable(
              WhopSDK::CheckoutConfigurationCreateParams::PaymentMethodConfiguration::OrHash
            ),
          redirect_url: T.nilable(String),
          mode: Symbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::CheckoutConfiguration)
      end
      def create(
        # Pass this object to create a new plan for this checkout configuration
        plan:,
        # The ID of the plan to use for the checkout configuration
        plan_id:,
        # The ID of the company for which to generate the checkout configuration. Only
        # required in setup mode.
        company_id:,
        # The affiliate code to use for the checkout configuration
        affiliate_code: nil,
        # The metadata to use for the checkout configuration
        metadata: nil,
        # This currently only works for configurations made in 'setup' mode. The explicit
        # payment method configuration for the checkout session. If not provided, the
        # platform or company's defaults will apply.
        payment_method_configuration: nil,
        # The URL to redirect the user to after the checkout configuration is created
        redirect_url: nil,
        mode: :setup,
        request_options: {}
      )
      end

      # Retrieves a checkout configuration by ID
      #
      # Required permissions:
      #
      # - `checkout_configuration:basic:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::CheckoutConfiguration)
      end
      def retrieve(
        # The ID of the checkout configuration
        id,
        request_options: {}
      )
      end

      # Lists checkout configurations
      #
      # Required permissions:
      #
      # - `checkout_configuration:basic:read`
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
          plan_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::CheckoutConfigurationListResponse
          ]
        )
      end
      def list(
        # The ID of the company to list checkout configurations for
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
        # The ID of the plan to filter checkout configurations by
        plan_id: nil,
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
