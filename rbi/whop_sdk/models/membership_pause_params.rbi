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

      sig { returns(String) }
      attr_accessor :id

      # When the membership should automatically resume payment collection. If not
      # provided, the membership stays paused until manually resumed.
      sig { returns(T.nilable(Time)) }
      attr_accessor :resumes_at

      # Whether to void any outstanding past-due payments on this membership, preventing
      # future collection attempts.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :void_payments

      sig do
        params(
          id: String,
          resumes_at: T.nilable(Time),
          void_payments: T.nilable(T::Boolean),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # When the membership should automatically resume payment collection. If not
        # provided, the membership stays paused until manually resumed.
        resumes_at: nil,
        # Whether to void any outstanding past-due payments on this membership, preventing
        # future collection attempts.
        void_payments: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            resumes_at: T.nilable(Time),
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
