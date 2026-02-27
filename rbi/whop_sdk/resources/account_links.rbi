# typed: strong

module WhopSDK
  module Resources
    # Account links
    class AccountLinks
      # Generate a URL that directs a sub-merchant to their account portal, such as the
      # hosted payouts dashboard or the KYC onboarding flow.
      sig do
        params(
          company_id: String,
          refresh_url: String,
          return_url: String,
          use_case: WhopSDK::AccountLinkCreateParams::UseCase::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AccountLinkCreateResponse)
      end
      def create(
        # The unique identifier of the company to generate the link for, starting with
        # 'biz\_'. Must be a sub-merchant of the API key's company.
        company_id:,
        # The URL to redirect the user to if the session expires and needs to be
        # re-authenticated, such as 'https://example.com/refresh'.
        refresh_url:,
        # The URL to redirect the user to when they want to return to your site, such as
        # 'https://example.com/return'.
        return_url:,
        # The purpose of the account link, such as hosted payouts portal or hosted KYC
        # onboarding.
        use_case:,
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
