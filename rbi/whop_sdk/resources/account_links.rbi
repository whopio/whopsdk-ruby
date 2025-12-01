# typed: strong

module WhopSDK
  module Resources
    class AccountLinks
      # Generates a url that a user can be directed to in order to access their
      # sub-merchant account. For example, they can visit the hosted payouts portal or
      # the hosted KYC onboarding flow.
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
        # The ID of the Company to generate the url for. The company must be a
        # sub-merchant of the API key's company.
        company_id:,
        # The URL to redirect to if the session expires and needs to be re-authenticated
        # due to the token expiring.
        refresh_url:,
        # The URL to redirect to when the customer wants to return to your site.
        return_url:,
        # The use case for which the link will be used.
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
