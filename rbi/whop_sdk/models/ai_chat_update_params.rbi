# typed: strong

module WhopSDK
  module Models
    class AIChatUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AIChatUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # The ID of the company to set as the current company in context for the AI chat
      sig { returns(T.nilable(String)) }
      attr_accessor :current_company_id

      # The new title for the AI chat
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          current_company_id: T.nilable(String),
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the company to set as the current company in context for the AI chat
        current_company_id: nil,
        # The new title for the AI chat
        title: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            current_company_id: T.nilable(String),
            title: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
