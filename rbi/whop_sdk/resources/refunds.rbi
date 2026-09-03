# typed: strong

module WhopSDK
  module Resources
    # A Refund is one reversal of a payment, full or partial. Refunds are issued with
    # `POST /payments/{id}/refund`; this resource is the record of each one — how much
    # moved, through which provider, and where it stands (`pending`, `succeeded`,
    # `failed`).
    #
    # List a payment's refunds with `?payment_id=`, or every refund an account issued
    # with `?account_id=`. `amount` is stated in the payment's settlement currency so
    # it nets against the payment's `total`; `original_amount` is what the processor
    # moved.
    class Refunds
      # Returns one refund.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::RefundRetrieveResponse)
      end
      def retrieve(
        # The refund to retrieve, prefixed `rf_`.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Lists refunds, newest first. Without filters this is every refund the caller can
      # read; narrow it to one payment with `payment_id`, one account with `account_id`,
      # or one buyer with `user_id`.
      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          created_after: Time,
          created_before: Time,
          direction: WhopSDK::RefundListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::RefundListParams::Order::OrSymbol,
          payment_id: String,
          user_id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::RefundListResponse]
        )
      end
      def list(
        # Query param: Only refunds issued by this account, prefixed `biz_`.
        account_id: nil,
        # Query param: A cursor; returns refunds after this position.
        after: nil,
        # Query param: A cursor; returns refunds before this position.
        before: nil,
        # Query param: Only refunds requested after this ISO 8601 timestamp.
        created_after: nil,
        # Query param: Only refunds requested before this ISO 8601 timestamp.
        created_before: nil,
        # Query param: The sort direction.
        direction: nil,
        # Query param: The number of refunds to return.
        first: nil,
        # Query param: The number of refunds to return from the end of the range.
        last: nil,
        # Query param: The field to sort by.
        order: nil,
        # Query param: Only refunds of this payment, prefixed `pay_`.
        payment_id: nil,
        # Query param: Only refunds to this buyer, prefixed `user_`.
        user_id: nil,
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
