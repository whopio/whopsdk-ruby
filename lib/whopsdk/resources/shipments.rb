# frozen_string_literal: true

module Whopsdk
  module Resources
    class Shipments
      # Creates a new shipment
      #
      # Required permissions:
      #
      # - `shipment:create`
      # - `payment:basic:read`
      #
      # @overload create(company_id:, payment_id:, tracking_code:, request_options: {})
      #
      # @param company_id [String] The ID of the company to create the shipment for
      #
      # @param payment_id [String] The ID of the payment to create the shipment for
      #
      # @param tracking_code [String] The tracking code for the shipment
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::Shipment]
      #
      # @see Whopsdk::Models::ShipmentCreateParams
      def create(params)
        parsed, options = Whopsdk::ShipmentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "shipments",
          body: parsed,
          model: Whopsdk::Shipment,
          options: options
        )
      end

      # Retrieves a shipment by ID
      #
      # Required permissions:
      #
      # - `shipment:basic:read`
      # - `payment:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::Shipment]
      #
      # @see Whopsdk::Models::ShipmentRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["shipments/%1$s", id],
          model: Whopsdk::Shipment,
          options: params[:request_options]
        )
      end

      # Lists shipments for a payment
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
      # @param company_id [String, nil] The ID of the company
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param payment_id [String, nil] The ID of the payment
      #
      # @param user_id [String, nil] The ID of the user
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Internal::CursorPage<Whopsdk::Models::ShipmentListResponse>]
      #
      # @see Whopsdk::Models::ShipmentListParams
      def list(params = {})
        parsed, options = Whopsdk::ShipmentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "shipments",
          query: parsed,
          page: Whopsdk::Internal::CursorPage,
          model: Whopsdk::Models::ShipmentListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Whopsdk::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
