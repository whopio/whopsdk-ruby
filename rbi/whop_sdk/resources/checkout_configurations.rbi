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
          currency: T.nilable(WhopSDK::Currency::OrSymbol),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          payment_method_configuration:
            T.nilable(
              WhopSDK::CheckoutConfigurationCreateParams::PaymentMethodConfiguration::OrHash
            ),
          redirect_url: T.nilable(String),
          source_url: T.nilable(String),
          mode: Symbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::CheckoutConfiguration)
      end
      def create(
        # The plan attributes to create a new plan inline for this checkout configuration.
        plan:,
        # The unique identifier of an existing plan to use for this checkout
        # configuration.
        plan_id:,
        # The unique identifier of the company to create the checkout configuration for.
        # Only required in setup mode.
        company_id:,
        # An affiliate tracking code to attribute the checkout to a specific affiliate.
        affiliate_code: nil,
        # The available currencies on the platform
        currency: nil,
        # Custom key-value metadata to attach to the checkout configuration.
        metadata: nil,
        # The explicit payment method configuration for the checkout session. Only applies
        # to setup mode. If not provided, the platform or company defaults will apply.
        payment_method_configuration: nil,
        # The URL to redirect the user to after checkout is completed.
        redirect_url: nil,
        # The URL of the page where the checkout is being initiated from.
        source_url: nil,
        mode: :setup,
        request_options: {}
      )
      end

      # Retrieves the details of an existing checkout configuration.
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
        # The unique identifier of the checkout configuration.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of checkout configurations for a company, with optional
      # filtering by plan and creation date.
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
        # The unique identifier of the company to list checkout configurations for.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return checkout configurations created after this timestamp.
        created_after: nil,
        # Only return checkout configurations created before this timestamp.
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Filter checkout configurations to only those associated with this plan
        # identifier.
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
