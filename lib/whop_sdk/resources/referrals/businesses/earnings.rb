# frozen_string_literal: true

module WhopSDK
  module Resources
    class Referrals
      class Businesses
        # The Referrals API covers your Whop partner activity: the users you referred onto
        # Whop, the businesses you referred and the earnings generated from their
        # processing volume, and the partner leaderboard.
        #
        # Use it to enroll as a Whop partner, list the users you referred, list your
        # referred businesses and review their earnings, and see the partner leaderboard.
        class Earnings
          # Lists the earnings Whop pays out for one referred business's activity, most
          # recent first.
          #
          # @overload list(id, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, status: nil, request_options: {})
          #
          # @param id [String] The business referral ID (a coma\_ identifier).
          #
          # @param after [String]
          #
          # @param before [String]
          #
          # @param created_after [String] Only return earnings created after this timestamp.
          #
          # @param created_before [String] Only return earnings created before this timestamp.
          #
          # @param direction [Symbol, WhopSDK::Models::Referrals::Businesses::EarningListParams::Direction] Sort direction.
          #
          # @param first [Integer]
          #
          # @param last [Integer]
          #
          # @param order [Symbol, WhopSDK::Models::Referrals::Businesses::EarningListParams::Order] The field to sort earnings by.
          #
          # @param status [Symbol, WhopSDK::Models::Referrals::Businesses::EarningListParams::Status] Filter by earning status.
          #
          # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::Referrals::Businesses::EarningListResponse>]
          #
          # @see WhopSDK::Models::Referrals::Businesses::EarningListParams
          def list(id, params = {})
            parsed, options = WhopSDK::Referrals::Businesses::EarningListParams.dump_request(params)
            query = WhopSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["partners/businesses/%1$s/earnings", id],
              query: query,
              page: WhopSDK::Internal::CursorPage,
              model: WhopSDK::Models::Referrals::Businesses::EarningListResponse,
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
end
