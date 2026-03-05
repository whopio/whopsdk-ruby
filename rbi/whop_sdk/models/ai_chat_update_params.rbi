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

      sig { returns(String) }
      attr_accessor :id

      # The unique identifier of the company to set as context for the AI chat (e.g.,
      # "biz_XXXXX").
      sig { returns(T.nilable(String)) }
      attr_accessor :current_company_id

      # The new display title for the AI chat thread (e.g., "Help with billing").
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          id: String,
          current_company_id: T.nilable(String),
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The unique identifier of the company to set as context for the AI chat (e.g.,
        # "biz_XXXXX").
        current_company_id: nil,
        # The new display title for the AI chat thread (e.g., "Help with billing").
        title: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
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
