# typed: strong

module WhopSDK
  module Models
    class AffiliateCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AffiliateCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The ID of the company to create the affiliate for.
      sig { returns(String) }
      attr_accessor :company_id

      # The user identifier (username, email, user ID, or Discord ID).
      sig { returns(String) }
      attr_accessor :user_identifier

      sig do
        params(
          company_id: String,
          user_identifier: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the company to create the affiliate for.
        company_id:,
        # The user identifier (username, email, user ID, or Discord ID).
        user_identifier:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            user_identifier: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
