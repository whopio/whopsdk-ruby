# typed: strong

module WhopSDK
  module Models
    class LeadUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::LeadUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # A JSON object of custom metadata to set on the lead, replacing any existing
      # metadata.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # The updated referral URL for the lead, such as 'https://example.com/landing'.
      sig { returns(T.nilable(String)) }
      attr_accessor :referrer

      sig do
        params(
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          referrer: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A JSON object of custom metadata to set on the lead, replacing any existing
        # metadata.
        metadata: nil,
        # The updated referral URL for the lead, such as 'https://example.com/landing'.
        referrer: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            referrer: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
