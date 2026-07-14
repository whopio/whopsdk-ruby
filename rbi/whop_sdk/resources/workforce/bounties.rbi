# typed: strong

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
        sig do
          params(
            id: String,
            request_options: WhopSDK::RequestOptions::OrHash
          ).returns(WhopSDK::Workforce::WorkforceBounty)
        end
        def retrieve(
          # Bounty ID (`bnty_` tag).
          id,
          request_options: {}
        )
        end

        # Lists workforce bounties visible to the credential. Account API keys return the
        # account's bounties, scheduled drafts included; user tokens return the bounties
        # the user can see and work. Pass account_id to view one account's bounties as a
        # team member (or a connected account of the caller's), or user_id (your own) to
        # list the bounties you participated in.
        sig do
          params(
            account_id: String,
            after: String,
            before: String,
            created_after: String,
            created_before: String,
            direction:
              WhopSDK::Workforce::BountyListParams::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: WhopSDK::Workforce::BountyListParams::Order::OrSymbol,
            query: String,
            status: WhopSDK::Workforce::BountyListParams::Status::OrSymbol,
            user_id: String,
            request_options: WhopSDK::RequestOptions::OrHash
          ).returns(
            WhopSDK::Internal::CursorPage[
              WhopSDK::Workforce::WorkforceBountyListItem
            ]
          )
        end
        def list(
          # Scope the list to this account (`biz_` tag). Requires read access to the
          # account; account API keys may pass their own account or a connected account.
          account_id: nil,
          # Cursor to paginate forwards from.
          after: nil,
          # Cursor to paginate backwards from.
          before: nil,
          # Only bounties created after this ISO 8601 timestamp.
          created_after: nil,
          # Only bounties created before this ISO 8601 timestamp.
          created_before: nil,
          # Sort direction.
          direction: nil,
          # Number of bounties to return from the start of the window.
          first: nil,
          # Number of bounties to return from the end of the window.
          last: nil,
          # Sort field.
          order: nil,
          # Substring match on the bounty title or ID.
          query: nil,
          # Filter by lifecycle state.
          status: nil,
          # List the bounties this user participated in (`user_` tag). Must be the
          # authenticated user.
          user_id: nil,
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
end
