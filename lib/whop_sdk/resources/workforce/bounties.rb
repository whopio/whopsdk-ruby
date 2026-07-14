# frozen_string_literal: true

module WhopSDK
  module Resources
    class Workforce
      # A Workforce Bounty is a paid task posted by an account or user. The reward is
      # held in escrow when the bounty publishes, workers submit proof of completed
      # work, and each accepted submission is paid out until every winner slot fills.
      #
      # Use the Workforce Bounties API to list an account's bounties for reporting or
      # dashboards, list the bounties a user can work or has participated in, and
      # retrieve a single bounty by ID.
      class Bounties
        # Retrieves one workforce bounty by ID. The bounty must be visible to the
        # credential; bounties outside the caller's scope return 404.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] Bounty ID (`bnty_` tag).
        #
        # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [WhopSDK::Models::Workforce::WorkforceBounty]
        #
        # @see WhopSDK::Models::Workforce::BountyRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["workforce/bounties/%1$s", id],
            model: WhopSDK::Workforce::WorkforceBounty,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {WhopSDK::Models::Workforce::BountyListParams} for more details.
        #
        # Lists workforce bounties visible to the credential. Account API keys return the
        # account's bounties, scheduled drafts included; user tokens return the bounties
        # the user can see and work. Pass account_id to view one account's bounties as a
        # team member (or a connected account of the caller's), or user_id (your own) to
        # list the bounties you participated in.
        #
        # @overload list(account_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, query: nil, status: nil, user_id: nil, request_options: {})
        #
        # @param account_id [String] Scope the list to this account (`biz_` tag). Requires read access to the account
        #
        # @param after [String] Cursor to paginate forwards from.
        #
        # @param before [String] Cursor to paginate backwards from.
        #
        # @param created_after [String] Only bounties created after this ISO 8601 timestamp.
        #
        # @param created_before [String] Only bounties created before this ISO 8601 timestamp.
        #
        # @param direction [Symbol, WhopSDK::Models::Workforce::BountyListParams::Direction] Sort direction.
        #
        # @param first [Integer] Number of bounties to return from the start of the window.
        #
        # @param last [Integer] Number of bounties to return from the end of the window.
        #
        # @param order [Symbol, WhopSDK::Models::Workforce::BountyListParams::Order] Sort field.
        #
        # @param query [String] Substring match on the bounty title or ID.
        #
        # @param status [Symbol, WhopSDK::Models::Workforce::BountyListParams::Status] Filter by lifecycle state.
        #
        # @param user_id [String] List the bounties this user participated in (`user_` tag). Must be the authentic
        #
        # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::Workforce::WorkforceBountyListItem>]
        #
        # @see WhopSDK::Models::Workforce::BountyListParams
        def list(params = {})
          parsed, options = WhopSDK::Workforce::BountyListParams.dump_request(params)
          query = WhopSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "workforce/bounties",
            query: query,
            page: WhopSDK::Internal::CursorPage,
            model: WhopSDK::Workforce::WorkforceBountyListItem,
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
end
