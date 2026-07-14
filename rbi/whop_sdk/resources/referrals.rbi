# typed: strong

module WhopSDK
  module Resources
    # The Referrals API covers your Whop partner activity: the users you referred onto
    # Whop, the businesses you referred and the earnings generated from their
    # processing volume, and the partner leaderboard.
    #
    # Use it to enroll as a Whop partner, list the users you referred, list your
    # referred businesses and review their earnings, and see the partner leaderboard.
    class Referrals
      # The Referrals API covers your Whop partner activity: the users you referred onto
      # Whop, the businesses you referred and the earnings generated from their
      # processing volume, and the partner leaderboard.
      #
      # Use it to enroll as a Whop partner, list the users you referred, list your
      # referred businesses and review their earnings, and see the partner leaderboard.
      sig { returns(WhopSDK::Resources::Referrals::Businesses) }
      attr_reader :businesses

      # The Referrals API covers your Whop partner activity: the users you referred onto
      # Whop, the businesses you referred and the earnings generated from their
      # processing volume, and the partner leaderboard.
      #
      # Use it to enroll as a Whop partner, list the users you referred, list your
      # referred businesses and review their earnings, and see the partner leaderboard.
      sig { returns(WhopSDK::Resources::Referrals::Partners) }
      attr_reader :partners

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
        ).returns(WhopSDK::Models::ReferralReferredUsersResponse)
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
