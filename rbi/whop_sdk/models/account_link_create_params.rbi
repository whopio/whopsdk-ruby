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

      # The unique identifier of the company to generate the link for, starting with
      # 'biz\_'. Must be a sub-merchant of the API key's company.
      sig { returns(String) }
      attr_accessor :company_id

      # The URL to redirect the user to if the session expires and needs to be
      # re-authenticated, such as 'https://example.com/refresh'.
      sig { returns(String) }
      attr_accessor :refresh_url

      # The URL to redirect the user to when they want to return to your site, such as
      # 'https://example.com/return'.
      sig { returns(String) }
      attr_accessor :return_url

      # The purpose of the account link, such as hosted payouts portal or hosted KYC
      # onboarding.
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

      # The purpose of the account link, such as hosted payouts portal or hosted KYC
      # onboarding.
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
