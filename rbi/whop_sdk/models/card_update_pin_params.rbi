# typed: strong

module WhopSDK
  module Models
    class CardUpdatePinParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CardUpdatePinParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # The new 4-digit PIN.
      sig { returns(String) }
      attr_accessor :pin

      sig do
        params(
          id: String,
          pin: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The new 4-digit PIN.
        pin:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { id: String, pin: String, request_options: WhopSDK::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
