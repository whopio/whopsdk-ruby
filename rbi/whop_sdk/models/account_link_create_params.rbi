# typed: strong

module WhopSDK
  module Models
    class AccountLinkCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AccountLinkCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The ID of the Company to generate the url for. The company must be a
      # sub-merchant of the API key's company.
      sig { returns(String) }
      attr_accessor :company_id

      # The URL to redirect to if the session expires and needs to be re-authenticated
      # due to the token expiring.
      sig { returns(String) }
      attr_accessor :refresh_url

      # The URL to redirect to when the customer wants to return to your site.
      sig { returns(String) }
      attr_accessor :return_url

      # The use case for which the link will be used.
      sig { returns(WhopSDK::AccountLinkCreateParams::UseCase::OrSymbol) }
      attr_accessor :use_case

      sig do
        params(
          company_id: String,
          refresh_url: String,
          return_url: String,
          use_case: WhopSDK::AccountLinkCreateParams::UseCase::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            company_id: String,
            refresh_url: String,
            return_url: String,
            use_case: WhopSDK::AccountLinkCreateParams::UseCase::OrSymbol,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The use case for which the link will be used.
      module UseCase
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AccountLinkCreateParams::UseCase)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNT_ONBOARDING =
          T.let(
            :account_onboarding,
            WhopSDK::AccountLinkCreateParams::UseCase::TaggedSymbol
          )
        PAYOUTS_PORTAL =
          T.let(
            :payouts_portal,
            WhopSDK::AccountLinkCreateParams::UseCase::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AccountLinkCreateParams::UseCase::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
