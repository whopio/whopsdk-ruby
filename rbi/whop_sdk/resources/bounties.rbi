# typed: strong

module WhopSDK
  module Resources
    # A Bounty is a paid task posted by an account or user. The reward is held in
    # escrow when the bounty publishes, workers submit proof of completed work, and
    # each accepted submission is paid out until every winner slot fills.
    #
    # Use the Bounties API to create and publish a bounty, list an account's bounties
    # for reporting or dashboards, list the bounties a user can work or has
    # participated in, and retrieve a single bounty by ID.
    class Bounties
      # Creates a bounty and escrows its reward pool. Publishes immediately, or as a
      # scheduled draft when you set `publish_at`.
      sig do
        params(
          description: String,
          gross_reward_amount: Float,
          title: String,
          accepted_submissions_limit: T.nilable(Integer),
          accepted_submissions_per_user_limit: T.nilable(Integer),
          account_id: T.nilable(String),
          allowed_country_codes: T.nilable(T::Array[String]),
          business_goal_type:
            WhopSDK::BountyCreateParams::BusinessGoalType::OrSymbol,
          capture_spec: WhopSDK::BountyCreateParams::CaptureSpec::OrHash,
          experience_id: T.nilable(String),
          frequency: WhopSDK::BountyCreateParams::Frequency::OrSymbol,
          publish_at: T.nilable(String),
          publish_at_timezone: T.nilable(String),
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::BountyCreateResponse)
      end
      def create(
        # Body param: Full task instructions shown to workers.
        description:,
        # Body param: Gross bounty-pool amount (USD) escrowed per accepted submission, in
        # whole dollars. Platform fees and affiliate shares are paid from this amount.
        gross_reward_amount:,
        # Body param: Short name of the task shown to workers.
        title:,
        # Body param: Number of submissions that can be accepted (winner slots). Defaults
        # to 1. The escrowed total is `gross_reward_amount` times this limit and must be
        # at least $5.
        accepted_submissions_limit: nil,
        # Body param: How many winner slots one worker can win. Defaults to `1`. Wins plus
        # proofs awaiting review never exceed this number, and a worker runs one attempt
        # at a time. Cannot exceed `accepted_submissions_limit`.
        accepted_submissions_per_user_limit: nil,
        # Body param: Account whose balance funds the bounty pool (`biz_` tag). Defaults
        # to the caller's personal balance. Requires permission to move the account's
        # funds.
        account_id: nil,
        # Body param: Countries whose residents can work the bounty, as ISO 3166 alpha-2
        # codes. Empty means worldwide.
        allowed_country_codes: nil,
        # Body param: What the poster wants the work to achieve, declared once here.
        business_goal_type: nil,
        # Body param: Per-bounty overrides of the served capture contract. Only accepted
        # when `business_goal_type` is `data_capture`; omitted fields keep the platform
        # defaults, and the resulting contract is echoed back as `capture_spec` on the
        # bounty.
        capture_spec: nil,
        # Body param: Experience to host the bounty in (`exp_` tag). Any visibility —
        # public for an open bounty, private for an invited one. Required unless
        # account_id is set, in which case the bounty anchors in that account's public
        # forum.
        experience_id: nil,
        # Body param: How often the schedule creates a new bounty. Each occurrence is a
        # separate bounty. Defaults to `once`; only applies with `publish_at`.
        frequency: nil,
        # Body param: ISO 8601 time to publish the bounty. When set, the bounty is created
        # as a hidden draft and funded + published at this time instead of immediately.
        publish_at: nil,
        # Body param: IANA timezone for recurring occurrences. Required when publish_at is
        # set.
        publish_at_timezone: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        # Header param: A unique key that makes this request safe to retry. See
        # [Idempotent requests](https://docs.whop.com/developer/api/idempotency).
        idempotency_key: nil,
        request_options: {}
      )
      end

      # Retrieves a bounty by ID. Authentication is optional: a request with no
      # credential reads the bounty when it is publicly visible — published or
      # completed, and not restricted to a private experience's members. Bounties
      # outside the caller's scope, and bounties not publicly visible to an anonymous
      # caller, return `404`.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::BountyRetrieveResponse)
      end
      def retrieve(
        # Bounty ID (`bnty_` tag).
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Lists bounties visible to the credential — for an account API key, the account's
      # bounties including scheduled drafts; for a user token, the bounties the user can
      # see and work.
      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          business_goal_type:
            WhopSDK::BountyListParams::BusinessGoalType::OrSymbol,
          country: String,
          created_after: String,
          created_before: String,
          direction: WhopSDK::BountyListParams::Direction::OrSymbol,
          experience_id: String,
          first: Integer,
          last: Integer,
          order: WhopSDK::BountyListParams::Order::OrSymbol,
          query: String,
          status: WhopSDK::BountyListParams::Status::OrSymbol,
          user_id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::BountyListResponse]
        )
      end
      def list(
        # Query param: Scope the list to this account (`biz_` tag). Requires read access
        # to the account; account API keys may pass their own account or a connected
        # account.
        account_id: nil,
        # Query param: Cursor to paginate forwards from.
        after: nil,
        # Query param: Cursor to paginate backwards from.
        before: nil,
        # Query param: Filter by the poster's declared goal. Bounties created before the
        # goal taxonomy carry no goal and never match this filter.
        business_goal_type: nil,
        # Query param: Only bounties workable from this country, as an ISO 3166-1 alpha-2
        # code. Bounties with no country targeting are workable worldwide and always
        # match.
        country: nil,
        # Query param: Only bounties created after this ISO 8601 timestamp.
        created_after: nil,
        # Query param: Only bounties created before this ISO 8601 timestamp.
        created_before: nil,
        # Query param: Sort direction.
        direction: nil,
        # Query param: Only bounties posted to this forum experience, prefixed `exp_`. An
        # unknown experience, or one outside the caller's scope, matches nothing.
        experience_id: nil,
        # Query param: Number of bounties to return from the start of the window.
        first: nil,
        # Query param: Number of bounties to return from the end of the window.
        last: nil,
        # Query param: Sort field.
        order: nil,
        # Query param: Substring match on the bounty title or ID.
        query: nil,
        # Query param: Filter by lifecycle state.
        status: nil,
        # Query param: List the bounties this user participated in (`user_` tag). Must be
        # the authenticated user.
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
