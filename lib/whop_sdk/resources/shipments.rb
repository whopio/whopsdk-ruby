# frozen_string_literal: true

module WhopSDK
  module Resources
    class Shipments
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::ShipmentCreateParams} for more details.
      #
      # Create a new shipment with a tracking code for a specific payment within a
      # company.
      #
      # Required permissions:
      #
      # - `shipment:create`
      # - `payment:basic:read`
      #
      # @overload create(company_id:, payment_id:, tracking_code:, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to create the shipment for, starting with '
      #
      # @param payment_id [String] The unique identifier of the payment to associate the shipment with.
      #
      # @param tracking_code [String] The carrier tracking code for the shipment, such as a USPS, UPS, or FedEx tracki
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Shipment]
      #
      # @see WhopSDK::Models::ShipmentCreateParams
      def create(params)
        parsed, options = WhopSDK::ShipmentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "shipments",
          body: parsed,
          model: WhopSDK::Shipment,
          options: options
        )
      end

      # Retrieves the details of an existing shipment.
      #
      # Required permissions:
      #
      # - `shipment:basic:read`
      # - `payment:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the shipment to retrieve.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Shipment]
      #
      # @see WhopSDK::Models::ShipmentRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["shipments/%1$s", id],
          model: WhopSDK::Shipment,
          options: params[:request_options]
        )
      end

      # Returns a paginated list of shipments, with optional filtering by payment,
      # company, or user.
      #
      # Required permissions:
      #
      # - `shipment:basic:read`
      # - `payment:basic:read`
      #
      # @overload list(after: nil, before: nil, company_id: nil, first: nil, last: nil, payment_id: nil, user_id: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param company_id [String, nil] Filter shipments to only those belonging to this company.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param payment_id [String, nil] Filter shipments to only those associated with this specific payment.
      #
      # @param user_id [String, nil] Filter shipments to only those for this specific user.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::ShipmentListResponse>]
      #
      # @see WhopSDK::Models::ShipmentListParams
      def list(params = {})
        parsed, options = WhopSDK::ShipmentListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "shipments",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::ShipmentListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
