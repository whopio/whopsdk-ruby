# typed: strong

module Whopsdk
  module Resources
    class Shipments
      # Creates a new shipment
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
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Shipment)
      end
      def create(
        # The ID of the bot to create the shipment for
        company_id:,
        # The ID of the payment to create the shipment for
        payment_id:,
        # The tracking code for the shipment
        tracking_code:,
        request_options: {}
      )
      end

      # Retrieves a shipment by ID
      #
      # Required permissions:
      #
      # - `shipment:basic:read`
      # - `payment:basic:read`
      sig do
        params(
          id: String,
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Shipment)
      end
      def retrieve(id, request_options: {})
      end

      # Lists shipments for a payment
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
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(
          Whopsdk::Internal::CursorPage[Whopsdk::Models::ShipmentListResponse]
        )
      end
      def list(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The ID of the company
        company_id: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The ID of the payment
        payment_id: nil,
        # The ID of the user
        user_id: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Whopsdk::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
