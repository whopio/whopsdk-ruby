# typed: strong

module WhopSDK
  module Models
    class MembershipUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::MembershipUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # The metadata to update the membership with.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      sig do
        params(
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The metadata to update the membership with.
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
