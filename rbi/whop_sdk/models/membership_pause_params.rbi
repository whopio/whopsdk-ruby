# typed: strong

module WhopSDK
  module Models
    class MembershipPauseParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::MembershipPauseParams, WhopSDK::Internal::AnyHash)
        end

      # Whether to void past_due payments associated with the membership to prevent
      # future payment attempts.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :void_payments

      sig do
        params(
          void_payments: T.nilable(T::Boolean),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Whether to void past_due payments associated with the membership to prevent
        # future payment attempts.
        void_payments: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            void_payments: T.nilable(T::Boolean),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
