# frozen_string_literal: true

module WhopSDK
  module Resources
    class Referrals
      # The Referrals API covers your Whop partner activity: the users you referred onto
      # Whop, the businesses you referred and the earnings generated from their
      # processing volume, and the partner leaderboard.
      #
      # Use it to enroll as a Whop partner, list the users you referred, list your
      # referred businesses and review their earnings, and see the partner leaderboard.
      class Partners
        # Enrolls the calling user in the Whop partner program, making their business
        # referrals eligible for earnings. Idempotent — enrolling again keeps the original
        # enrollment time.
        #
        # @overload create(request_options: {})
        #
        # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [WhopSDK::Models::Referrals::PartnerCreateResponse]
        #
        # @see WhopSDK::Models::Referrals::PartnerCreateParams
        def create(params = {})
          @client.request(
            method: :post,
            path: "partners",
            model: WhopSDK::Models::Referrals::PartnerCreateResponse,
            options: params[:request_options]
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
