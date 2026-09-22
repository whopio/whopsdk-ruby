# typed: strong

module WhopSDK
  module Resources
    # A Setup Intent saves a buyer's payment method for later without taking money
    # now. Create one from a confirmation token the payment elements collected in
    # setup mode, or from a payment method already on file to re-verify it. It runs
    # the same collection flow a payment does, so the buyer may still owe a step: 3D
    # Secure on a card, a hosted enrollment, or linking a bank account.
    #
    # The create response is the setup intent as created, not its outcome. Hand its
    # `client_secret` to the elements' `handleNextAction`, or poll
    # [Retrieve status](/api-reference/beta/setup-intents/retrieve-setup-status) for
    # how far the setup has gone and what is outstanding. Once it reaches `succeeded`,
    # `payment_method_id` names the saved method and Create Payment charges it.
    class SetupIntents
      # Returns one setup intent. Related records are ids — once `status` is
      # `succeeded`, `payment_method_id` is the saved method to charge or retrieve. The
      # buyer's own token may retrieve a setup intent that belongs to it.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::SetupIntent)
      end
      def retrieve(
        # The setup intent to retrieve, prefixed `sint_`.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Lists setup intents newest first. An account API key lists its own account; a
      # user token lists every account it can read, or one account with `account_id`.
      # `client_secret` is always null on list rows — retrieve the setup intent for it.
      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          created_after: Time,
          created_before: Time,
          direction: WhopSDK::SetupIntentListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::SetupIntentListParams::Order::OrSymbol,
          status: WhopSDK::SetupIntentListParams::Status::OrSymbol,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Internal::CursorPage[WhopSDK::SetupIntent])
      end
      def list(
        # Query param: Only setup intents for this account, prefixed `biz_`.
        account_id: nil,
        # Query param: Return results after this cursor. Use `page_info.end_cursor` from
        # the previous response to fetch the next page.
        after: nil,
        # Query param: Return results before this cursor. Use `page_info.start_cursor`
        # from the previous response to fetch the previous page.
        before: nil,
        # Query param: Only setup intents created after this ISO 8601 timestamp.
        created_after: nil,
        # Query param: Only setup intents created before this ISO 8601 timestamp.
        created_before: nil,
        # Query param: The sort direction.
        direction: nil,
        # Query param: Number of results to return from the start of the range.
        first: nil,
        # Query param: Number of results to return from the end of the range.
        last: nil,
        # Query param: The field to sort by.
        order: nil,
        # Query param: Only setup intents in this state.
        status: nil,
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
