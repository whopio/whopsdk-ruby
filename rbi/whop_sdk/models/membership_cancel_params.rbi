# typed: strong

module WhopSDK
  module Models
    class MembershipCancelParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::MembershipCancelParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # `true` stops auto-renewal and keeps access until the current billing period
      # ends. Omit or `false` revokes access immediately.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :cancel_at_period_end

      sig { params(cancel_at_period_end: T::Boolean).void }
      attr_writer :cancel_at_period_end

      # Free-form note recording why the membership was canceled.
      sig { returns(T.nilable(String)) }
      attr_reader :reason

      sig { params(reason: String).void }
      attr_writer :reason

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig do
        params(
          id: String,
          cancel_at_period_end: T::Boolean,
          reason: String,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # `true` stops auto-renewal and keeps access until the current billing period
        # ends. Omit or `false` revokes access immediately.
        cancel_at_period_end: nil,
        # Free-form note recording why the membership was canceled.
        reason: nil,
        api_version_date: nil,
        idempotency_key: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            cancel_at_period_end: T::Boolean,
            reason: String,
            api_version_date: String,
            idempotency_key: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
