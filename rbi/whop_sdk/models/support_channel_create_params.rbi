# typed: strong

module WhopSDK
  module Models
    class SupportChannelCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::SupportChannelCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The ID of the company to create the support chat in
      sig { returns(String) }
      attr_accessor :company_id

      # The ID of the user to create the support chat for
      sig { returns(String) }
      attr_accessor :user_id

      sig do
        params(
          company_id: String,
          user_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the company to create the support chat in
        company_id:,
        # The ID of the user to create the support chat for
        user_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            user_id: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
