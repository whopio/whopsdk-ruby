# typed: strong

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
          sig do
            params(
              id: String,
              after: String,
              before: String,
              created_after: String,
              created_before: String,
              direction:
                WhopSDK::Referrals::Businesses::EarningListParams::Direction::OrSymbol,
              first: Integer,
              last: Integer,
              order:
                WhopSDK::Referrals::Businesses::EarningListParams::Order::OrSymbol,
              status:
                WhopSDK::Referrals::Businesses::EarningListParams::Status::OrSymbol,
              request_options: WhopSDK::RequestOptions::OrHash
            ).returns(
              WhopSDK::Internal::CursorPage[
                WhopSDK::Models::Referrals::Businesses::EarningListResponse
              ]
            )
          end
          def list(
            # The business referral ID (a coma\_ identifier).
            id,
            after: nil,
            before: nil,
            # Only return earnings created after this timestamp.
            created_after: nil,
            # Only return earnings created before this timestamp.
            created_before: nil,
            # Sort direction.
            direction: nil,
            first: nil,
            last: nil,
            # The field to sort earnings by.
            order: nil,
            # Filter by earning status.
            status: nil,
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
end
