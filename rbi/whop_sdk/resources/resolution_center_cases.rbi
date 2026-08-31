# typed: strong

module WhopSDK
  module Resources
    # A Resolution Center Case is opened by a buyer when something is wrong with a
    # purchase — an unwanted renewal, an item that never arrived, or a charge they
    # don't recognize. It is the step before a chargeback: the two sides work it out
    # directly, and Whop decides the case if they can't. Each case carries a reason, a
    # status naming which side it is waiting on, a timeline of events, and the actions
    # available to whoever is reading it.
    #
    # Use the Resolution Center Cases API from either side: as the buyer, open a case,
    # reply, appeal a decision, or withdraw it; as the merchant, accept it (refunding
    # the payment), deny it, or ask the buyer for more information. Both sides read
    # the same case, page its timeline, and summarize the cases they can see.
    class ResolutionCenterCases
      # Retrieves a single resolution center case with its full event timeline.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::ResolutionCenterCaseRetrieveResponse)
      end
      def retrieve(
        # The resolution center case ID (`reso_` tag).
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Lists resolution center cases. Without `account_id` you get every case you can
      # read — the ones you opened as a buyer and every account you are a team member
      # of; the filters narrow that list.
      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          created_after: String,
          created_before: String,
          direction:
            WhopSDK::ResolutionCenterCaseListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::ResolutionCenterCaseListParams::Order::OrSymbol,
          outcome:
            T::Array[
              WhopSDK::ResolutionCenterCaseListParams::Outcome::OrSymbol
            ],
          reason:
            T::Array[WhopSDK::ResolutionCenterCaseListParams::Reason::OrSymbol],
          status:
            T::Array[WhopSDK::ResolutionCenterCaseListParams::Status::OrSymbol],
          user_id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::ResolutionCenterCaseListResponse
          ]
        )
      end
      def list(
        # Query param: Only cases filed against this account (`biz_` tag). With read
        # access to the account this lists its whole queue; without, only the cases you
        # opened against it.
        account_id: nil,
        # Query param: A cursor; returns cases after this position.
        after: nil,
        # Query param: A cursor; returns cases before this position.
        before: nil,
        # Query param: Only cases created after this ISO 8601 timestamp.
        created_after: nil,
        # Query param: Only cases created before this ISO 8601 timestamp.
        created_before: nil,
        # Query param: Sort direction.
        direction: nil,
        # Query param: The number of cases to return (default 20, max 100).
        first: nil,
        # Query param: The number of cases to return from the end of the range.
        last: nil,
        # Query param: The field to sort cases by.
        order: nil,
        # Query param: Only closed cases that ended these ways. Repeat the parameter to
        # pass several.
        outcome: nil,
        # Query param: Only cases opened for these reasons. Repeat the parameter to pass
        # several.
        reason: nil,
        # Query param: Only cases in these statuses. Repeat the parameter to pass several
        # — one paginated list covers all of them.
        status: nil,
        # Query param: Only cases opened by this customer — a `user_` tag, or `me` for the
        # calling user. It narrows what you can already read, so `me` lists the cases you
        # opened without the ones on accounts you are a team member of.
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
