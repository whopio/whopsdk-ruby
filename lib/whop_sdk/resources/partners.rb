# frozen_string_literal: true

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
      # @return [WhopSDK::Resources::Partners::Businesses]
      attr_reader :businesses

      # Enrolls the calling user in the Whop partner program, making their partner
      # businesses eligible for earnings. Idempotent — enrolling again keeps the
      # original enrollment time.
      #
      # @overload create(request_options: {})
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::PartnerCreateResponse]
      #
      # @see WhopSDK::Models::PartnerCreateParams
      def create(params = {})
        @client.request(
          method: :post,
          path: "partners",
          model: WhopSDK::Models::PartnerCreateResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PartnerLeaderboardParams} for more details.
      #
      # Ranks referrers by partner business earnings — all-time by default, or over the
      # current day, month, year, or trailing 30 days — and includes the caller's own
      # standing.
      #
      # @overload leaderboard(period: nil, request_options: {})
      #
      # @param period [Symbol, WhopSDK::Models::PartnerLeaderboardParams::Period] Time window for the rankings. `day`, `month`, and `year` count earnings since th
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::PartnerLeaderboardResponse]
      #
      # @see WhopSDK::Models::PartnerLeaderboardParams
      def leaderboard(params = {})
        parsed, options = WhopSDK::PartnerLeaderboardParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "partners/leaderboard",
          query: query,
          model: WhopSDK::Models::PartnerLeaderboardResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PartnerReferredUsersParams} for more details.
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
      # @return [WhopSDK::Models::PartnerReferredUsersResponse]
      #
      # @see WhopSDK::Models::PartnerReferredUsersParams
      def referred_users(params = {})
        parsed, options = WhopSDK::PartnerReferredUsersParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "partners/referred_users",
          query: query,
          model: WhopSDK::Models::PartnerReferredUsersResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
        @businesses = WhopSDK::Resources::Partners::Businesses.new(client: client)
      end
    end
  end
end
