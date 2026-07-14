# typed: strong

module WhopSDK
  module Resources
    class Referrals
      # The Referrals API covers your Whop partner activity: the users you referred onto
      # Whop, the businesses you referred and the earnings generated from their
      # processing volume, and the partner leaderboard.
      #
      # Use it to enroll as a Whop partner, list the users you referred, list your
      # referred businesses and review their earnings, and see the partner leaderboard.
      class Businesses
        # The Referrals API covers your Whop partner activity: the users you referred onto
        # Whop, the businesses you referred and the earnings generated from their
        # processing volume, and the partner leaderboard.
        #
        # Use it to enroll as a Whop partner, list the users you referred, list your
        # referred businesses and review their earnings, and see the partner leaderboard.
        sig { returns(WhopSDK::Resources::Referrals::Businesses::Earnings) }
        attr_reader :earnings

        # Retrieves a single referred business and its referral terms.
        sig do
          params(
            id: String,
            request_options: WhopSDK::RequestOptions::OrHash
          ).returns(WhopSDK::Models::Referrals::BusinessRetrieveResponse)
        end
        def retrieve(
          # The business referral ID (a coma\_ identifier).
          id,
          request_options: {}
        )
        end

        # Lists the businesses the authenticated user referred onto Whop, most recent
        # first.
        sig do
          params(
            after: String,
            before: String,
            created_after: String,
            created_before: String,
            direction:
              WhopSDK::Referrals::BusinessListParams::Direction::OrSymbol,
            first: Integer,
            has_earnings: T::Boolean,
            last: Integer,
            order: WhopSDK::Referrals::BusinessListParams::Order::OrSymbol,
            referred_user_id: String,
            referred_username: String,
            status: WhopSDK::Referrals::BusinessListParams::Status::OrSymbol,
            tier: WhopSDK::Referrals::BusinessListParams::Tier::OrSymbol,
            request_options: WhopSDK::RequestOptions::OrHash
          ).returns(
            WhopSDK::Internal::CursorPage[
              WhopSDK::Models::Referrals::BusinessListResponse
            ]
          )
        end
        def list(
          # Cursor to fetch the page after (from page_info.end_cursor).
          after: nil,
          # Cursor to fetch the page before (from page_info.start_cursor).
          before: nil,
          # Only return business referrals created after this timestamp.
          created_after: nil,
          # Only return business referrals created before this timestamp.
          created_before: nil,
          # Sort direction.
          direction: nil,
          # Number of business referrals to return from the start of the window.
          first: nil,
          # When true, only businesses with pending or completed earnings paid to the
          # caller.
          has_earnings: nil,
          # Number of business referrals to return from the end of the window.
          last: nil,
          # The field to sort business referrals by.
          order: nil,
          # Filter to referrals attributed to this user. For first-tier referrals, this is
          # the referred account owner; for second-tier referrals, this is the partner you
          # recruited.
          referred_user_id: nil,
          # Filter by the referred user's exact username. Ignored when `referred_user_id` is
          # present.
          referred_username: nil,
          # Filter by referral status.
          status: nil,
          # Filter to only first-tier referrals or only second-tier referrals.
          tier: nil,
          request_options: {}
        )
        end

        # Ranks referrers by business referral earnings — all-time by default, or over the
        # current day, month, year, or trailing 30 days — and includes the caller's own
        # standing.
        sig do
          params(
            period:
              WhopSDK::Referrals::BusinessLeaderboardParams::Period::OrSymbol,
            request_options: WhopSDK::RequestOptions::OrHash
          ).returns(WhopSDK::Models::Referrals::BusinessLeaderboardResponse)
        end
        def leaderboard(
          # Time window for the rankings. `day`, `month`, and `year` count earnings since
          # the start of the current calendar day, month, or year; `last_30_days` counts
          # earnings over the trailing 30 days; `all_time` ranks lifetime earnings.
          period: nil,
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
