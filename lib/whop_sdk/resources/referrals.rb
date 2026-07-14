# frozen_string_literal: true

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
      # @return [WhopSDK::Resources::Referrals::Businesses]
      attr_reader :businesses

      # The Referrals API covers your Whop partner activity: the users you referred onto
      # Whop, the businesses you referred and the earnings generated from their
      # processing volume, and the partner leaderboard.
      #
      # Use it to enroll as a Whop partner, list the users you referred, list your
      # referred businesses and review their earnings, and see the partner leaderboard.
      # @return [WhopSDK::Resources::Referrals::Partners]
      attr_reader :partners

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::ReferralReferredUsersParams} for more details.
      #
      # Lists the users the caller referred onto Whop (newest first), each with the
      # second-tier earnings the caller has made from that user's businesses.
      #
      # @overload referred_users(after: nil, before: nil, first: nil, has_businesses: nil, has_earning_businesses: nil, last: nil, request_options: {})
      #
      # @param after [String] Cursor to fetch the page after (from page_info.end_cursor).
      #
      # @param before [String] Cursor to fetch the page before (from page_info.start_cursor).
      #
      # @param first [Integer] Number of referred users to return from the start of the window.
      #
      # @param has_businesses [Boolean] When true, only referred users who brought at least one business onto Whop.
      #
      # @param has_earning_businesses [Boolean] When true, only referred users with at least one business that has generated ear
      #
      # @param last [Integer] Number of referred users to return from the end of the window.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::ReferralReferredUsersResponse]
      #
      # @see WhopSDK::Models::ReferralReferredUsersParams
      def referred_users(params = {})
        parsed, options = WhopSDK::ReferralReferredUsersParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "partners/referred_users",
          query: query,
          model: WhopSDK::Models::ReferralReferredUsersResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
        @businesses = WhopSDK::Resources::Referrals::Businesses.new(client: client)
        @partners = WhopSDK::Resources::Referrals::Partners.new(client: client)
      end
    end
  end
end
