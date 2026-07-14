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
      class Partners
        # Enrolls the calling user in the Whop partner program, making their business
        # referrals eligible for earnings. Idempotent — enrolling again keeps the original
        # enrollment time.
        sig do
          params(request_options: WhopSDK::RequestOptions::OrHash).returns(
            WhopSDK::Models::Referrals::PartnerCreateResponse
          )
        end
        def create(request_options: {})
        end

        # @api private
        sig { params(client: WhopSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
