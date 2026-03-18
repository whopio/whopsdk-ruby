# typed: strong

module WhopSDK
  module Resources
    class Affiliates
      # Affiliates
      class Overrides
        # Creates a commission override for an affiliate.
        #
        # Required permissions:
        #
        # - `affiliate:create`
        sig do
          params(
            id: String,
            body:
              T.any(
                WhopSDK::Affiliates::OverrideCreateParams::Body::CreateAffiliateOverrideInputOverrideTypeStandard::OrHash,
                WhopSDK::Affiliates::OverrideCreateParams::Body::CreateAffiliateOverrideInputOverrideTypeRevShare::OrHash
              ),
            request_options: WhopSDK::RequestOptions::OrHash
          ).returns(WhopSDK::Models::Affiliates::OverrideCreateResponse)
        end
        def create(
          # The affiliate ID.
          id,
          # Parameters for CreateAffiliateOverride
          body:,
          request_options: {}
        )
        end

        # Retrieves the details of a specific affiliate override.
        #
        # Required permissions:
        #
        # - `affiliate:basic:read`
        sig do
          params(
            override_id: String,
            id: String,
            request_options: WhopSDK::RequestOptions::OrHash
          ).returns(WhopSDK::Models::Affiliates::OverrideRetrieveResponse)
        end
        def retrieve(
          # The override ID.
          override_id,
          # The affiliate ID.
          id:,
          request_options: {}
        )
        end

        # Updates an existing affiliate override.
        #
        # Required permissions:
        #
        # - `affiliate:update`
        sig do
          params(
            override_id: String,
            id: String,
            applies_to_payments:
              T.nilable(
                WhopSDK::Affiliates::AffiliateAppliesToPayments::OrSymbol
              ),
            commission_type:
              T.nilable(WhopSDK::Affiliates::AffiliatePayoutTypes::OrSymbol),
            commission_value: T.nilable(Float),
            revenue_basis:
              T.nilable(WhopSDK::Affiliates::AffiliateRevenueBases::OrSymbol),
            request_options: WhopSDK::RequestOptions::OrHash
          ).returns(WhopSDK::Models::Affiliates::OverrideUpdateResponse)
        end
        def update(
          # Path param: The override ID.
          override_id,
          # Path param: The affiliate ID.
          id:,
          # Body param: Whether the affiliate commission applies to the first payment or all
          # payments
          applies_to_payments: nil,
          # Body param: The types of payouts an affiliate can have
          commission_type: nil,
          # Body param: The commission value (percentage 1-100 or flat fee in dollars).
          commission_value: nil,
          # Body param: The calculation method for affiliate rev-share percentages
          revenue_basis: nil,
          request_options: {}
        )
        end

        # Returns a paginated list of overrides for an affiliate.
        #
        # Required permissions:
        #
        # - `affiliate:basic:read`
        sig do
          params(
            id: String,
            after: T.nilable(String),
            before: T.nilable(String),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            override_type:
              T.nilable(WhopSDK::Affiliates::AffiliateOverrideRoles::OrSymbol),
            request_options: WhopSDK::RequestOptions::OrHash
          ).returns(
            WhopSDK::Internal::CursorPage[
              WhopSDK::Models::Affiliates::OverrideListResponse
            ]
          )
        end
        def list(
          # The affiliate ID.
          id,
          # Returns the elements in the list that come after the specified cursor.
          after: nil,
          # Returns the elements in the list that come before the specified cursor.
          before: nil,
          # Returns the first _n_ elements from the list.
          first: nil,
          # Returns the last _n_ elements from the list.
          last: nil,
          # The role of an affiliate override (standard or rev_share)
          override_type: nil,
          request_options: {}
        )
        end

        # Deletes an affiliate override.
        #
        # Required permissions:
        #
        # - `affiliate:update`
        sig do
          params(
            override_id: String,
            id: String,
            request_options: WhopSDK::RequestOptions::OrHash
          ).returns(T::Boolean)
        end
        def delete(
          # The override ID.
          override_id,
          # The affiliate ID.
          id:,
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
