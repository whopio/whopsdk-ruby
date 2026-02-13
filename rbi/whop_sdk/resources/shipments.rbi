# typed: strong

module WhopSDK
  module Resources
    class Shipments
      # Create a new shipment with a tracking code for a specific payment within a
      # company.
      #
      # Required permissions:
      #
      # - `shipment:create`
      # - `payment:basic:read`
      sig do
        params(
          company_id: String,
          payment_id: String,
          tracking_code: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Shipment)
      end
      def create(
        # The unique identifier of the company to create the shipment for, starting with
        # 'biz\_'.
        company_id:,
        # The unique identifier of the payment to associate the shipment with.
        payment_id:,
        # The carrier tracking code for the shipment, such as a USPS, UPS, or FedEx
        # tracking number.
        tracking_code:,
        request_options: {}
      )
      end

      # Retrieves the details of an existing shipment.
      #
      # Required permissions:
      #
      # - `shipment:basic:read`
      # - `payment:basic:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Shipment)
      end
      def retrieve(
        # The unique identifier of the shipment to retrieve.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of shipments, with optional filtering by payment,
      # company, or user.
      #
      # Required permissions:
      #
      # - `shipment:basic:read`
      # - `payment:basic:read`
      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          company_id: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          payment_id: T.nilable(String),
          user_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::ShipmentListResponse]
        )
      end
      def list(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter shipments to only those belonging to this company.
        company_id: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Filter shipments to only those associated with this specific payment.
        payment_id: nil,
        # Filter shipments to only those for this specific user.
        user_id: nil,
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
