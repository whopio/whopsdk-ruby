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
      sig do
        params(
          affiliate_code: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          plan:
            T.nilable(WhopSDK::CheckoutConfigurationCreateParams::Plan::OrHash),
          plan_id: T.nilable(String),
          redirect_url: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::CheckoutConfiguration)
      end
      def create(
        # The affiliate code to use for the checkout configuration
        affiliate_code: nil,
        # The metadata to use for the checkout configuration
        metadata: nil,
        # Pass this object to create a new plan for this checkout configuration
        plan: nil,
        # The ID of the plan to use for the checkout configuration
        plan_id: nil,
        # The URL to redirect the user to after the checkout configuration is created
        redirect_url: nil,
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
      def retrieve(id, request_options: {})
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
