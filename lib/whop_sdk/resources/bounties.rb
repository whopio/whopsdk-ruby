# frozen_string_literal: true

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
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::BountyCreateParams} for more details.
      #
      # Creates a bounty and escrows its reward pool. Publishes immediately, or as a
      # scheduled draft when you set `publish_at`.
      #
      # @overload create(description:, gross_reward_amount:, title:, accepted_submissions_limit: nil, accepted_submissions_per_user_limit: nil, account_id: nil, allowed_country_codes: nil, business_goal_type: nil, capture_spec: nil, experience_id: nil, frequency: nil, publish_at: nil, publish_at_timezone: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param description [String] Body param: Full task instructions shown to workers.
      #
      # @param gross_reward_amount [Float] Body param: Gross bounty-pool amount (USD) escrowed per accepted submission, in
      #
      # @param title [String] Body param: Short name of the task shown to workers.
      #
      # @param accepted_submissions_limit [Integer, nil] Body param: Number of submissions that can be accepted (winner slots). Defaults
      #
      # @param accepted_submissions_per_user_limit [Integer, nil] Body param: How many winner slots one worker can win. Defaults to `1`. Wins plus
      #
      # @param account_id [String, nil] Body param: Account whose balance funds the bounty pool (`biz_` tag). Defaults t
      #
      # @param allowed_country_codes [Array<String>, nil] Body param: Countries whose residents can work the bounty, as ISO 3166 alpha-2 c
      #
      # @param business_goal_type [Symbol, WhopSDK::Models::BountyCreateParams::BusinessGoalType] Body param: What the poster wants the work to achieve, declared once here.
      #
      # @param capture_spec [WhopSDK::Models::BountyCreateParams::CaptureSpec] Body param: Per-bounty overrides of the served capture contract. Only accepted w
      #
      # @param experience_id [String, nil] Body param: Experience to host the bounty in (`exp_` tag). Any visibility — publ
      #
      # @param frequency [Symbol, WhopSDK::Models::BountyCreateParams::Frequency] Body param: How often the schedule creates a new bounty. Each occurrence is a se
      #
      # @param publish_at [String, nil] Body param: ISO 8601 time to publish the bounty. When set, the bounty is created
      #
      # @param publish_at_timezone [String, nil] Body param: IANA timezone for recurring occurrences. Required when publish_at is
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param idempotency_key [String] Header param: A unique key that makes this request safe to retry. See [Idempoten
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::BountyCreateResponse]
      #
      # @see WhopSDK::Models::BountyCreateParams
      def create(params)
        parsed, options = WhopSDK::BountyCreateParams.dump_request(params)
        header_params = {api_version_date: "api-version-date", idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "bounties",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: WhopSDK::Models::BountyCreateResponse,
          options: options
        )
      end

      # Retrieves a bounty by ID. Authentication is optional: a request with no
      # credential reads the bounty when it is publicly visible — published or
      # completed, and not restricted to a private experience's members. Bounties
      # outside the caller's scope, and bounties not publicly visible to an anonymous
      # caller, return `404`.
      #
      # @overload retrieve(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] Bounty ID (`bnty_` tag).
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::BountyRetrieveResponse]
      #
      # @see WhopSDK::Models::BountyRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::BountyRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["bounties/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::Models::BountyRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::BountyListParams} for more details.
      #
      # Lists bounties visible to the credential — for an account API key, the account's
      # bounties including scheduled drafts; for a user token, the bounties the user can
      # see and work.
      #
      # @overload list(account_id: nil, after: nil, before: nil, business_goal_type: nil, country: nil, created_after: nil, created_before: nil, direction: nil, experience_id: nil, first: nil, last: nil, order: nil, query: nil, status: nil, user_id: nil, api_version_date: nil, request_options: {})
      #
      # @param account_id [String] Query param: Scope the list to this account (`biz_` tag). Requires read access t
      #
      # @param after [String] Query param: Cursor to paginate forwards from.
      #
      # @param before [String] Query param: Cursor to paginate backwards from.
      #
      # @param business_goal_type [Symbol, WhopSDK::Models::BountyListParams::BusinessGoalType] Query param: Filter by the poster's declared goal. Bounties created before the g
      #
      # @param country [String] Query param: Only bounties workable from this country, as an ISO 3166-1 alpha-2
      #
      # @param created_after [String] Query param: Only bounties created after this ISO 8601 timestamp.
      #
      # @param created_before [String] Query param: Only bounties created before this ISO 8601 timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::BountyListParams::Direction] Query param: Sort direction.
      #
      # @param experience_id [String] Query param: Only bounties posted to this forum experience, prefixed `exp_`. An
      #
      # @param first [Integer] Query param: Number of bounties to return from the start of the window.
      #
      # @param last [Integer] Query param: Number of bounties to return from the end of the window.
      #
      # @param order [Symbol, WhopSDK::Models::BountyListParams::Order] Query param: Sort field.
      #
      # @param query [String] Query param: Substring match on the bounty title or ID.
      #
      # @param status [Symbol, WhopSDK::Models::BountyListParams::Status] Query param: Filter by lifecycle state.
      #
      # @param user_id [String] Query param: List the bounties this user participated in (`user_` tag). Must be
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::BountyListResponse>]
      #
      # @see WhopSDK::Models::BountyListParams
      def list(params = {})
        query_params =
          [
            :account_id,
            :after,
            :before,
            :business_goal_type,
            :country,
            :created_after,
            :created_before,
            :direction,
            :experience_id,
            :first,
            :last,
            :order,
            :query,
            :status,
            :user_id
          ]
        parsed, options = WhopSDK::BountyListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "bounties",
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::BountyListResponse,
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
