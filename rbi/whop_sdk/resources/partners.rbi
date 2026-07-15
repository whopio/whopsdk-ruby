# typed: strong

module WhopSDK
  module Resources
    # The Partners API covers your Whop partner activity: the users you referred onto
    # Whop, the businesses you referred and the earnings generated from their
    # processing volume, and the partner leaderboard.
    #
    # Use it to enroll as a Whop partner, list the users you referred, list your
    # referred businesses and review their earnings, and see the partner leaderboard.
    class Partners
      # The Partners API covers your Whop partner activity: the users you referred onto
      # Whop, the businesses you referred and the earnings generated from their
      # processing volume, and the partner leaderboard.
      #
      # Use it to enroll as a Whop partner, list the users you referred, list your
      # referred businesses and review their earnings, and see the partner leaderboard.
      sig { returns(WhopSDK::Resources::Partners::Businesses) }
      attr_reader :businesses

      # Enrolls the calling user in the Whop partner program, making their partner
      # businesses eligible for earnings. Idempotent — enrolling again keeps the
      # original enrollment time.
      sig do
        params(request_options: WhopSDK::RequestOptions::OrHash).returns(
          WhopSDK::Models::PartnerCreateResponse
        )
      end
      def create(request_options: {})
      end

      # Ranks referrers by partner business earnings — all-time by default, or over the
      # current day, month, year, or trailing 30 days — and includes the caller's own
      # standing.
      sig do
        params(
          period: WhopSDK::PartnerLeaderboardParams::Period::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::PartnerLeaderboardResponse)
      end
      def leaderboard(
        # Time window for the rankings. `day`, `month`, and `year` count earnings since
        # the start of the current calendar day, month, or year; `last_30_days` counts
        # earnings over the trailing 30 days; `all_time` ranks lifetime earnings.
        period: nil,
        request_options: {}
      )
      end

      # Lists the users the caller referred onto Whop (newest first), each with the
      # second-tier earnings the caller has made from that user's businesses.
      sig do
        params(
          after: String,
          before: String,
          first: Integer,
          has_businesses: T::Boolean,
          has_earning_businesses: T::Boolean,
          last: Integer,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::PartnerReferredUsersResponse)
      end
      def referred_users(
        # Cursor to fetch the page after (from page_info.end_cursor).
        after: nil,
        # Cursor to fetch the page before (from page_info.start_cursor).
        before: nil,
        # Number of referred users to return from the start of the window.
        first: nil,
        # When true, only referred users who brought at least one business onto Whop.
        has_businesses: nil,
        # When true, only referred users with at least one business that has generated
        # earnings.
        has_earning_businesses: nil,
        # Number of referred users to return from the end of the window.
        last: nil,
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
