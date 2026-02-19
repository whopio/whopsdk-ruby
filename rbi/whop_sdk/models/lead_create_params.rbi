# typed: strong

module WhopSDK
  module Models
    class LeadCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::LeadCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier of the company to create the lead for, starting with
      # 'biz\_'.
      sig { returns(String) }
      attr_accessor :company_id

      # A JSON object of custom metadata to attach to the lead for tracking purposes.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # The unique identifier of the product the lead is interested in, starting with
      # 'prod\_'.
      sig { returns(T.nilable(String)) }
      attr_accessor :product_id

      # The referral URL that brought the lead to the company, such as
      # 'https://example.com/landing'.
      sig { returns(T.nilable(String)) }
      attr_accessor :referrer

      # The unique identifier of the user to record as the lead. If authenticated as a
      # user, that user is used automatically.
      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      sig do
        params(
          company_id: String,
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          product_id: T.nilable(String),
          referrer: T.nilable(String),
          user_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the company to create the lead for, starting with
        # 'biz\_'.
        company_id:,
        # A JSON object of custom metadata to attach to the lead for tracking purposes.
        metadata: nil,
        # The unique identifier of the product the lead is interested in, starting with
        # 'prod\_'.
        product_id: nil,
        # The referral URL that brought the lead to the company, such as
        # 'https://example.com/landing'.
        referrer: nil,
        # The unique identifier of the user to record as the lead. If authenticated as a
        # user, that user is used automatically.
        user_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            product_id: T.nilable(String),
            referrer: T.nilable(String),
            user_id: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
