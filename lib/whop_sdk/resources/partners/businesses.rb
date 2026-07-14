# frozen_string_literal: true

module WhopSDK
  module Resources
    class Partners
      # The Partners API covers your Whop partner activity: the users you referred onto
      # Whop, the businesses you referred and the earnings generated from their
      # processing volume, and the partner leaderboard.
      #
      # Use it to enroll as a Whop partner, list the users you referred, list your
      # referred businesses and review their earnings, and see the partner leaderboard.
      class Businesses
        # The Partners API covers your Whop partner activity: the users you referred onto
        # Whop, the businesses you referred and the earnings generated from their
        # processing volume, and the partner leaderboard.
        #
        # Use it to enroll as a Whop partner, list the users you referred, list your
        # referred businesses and review their earnings, and see the partner leaderboard.
        # @return [WhopSDK::Resources::Partners::Businesses::Earnings]
        attr_reader :earnings

        # Retrieves a single referred business and its referral terms.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] The partner business ID (a coma\_ identifier).
        #
        # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [WhopSDK::Models::Partners::BusinessRetrieveResponse]
        #
        # @see WhopSDK::Models::Partners::BusinessRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["partners/businesses/%1$s", id],
            model: WhopSDK::Models::Partners::BusinessRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {WhopSDK::Models::Partners::BusinessListParams} for more details.
        #
        # Lists the businesses the authenticated user referred onto Whop, most recent
        # first.
        #
        # @overload list(after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, has_earnings: nil, last: nil, order: nil, referred_user_id: nil, referred_username: nil, status: nil, tier: nil, request_options: {})
        #
        # @param after [String] Cursor to fetch the page after (from page_info.end_cursor).
        #
        # @param before [String] Cursor to fetch the page before (from page_info.start_cursor).
        #
        # @param created_after [String] Only return partner businesses created after this timestamp.
        #
        # @param created_before [String] Only return partner businesses created before this timestamp.
        #
        # @param direction [Symbol, WhopSDK::Models::Partners::BusinessListParams::Direction] Sort direction.
        #
        # @param first [Integer] Number of partner businesses to return from the start of the window.
        #
        # @param has_earnings [Boolean] When true, only businesses with pending or completed earnings paid to the caller
        #
        # @param last [Integer] Number of partner businesses to return from the end of the window.
        #
        # @param order [Symbol, WhopSDK::Models::Partners::BusinessListParams::Order] The field to sort partner businesses by.
        #
        # @param referred_user_id [String] Filter to referrals attributed to this user. For first-tier referrals, this is t
        #
        # @param referred_username [String] Filter by the referred user's exact username. Ignored when `referred_user_id` is
        #
        # @param status [Symbol, WhopSDK::Models::Partners::BusinessListParams::Status] Filter by referral status.
        #
        # @param tier [Symbol, WhopSDK::Models::Partners::BusinessListParams::Tier] Filter to only first-tier referrals or only second-tier referrals.
        #
        # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::Partners::BusinessListResponse>]
        #
        # @see WhopSDK::Models::Partners::BusinessListParams
        def list(params = {})
          parsed, options = WhopSDK::Partners::BusinessListParams.dump_request(params)
          query = WhopSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "partners/businesses",
            query: query,
            page: WhopSDK::Internal::CursorPage,
            model: WhopSDK::Models::Partners::BusinessListResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [WhopSDK::Client]
        def initialize(client:)
          @client = client
          @earnings = WhopSDK::Resources::Partners::Businesses::Earnings.new(client: client)
        end
      end
    end
  end
end
