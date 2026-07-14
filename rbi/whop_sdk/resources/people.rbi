# typed: strong

module WhopSDK
  module Resources
    # A Person represents a visitor or customer of an account, assembled from
    # [pixel events](/api-reference/beta/events/event) and purchase activity — ad
    # clicks, storefront visits, and checkouts.
    #
    # Use the People API to list the people of an account and retrieve a single
    # person.
    class People
      # Retrieves one person for an account, aggregated from pixel events.
      sig do
        params(
          person_id: String,
          account_id: String,
          from: Integer,
          to: Integer,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::PersonRetrieveResponse)
      end
      def retrieve(
        # The ID of the person.
        person_id,
        # The ID of the account, which will look like biz\_******\*******. Optional for
        # account API keys; required for credentials that can access multiple accounts.
        account_id: nil,
        # Start of the time range as a Unix timestamp.
        from: nil,
        # End of the time range as a Unix timestamp. Defaults to now.
        to: nil,
        request_options: {}
      )
      end

      # Lists the people (visitors and customers) of an account, aggregated from pixel
      # events. The account is inferred from an account API key; other credentials must
      # pass account_id.
      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          direction: WhopSDK::PersonListParams::Direction::OrSymbol,
          filters: String,
          first: Integer,
          from: Integer,
          sort: String,
          to: Integer,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::PersonListResponse]
        )
      end
      def list(
        # The ID of the account, which will look like biz\_******\*******. Optional for
        # account API keys; required for credentials that can access multiple accounts.
        account_id: nil,
        # A cursor for fetching people after a previous page.
        after: nil,
        # A cursor for fetching people before a later page.
        before: nil,
        # Sort direction. Defaults to desc.
        direction: nil,
        # A JSON-encoded array of filters, each with field, operator, and value keys.
        filters: nil,
        # The number of people to return (default 100, max 100).
        first: nil,
        # Start of the time range as a Unix timestamp. Defaults to 366 days before `to`.
        from: nil,
        # Column to sort by (e.g. last_seen_at, ltv, purchase_count). Defaults to
        # last_seen_at.
        sort: nil,
        # End of the time range as a Unix timestamp. Defaults to now.
        to: nil,
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
