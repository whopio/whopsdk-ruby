# typed: strong

module WhopSDK
  module Resources
    # Checkout configurations
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
          body:
            T.any(
              WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::OrHash,
              WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlanID::OrHash,
              WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModeSetup::OrHash
            ),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::CheckoutConfiguration)
      end
      def create(
        # Parameters for CreateCheckoutSession
        body:,
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
          after: String,
          before: String,
          created_after: Time,
          created_before: Time,
          direction: WhopSDK::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          plan_id: String,
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
        # The sort direction for ordering results, either ascending or descending.
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
